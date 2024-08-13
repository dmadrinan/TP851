$PBExportHeader$w_delete_parts.srw
forward
global type w_delete_parts from window
end type
type st_5 from statictext within w_delete_parts
end type
type st_2 from statictext within w_delete_parts
end type
type st_1 from statictext within w_delete_parts
end type
type mle_messageboard from multilineedit within w_delete_parts
end type
type st_3 from statictext within w_delete_parts
end type
type hpb_process from hprogressbar within w_delete_parts
end type
type cb_process from commandbutton within w_delete_parts
end type
type cb_close from commandbutton within w_delete_parts
end type
type cb_browse from commandbutton within w_delete_parts
end type
type sle_path from singlelineedit within w_delete_parts
end type
type st_4 from statictext within w_delete_parts
end type
end forward

global type w_delete_parts from window
integer width = 2825
integer height = 1752
boolean titlebar = true
string title = "Delete Parts"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "DeleteData.ico"
boolean center = true
st_5 st_5
st_2 st_2
st_1 st_1
mle_messageboard mle_messageboard
st_3 st_3
hpb_process hpb_process
cb_process cb_process
cb_close cb_close
cb_browse cb_browse
sle_path sle_path
st_4 st_4
end type
global w_delete_parts w_delete_parts

forward prototypes
public function boolean wf_create_table ()
public function boolean wf_bulk_insert (string as_table_name)
public function string wf_create_formatfile (string as_path)
public subroutine wf_delete_applications (string as_subquery)
public subroutine wf_delete_parts (string as_subquery)
end prototypes

public function boolean wf_create_table ();String		ls_sql
Boolean	lb_error

ls_sql = "Drop Table #import_PartNo"
EXECUTE IMMEDIATE :ls_sql;
Commit ;

ls_sql=" CREATE TABLE #import_PartNo( " &
		+" 	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED, " &
		+" 	PartNo Varchar(50) NULL," &
		+" Vendor_id Varchar(50) NULL)"
   	
EXECUTE IMMEDIATE :ls_sql;
If SQLCA.SQLCode <> 0  Then
	lb_error = True
End If				

If lb_error  Then
	ROLLBACK;
	Return True
Else
	COMMIT;
	Return False
End If	

end function

public function boolean wf_bulk_insert (string as_table_name);Int li_FirstPos, li_SecondPos, li_pos
String ls_FilePath, ls_ComputerName, ls_sql, ls_formatfilePath, ls_formatfile


If wf_create_table() Then
	Return True
End If

ls_FilePath = sle_path.text
If Pos(ls_FilePath,"\\") = 0 then
	RegistryGet("HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ComputerName",&
					"ComputerName",ls_ComputerName)
			
	//not in base sharing folder
	li_FirstPos = Pos(ls_FilePath,'\')
	Do While li_FirstPos > 0 
		li_SecondPos = Pos(ls_FilePath,'\', li_FirstPos + 1)
		If li_SecondPos = 0 Then Exit
		If Pos(ls_FilePath, '\', li_SecondPos + 1) = 0 Then Exit
		li_FirstPos = li_SecondPos
	Loop

	If li_SecondPos = 0 Then
		ls_FilePath = Left(ls_FilePath,1) + Mid(ls_FilePath,li_FirstPos)	
	Else
		ls_FilePath = Mid(ls_FilePath,li_FirstPos + 1) 
	End If
							
	ls_FilePath = "\\" + ls_ComputerName + '\' + ls_FilePath
End If

li_pos = LastPos( ls_FilePath, '\' )
ls_formatfilePath = Left ( ls_FilePath, li_pos - 1 )
ls_formatfile = wf_create_formatfile( ls_formatfilePath )
If ls_formatfile = '' Then Return True

//Load data to a temp table without a PK. Importing data using a 'Format File' for Bulk insert
//takes a long time.  The plan is to load data to a table with no OK using Bulk Insert and then
//load it to another table with PK using 'Insert...Select'
ls_sql = " BULK INSERT " + as_table_name + &
			" FROM '" + ls_FilePath + "'" + & 
			" WITH ( FORMATFILE = '" + ls_formatfile + "') " 

EXECUTE IMMEDIATE :ls_sql;

If sqlca.sqlcode <> 0 Then
	Return True
Else
	Return False
	Commit;
End If
end function

public function string wf_create_formatfile (string as_path);/*
Save the following as a TP_import.fmt to use in bulk insert.
*/

String ls_formatfile, ls_versionno='8.0', ls_sql, ls_ver
Long ll_FileNum, ll_file_write
integer li_FileNum, li_tabs, li_cnt
string ls_FilePath, ls_firstline
long ll_tab

//Read the first line of importing txt file and calculate tabs in the first line(+1) as the count of columns.
//Dynamiclly create format file according to the count of columns in the importing txt file. 
ls_FilePath = sle_path.text
li_FileNum = FileOpen(ls_FilePath)
FileRead(li_FileNum, ls_firstline)
FileClose(li_FileNum)

ll_tab = Pos(ls_firstline, "~t")
Do while ll_tab > 0 
	li_tabs ++
	ls_firstline = mid(ls_firstline, ll_tab + 1)
	ll_tab = Pos(ls_firstline, "~t")
Loop

//The number of tabs counted within text file is less than the number of columns (# of tabs + 1 = Number of columns)
If li_tabs > 1 Then
	MessageBox("Error","Text file must contain two columns of data only (Part Number, Vendor ID).")
	Return ''
End If

ls_formatfile = ls_versionno + '~r~n' + &
			String(li_tabs + 1) + '~r~n' 
For li_cnt = 1 to li_tabs
	ls_formatfile += String(li_cnt) + '       SQLCHAR             0       1000     "\t"     ' + String(li_cnt + 1) + '     col' + String(li_cnt) + '             SQL_Latin1_General_CP1_CI_AS' + '~r~n'
Next
ls_formatfile += String(li_cnt) + '       SQLCHAR             0       1000     "\r\n"     ' + String(li_cnt + 1) + '     col' + String(li_cnt) + '             SQL_Latin1_General_CP1_CI_AS' + '~r~n' + &
		'' + '~r~n'

FileDelete( as_Path+"\TP_Import.fmt" )

IF Not FileExists ( as_Path+"\TP_Import.fmt" ) Then
	ll_FileNum = FileOpen( as_Path+"\TP_Import.fmt", TextMode!, Write!, LockWrite!, Replace!)
	ll_file_write = FileWriteEx(ll_FileNum,ls_formatfile )
	FileClose ( ll_FileNum )
END IF

Return as_Path+"\TP_Import.fmt"



end function

public subroutine wf_delete_applications (string as_subquery);String ls_sql

ls_sql = "DELETE FROM survey_detail " + &
	"WHERE application# in ( " + as_subquery + " )"  
Execute Immediate :ls_sql ;
	
ls_sql = "DELETE FROM app_approval_detail  " + &
	"WHERE application# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM part_app_footnote_detail  " + &
	" WHERE application# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM oe_part_app_footnote_detail  " + &
	" WHERE application# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM app_interchange_specifications   " + &
	"WHERE application# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM application_interchange   " + &
	"WHERE app# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM app_specifications   " + &
	"WHERE application# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM oe_application_interchange   " + &
	"WHERE app# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM app_images   " + &
	"WHERE application# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM oe_app_images   " + &
	"WHERE application# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM app_sounds   " + &
	"WHERE application# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM oe_app_sounds   " + &
	"WHERE application# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM app_videos   " + &
	"WHERE application# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM oe_app_videos   " + &
	"WHERE application# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM oe_application   " + &
	"WHERE application# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM app_documents   " + &
	"WHERE application# in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM dadi_app_asset_usage_bridge   " + &
	"WHERE app# in ( " + as_subquery + " )"    
Execute Immediate :ls_sql ;


RETURN 
end subroutine

public subroutine wf_delete_parts (string as_subquery);String ls_sql

//ls_sql = "DELETE FROM part_interchange_footnote_bridge  " + &
//	"WHERE partID in ( " + as_subquery + " )" 
//Execute Immediate :ls_sql ;

ls_sql = "DELETE f  " + &
	" FROM part_interchange_footnote_bridge f " + &
	" JOIN parts_interchanges i ON f.crossover = i.crossover and f.their_partno = i.their_part# " + &
	" WHERE f.partID in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;
	
ls_sql = "DELETE FROM part_specifications  " + &
	"WHERE partID in ( " + as_subquery + " )"  
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM parts_bom  " + &
	" WHERE partID in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM parts_bom  " + &
	" WHERE component_partID in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM parts_images  " + &
	" WHERE partID in ( " + as_subquery + " )"     
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM parts_sounds   " + &
	"WHERE partID in ( " + as_subquery + " )"    
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM parts_videos   " + &
	"WHERE partID in ( " + as_subquery + " )"     
Execute Immediate :ls_sql ;
	
ls_sql = "DELETE FROM parts_documents   " + &
	"WHERE partID in ( " + as_subquery + " )"   
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM ABC_PartInterchange_Makes   " + &
	"WHERE PartID in ( " + as_subquery + " )"   
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM ABC_PartNo   " + &
	"WHERE PartID in ( " + as_subquery + " ) OR abc_PartID in ( " + as_subquery + " )"  	  
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM part_interchange_specifications   " + &
	  "WHERE PartID in ( " + as_subquery + " )" 
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM parts_interchanges   " + &
	"WHERE PartID in ( " + as_subquery + " )"   
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM parts_canuse   " + &
	"WHERE PartID in ( " + as_subquery + " )"    
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM parts_canuse   " + &
	"WHERE canuse_PartID in ( " + as_subquery + " )"    
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM part_partfootnote_bridge   " + &
	"WHERE PartID in ( " + as_subquery + " )"  
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM part_approval_detail   " + &
	"WHERE PartID in ( " + as_subquery + " )"  
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM dadi_asset_usage_bridge   " + &
	"WHERE PartID in ( " + as_subquery + " )"   
Execute Immediate :ls_sql ;

ls_sql = "DELETE FROM parts_publications   " + &
	"WHERE PartID in ( " + as_subquery + " )"  
Execute Immediate :ls_sql ;









end subroutine

on w_delete_parts.create
this.st_5=create st_5
this.st_2=create st_2
this.st_1=create st_1
this.mle_messageboard=create mle_messageboard
this.st_3=create st_3
this.hpb_process=create hpb_process
this.cb_process=create cb_process
this.cb_close=create cb_close
this.cb_browse=create cb_browse
this.sle_path=create sle_path
this.st_4=create st_4
this.Control[]={this.st_5,&
this.st_2,&
this.st_1,&
this.mle_messageboard,&
this.st_3,&
this.hpb_process,&
this.cb_process,&
this.cb_close,&
this.cb_browse,&
this.sle_path,&
this.st_4}
end on

on w_delete_parts.destroy
destroy(this.st_5)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.mle_messageboard)
destroy(this.st_3)
destroy(this.hpb_process)
destroy(this.cb_process)
destroy(this.cb_close)
destroy(this.cb_browse)
destroy(this.sle_path)
destroy(this.st_4)
end on

type st_5 from statictext within w_delete_parts
integer x = 82
integer y = 300
integer width = 2642
integer height = 124
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Microsoft Sans Serif"
long backcolor = 67108864
string text = "Please note that all related records to the listed Part Numbers will also be deleted (Note: The file folder should be shared)."
boolean focusrectangle = false
end type

type st_2 from statictext within w_delete_parts
integer x = 78
integer y = 24
integer width = 2656
integer height = 136
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 255
long backcolor = 67108864
string text = "In order to safeguard your database of possible loss, it is strongly recommended to Backup your Database."
alignment alignment = center!
boolean focusrectangle = false
end type

type st_1 from statictext within w_delete_parts
integer x = 82
integer y = 176
integer width = 2629
integer height = 124
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Microsoft Sans Serif"
long backcolor = 67108864
string text = "Please select a TXT file that contains specific Part Numbers to be deleted.  The file should contain only two columns of data (PartNo, VendorID) with no column headers."
boolean focusrectangle = false
end type

type mle_messageboard from multilineedit within w_delete_parts
integer x = 87
integer y = 844
integer width = 2651
integer height = 748
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Microsoft Sans Serif"
long textcolor = 33554432
boolean vscrollbar = true
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within w_delete_parts
integer x = 87
integer y = 776
integer width = 448
integer height = 64
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Microsoft Sans Serif"
long backcolor = 67108864
string text = "Message Board:"
boolean focusrectangle = false
end type

type hpb_process from hprogressbar within w_delete_parts
integer x = 91
integer y = 652
integer width = 1655
integer height = 68
unsignedinteger maxposition = 100
integer setstep = 10
end type

type cb_process from commandbutton within w_delete_parts
integer x = 1915
integer y = 640
integer width = 393
integer height = 92
integer taborder = 30
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Microsoft Sans Serif"
string text = "Process"
boolean default = true
end type

event clicked;string  ls_fullfilename, ls_Result, ls_sql, ls_subquery
Boolean lb_exist
Long ll_start,ll_end
Integer li_min,li_sec
Real lr_usedsec

SetPointer(HourGlass!)

//Initialize the Progress Bar
hpb_process.maxposition=400
hpb_process.position=0

ls_FullFileName = sle_path.text 

//Clear the message board
mle_MessageBoard.text = ''

if IsNull(ls_FullFileName) or Trim(ls_FullFileName) = '' then
	MessageBox("Warning","Please select a TXT file prior to processing.",StopSign!)
	Return
else
	lb_exist = FileExists(ls_FullFileName)
	IF lb_exist = False THEN 
		MessageBox("Error", "The TXT file " + ls_FullFileName + " does not exist or access is denied, please try again.", StopSign!)
		Return
	End If
end if

// Time the process
ll_start=Cpu()

///////// 
hpb_process.position +=100

IF wf_bulk_insert( "#import_PartNo" ) THEN
	 ls_Result =  "ERROR! " + &
	 ls_FullFileName + '    -   The selected file could not be processed due to an error.   -  ' + &
	  + sqlca.sqlerrtext + " - " + String(Today(), "m/d/yy hh:mm"   )
	
	mle_MessageBoard.text = 	ls_Result
	hpb_process.position = 0
	RETURN
END IF

// 1. Delete appliations
hpb_process.position +=100

Open ( w_pleasewait )
w_pleasewait.Title = "Bulk Parts Utility"
w_pleasewait.st_1.text = 'Please wait, Deleting Applications Related Data ...'

ls_subquery = "SELECT application# FROM parts p  " + &
					 "	JOIN #import_PartNo pn ON p.part# = ltrim(rtrim(pn.PartNo)) and " + &
					 "		coalesce(p.vendor_id,'') = ltrim(rtrim(coalesce(pn.vendor_id,''))) " + &
					 "	JOIN parts_applications pa ON p.PartID = pa.PartID "
wf_Delete_Applications( ls_subquery )
COMMIT;

ls_sql = "DELETE FROM parts_applications " + &
			" WHERE application# in ( "+ ls_subquery + " ) "

Execute Immediate :ls_sql ;
IF SQLCA.SQLCode <> 0 THEN
	mle_MessageBoard.text = 	'ERROR! [ "Could not delete Applications and/or Applications related Data." ] ' + Sqlca.SqlErrText
	ROLLBACK;
	Close(w_pleasewait)
	hpb_process.position = 0
	RETURN
ELSE
	COMMIT;
	mle_MessageBoard.text = 	'Applications and Related Data are Deleted.'
END IF

// 2. Delete Parts and Parts related Data
hpb_process.position +=100

w_pleasewait.st_1.text = 'Please wait, Deleting Parts Related Data ...'

ls_subquery = "SELECT DISTINCT PartID FROM Parts p " + &
					 "	JOIN #Import_PartNo pn ON p.Part# = pn.PartNo and coalesce(p.Vendor_ID,'') = coalesce(pn.Vendor_ID,'') "
wf_Delete_Parts( ls_subquery )
COMMIT;

ls_sql = "DELETE FROM parts " + &
			" WHERE partID in ( "+ ls_subquery + " ) "

Execute Immediate :ls_sql ;
IF SQLCA.SQLCode <> 0 THEN
	mle_MessageBoard.text = 	'~r~nERROR! Could not delete Parts and/or Parts related Data.' + Sqlca.SqlErrText
	ROLLBACK;
	Close(w_pleasewait)
	hpb_process.position = 0
	RETURN
ELSE
	COMMIT;
	mle_MessageBoard.text += 	'~r~nParts and Related Data are Deleted.'
END IF

hpb_process.position +=100
Close(w_pleasewait)

// Time the process.
ll_end=cpu()
lr_usedsec=(ll_end - ll_start) / 1000
//Convert to minutes and seconds
li_min=Truncate((lr_usedsec/60),0)
li_sec=Mod(lr_usedsec,60)

mle_MessageBoard.text += '~r~nThe process completed Successfully. ' &
+' The process took '+ string(li_min)+' minutes ' +string(li_sec)+' seconds.'

hpb_process.position=0

end event

type cb_close from commandbutton within w_delete_parts
integer x = 2336
integer y = 640
integer width = 393
integer height = 92
integer taborder = 40
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Microsoft Sans Serif"
string text = "Close"
boolean cancel = true
end type

event clicked;Close ( Parent )
end event

type cb_browse from commandbutton within w_delete_parts
integer x = 2619
integer y = 508
integer width = 110
integer height = 88
integer taborder = 20
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Microsoft Sans Serif"
string text = "..."
end type

event clicked;
string ls_path, ls_filename

GetFileOpenName ( "Select a TXT File that contains all Part Numbers to be deleted from Database", &
							ls_path, ls_filename , "TXT", "Tab Delimited Text File (*.TXT), *.TXT" )
if isnull(ls_path) or trim(ls_path) = "" then return
sle_path.text = ls_path 
gs_filename = ls_filename


end event

type sle_path from singlelineedit within w_delete_parts
integer x = 87
integer y = 508
integer width = 2537
integer height = 96
integer taborder = 10
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Microsoft Sans Serif"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_4 from statictext within w_delete_parts
integer x = 82
integer y = 440
integer width = 951
integer height = 64
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Microsoft Sans Serif"
long backcolor = 67108864
string text = "Part Number TXT File:"
boolean focusrectangle = false
end type

