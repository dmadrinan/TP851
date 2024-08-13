$PBExportHeader$w_main.srw
$PBExportComments$Main window
forward
global type w_main from window
end type
type mdi_1 from mdiclient within w_main
end type
type st_1 from statictext within w_main
end type
end forward

global type w_main from window
integer width = 3383
integer height = 2124
boolean titlebar = true
string title = "Flush Data"
string menuname = "mnu_main"
boolean controlmenu = true
boolean minbox = true
boolean resizable = true
windowtype windowtype = mdihelp!
long backcolor = 33221598
string icon = "DeleteData.ico"
boolean center = true
mdi_1 mdi_1
st_1 st_1
end type
global w_main w_main

type variables
//Transaction SQLTrans
boolean cancelflag

end variables

on w_main.create
if this.MenuName = "mnu_main" then this.MenuID = create mnu_main
this.mdi_1=create mdi_1
this.st_1=create st_1
this.Control[]={this.mdi_1,&
this.st_1}
end on

on w_main.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.mdi_1)
destroy(this.st_1)
end on

type mdi_1 from mdiclient within w_main
long BackColor=32689064
end type

type st_1 from statictext within w_main
integer x = 18
integer y = 1712
integer width = 3319
integer height = 220
integer textsize = -26
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 32689064
long backcolor = 33221598
string text = " SGI  IN  HOUSE  UTILITY  "
alignment alignment = right!
long bordercolor = 8388608
boolean focusrectangle = false
boolean disabledlook = true
end type

