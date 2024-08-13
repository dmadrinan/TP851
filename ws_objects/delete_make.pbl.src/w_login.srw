$PBExportHeader$w_login.srw
forward
global type w_login from window
end type
type st_2 from statictext within w_login
end type
type st_1 from statictext within w_login
end type
type sle_password from singlelineedit within w_login
end type
type sle_userid from singlelineedit within w_login
end type
type cb_cancel from commandbutton within w_login
end type
type cb_ok from commandbutton within w_login
end type
type gb_1 from groupbox within w_login
end type
type gb_3 from groupbox within w_login
end type
end forward

global type w_login from window
integer width = 1815
integer height = 872
boolean titlebar = true
string title = "User Login"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
boolean center = true
st_2 st_2
st_1 st_1
sle_password sle_password
sle_userid sle_userid
cb_cancel cb_cancel
cb_ok cb_ok
gb_1 gb_1
gb_3 gb_3
end type
global w_login w_login

type variables
String is_Enabled_Objects[]
string is_date_format
string is_start, is_end
date id_from_date, id_to_date

end variables

on w_login.create
this.st_2=create st_2
this.st_1=create st_1
this.sle_password=create sle_password
this.sle_userid=create sle_userid
this.cb_cancel=create cb_cancel
this.cb_ok=create cb_ok
this.gb_1=create gb_1
this.gb_3=create gb_3
this.Control[]={this.st_2,&
this.st_1,&
this.sle_password,&
this.sle_userid,&
this.cb_cancel,&
this.cb_ok,&
this.gb_1,&
this.gb_3}
end on

on w_login.destroy
destroy(this.st_2)
destroy(this.st_1)
destroy(this.sle_password)
destroy(this.sle_userid)
destroy(this.cb_cancel)
destroy(this.cb_ok)
destroy(this.gb_1)
destroy(this.gb_3)
end on

event open;
	
if upper(trim(gs_tp_profile )) =  upper(trim(gs_aces_profile))  then	
	uf_set_dba()
else
	uf_set_dba_pre()
end if

sle_userid.SetFocus()

end event

type st_2 from statictext within w_login
integer x = 210
integer y = 300
integer width = 265
integer height = 52
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
long backcolor = 67108864
string text = "Password:"
boolean focusrectangle = false
end type

type st_1 from statictext within w_login
integer x = 210
integer y = 172
integer width = 210
integer height = 52
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
long backcolor = 67108864
string text = "User Id:"
boolean focusrectangle = false
end type

type sle_password from singlelineedit within w_login
integer x = 530
integer y = 296
integer width = 777
integer height = 92
integer taborder = 20
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
boolean password = true
integer limit = 20
borderstyle borderstyle = stylelowered!
end type

type sle_userid from singlelineedit within w_login
integer x = 530
integer y = 152
integer width = 631
integer height = 92
integer taborder = 10
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
integer limit = 10
borderstyle borderstyle = stylelowered!
end type

event modified;//cb_advanced.triggerevent(clicked!)
end event

type cb_cancel from commandbutton within w_login
integer x = 905
integer y = 564
integer width = 375
integer height = 92
integer taborder = 40
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Cancel"
end type

event clicked;Close(parent)
end event

type cb_ok from commandbutton within w_login
integer x = 480
integer y = 564
integer width = 375
integer height = 92
integer taborder = 30
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "OK"
boolean default = true
end type

event clicked;string ls_userid, ls_password, ls_user_check, ls_pass_check
string ls_user_type

ls_userid = Trim(sle_userid.text)
ls_password = Trim(sle_password.text)

SetPointer(HourGlass!)
if NOT IsNull(ls_userid) and Trim(ls_userid) <> '' and &
   NOT IsNull(ls_password) and Trim(ls_password) <> '' then
			
	 SELECT users.user_id,   
         users.password  
         INTO :ls_userid, :ls_password
		 FROM users  
		WHERE ( users.user_id =:ls_userid  ) AND  
        				 ( users.password =  :ls_password)   ;

   if SQLCA.SQLCODE <> 0 then
		Messagebox("Input Error", "User Id or Password is misstyped, please try again.")
	   sle_userid.selecttext(1, len(sle_userid.text))
		sle_userid.setfocus()
		Return
	else
		// Check for permissions
		SELECT users.user_type  
		 INTO :ls_user_type  
		 FROM users  
		WHERE users.user_id = :ls_userid ;
		
		if upper(ls_user_type )<>'MASTER USER' then
			messagebox('Delete Make',' Users with Master User privilege are allowed to login.',Exclamation!,OK!)
			Return
		end if
	
		// Assign the user id to global variable for application CLOSE event purposes.
		gs_userid = ls_userid

		// [PG20140912] Add start
		uf_geterrorpath( gs_errorpath, gs_resultpath )
		// [PG20140912] Add end		
		Close(parent)
		
	end if
else
	Messagebox("Input Error", "User Id and Password can not be null.")
   sle_userid.selecttext(1, len(sle_userid.text))
	sle_userid.setfocus()
	Return
end if

end event

type gb_1 from groupbox within w_login
integer x = 142
integer y = 68
integer width = 1550
integer height = 396
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
long backcolor = 67108864
string text = "User login"
end type

type gb_3 from groupbox within w_login
integer x = 55
integer y = 24
integer width = 1682
integer height = 680
integer taborder = 50
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
long backcolor = 67108864
borderstyle borderstyle = styleraised!
end type

