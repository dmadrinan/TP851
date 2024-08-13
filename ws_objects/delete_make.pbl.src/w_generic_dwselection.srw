$PBExportHeader$w_generic_dwselection.srw
forward
global type w_generic_dwselection from window
end type
type st_1 from statictext within w_generic_dwselection
end type
type cb_cancel from commandbutton within w_generic_dwselection
end type
type cb_sort from commandbutton within w_generic_dwselection
end type
type cb_ok from commandbutton within w_generic_dwselection
end type
type dw_filter from datawindow within w_generic_dwselection
end type
type dw_sel from datawindow within w_generic_dwselection
end type
end forward

global type w_generic_dwselection from window
integer width = 4119
integer height = 2728
boolean titlebar = true
string title = "Selection"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_1 st_1
cb_cancel cb_cancel
cb_sort cb_sort
cb_ok cb_ok
dw_filter dw_filter
dw_sel dw_sel
end type
global w_generic_dwselection w_generic_dwselection

type variables
datastore ids_ret
str_dwselection istr_dwselection
Boolean ib_FromClickedEvent

//KHPG20160516 add new variable to keep the exisiting filter expression
String is_existing_filter_exp
end variables

forward prototypes
public subroutine wf_changeto_grid (datawindow adw)
end prototypes

public subroutine wf_changeto_grid (datawindow adw);String ls_syntax

// Change dw to grid style
ls_syntax = adw.Object.DataWindow.Syntax
If Pos(ls_syntax, "processing=0") > 0 Then ls_syntax = replace(ls_syntax, Pos(ls_syntax, "processing=0"), Len("processing=0"), "processing=1")
adw.Create(ls_syntax)
adw.Object.DataWindow.Grid.Lines = 0
adw.Object.DataWindow.Syntax.Modified='No'

end subroutine

on w_generic_dwselection.create
this.st_1=create st_1
this.cb_cancel=create cb_cancel
this.cb_sort=create cb_sort
this.cb_ok=create cb_ok
this.dw_filter=create dw_filter
this.dw_sel=create dw_sel
this.Control[]={this.st_1,&
this.cb_cancel,&
this.cb_sort,&
this.cb_ok,&
this.dw_filter,&
this.dw_sel}
end on

on w_generic_dwselection.destroy
destroy(this.st_1)
destroy(this.cb_cancel)
destroy(this.cb_sort)
destroy(this.cb_ok)
destroy(this.dw_filter)
destroy(this.dw_sel)
end on

event open;int li_index, li_cols

istr_dwselection = Message.PowerObjectParm	

if istr_dwselection.dw_input.rowcount() <= 0 then
	close(this)
	return
end if

if Upper(istr_dwselection.s_type) = "SINGLE" then
	st_1.text = "Single Selection or Double Click"
else
	st_1.text = "Use Shift or Ctrl Keys for multiselect"
end if

if istr_dwselection.s_title <> "" then This.Title = istr_dwselection.s_title

//PGKH20160516 get filter expression
is_existing_filter_exp = trim(istr_dwselection.dw_input.object.datawindow.table.filter)
if is_existing_filter_exp='?' or is_existing_filter_exp='!' then is_existing_filter_exp = ''
//PGKH20160516 End

dw_sel.dataobject = istr_dwselection.dw_input.dataobject

dw_filter.dataobject = istr_dwselection.dw_input.dataobject
dw_filter.Object.DataWindow.Header.Height=0

//[PG20171017] Add start
// Change dw to grid style
wf_changeto_grid(dw_sel)
wf_changeto_grid(dw_filter)
//[PG20171017] Add end

li_cols = Integer(dw_filter.Object.DataWindow.Column.Count)
for li_index = 1 to li_cols
	dw_filter.Modify("#" + string(li_index) + ".TabSequence='" + string(li_index) + "'")
	dw_filter.Modify("#" + string(li_index) + ".Border='5'")
	dw_filter.Modify("#" + string(li_index) + ".Height.AutoSize='No'")
	dw_sel.Modify("#" + string(li_index) + ".Border='5'")
	// [PG20140513] Add start
	dw_filter.Modify("#" + string(li_index) + ".Edit.DisplayOnly='No'")
	// [PG20140513] Add end
	// [PG20171018] Add start
	// Double the column width for user convinience
	dw_sel.Modify("#" + string(li_index) + ".width='" + String(2*Long(dw_sel.Describe("#" + string(li_index) + ".width"))) + "'")
next
uf_dw_sync_colwidth(dw_sel, dw_filter)
	// [PG20171018] Add end

dw_filter.insertrow(0)

istr_dwselection.dw_input.sharedata(dw_sel)
dw_sel.setfocus()
end event

event resize;dw_filter.width = newwidth - dw_filter.x * 2

dw_sel.width = newwidth - dw_sel.x * 2
dw_sel.height = newheight - dw_sel.y - 200

end event

event close;// [PG20150819] Add start
// Clear the filter to prevent affecting the source datawindow

//PGKH20160516 use existing filter expression
dw_sel.SetFilter(is_existing_filter_exp)
dw_sel.Filter()
//PGKH20160516 End

// [PG20150819] Add end

end event

type st_1 from statictext within w_generic_dwselection
integer x = 41
integer y = 52
integer width = 1051
integer height = 64
integer textsize = -9
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
long backcolor = 79741120
string text = "Use Shift or Ctrl Keys for multiselect"
boolean focusrectangle = false
end type

type cb_cancel from commandbutton within w_generic_dwselection
integer x = 2034
integer y = 2532
integer width = 402
integer height = 92
integer taborder = 40
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Cancel"
boolean cancel = true
end type

event clicked;// [PG20150819] Modify start
// Do not need to clear the selection of source datawindow
//istr_dwselection.dw_input.selectrow(0, False)
// [PG20150819] Modify end

close(parent)
end event

type cb_sort from commandbutton within w_generic_dwselection
integer x = 3653
integer y = 2532
integer width = 402
integer height = 92
integer taborder = 50
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Sort"
end type

event clicked;string null_str

SetNull(null_str)

dw_sel.SetSort(null_str)

dw_sel.Sort( )
end event

type cb_ok from commandbutton within w_generic_dwselection
integer x = 1632
integer y = 2532
integer width = 402
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

event clicked;long ll_index, ll_rows

ib_FromClickedEvent = True

dw_sel.SetFilter("")
dw_sel.Filter()
ll_rows = dw_sel.rowcount()
for ll_index = 1 to ll_rows
	if dw_sel.IsSelected(ll_index) then
		istr_dwselection.dw_input.selectrow(ll_index, true)
	end if
next

close(parent)


end event

type dw_filter from datawindow within w_generic_dwselection
event ue_lbuttonup pbm_dwnlbuttonup
integer x = 41
integer y = 132
integer width = 4027
integer height = 112
integer taborder = 10
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event ue_lbuttonup;Post uf_dw_sync_colwidth(This, dw_sel)
end event

event editchanged;accepttext( )

//KH20160301 Applying the changes to call global function for filteration
//wf_filter_string(this,dw_sel)

//PGKH20160516 use existing filter expression
//		uf_dw_filter(this,dw_sel)
uf_dw_filter_hdvin(this,dw_sel, is_existing_filter_exp)
//
end event

event getfocus;

This.SelectText(1, Len(GetText()))
end event

type dw_sel from datawindow within w_generic_dwselection
event ue_dwnkey pbm_dwnkey
event ue_lbuttonup pbm_dwnlbuttonup
integer x = 41
integer y = 256
integer width = 4032
integer height = 2236
integer taborder = 20
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event ue_lbuttonup;Post uf_dw_sync_colwidth(This, dw_filter)
end event

event clicked;if Row <= 0 then return

if istr_dwselection.s_type = 'single' then
	this.selectrow(0, false)
	this.selectrow(row, true)
	
else
	uf_multiselect_dw(this, row)	
end if



end event

event doubleclicked;if Row <= 0 then return

cb_ok.triggerevent(Clicked!)
end event

event getfocus;

This.SelectRow(GetRow(), true)
end event

event rowfocuschanged;


If KeyDown(KeyDownArrow!) Then
	This.SelectRow(CurrentRow - 1,FALSE)
	This.SelectRow(CurrentRow,TRUE)
ElseIf KeyDown(KeyUpArrow!) Then
	This.SelectRow(CurrentRow + 1,FALSE)
	This.SelectRow(CurrentRow,TRUE)
End If
end event

event scrollhorizontal;dw_filter.Object.datawindow.horizontalscrollposition = scrollpos
end event

