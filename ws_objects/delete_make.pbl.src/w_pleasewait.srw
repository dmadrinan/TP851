$PBExportHeader$w_pleasewait.srw
forward
global type w_pleasewait from window
end type
type st_1 from statictext within w_pleasewait
end type
end forward

global type w_pleasewait from window
integer x = 690
integer y = 336
integer width = 1513
integer height = 328
boolean titlebar = true
string title = "Bulk Delete Utility"
windowtype windowtype = child!
long backcolor = 79741120
st_1 st_1
end type
global w_pleasewait w_pleasewait

on w_pleasewait.create
this.st_1=create st_1
this.Control[]={this.st_1}
end on

on w_pleasewait.destroy
destroy(this.st_1)
end on

type st_1 from statictext within w_pleasewait
integer y = 64
integer width = 1499
integer height = 64
integer textsize = -8
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
boolean enabled = false
string text = "Retrieving, please wait . . ."
alignment alignment = center!
boolean focusrectangle = false
end type

