$PBExportHeader$w_backup_interface.srw
forward
global type w_backup_interface from window
end type
type cb_cancel from commandbutton within w_backup_interface
end type
type cb_backup from commandbutton within w_backup_interface
end type
type cb_1 from commandbutton within w_backup_interface
end type
type sle_path from singlelineedit within w_backup_interface
end type
type cbx_nomessage from checkbox within w_backup_interface
end type
type cbx_3 from checkbox within w_backup_interface
end type
type cbx_2 from checkbox within w_backup_interface
end type
type cbx_1 from checkbox within w_backup_interface
end type
type gb_1 from groupbox within w_backup_interface
end type
type gb_2 from groupbox within w_backup_interface
end type
type str_browseinfo from structure within w_backup_interface
end type
end forward

type str_browseinfo from structure
	long		howner
	long		pidlroot
	string		pszdisplayname
	string		lpsztitle
	long		ulflags
	long		lpfn
	long		lparam
	long		iimage
end type

global type w_backup_interface from window
integer x = 402
integer y = 100
integer width = 2016
integer height = 1344
boolean titlebar = true
string title = "Database Backup Window"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
cb_cancel cb_cancel
cb_backup cb_backup
cb_1 cb_1
sle_path sle_path
cbx_nomessage cbx_nomessage
cbx_3 cbx_3
cbx_2 cbx_2
cbx_1 cbx_1
gb_1 gb_1
gb_2 gb_2
end type
global w_backup_interface w_backup_interface

type prototypes
Function Long SHGetPathFromIDList(long pidl, Ref String pszPath) Library "shell32.dll" alias for "SHGetPathFromIDList;Ansi"
Function Long SHBrowseForFolder(str_BrowseInfo lpBrowseInfo) LIbrary "shell32.dll" alias for "SHBrowseForFolder;Ansi"
FUNCTION long GetFileAttributes(ref string lpFileName) LIBRARY "kernel32.dll" ALIAS FOR "GetFileAttributesA;Ansi"

end prototypes

on w_backup_interface.create
this.cb_cancel=create cb_cancel
this.cb_backup=create cb_backup
this.cb_1=create cb_1
this.sle_path=create sle_path
this.cbx_nomessage=create cbx_nomessage
this.cbx_3=create cbx_3
this.cbx_2=create cbx_2
this.cbx_1=create cbx_1
this.gb_1=create gb_1
this.gb_2=create gb_2
this.Control[]={this.cb_cancel,&
this.cb_backup,&
this.cb_1,&
this.sle_path,&
this.cbx_nomessage,&
this.cbx_3,&
this.cbx_2,&
this.cbx_1,&
this.gb_1,&
this.gb_2}
end on

on w_backup_interface.destroy
destroy(this.cb_cancel)
destroy(this.cb_backup)
destroy(this.cb_1)
destroy(this.sle_path)
destroy(this.cbx_nomessage)
destroy(this.cbx_3)
destroy(this.cbx_2)
destroy(this.cbx_1)
destroy(this.gb_1)
destroy(this.gb_2)
end on

type cb_cancel from commandbutton within w_backup_interface
integer x = 969
integer y = 1000
integer width = 402
integer height = 112
integer taborder = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Cancel"
boolean cancel = true
end type

event clicked;
close(parent)
end event

type cb_backup from commandbutton within w_backup_interface
integer x = 489
integer y = 1000
integer width = 402
integer height = 112
integer taborder = 70
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "&Backup"
boolean default = true
end type

event clicked;integer ret,i,li_FileNum,li_pos,li_len
string ls_path,ls_parameter[],ls_TalkpicDir,ls_File_Input
long ll_FLength

//Clear 4 parameter array
for i=1 to 4
	ls_parameter[i]=''
next

//Get the path for save
ls_path = trim(sle_path.Text)

If IsNull(ls_path) or ls_path = '' then
	  Messagebox("Input Error","Please enter the destination directory.")
	  sle_path.SetFocus()
	  return
End If 
//Check that if path is entered manually, it exists
ret=GetFileAttributes(ls_path)  
if ret< 0 then
	Messagebox("Input Error","Entered directory does not exist browse.")
	sle_path.SetFocus()
	sle_path.selecttext(1,len(ls_path))
	return
End If 
//if directory name is not DOS convention name put it inside " "
li_pos=pos(ls_path," ")
li_len=len(ls_path)
if li_pos>0 OR li_len>8 then
	ls_path='"'+ls_path+'"'
end if

// Let the path for log file the same as database file
ls_TalkpicDir=ls_path

if cbx_1.checked then ls_parameter[1]=' -d'
if cbx_2.checked then ls_parameter[2]=' -t'
if cbx_3.checked then ls_parameter[3]=' -y'
if cbx_NoMessage.checked then ls_parameter[4]=' -q'

//Delete previous log file
if FileExists(ls_TalkpicDir+"\Backuplog.txt") then
	Filedelete(ls_TalkpicDir+"\Backuplog.txt")
end if

//Backup database and create a log file in class directory
Run ('dbbackup.exe '+ls_parameter[1]+ls_parameter[2]+ls_parameter[3]+ls_parameter[4]+& 
	' -o '+ls_TalkpicDir+'\Backuplog.txt -c "eng=talkpic_v35;dbn=talkpic;uid=dba;pwd=dsgrules"'+ls_path)
	
if cbx_NoMessage.checked=false then //show messages
	
	//Read the log file and output it in a messagebox
	//Loop until the log file is written to disk by dbbackup
	DO
		ll_FLength = FileLength(ls_TalkpicDir+"\Backuplog.txt")
		li_FileNum = FileOpen(ls_TalkpicDir+"\Backuplog.txt",StreamMode!)
	LOOP UNTIL li_filenum>-1

	IF ll_FLength < 32767 THEN
			FileRead(li_FileNum, ls_File_Input)
			FileClose(li_FileNum)
			if trim(mid(ls_File_Input,1,22))=mid("specified database not found",1,22) then
				messagebox("Summary of backup results","Error: "+ls_file_input+"make sure the database is running",StopSign!,Ok!)
			else
				messagebox("Summary of backup results",ls_file_input)
			end if
	END IF
end if
close(Parent)


end event

type cb_1 from commandbutton within w_backup_interface
integer x = 1390
integer y = 744
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Browse"
end type

event clicked;str_BrowseInfo str_bi
long ll_pidl, ll_return, i
String ls_path

ls_path = ''
str_bi.hOwner = Handle(this)
str_bi.pidlRoot = 0   // Browse Start Directory. If 0 , Browse from desktop
str_bi.lpszTitle = "Select your directory"  // Title for the dialogue
str_bi.ulFlags = 1  // only display directory

// Show Browse window
ll_pidl = SHBrowseForFolder(str_bi)  

// Get the selected directory

If SHGetPathFromIDList(ll_pidl, ls_path) > 0 Then
	sle_path.text = ls_path
End If



end event

type sle_path from singlelineedit within w_backup_interface
integer x = 96
integer y = 748
integer width = 1230
integer height = 100
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type cbx_nomessage from checkbox within w_backup_interface
integer x = 114
integer y = 404
integer width = 1234
integer height = 80
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Operate quietly without displaying mesages"
end type

type cbx_3 from checkbox within w_backup_interface
integer x = 114
integer y = 308
integer width = 1367
integer height = 80
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Operate (replace files) without confirming actions"
end type

type cbx_2 from checkbox within w_backup_interface
integer x = 114
integer y = 212
integer width = 814
integer height = 80
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
string text = "Backup transaction file only"
end type

event clicked;if checked then
	cbx_1.enabled=false
else
	cbx_1.enabled=true
end if
end event

type cbx_1 from checkbox within w_backup_interface
integer x = 114
integer y = 116
integer width = 1344
integer height = 80
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Backup main database only (no transaction log)"
end type

event clicked;if checked then
	cbx_2.enabled=false
else
	cbx_2.enabled=true
end if
end event

type gb_1 from groupbox within w_backup_interface
integer x = 46
integer y = 36
integer width = 1856
integer height = 572
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Choose backup options"
borderstyle borderstyle = styleraised!
end type

type gb_2 from groupbox within w_backup_interface
integer x = 50
integer y = 648
integer width = 1856
integer height = 276
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Choose destination directory"
borderstyle borderstyle = styleraised!
end type

