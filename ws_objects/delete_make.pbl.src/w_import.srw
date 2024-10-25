$PBExportHeader$w_import.srw
forward
global type w_import from window
end type
type cb_2 from commandbutton within w_import
end type
type cb_1 from commandbutton within w_import
end type
type dw_1 from datawindow within w_import
end type
type gb_2 from groupbox within w_import
end type
type dw_error from datawindow within w_import
end type
end forward

global type w_import from window
integer width = 2656
integer height = 1416
boolean titlebar = true
string title = "Import Profile"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
gb_2 gb_2
dw_error dw_error
end type
global w_import w_import

type variables
n_win_svc inv_win_svc
int ii_spid
string is_temp_table = 'delmake_profile_master_temp_',is_temp_table_error
boolean ib_replace =false
string is_tran_mode = 'IMPORT'
PRIVATE:
CONSTANT string QUERY = "select {1}"+&
									 " from {2} "					
end variables

forward prototypes
public subroutine wf_set_dw_errlog ()
public function boolean wf_create_temp_table ()
public function string wf_create_formatfile (string as_path, string as_source_fie, string as_filetype)
public subroutine wf_import ()
public function integer wf_check_source_table_data ()
public subroutine wf_import_profile ()
public subroutine wf_import_profile_detail ()
public subroutine wf_export ()
public subroutine wf_log (string as_msg)
end prototypes

public subroutine wf_set_dw_errlog ();string ls_job_option, ls_col_syntax, ls_sql, ls_col
int li_row, i
dw_1.accepttext()
li_row = dw_1.getrow()
ls_job_option = dw_1.object.job_option[li_row]

ls_sql = "Drop Table "+ is_temp_table_error
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

if is_tran_mode = 'IMPORT' then 
	choose case  ls_job_option
		case 'Header'
		dw_1.object.job_method.values = "Replace Existing Profile~tReplace/Update Existing Profile~tUpdate/"
		dw_1.object.job_method.protect= '0'
		ls_sql=" CREATE TABLE "+is_temp_table_error+"( " &				
				+" 	[Id] int NOT NULL, " &
				+" 	[ProfileID] varchar(50) NULL, " &
				+" 	[ProfileDesc] [varchar](200) NULL,"&
				+" 	[YearFrom] varchar(10) NULL,"&
				+" 	[YearTo] varchar(10) NULL,"&
				+" 	[Parts] tinyint NULL,"&
				+" 	[PartFootnotesDefinition] tinyint NULL,"&
				+" 	[PartFootnotesAttachments] tinyint NULL,"&
				+" 	[Part_PartInterchangeSpecTemplates] tinyint NULL,"&
				+" 	[Part_PartInterchangeSpecValues] tinyint NULL,"&
				+" 	[PartInterchanges] tinyint NULL,"&				
				+" 	[AppFootnotesDefinition] tinyint NULL,"&
				+" 	[AppSpecTemplates] tinyint NULL,"&
				+" 	[Class] tinyint NULL,"&
				+" 	[Line] tinyint NULL,"&
				+" 	[Make] tinyint NULL,"&
				+" 	[Model] tinyint NULL,"&
				+" 	[ModelGroupPrint] tinyint NULL,"&
				+" 	[ModelGroupInquiry] tinyint NULL,"&				
				+" 	[AllMakesWithNoApps] tinyint NULL,"&
				+" 	[AllModelsWithNoApps] tinyint NULL,"&		
				+" 	[Err_desc] varchar(1000) null	)"	
				ls_col_syntax = "ProfileID, ProfileDesc ,YearFrom,YearTo, Parts,PartFootnotesDefinition, PartFootnotesAttachments, Part_PartInterchangeSpecTemplates, Part_PartInterchangeSpecValues,"+&
						"PartInterchanges,AppFootnotesDefinition, AppSpecTemplates,Class, Line, Make,Model,ModelGroupPrint,ModelGroupInquiry,AllMakesWithNoApps,AllModelsWithNoApps, Err_desc"
		CASE 'Detail'
			//dw_1.object.job_method.values = "Replace Existing Profile~tReplace"
		dw_1.object.job_method.values = "Replace Existing Profile~tReplace/Update Existing Profile~tUpdate/"
		dw_1.object.job_method[li_row] = 'Replace'
		dw_1.object.job_method.protect= '1'
				ls_sql=" CREATE TABLE "+is_temp_table_error+"( " &				
				+" 	[Id] int NOT NULL, " &
				+" 	[ProfileID] varchar(50) NULL, " &
				+" 	[Classes] varchar(50) NULL,"&
				+" 	[Lines] varchar(50) NULL,"&
				+" 	[Vendors] varchar(50) NULL,"&
				+" 	[Brands] varchar(50) NULL,"&
				+" 	[Makes] varchar(50) NULL,"&
				+" 	[Models] varchar(50) NULL,"&
				+" 	[Err_desc] varchar(1000) null	)"		
				ls_col_syntax = "ProfileID,Classes,Lines,Vendors,Brands,Makes,Models, Err_desc"
	end choose
	EXECUTE IMMEDIATE :ls_sql;	
	
	COMMIT ;
	
else
	ls_col_syntax = "Message = CONVERT(VARCHAR(200),'')"
	is_temp_table_error ='(select 1 dx) a '
end if

ls_sql =  inv_win_svc.of_format(QUERY,{ls_col_syntax, is_temp_table_error} )		

inv_win_svc.of_create_dw(dw_error, ls_sql)
for i =1 to long(dw_error.describe("datawindow.column.count"))
	ls_col = dw_error.describe("#"+string(i)+'.name')
	dw_error.modify(ls_col+"_t.alignment='0'")
	dw_error.modify(ls_col+".alignment='0'")
next

dw_error.vscrollbar =true
dw_error.hscrollbar =true
if is_tran_mode = 'IMPORT' then 
	dw_error.modify("datawindow.header.height='85'")
	dw_error.modify("datawindow.detai.height='92'")
else
	dw_error.modify("datawindow.header.height='0'")
end if
dw_error.modify("datawindow.grid.columnmove=no")
dw_error.modify("datawindow.selected.mouse=no")
dw_error.modify("ProfileDesc.width=1000")		

if ls_job_option="Header" then 
	dw_error.modify("PartFootnotesDefinition_t.text='Part Footnotes Definition'")
	dw_error.modify("PartFootnotesAttachments_t.text='Part Footnotes Attachments'")
	dw_error.modify("Part_PartInterchangeSpecTemplates_t.text='Part & Part Interchange Spec Templates'")
	dw_error.modify("Part_PartInterchangeSpecValues_t.text='Part & Part Interchange Spec Values'")
	dw_error.modify("PartInterchanges_t.text='Part Interchanges'")
	dw_error.modify("AppFootnotesDefinition_t.text='App Footnotes Definition'")
	dw_error.modify("AppSpecTemplates_t.text='App Spec Templates'")
	dw_error.modify("ModelGroupPrint_t.text='Model Group Print'")
	dw_error.modify("ModelGroupInquiry_t.text='Model Group Inquiry'")
	dw_error.modify("AllMakesWithNoApps_t.text='All Makes that have no Applications'")
	dw_error.modify("AllModelsWithNoApps_t.text='All Models that have no Applications'")			
end if

dw_error.modify("ProfileID.width=200")	
//dw_error.modify("Err_desc.width='2500'")
dw_error.modify("Err_desc_t.text='Error Description'")
dw_error.modify("Err_desc.color='255'")		
dw_error.reset()
dw_error.insertrow(0)
dw_error.visible =true

end subroutine

public function boolean wf_create_temp_table ();string ls_job_option, ls_sql, ls_temp_table, ls_col, ls_tempsql
int i, li_cnt
ls_sql = "Drop Table "+ is_temp_table
EXECUTE IMMEDIATE :ls_sql;
Commit ;

ls_sql=" CREATE TABLE "+is_temp_table+"( " &
		+" 	[id] int identity(1,1) NOT NULL " 

ls_tempsql ="select ctr = count(*) from INFORMATION_SCHEMA.columns where table_name ='"+ is_temp_table_error+"'" 
DECLARE this_delmake_cursor DYNAMIC CURSOR FOR SQLSA ;
PREPARE SQLSA FROM :ls_tempsql ;
OPEN DYNAMIC this_delmake_cursor ;
FETCH this_delmake_cursor INTO :li_cnt ;
CLOSE this_delmake_cursor ;

li_cnt -=2
for i = 1 to li_cnt
	ls_col = "col"+string(i)
	 ls_sql+=","+  ls_col+ " varchar(250) NULL "
next
ls_sql+=")"

EXECUTE IMMEDIATE :ls_sql;
If SQLCA.SQLCode <> 0  Then
	return false
End If		

COMMIT;

return TRUE
end function

public function string wf_create_formatfile (string as_path, string as_source_fie, string as_filetype);/*
Save the following as a TP_import.fmt to use in bulk insert.
*/

String ls_formatfile, ls_versionno='8.0', ls_sql, ls_ver
Long ll_FileNum, ll_file_write
integer li_FileNum, li_tabs, li_cnt
string ls_FilePath, ls_firstline
long ll_tab

//Read the first line of importing txt file and calculate tabs in the first line(+1) as the count of columns.
//Dynamiclly create format file according to the count of columns in the importing txt file. 
ls_FilePath =as_source_fie
li_FileNum = FileOpen(ls_FilePath)
FileRead(li_FileNum, ls_firstline)
FileClose(li_FileNum)
as_filetype = upper(as_filetype)
if as_filetype<>'CSV' then 
	ll_tab = Pos(ls_firstline, "~t")
	Do while ll_tab > 0 
		li_tabs ++
		ls_firstline = mid(ls_firstline, ll_tab + 1)
		ll_tab = Pos(ls_firstline, "~t")
	Loop
else
	li_tabs = long(dw_error.describe("datawindow.column.count")) - 1
	li_tabs = li_tabs - 1
end if

// Modify the count from 55 to 52 after removing three columns Printing/Export/Inquiry column from import.
If li_tabs > 52 Then
	Messagebox( "Data Import Error","Talking Pictures import utility can not import a file that contains more than 52 columns." )
	Return ''
End If

ls_formatfile = ls_versionno + '~r~n' + &
			String(li_tabs + 1) + '~r~n' 
For li_cnt = 1 to li_tabs
	if as_filetype<>'CSV' then 
		ls_formatfile += String(li_cnt) + '       SQLCHAR             0       1000     "\t"     ' + String(li_cnt + 1) + '     col' + String(li_cnt) + '             SQL_Latin1_General_CP1_CI_AS' + '~r~n'
	else
		ls_formatfile += String(li_cnt) + '       SQLCHAR             0       1000     ","     ' + String(li_cnt + 1) + '     col' + String(li_cnt) + '             SQL_Latin1_General_CP1_CI_AS' + '~r~n'
	end if
Next
ls_formatfile += String(li_cnt) + '       SQLCHAR             0       1000     "\r\n"     ' + String(li_cnt + 1) + '     col' + String(li_cnt) + '             SQL_Latin1_General_CP1_CI_AS' + '~r~n' + &
		'' + '~r~n'

FileDelete( as_path+"\TP_Import.fmt" )

IF Not FileExists ( as_Path+"\TP_Import.fmt" ) Then
	ll_FileNum = FileOpen( as_Path+"\TP_Import.fmt", TextMode!, Write!, LockWrite!, Replace!)
	ll_file_write = FileWriteEx(ll_FileNum,ls_formatfile )
	FileClose ( ll_FileNum )
END IF

Return as_Path+"\TP_Import.fmt"



end function

public subroutine wf_import ();string ls_filename,  ls_temptable ='#tmp_data_delmake_profile_', ls_filepath, ls_path, ls_filext, ls_formatfile, ls_syntax,&
		ls_profileid, ls_method, ls_option
int li_row, li_startrow,li_pos
long ll_rows
datastore lds_import
dw_error.reset()
dw_1.accepttext()
li_row = dw_1.getrow()
ls_temptable +=string(ii_spid)
li_startrow =dw_1.object.import_head_flag[li_row]
ls_method =dw_1.object.job_method[li_row] 
ls_filename = dw_1.getitemstring(li_row, 'file_name')
ls_option= dw_1.getitemstring(li_row, 'job_option')
ls_filepath = uf_convert_into_unc_path( ls_filename)

// Get File Path only
li_pos = LastPos( ls_filepath, '\' )
ls_path = Left ( ls_filepath, li_pos - 1 )

// Make sure folder exist and it is not write protected.
IF uf_check_path(ls_path) <> '' THen
	MessageBox("Data Import Error","Import File folder '" + ls_path + "' must exist and not be Write Protected.")
	return
END IF

if not fileexists(ls_filename) then 
	MessageBox("Data Import Error", ls_filepath + " does not exist.  Please make sure selected file exist and Shared Folder name is the same as Folde Physical name.", StopSign!, Ok!)
	return
end if

//Create temp tables to be used with import
If not wf_create_temp_table() Then
	MessageBox("Data Import Error", "Unable to create necessary tables." )
	return 
End if

li_pos = lastpos(ls_filename, '.')
ls_filext = mid(ls_filename, li_pos + 1)

//Create Format File
ls_formatfile = wf_create_formatfile( ls_path, ls_filename, ls_filext )
If ls_formatfile = '' Then return 

ls_syntax = " BULK INSERT " + is_temp_table   + &
					" FROM '" + ls_filepath + "'" + & 
					" WITH ( FIRSTROW = " + String(li_startrow)  


if upper(ls_filext)='CSV' then 
	ls_syntax += ", FORMAT='CSV' "
end if

ls_syntax += ", FORMATFILE = '" + ls_formatfile + "') " 

EXECUTE IMMEDIATE :ls_syntax;
If sqlca.sqlcode <> 0 Then
	Rollback;
	MessageBox("Data Import Error", "Bulk Insert Failed: " + sqlca.sqlerrtext )	
	Return 
Else
	Commit;
End If

//Validate if import files has header
if li_startrow = 1 then 
	ls_syntax ="select col1 from "+ is_temp_table+&
				" where id = 1"
	lds_import =  inv_win_svc.of_Create_ds( ls_syntax)
	if lds_import.retrieve()>0 then 
		ls_profileid =  lds_import.getitemstring(1,'col1')
		if lower(ls_profileid) = 'profileid' then 
			MessageBox("Data Import Error", "The import file contains header columns. You must tick 'Import file includes column headings'. " + sqlca.sqlerrtext )	
			return
		end if
	end if	
end if

ib_replace= false

if upper(ls_method )='REPLACE' then ib_replace = true

ls_syntax ='TRUNCATE TABLE '+ is_temp_table_error

EXECUTE IMMEDIATE :ls_syntax;
COMMIT;

choose case ls_option
	case 'Header'
		wf_import_profile()
	case 'Detail'
		wf_import_profile_detail()
end choose
ll_rows =  wf_check_source_table_data() 

if isvalid(lds_import) then  destroy lds_import

if dw_error.retrieve()>0 then 
	if ll_rows = 0 then 
		MessageBox("Data Import ...", "The data import procedure has been completed, but all records were sent to the error log.~n~nPlease review the error and try re-importing.", Exclamation!, OK!)		
	else
		MessageBox("Data Import ...", "The data import procedure has been completed but some records were not imported sucessfully. ~n~nAll other records were successfully imported and have been committed to the database.", Exclamation!, OK!)		
	end if
else
	MessageBox("Data Import ...", "The data import procedure has been completed successfully.  All records imported have been added and committed to the database.", Information!, OK!)
end if

ls_syntax ='DROP TABLE '+ is_temp_table_error
EXECUTE IMMEDIATE :ls_syntax;
ls_syntax ='DROP TABLE '+ is_temp_table
EXECUTE IMMEDIATE :ls_syntax;
COMMIT;



end subroutine

public function integer wf_check_source_table_data ();string ls_sql
int li_rows = 0
datastore lds_data

ls_sql = 'select ctr = count(*) '+&
' from '+ is_temp_table

lds_data = inv_win_svc.of_create_ds(ls_sql)
if  lds_data.retrieve()>0 then &
li_rows = lds_data.object.ctr[1]
return li_rows
end function

public subroutine wf_import_profile ();string ls_sql, ls_temptable, ls_concat = '', ls_cols, ls_colfield, ls_errtext
int i, li_col

ls_sql ="select STUFF ((select ', '+ column_name "+&
		" from information_schema.columns "+&
		" where table_name='"+ is_temp_table_error+"'"+&	
		" and column_name not in ('Id','Err_desc')"+&
		" For XML Path ( '')) , 1,1,'' )"

DECLARE this_delmake_cursor DYNAMIC CURSOR FOR SQLSA ;
PREPARE SQLSA FROM :ls_sql ;
OPEN DYNAMIC this_delmake_cursor ;
FETCH this_delmake_cursor INTO :ls_cols ;
CLOSE this_delmake_cursor ;

		
//update to default zero for numeric fields
ls_sql = "update a "+&
	 " set "
for i = 1 to 16
	li_col = i+4
	ls_sql+= "col"+string(li_col) +" =case when isnull(a.col"+string(li_col)+",'') = '' then '0' else a.col"+string(li_col)+" end,"
	if ls_concat = '' then 
		ls_concat = "isnull(a.col"+string(li_col)+",'') =''"
	else
		ls_concat = ls_concat+ " or "+ "isnull(a.col"+string(li_col)+",'') =''"
	end if
next
ls_sql = left(ls_sql, len(ls_sql) -1)

ls_sql+=" from "+is_temp_table +" a "+&
" where "
ls_sql+=ls_concat

EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_colfield= "id,col1,col2,col3 ,col4,cast(col5 as int),cast(col6 as int),cast(col7 as int),cast(col8 as int),cast(col9 as int),cast(col10 as int),cast(col11 as int) ,"+&
					"cast(col12 as int),cast(col13 as int),cast(col14 as int),cast(col15 as int),cast(col16 as int),cast(col17 as int),cast(col18 as int),cast(col19 as int),cast(col20 as int)"
//ProfileID Mandatory
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'ProfileID is mandatory or can''t be empty/blank.' "+&
			" FROM "+ is_temp_table+&		
			" WHERE isnull(col1,'')='' "
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Profile Description Mandatory
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Profile Description is mandatory or can''t be empty/blank.' "+&
			" FROM "+ is_temp_table+&		
			" WHERE isnull(col2,'')='' "
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Send to error for invalid numeric field types
ls_sql =  "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+","+&
					"'Invalid Data for numeric fields ' + case when (isnumeric(col5) = 0 and isnull(col5,'')<>'') then '  [Parts]' else '' end + "+&
							" case when (isnumeric(col6) = 0 and isnull(col6,'')<>'') then ' [Part Footnotes Definition]' else '' end + "+&
							" case when (isnumeric(col7) = 0 and isnull(col7,'')<>'') then ' [Part Footnotes Attachments] Flag' else '' end + "+&
							" case when (isnumeric(col8) = 0 and isnull(col8,'')<>'') then ' [Part & Part Interchange Spec Templates]' else '' end + "+&
							" case when (isnumeric(col9) = 0 and isnull(col9,'')<>'') then ' [Part & Part Interchange Spec Values]' else '' end + "+&
							" case when (isnumeric(col10) = 0 and isnull(col10,'')<>'') then ' [Part Interchanges]' else '' end + "+&
							" case when (isnumeric(col11) = 0 and isnull(col11,'')<>'') then ' [App Footnotes Definition]' else '' end + "+&
							" case when (isnumeric(col12) = 0 and isnull(col12,'')<>'') then ' [App Spec Templates] Base' else '' end + "+&
							" case when (isnumeric(col13) = 0 and isnull(col13,'')<>'') then ' [Class]' else '' end + "+&
							" case when (isnumeric(col14) = 0 and isnull(col14,'')<>'') then ' [Line]' else '' end + "+&
							" case when (isnumeric(col15) = 0 and isnull(col15,'')<>'') then ' [Make]' else '' end + "+&
							" case when (isnumeric(col16) = 0 and isnull(col16,'')<>'') then ' [Model]' else '' end + "+&
							" case when (isnumeric(col17) = 0 and isnull(col17,'')<>'') then ' [Model Group Print]' else '' end + "+&
							" case when (isnumeric(col18) = 0 and isnull(col18,'')<>'') then ' [Model Group Inquiry]' else '' end + "+&
							" case when (isnumeric(col19) = 0 and isnull(col19,'')<>'') then ' [All Makes that have no Applications]' else '' end + "+&
							" case when (isnumeric(col20) = 0 and isnull(col20,'')<>'') then ' [All Models that have no Applications]' else '' end  "+&							
			" FROM "+ is_temp_table+&
			" WHERE (isnumeric(col5) = 0 and isnull(col5,'')<>'')  or "+& 
			" (isnumeric(col6) = 0 and isnull(col6,'')<>'')  or "+& 
			" (isnumeric(col7) = 0 and isnull(col7,'')<>'')  or "+& 
			" (isnumeric(col8) = 0 and isnull(col8,'')<>'')  or "+& 
			" (isnumeric(col9) = 0 and isnull(col9,'')<>'')  or "+& 
			" (isnumeric(col10) = 0 and isnull(col10,'')<>'')  or "+& 
			" (isnumeric(col11) = 0 and isnull(col11,'')<>'')  or "+& 
			" (isnumeric(col12) = 0 and isnull(col12,'')<>'')  or "+& 
			" (isnumeric(col13) = 0 and isnull(col13,'')<>'')  or "+& 
			" (isnumeric(col14) = 0 and isnull(col14,'')<>'')  or "+& 
			" (isnumeric(col15) = 0 and isnull(col15,'')<>'')  or "+& 
			" (isnumeric(col16) = 0 and isnull(col16,'')<>'')  or "+& 
			" (isnumeric(col17) = 0 and isnull(col17,'')<>'')  or "+& 
			" (isnumeric(col18) = 0 and isnull(col18,'')<>'')  or "+& 
			" (isnumeric(col20) = 0 and isnull(col20,'')<>'')  or "+& 
			" (isnumeric(col19) = 0 and isnull(col19,'')<>'')"
		
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if	
							
//Send to error for invalid numeric field types
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+","+&
					"'Invalid Data [must be 0 and 1] for numeric fields ' + case when col5 not in ('0','1') then ' [Parts]' else '' end + "+&
							" case when col6 not in ('0','1') then ' [Part Footnotes Definition]' else '' end + "+&
							" case when col7 not in ('0','1') then ' [Part Footnotes Attachments]' else '' end + "+&
							" case when col8 not in ('0','1') then ' [Part & Part Interchange Spec Templates] Flag' else '' end + "+&
							" case when col9 not in ('0','1') then ' [Part & Part Interchange Spec Values]' else '' end + "+&
							" case when col10 not in ('0','1') then ' [Part Interchanges]' else '' end + "+&
							" case when col11 not in ('0','1') then ' [App Footnotes Definition]' else '' end + "+&
							" case when col12 not in ('0','1') then ' [App Spec Templates]' else '' end + "+&
							" case when col13 not in ('0','1') then ' [Class]' else '' end + "+&
							" case when col14 not in ('0','1') then ' [Line]' else '' end + "+&
							" case when col15 not in ('0','1') then ' [Make]' else '' end + "+&
							" case when col16 not in ('0','1') then ' [Model]' else '' end + "+&
							" case when col17 not in ('0','1') then ' [Model Group Print]' else '' end + "+&
							" case when col18 not in ('0','1') then ' [Model Group Inquiry]' else '' end + "+&
							" case when col19 not in ('0','1') then ' [All Makes that have no Applications]' else '' end + "+&
							" case when col20 not in ('0','1') then  ' [All Models that have no Applications]' else '' end  "+&
			" FROM "+ is_temp_table+&
			" WHERE (col5 not in ('0','1'))  or "+& 
			" (col6 not in ('0','1'))  or "+& 
			" (col7 not in ('0','1'))  or "+& 
			" (col8 not in ('0','1'))  or "+& 
			" (col9 not in ('0','1'))  or "+& 
			" (col10 not in ('0','1'))  or "+& 
			" (col11 not in ('0','1'))  or "+& 
			" (col12 not in ('0','1'))  or "+& 
			" (col13 not in ('0','1'))  or "+& 
			" (col14 not in ('0','1'))  or "+& 
			"(col15 not in ('0','1'))  or "+& 
			" (col16 not in ('0','1'))  or "+& 
			" (col17 not in ('0','1'))  or "+& 
			" (col18 not in ('0','1'))  or "+& 
			" (col20 not in ('0','1'))  or "+& 
			" (col19 not in ('0','1'))"
		
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Parts> Part Footnotes Attachments, Part Interchanges, Part & Part Interchange Spec Values
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Invalid option. ''Part Footnotes Attachments, Part Interchanges, Part & Part Interchange Spec Values'' must be 1 when ''Parts'' is 1.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col1,'') = '1'  "+&
			" AND (col7<>'1' or col10<>'1' or col9<>'1' )"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Part Footnotes Definition
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Invalid option. ''Part Footnotes Attachments'' must be 1 when ''Part Footnotes Definition'' is 1.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col6,'') = '1'  "+&
			" AND col7<>'1' "
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Part & Part Interchange Spec Templates
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Invalid option. ''Part & Part Interchange Spec Values'' must be 1 when ''Part & Part Interchange Spec Templates'' is 1.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col8,'') = '1'  "+&
			" AND col9<>'1' "
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Make
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Invalid option. ''Model, Model Group Print,Model Group Inquiry'' must be 1 when ''Make'' is 1.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col15,'') = '1'  "+&
			" AND (col17<>'1' or col18<>'1' or col16<>'1') "
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Model
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Invalid option. ''Model Group Print,Model Group Inquiry'' must be 1 when ''Model'' is 1.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col16,'') = '1'  "+&
			" AND (col17<>'1' or col18<>'1') "
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Class
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Invalid option. ''Parts,Part Footnotes Definition,Part Footnotes Attachments, Part Interchanges,Part & Part Interchange Spec Templates,Part & Part Interchange Spec Values,"+&
				"App Footnotes Definition,App Spec Templates,Line,Model Group Print,Model Group Inquiry'' must be 1 when ''Class'' is 1.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col13,'') = '1'  "+&
			" AND (col5<>'1' or col6<>'1' or col7<>'1' or col10<>'1'  or col8<>'1' or col9<>'1'  or col11<>'1'  or col12<>'1'  or col17<>'1'  or col18<>'1' or col14<>'1') "
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Line
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Invalid option. ''Parts,Part Footnotes Definition,Part Footnotes Attachments, Part Interchanges,Part & Part Interchange Spec Templates,Part & Part Interchange Spec Values,"+&
				"App Footnotes Definition,App Spec Templates,Model Group Print,Model Group Inquiry'' must be 1 when ''Class'' is 1.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col14,'') = '1'  "+&
			" AND (col5<>'1' or col6<>'1' or col7<>'1' or col10<>'1'  or col8<>'1' or col9<>'1'  or col11<>'1'  or col12<>'1'  or col17<>'1'  or col18<>'1') "
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//All Makes that have no Applications
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Invalid option. ''All Models that have no Applications'' must be 1 when ''All Makes that have no Applications'' is 1.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col19,'') = '1'  "+&
			" AND (col20<>'1') "
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Untick
//Parts> Part Footnotes Attachments, Part Interchanges, Part & Part Interchange Spec Values
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Invalid option. ''Class, Line'' must be 0 when ''Parts'' is 0.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col5,'') = '0'  "+&
			" AND (col13<>'0' or col14<>'0'  )"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

if ib_replace  then 

	ls_sql = "DELETE FROM DeleteMake_Profile_Detail "+&
			" WHERE EXISTS(SELECT 1 "+&
						" FROM "+ is_temp_table +" a "+&
						" WHERE a.col1=DeleteMake_Profile_Detail.ProfileID)"
	EXECUTE IMMEDIATE :ls_sql;

	if sqlca.sqlcode<>0 then 
		ls_errtext =sqlca.sqlerrtext
		ROLLBACK;
		messagebox(this.title,ls_errtext)
		return
	end if
	
	ls_sql = "DELETE FROM DeleteMake_Profile_Master "+&
			" WHERE EXISTS(SELECT 1 "+&
						" FROM "+ is_temp_table +" a "+&
						" WHERE a.col1=DeleteMake_Profile_Master.ProfileID)"
	EXECUTE IMMEDIATE :ls_sql;

	if sqlca.sqlcode<>0 then 
		ls_errtext =sqlca.sqlerrtext
		ROLLBACK;
		messagebox(this.title,ls_errtext)
		return
	end if
	
					
	ls_sql = "INSERT DeleteMake_Profile_Master( "+ ls_cols+") "+&
	" SELECT col1,col2,col3 ,col4,cast(col5 as int),cast(col6 as int),cast(col7 as int),cast(col8 as int),cast(col9 as int),cast(col10 as int),cast(col11 as int) ,"+&
					"cast(col12 as int),cast(col13 as int),cast(col14 as int),cast(col15 as int),cast(col16 as int),cast(col17 as int),cast(col18 as int),cast(col19 as int),cast(col20 as int)"+&
						" FROM "+is_temp_table + " a "
	EXECUTE IMMEDIATE :ls_sql;
	
	if sqlca.sqlcode<>0 then 		
		ls_errtext =sqlca.sqlerrtext
		ROLLBACK;
		messagebox(this.title,ls_errtext)
		return
	else
		COMMIT ;
	end if
else		
	
	ls_sql = "INSERT "+is_temp_table_error +"(id,"+ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Profile Id is invalid or does not exists.'"+&
			" FROM "+ is_temp_table+&
			" WHERE NOT EXISTS(select 1 "+&
							" FROM  DeleteMake_Profile_Master a"+&
							" WHERE a.ProfileID ="+ is_temp_table+".col1)"
	EXECUTE IMMEDIATE :ls_sql;
	COMMIT ;
		
	ls_sql = "DELETE FROM "+ is_temp_table +&
				" WHERE EXISTS(SELECT 1 "+&
					" FROM "+ is_temp_table_error +" a "+&
					" WHERE a.id ="+ is_temp_table+".id)"
	EXECUTE IMMEDIATE :ls_sql;
	COMMIT ;		
	
	if wf_check_source_table_data() = 0 then 
		return
	end if	
	
	ls_sql = "UPDATE DeleteMake_Profile_Master "+&
				" SET ProfileDesc = a.col2,"+&
					"UserID='"+gs_userid+"',"+&
				 "  YearFrom = a.col3 ,"+&
				  " YearTo = a.col4,"+&
				  " Parts = cast(a.col5 as int),"+&
				 "  PartFootnotesDefinition = cast(a.col6 as int),"+&
				  " PartFootnotesAttachments =cast( a.col7 as int),"+&
				  " Part_PartInterchangeSpecTemplates =cast( a.col8 as int),"+&
				 "  Part_PartInterchangeSpecValues = cast(a.col9 as int),"+&
				  " PartInterchanges =cast( a.col10 as int),"+&
				  " AppFootnotesDefinition = cast(col11 as int),"+&
				  " AppSpecTemplates = cast(col12 as int),"+&
				  " Class = cast(col13 as int),"+&
				  " Line = cast(col14 as int),"+&
				  " Make = cast(col15 as int),"+&
				  " Model = cast(col16 as int),"+&
				  " ModelGroupPrint = cast(col17 as int),"+&
				  " ModelGroupInquiry = cast(col18 as int),"+&
				 "  AllMakesWithNoApps =cast(col19 as int),"+&
				  " AllModelsWithNoApps=cast(col20 as int)"+&
			" FROM "+ is_temp_table +" a"+&
			" WHERE a.col1 = DeleteMake_Profile_Master.ProfileID"
			
	EXECUTE IMMEDIATE :ls_sql;
	
	if sqlca.sqlcode<>0 then 
		ls_errtext =sqlca.sqlerrtext
		ROLLBACK;
		messagebox(this.title,ls_errtext)
		return
	end if	
	
	COMMIT ;		
	
end if


end subroutine

public subroutine wf_import_profile_detail ();string ls_sql, ls_temptable, ls_concat = '', ls_cols, ls_colfield, ls_errtext
int i, li_col

ls_sql ="select STUFF ((select ', '+ column_name "+&
		" from information_schema.columns "+&
		" where table_name='"+ is_temp_table_error+"'"+&	
		" and column_name not in ('Id','Err_desc')"+&
		" For XML Path ( '')) , 1,1,'' )"

DECLARE this_delmake_cursor DYNAMIC CURSOR FOR SQLSA ;
PREPARE SQLSA FROM :ls_sql ;
OPEN DYNAMIC this_delmake_cursor ;
FETCH this_delmake_cursor INTO :ls_cols ;
CLOSE this_delmake_cursor ;

ls_colfield= "id,col1,col2,col3 ,col4,col5 ,col6 ,col7 "
//ProfileID Mandatory
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'ProfileID is mandatory or can''t be empty/blank.' "+&
			" FROM "+ is_temp_table+&		
			" WHERE isnull(col1,'')='' "
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Class
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Class is invalid or does not exists.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col2,'') <>'' "+&
			" AND  isnull(col2,'') <>'|ALL|' "+&
			" AND NOT EXISTS(SELECT 1"+&
					" FROM product_classes a "+&
					" WHERE a.class ="+ is_temp_table+".col2)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Line
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Line is invalid or does not exists.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col3,'') <>'' "+&
			" AND  isnull(col3,'') <>'|ALL|' "+&
			" AND NOT EXISTS(SELECT 1"+&
					" FROM product_lines a "+&
					" WHERE a.line ="+ is_temp_table+".col3)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Vendor
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Vendor is invalid or does not exists.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col4,'') <>'' "+&
			" AND isnull(col4,'') <>'|ALL|' "+&			
			" AND NOT EXISTS(SELECT 1"+&
					" FROM vendors a "+&
					" WHERE a.vendor_id ="+ is_temp_table+".col4)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Brand
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Brand is invalid or does not exists.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col5,'') <>'' "+&
			" AND isnull(col5,'') <>'|ALL|' "+&	
			" AND NOT EXISTS(SELECT 1"+&
					" FROM brand a "+&
					" WHERE a.brand ="+ is_temp_table+".col5)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Makes
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Make is invalid or does not exists.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col6,'') <>'' "+&
			" AND isnull(col6,'') <>'|ALL|' "+&	
			" AND NOT EXISTS(SELECT 1"+&
					" FROM makes a "+&
					" WHERE a.make ="+ is_temp_table+".col6)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if

//Model
ls_sql = "INSERT "+is_temp_table_error +"(id,"+ ls_cols+",err_desc)"+&
		   " SELECT "+ ls_colfield+",'Model is invalid or does not exists.' "+&
			" FROM "+ is_temp_table+&
			" WHERE isnull(col7,'') <>'' "+&
			" AND isnull(col7,'') <>'|ALL|' "+&	
			" AND NOT EXISTS(SELECT 1"+&
					" FROM models a "+&
					" WHERE a.model ="+ is_temp_table+".col7)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

ls_sql = "DELETE FROM "+ is_temp_table +&
		" WHERE EXISTS(SELECT 1 "+&
			" FROM "+ is_temp_table_error +" a "+&
			" WHERE a.id ="+ is_temp_table+".id)"
EXECUTE IMMEDIATE :ls_sql;
COMMIT ;	

if wf_check_source_table_data() = 0 then 
	return
end if


//update to |ALL| for empty fields
ls_sql = "update a "+&
	 " set "
for i = 1 to 7
	if i = 1 then continue
	li_col = i
	ls_sql+= "col"+string(li_col) +" =case when isnull(a.col"+string(li_col)+",'') = '' then '|ALL|' else a.col"+string(li_col)+" end,"
	if ls_concat = '' then 
		ls_concat = "isnull(a.col"+string(li_col)+",'') =''"
	else
		ls_concat = ls_concat+ " or "+ "isnull(a.col"+string(li_col)+",'') =''"
	end if
next
ls_sql = left(ls_sql, len(ls_sql) -1)
ls_sql+=" from "+is_temp_table +" a  where "
ls_sql+=ls_concat

EXECUTE IMMEDIATE :ls_sql;
COMMIT ;

if ib_replace  then 

	ls_sql = "DELETE FROM DeleteMake_Profile_Detail "+&
			" WHERE EXISTS(SELECT 1 "+&
						" FROM "+ is_temp_table +" a "+&
						" WHERE a.col1=DeleteMake_Profile_Detail.ProfileID)"
	EXECUTE IMMEDIATE :ls_sql;

	if sqlca.sqlcode<>0 then 
		ls_errtext =  sqlca.sqlerrtext
		ROLLBACK;
		messagebox(this.title,ls_errtext)
		return
	end if		
					
	ls_sql = "INSERT DeleteMake_Profile_Detail( "+ ls_cols+") "+&
			" SELECT col1,col2,col3 ,col4,col5 ,col6, col7 "+&
						" FROM "+is_temp_table + " a "
	EXECUTE IMMEDIATE :ls_sql;
	
	if sqlca.sqlcode<>0 then 		
		ls_errtext =  sqlca.sqlerrtext
		ROLLBACK;
		messagebox(this.title,ls_errtext)
	else
		COMMIT ;
	end if
end if


end subroutine

public subroutine wf_export ();int li_row, li_startrow, li_ret
string ls_filename, ls_sql, ls_option, ls_cols, ls_fileext, ls_src_table
datastore lds_data
boolean lb_heading = false
dw_error.reset()
wf_log("Exporting..")
wf_log("Export Start:" + string(now(),"hh:mm:ss"))
dw_1.accepttext()
li_row = dw_1.getrow()
li_startrow =dw_1.object.import_head_flag[li_row]
ls_filename = dw_1.getitemstring(li_row, 'file_name')
ls_option= dw_1.getitemstring(li_row, 'job_option')

if ls_filename="" or isnull(ls_filename) then
	MessageBox(this.title,"Please select a file to export to.")
	return
end if

choose case ls_option
	case 'Header'
		ls_src_table	='deletemake_profile_master'
	case 'Detail'
		ls_src_table	='deletemake_profile_detail'
end choose

 select stuff ((select ', '+ column_name
 into:ls_cols
 from information_schema.columns
 where table_name=:ls_src_table
 for xml path ( '')) , 1,1,'' );
	
if ls_src_table = 'deletemake_profile_master' then
	 select stuff ((select ', '+ column_name
	 into:ls_cols
	 from information_schema.columns
	 where table_name=:ls_src_table
	 and column_name<>'userid'
	 for xml path ( '')) , 1,1,'' );
 end if
 
 if ls_src_table = 'deletemake_profile_detail' then
	 select stuff ((select ', '+ column_name
	 into:ls_cols
	 from information_schema.columns
	 where table_name=:ls_src_table
	 and column_name<>'id'
	 for xml path ( '')) , 1,1,'' );
 end if
	
ls_sql = "select "+ ls_cols+" from "+ ls_src_table
lds_data = inv_win_svc.of_create_ds(ls_sql)
lds_data.retrieve()

ls_fileext = mid(ls_filename, lastpos(ls_filename,'.')+1)
if li_startrow=2 then lb_heading= true

if fileexists(ls_filename) then filedelete(ls_filename)
If Upper(ls_fileext) = 'XLSX' Then
	li_ret = lds_data.SaveAs(ls_filename, XLSX!, lb_heading)
Else
	// Save data in selected format.
	CHOOSE CASE Upper(ls_fileext)	
		CASE "XLS"
			li_ret = lds_data.SaveAs(ls_filename, Excel8!, lb_heading)		
		CASE "CSV"		
			li_ret = lds_data.SaveAs(ls_filename, CSV!, lb_heading)		
		CASE "TXT"
			li_ret = lds_data.SaveAs(ls_filename, Text!, lb_heading )	
		CASE ELSE
			MessageBox("Export ...", "Unable to export data to the specified file type.  Please check the file name specified and try again.", Exclamation!, Ok!)
			return	
	END CHOOSE
End If

if li_ret > 0 then
	wf_log("Data export has been successfully completed!")	
else
	wf_log("An undetermined error occurred during data export.  Data export failed..")	
end if

wf_log("Export Finish:" + string(now(),"hh:mm:ss"))

if li_ret > 0 then
	messagebox(this.title,"Data export has been successfully completed!")	
else
	messagebox(this.title,"An undetermined error occurred during data export.  Data export failed..")	
end if
if isvalid(lds_data) then destroy lds_data
end subroutine

public subroutine wf_log (string as_msg);int li_row
li_row=dw_error.insertrow(0)
dw_error.setitem(li_row,'message',as_msg)
end subroutine

on w_import.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.gb_2=create gb_2
this.dw_error=create dw_error
this.Control[]={this.cb_2,&
this.cb_1,&
this.dw_1,&
this.gb_2,&
this.dw_error}
end on

on w_import.destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
destroy(this.gb_2)
destroy(this.dw_error)
end on

event open;is_tran_mode = message.stringparm
ii_spid = uf_get_spid()
ii_spid = 79
is_temp_table_error+=is_temp_table +string(ii_spid)+"_error"
is_temp_table+= string(ii_spid)		
wf_set_dw_errlog()

if is_tran_mode ='EXPORT' then 
	gb_2.text =  'Message'
	this.title ='Export Profile'
	dw_1.modify("job_method.visible ='0'")
	dw_1.modify("import_head_flag.checkbox.text ='Export file includes column headings'")
	cb_1.text ='Export'
end if
end event

event close;string ls_syntax
ls_syntax ='DROP TABLE '+ is_temp_table_error
EXECUTE IMMEDIATE :ls_syntax;
COMMIT;
ls_syntax ='DROP TABLE '+ is_temp_table
EXECUTE IMMEDIATE :ls_syntax;
COMMIT;

end event

type cb_2 from commandbutton within w_import
integer x = 1349
integer y = 1172
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Microsoft Sans Serif"
string text = "Cancel"
end type

event clicked;close(parent)
end event

type cb_1 from commandbutton within w_import
integer x = 901
integer y = 1176
integer width = 402
integer height = 108
integer taborder = 30
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Microsoft Sans Serif"
string text = "Import"
boolean default = true
end type

event clicked;if dw_1.rowcount() = 0 then return
wf_set_dw_errlog()
dw_error.reset()
dw_error.insertrow(0)
if is_tran_mode = 'IMPORT' then 
	wf_import()
else
	wf_export()
end if
end event

type dw_1 from datawindow within w_import
integer x = 50
integer y = 44
integer width = 2546
integer height = 300
integer taborder = 20
string title = "none"
string dataobject = "dw_import_profile_opt"
boolean border = false
borderstyle borderstyle = stylelowered!
end type

event constructor;insertrow(0)
end event

event buttonclicked;Long ll_rtnCode
String ls_path,ls_file, ls_ExportFormat

if dwo.name='cb_import' then 
	if is_tran_mode = 'IMPORT' then
		ll_rtnCode = GetFileOpenName("Select Data Import File", ls_path, ls_file, "", &
										  "Tab Delimited Text File (*.TXT),*.TXT, Comma Delimited Text (*.CSV),*.CSV")
	else	
		ls_ExportFormat= "Comma Delimited Text (*.CSV),*.CSV,Tab Delimited Text (*.TXT),*.TXT"
		ll_rtnCode = GetFileSaveName("Select Data Export File", ls_path, ls_file, "", ls_ExportFormat)
	end if
	If ll_rtnCode=1 Then
		this.object.file_name[row]=ls_path
	End if
end if

wf_set_dw_errlog()


end event

event itemchanged;if dwo.name='job_option' then 
	post wf_set_dw_errlog()
end if
end event

type gb_2 from groupbox within w_import
integer x = 78
integer y = 352
integer width = 2510
integer height = 768
integer taborder = 10
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Microsoft Sans Serif"
long textcolor = 33554432
long backcolor = 67108864
string text = " Errors "
end type

type dw_error from datawindow within w_import
integer x = 123
integer y = 436
integer width = 2418
integer height = 652
integer taborder = 20
boolean bringtotop = true
string title = "none"
boolean border = false
borderstyle borderstyle = stylelowered!
end type

