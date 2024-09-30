$PBExportHeader$w_delete_make.srw
forward
global type w_delete_make from window
end type
type cb_reset from commandbutton within w_delete_make
end type
type dw_profile_master from datawindow within w_delete_make
end type
type dw_profile from datawindow within w_delete_make
end type
type cb_delete_profile from commandbutton within w_delete_make
end type
type cb_new from commandbutton within w_delete_make
end type
type cb_save from commandbutton within w_delete_make
end type
type cbx_singleuser from checkbox within w_delete_make
end type
type dw_year_to from datawindow within w_delete_make
end type
type st_10 from statictext within w_delete_make
end type
type dw_year_from from datawindow within w_delete_make
end type
type st_9 from statictext within w_delete_make
end type
type st_8 from statictext within w_delete_make
end type
type dw_model_filter from datawindow within w_delete_make
end type
type dw_make_filter from datawindow within w_delete_make
end type
type dw_class_filter from datawindow within w_delete_make
end type
type pb_1 from picturebutton within w_delete_make
end type
type cbx_all_brand from checkbox within w_delete_make
end type
type dw_brand from datawindow within w_delete_make
end type
type dw_brand_filter from datawindow within w_delete_make
end type
type dw_vendor_filter from datawindow within w_delete_make
end type
type dw_vendor from datawindow within w_delete_make
end type
type cbx_all_vendor from checkbox within w_delete_make
end type
type pb_vendor from picturebutton within w_delete_make
end type
type dw_line_filter from datawindow within w_delete_make
end type
type pb_make from picturebutton within w_delete_make
end type
type pb_model from picturebutton within w_delete_make
end type
type pb_line from picturebutton within w_delete_make
end type
type pb_class from picturebutton within w_delete_make
end type
type cbx_all_models from checkbox within w_delete_make
end type
type cbx_all_makes from checkbox within w_delete_make
end type
type cbx_all_models_del from checkbox within w_delete_make
end type
type cbx_all_make_del from checkbox within w_delete_make
end type
type cbx_all_line from checkbox within w_delete_make
end type
type cbx_all_class from checkbox within w_delete_make
end type
type cbx_model from checkbox within w_delete_make
end type
type cbx_make from checkbox within w_delete_make
end type
type cbx_part_spec_value from checkbox within w_delete_make
end type
type cbx_part_spec_temp from checkbox within w_delete_make
end type
type cbx_part_ftnt_attachments from checkbox within w_delete_make
end type
type cbx_part_ftnt_def from checkbox within w_delete_make
end type
type cbx_line from checkbox within w_delete_make
end type
type cbx_class from checkbox within w_delete_make
end type
type cbx_parts from checkbox within w_delete_make
end type
type mle_3 from multilineedit within w_delete_make
end type
type cb_help from commandbutton within w_delete_make
end type
type cb_close from commandbutton within w_delete_make
end type
type cb_process from commandbutton within w_delete_make
end type
type dw_line from datawindow within w_delete_make
end type
type dw_class from datawindow within w_delete_make
end type
type dw_make from datawindow within w_delete_make
end type
type dw_model from datawindow within w_delete_make
end type
type gb_3 from groupbox within w_delete_make
end type
type gb_1 from groupbox within w_delete_make
end type
type gb_5 from groupbox within w_delete_make
end type
type cbx_part_interchange from checkbox within w_delete_make
end type
type cbx_app_ftnt_def from checkbox within w_delete_make
end type
type cbx_app_spec_temp from checkbox within w_delete_make
end type
type cbx_modelgroup_print from checkbox within w_delete_make
end type
type cbx_modelgroup_inquiry from checkbox within w_delete_make
end type
type gb_2 from groupbox within w_delete_make
end type
type gb_4 from groupbox within w_delete_make
end type
type gb_vendor from groupbox within w_delete_make
end type
type gb_brand from groupbox within w_delete_make
end type
type gb_6 from groupbox within w_delete_make
end type
type gb_7 from groupbox within w_delete_make
end type
end forward

global type w_delete_make from window
integer x = 247
integer y = 200
integer width = 5120
integer height = 3228
boolean titlebar = true
string title = "Delete Data Based on a Criteria"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 79741120
string icon = "DeleteData.ico"
boolean center = true
event ue_postopen ( )
cb_reset cb_reset
dw_profile_master dw_profile_master
dw_profile dw_profile
cb_delete_profile cb_delete_profile
cb_new cb_new
cb_save cb_save
cbx_singleuser cbx_singleuser
dw_year_to dw_year_to
st_10 st_10
dw_year_from dw_year_from
st_9 st_9
st_8 st_8
dw_model_filter dw_model_filter
dw_make_filter dw_make_filter
dw_class_filter dw_class_filter
pb_1 pb_1
cbx_all_brand cbx_all_brand
dw_brand dw_brand
dw_brand_filter dw_brand_filter
dw_vendor_filter dw_vendor_filter
dw_vendor dw_vendor
cbx_all_vendor cbx_all_vendor
pb_vendor pb_vendor
dw_line_filter dw_line_filter
pb_make pb_make
pb_model pb_model
pb_line pb_line
pb_class pb_class
cbx_all_models cbx_all_models
cbx_all_makes cbx_all_makes
cbx_all_models_del cbx_all_models_del
cbx_all_make_del cbx_all_make_del
cbx_all_line cbx_all_line
cbx_all_class cbx_all_class
cbx_model cbx_model
cbx_make cbx_make
cbx_part_spec_value cbx_part_spec_value
cbx_part_spec_temp cbx_part_spec_temp
cbx_part_ftnt_attachments cbx_part_ftnt_attachments
cbx_part_ftnt_def cbx_part_ftnt_def
cbx_line cbx_line
cbx_class cbx_class
cbx_parts cbx_parts
mle_3 mle_3
cb_help cb_help
cb_close cb_close
cb_process cb_process
dw_line dw_line
dw_class dw_class
dw_make dw_make
dw_model dw_model
gb_3 gb_3
gb_1 gb_1
gb_5 gb_5
cbx_part_interchange cbx_part_interchange
cbx_app_ftnt_def cbx_app_ftnt_def
cbx_app_spec_temp cbx_app_spec_temp
cbx_modelgroup_print cbx_modelgroup_print
cbx_modelgroup_inquiry cbx_modelgroup_inquiry
gb_2 gb_2
gb_4 gb_4
gb_vendor gb_vendor
gb_brand gb_brand
gb_6 gb_6
gb_7 gb_7
end type
global w_delete_make w_delete_make

type variables

String	is_class[], is_line[], is_vendor[], is_brand[], is_make[], is_model[], Dummy[], is_main_sql

Boolean ib_logError=True, ib_First_Time = True
String is_FileName


datawindowchild  idwc_year_from, idwc_year_to
String is_FromYear, is_ToYear
Boolean ib_enableaudit

datawindowchild  idwc_profile
Datastore ids_profile
String is_error_message, is_Pre_ProfileID
//Save Flag
Boolean ib_new_profile = false, ib_Profile_modified = false
Boolean ib_Class_modified = False, ib_Line_modified = False, ib_Vendor_modified = False, ib_Brand_modified = False 
Boolean ib_make_modified = False, ib_model_modified = False, ib_year_modified = False
boolean ib_saveas
end variables

forward prototypes
public subroutine wf_toggle (boolean ab_checked, string as_type)
public subroutine wf_loadclass ()
public subroutine wf_loadline ()
public subroutine wf_loadmake ()
public subroutine wf_loadmodel ()
public subroutine disableaudit ()
public subroutine enableaudit ()
public function integer wf_execute_sql (string as_sql, string as_error_msg, transaction at_sqltrans)
public subroutine wf_error_display (string as_message)
public subroutine wf_loadvendor ()
public subroutine wf_loadbrand ()
public function boolean wf_save ()
public function boolean wf_create_profile_tables ()
public subroutine wf_retrieve_profile (string as_profileid)
public function integer wf_retrieve_detail (string as_profileid)
public function boolean wf_get_checkboxstatus (checkbox acbx_checkbox)
public subroutine wf_heightlight_dw (string as_type, datawindow adw_data)
public subroutine wf_reset_year ()
public function boolean wf_load_criteria_into_master (string as_profileid)
public function boolean wf_load_criteria_into_detail (string as_profileid)
public subroutine wf_reset_profile ()
public subroutine wf_enable_dw (boolean ab_enabled)
end prototypes

event ue_postopen();

Open ( w_pleasewait )

wf_enable_dw(False)

wf_create_profile_tables()

dw_profile.settransobject(sqlca)
dw_profile.getchild( 'profileid', idwc_profile)
idwc_profile.settransobject(sqlca)
dw_profile.insertrow(1)
dw_profile.SetText('')
idwc_profile.Retrieve(1)

dw_profile_master.settransobject(sqlca)
dw_profile_master.InsertRow(0)

dw_Class.Retrieve() 
//is_Class[1] = '|ALL|'

//dw_Line.Retrieve( is_Class )
//is_Line[1] = '|ALL|'
//
//dw_Vendor.Retrieve( is_Class, is_Line )
//is_vendor[1] = '|ALL|'
//
//dw_Brand.Retrieve( is_Class, is_Line, is_Vendor )

//uf_geterrorpath( gs_errorpath, gs_resultpath )
Close ( w_pleasewait )

dw_year_from.settransobject(sqlca)
dw_year_To.settransobject(sqlca)
dw_year_from.getchild( 'year', idwc_year_from)
dw_year_To.getchild( 'year', idwc_year_to)
idwc_year_from.settransobject(sqlca)
idwc_year_to.settransobject(sqlca)

dw_year_from.INSERTROW(0)
dw_year_To.INSERTROW(0)

dw_vendor_filter.settransobject(sqlca)
dw_vendor_filter.insertrow(0)
dw_vendor_filter.Object.#2.TabSequence='10'
dw_vendor_filter.Object.#1.TabSequence='20'
uf_dwfilter_format ( dw_vendor_filter )

dw_brand_filter.settransobject(sqlca)
dw_brand_filter.insertrow(0)
dw_brand_filter.Object.#2.TabSequence='10'
dw_brand_filter.Object.#1.TabSequence='20'
uf_dwfilter_format ( dw_brand_filter )

dw_class_filter.settransobject(sqlca)
dw_class_filter.insertrow(0)
dw_class_filter.Object.#2.TabSequence='10'
dw_class_filter.Object.#1.TabSequence='20'
uf_dwfilter_format ( dw_class_filter )

dw_line_filter.settransobject(sqlca)
dw_line_filter.insertrow(0)
dw_line_filter.Object.#2.TabSequence='10'
dw_line_filter.Object.#1.TabSequence='20'
uf_dwfilter_format ( dw_line_filter )

dw_make_filter.settransobject(sqlca)
dw_make_filter.insertrow(0)
dw_make_filter.Object.#2.TabSequence='10'
dw_make_filter.Object.#1.TabSequence='20'
uf_dwfilter_format ( dw_make_filter )

dw_model_filter.settransobject(sqlca)
dw_model_filter.insertrow(0)
dw_model_filter.Object.#2.TabSequence='10'
dw_model_filter.Object.#1.TabSequence='20'
uf_dwfilter_format ( dw_model_filter )


end event

public subroutine wf_toggle (boolean ab_checked, string as_type);// This function is enabled , disabled and checked and unchecked depending upon 
// the selection FOR CLASS & LINE

IF ab_checked Then
	
	IF as_type = 'Class' Then
		cbx_line.Enabled 	= False
		cbx_line.Checked 	= True
	End if
	
	cbx_parts.Enabled							= False
	cbx_part_ftnt_def.Enabled				= False
	cbx_part_ftnt_attachments.Enabled	= False
	cbx_part_interchange.Enabled			= False
	cbx_part_spec_temp.Enabled			= False
	cbx_part_spec_value.Enabled			= False
	cbx_app_ftnt_def.Enabled				= False
	cbx_app_spec_temp.Enabled			= False
	cbx_modelgroup_print.Enabled			= False
	cbx_modelgroup_inquiry.Enabled		= False

	cbx_parts.Checked 						= True
	cbx_part_ftnt_def.Checked				= True
	cbx_part_ftnt_attachments.Checked	= True
	cbx_part_interchange.Checked			= True
	cbx_part_spec_temp.Checked			= True
	cbx_part_spec_value.Checked			= True
	cbx_app_ftnt_def.Checked				= True
	cbx_app_spec_temp.Checked			= True
	cbx_modelgroup_print.Checked			= True
	cbx_modelgroup_inquiry.Checked		= True
	
ELSE
	
	IF as_type = 'Class' Then
		cbx_line.Enabled							= True
	END IF
	
	IF as_type = 'Line' Then
		cbx_parts.Enabled 						= True
		cbx_part_ftnt_def.Enabled				= True
		cbx_part_ftnt_attachments.Enabled	= False
		cbx_part_interchange.Enabled			= False
		cbx_part_spec_temp.Enabled			= True
		cbx_part_spec_value.Enabled			= False
		cbx_app_ftnt_def.Enabled				= True
		cbx_app_spec_temp.Enabled			= True
		
		IF cbx_make.Checked OR cbx_model.Checked Then
			cbx_modelgroup_print.Enabled			= False
			cbx_modelgroup_inquiry.Enabled		= False
		ELSE
			cbx_modelgroup_print.Enabled			= True
			cbx_modelgroup_inquiry.Enabled		= True
		END IF
		
	End if
END IF
end subroutine

public subroutine wf_loadclass ();long SelectedRow, i


// Initialize the array.
is_Class[] = DUMMY[]
is_Line[] = DUMMY[]
is_Vendor[] = DUMMY[]
is_Brand[] = DUMMY[]
is_Make[] = DUMMY[]
is_Model[] = DUMMY[]

// Set the default Value '|ALL|'
is_Line[1] = '|ALL|'
is_Vendor[1] = '|ALL|'
is_Brand[1] = '|ALL|'
is_Make[1] = '|ALL|'
is_Model[1] = '|ALL|'

IF cbx_all_class.Checked Then
	is_class[1] = '|ALL|'
	Return
END IF

i = 1

// Load all selected product classes into an array.
SelectedRow = dw_Class.GetSelectedRow(0)
Do while SelectedRow <> 0
	is_Class[i] = dw_Class.GetItemString(SelectedRow, 1)
	i++
	SelectedRow = dw_Class.GetSelectedRow( SelectedRow ) 
Loop

If UpperBound( is_Class ) = 0 then is_Class[1] = ""

end subroutine

public subroutine wf_loadline ();Long SelectedRow, i


// Initialize the array.
is_Line = DUMMY
is_Vendor = DUMMY
is_Brand = DUMMY
is_Make = DUMMY
is_Model = DUMMY

// Set the default Value '|ALL|'
is_Vendor[1] = '|ALL|'
is_Brand[1] = '|ALL|'
is_Make[1] = '|ALL|'
is_Model[1] = '|ALL|'

IF cbx_all_line.Checked Then
	is_line[1] = '|ALL|'
	Return
END IF

i = 1

// Load all selected product Lines into an array.
SelectedRow = dw_Line.GetSelectedRow(0)
Do while SelectedRow <> 0
//	is_Line[i] = dw_Line.GetItemString(SelectedRow, 3) + "|" + dw_Line.GetItemString(SelectedRow, 1)
	is_Line[i] = dw_Line.GetItemString( SelectedRow, 1 )
	i++
	SelectedRow = dw_Line.GetSelectedRow( SelectedRow ) 
Loop

if UpperBound( is_Line ) = 0 then is_Line[1] = ""
end subroutine

public subroutine wf_loadmake ();Long SelectedRow, i

// Initialize the array.
is_Make[] = DUMMY[]
is_Model[] = DUMMY[]

// Set the default Value '|ALL|'
is_Model[1] = '|ALL|'

IF cbx_all_makes.Checked Then
	is_make[1] = '|ALL|'
	Return
END IF

i = 1

// Load all selected Makes into an array.
SelectedRow = dw_Make.GetSelectedRow(0)
Do while SelectedRow <> 0
	is_Make[ i ] = dw_Make.GetItemString( SelectedRow, 1 )
	i++
	SelectedRow = dw_Make.GetSelectedRow( SelectedRow ) 
Loop

IF UpperBound( is_Make ) = 0 then is_Make[ 1 ] = ""

end subroutine

public subroutine wf_loadmodel ();Long SelectedRow, i

// Initialize the array.
is_Model[ ] = DUMMY[ ]

IF cbx_all_models.Checked Then
	is_model[1] = '|ALL|'
	Return
END IF

i = 1

// Load all selected Models into an array.
SelectedRow = dw_Model.GetSelectedRow(0)
Do while SelectedRow <> 0
	is_Model[ i ] = dw_Model.GetItemString( SelectedRow, 1 )
	i++
	SelectedRow = dw_Model.GetSelectedRow( SelectedRow ) 
Loop

IF UpperBound( is_Model ) = 0 then is_Model[ 1 ] = ""

end subroutine

public subroutine disableaudit ();String ls_date, ls_tmpdrop, ls_userid
Int li_count 
String ls_sql

ls_userid = 'DeleteAppSession' // Delete Application Session Disable the Audit 

// [PG20150522] Modify start
//  sys.triggers for MS SQL 2005 or newer
/*
SELECT count(*)  
INTO :li_count  
FROM sysobjects  
WHERE ( sysobjects.name like '%audit%' ) AND 
		( sysobjects.type= 'TR' ) AND 
			( Str(sysobjects.status) like '%8' ) ;
*/
SELECT count(*)  
INTO :li_count  
FROM sys.triggers  
WHERE ( name like '%audit%' ) AND ( is_disabled = 0 ) ;

if li_count =0 then
//	Messagebox("Disable Audit Log","Audit log is already disabled.")
else			

	// Execute the procedure
	ls_sql = "sp_DisableTriggers" ;
	EXECUTE IMMEDIATE :ls_sql ;
	 
	
	// [PG20150522] Modify start
	//  sys.triggers for MS SQL 2005 or newer
	/*
	SELECT count(*)  
	INTO :li_count  
	FROM sysobjects  
	WHERE ( sysobjects.name like '%audit%' ) AND 
		( sysobjects.type= 'TR' ) AND 
		 ( Str(sysobjects.status) like '%8' ) ;
	*/
	SELECT count(*)  
	INTO :li_count  
	FROM sys.triggers  
	WHERE ( name like '%audit%' ) AND ( is_disabled = 0 ) ;
			
	
	if li_count >0 then
		Messagebox("Disable Audit Log","Could not disable the Audit Log successfuly.",EXCLAMATION!)
	else
		ls_date = String(today(),"mm/dd/yyyy hh:mm:ss")
		ls_tmpdrop = ls_userid + '_DROP'

		INSERT INTO "system_table"  
			( "system_key",   
			"system_value" )  
			VALUES ( :ls_date  ,   
				:ls_tmpdrop)  ;
		COMMIT ; 
	end if
end if


end subroutine

public subroutine enableaudit ();String ls_date, ls_tmpcreate, ls_userid
Int li_count 
String  ls_sql

ls_userid = 'DeleteAppSession' // Delete Application Session Disable the Audit 


// [PG20150522] Modify start
//  sys.triggers for MS SQL 2005 or newer
/*
SELECT count(*)  
INTO :li_count  
FROM sysobjects  
WHERE ( sysobjects.name like '%audit%' ) AND 
		( sysobjects.type= 'TR' ) AND 
			( Str(sysobjects.status) like '%8' ) ;
*/
SELECT count(*)  
INTO :li_count  
FROM sys.triggers  
WHERE ( name like '%audit%' ) AND ( is_disabled = 0 ) ;

if li_count >0 then
	ib_enableaudit = True
//	Messagebox("Enable Audit Log","Audit log is already enabled.")
else	
	
	// Execute the procedure
	ls_sql = "sp_EnableTriggers" ;
	EXECUTE IMMEDIATE :ls_sql ;
	
	// Check if the triggers are enabled
	// [PG20150522] Modify start
	//  sys.triggers for MS SQL 2005 or newer
	/*
	SELECT count(*)  
		INTO :li_count  
		FROM sysobjects  
		WHERE ( sysobjects.name like '%audit%' ) AND 
			( sysobjects.type= 'TR' ) AND 
			 ( Str(sysobjects.status) like '%8' ) ;
	*/
	SELECT count(*)  
	INTO :li_count  
	FROM sys.triggers  
	WHERE ( name like '%audit%' ) AND ( is_disabled = 0 ) ;
	
	if li_count =0 then
		Messagebox("Enable Audit Log","Could not enable the Audit Log successfuly.",EXCLAMATION!)
	else
		// Writing the date and time of Enable trigger on the system_table for security purpose
		ls_date = String(today(),"mm/dd/yyyy hh:mm:ss")
		ls_tmpcreate = ls_userid + '_CREATE'
	 
		INSERT INTO "system_table"  
		( "system_key",   
		 "system_value" )  
		VALUES ( :ls_date  ,   
		  :ls_tmpcreate)  ;
		  COMMIT ;
	end if
	
end if
	

end subroutine

public function integer wf_execute_sql (string as_sql, string as_error_msg, transaction at_sqltrans);is_main_sql = as_sql
Try
	Execute Immediate :as_sql Using at_SqlTrans ;
Catch ( exception e ) 
	wf_error_display( as_error_msg + e.GetMessage() )
	Return -1
Catch ( RuntimeError re ) 
	wf_error_display( as_error_msg + re.GetMessage() )
	Return -1
End Try

IF at_SqlTrans.sqlcode = 0 Then 
	COMMIT using at_SqlTrans;
	Return 1
ELSE
	wf_error_display( as_error_msg + at_SqlTrans.SQLErrText )
	ROLLBACK using at_SqlTrans;

END IF

Return 1
end function

public subroutine wf_error_display (string as_message);/*

wf_error_display() 
Display Message or Write to an Error File.

*/


Int li_FileNum

IF NOT ib_logError THEN
	MessageBox("Error" , 'SQL: ' + is_main_sql + ' || ERROR:  ' + as_message ) 
ELSE
	is_FileName = "BulkDeleteProcess_Error.Txt"
	is_FileName = gs_errorpath +'\' + is_FileName
	IF ib_First_Time Then
		IF FileExists ( is_FileName ) Then FileDelete ( is_FileName )
		ib_First_Time = False
	END IF
	li_FileNum = FileOpen(is_FileName, TextMode!, Write!, LockWrite!, Replace!)
	FileWriteEx( li_FileNum, "Error On " + is_main_sql+ ' || ' +as_message )
	FileClose(li_FileNum)
END IF

Return
end subroutine

public subroutine wf_loadvendor ();long SelectedRow, i


// Initialize the array.
is_Vendor[] = DUMMY[]
is_Brand[] = DUMMY[]
is_Make[] = DUMMY[]
is_Model[] = DUMMY[]

// Set the default Value '|ALL|'
is_Brand[1] = '|ALL|'
is_Make[1] = '|ALL|'
is_Model[1] = '|ALL|'

IF cbx_all_vendor.Checked Then
	is_vendor[1] = '|ALL|'
	Return
END IF

i = 1

// Load all selected vendors into an array.
SelectedRow = dw_Vendor.GetSelectedRow(0)
Do while SelectedRow <> 0
	is_Vendor[i] = dw_Vendor.GetItemString(SelectedRow, 1)
	IF is_Vendor[i] = 'NULL'	 Then is_Vendor[i] = ''
	i++
	SelectedRow = dw_Vendor.GetSelectedRow( SelectedRow ) 
Loop

If UpperBound( is_Vendor ) = 0 then is_Vendor[1] = "|ALL|"

end subroutine

public subroutine wf_loadbrand ();Long SelectedRow, i


// Initialize the array.
is_Brand[] = DUMMY[]
is_Make[] = DUMMY[]
is_Model[] = DUMMY[]

// Set the default Value '|ALL|'
is_Make[1] = '|ALL|'
is_Model[1] = '|ALL|'

IF cbx_all_brand.Checked Then
	is_brand[1] = '|ALL|'
	Return
END IF

i = 1

// Load all selected Brands into an array.
SelectedRow = dw_Brand.GetSelectedRow(0)
Do while SelectedRow <> 0
	is_Brand[i] = dw_Brand.GetItemString( SelectedRow, 1 )
	IF is_Brand[i] = 'NULL'	 Then is_Brand[i] = ''
	i++
	SelectedRow = dw_Brand.GetSelectedRow( SelectedRow ) 
Loop

if UpperBound( is_Brand ) = 0 then is_Brand[1] = "|ALL|"
end subroutine

public function boolean wf_save ();Long ll_row
String ls_profileID , ls_id, ls_ProfileDesc
int li_ret 
boolean lb_class_filtered, lb_line_filtered, lb_vendor_filtered, lb_brand_filtered, lb_make_filtered, lb_model_filtered
string ls_class_vpos, ls_line_vpos, ls_vendor_vpos, ls_brand_vpos, ls_make_vpos, ls_model_vpos

//  Already saved the profile no need to go further
IF Not cb_save.Enabled Then Return True 
ib_saveas = false

ls_profileID =  dw_profile_master.getitemstring( 1, 'profileid')
If f_IsNullOrEmpty(ls_profileID) Then 
	is_error_message = "Please provide a Profile ID"
	Return False
End If

ls_profileDesc =  dw_profile_master.getitemstring( 1, 'profileDesc')

If dw_class.FilteredCount() > 0 Then lb_class_filtered = True
If lb_class_filtered Then
	ls_class_vpos = dw_class.Describe("DataWindow.VerticalScrollPosition")
	// add to re-retrieve the previous selection before filter
	dw_class.SetRedraw( False )
	dw_class.SetFilter( '' )
	dw_class.Filter( )
End If

If dw_line.FilteredCount() > 0 Then lb_line_filtered = True
If lb_line_filtered Then
	ls_line_vpos = dw_line.Describe("DataWindow.VerticalScrollPosition")
	// add to re-retrieve the previous selection before filter
	dw_line.SetRedraw( False )
	dw_line.SetFilter( '' )
	dw_line.Filter( )
End If

If dw_make.FilteredCount() > 0 Then lb_make_filtered = True
If lb_make_filtered Then
	ls_make_vpos = dw_make.Describe("DataWindow.VerticalScrollPosition")
	// add to re-retrieve the previous selection before filter
	dw_make.SetRedraw( False )
	dw_make.SetFilter( '' )
	dw_make.Filter( )
End If

If dw_model.FilteredCount() > 0 Then lb_model_filtered = True
If lb_model_filtered Then
	ls_model_vpos = dw_model.Describe("DataWindow.VerticalScrollPosition")
	// add to re-retrieve the previous selection before filter
	dw_model.SetRedraw( False )
	dw_model.SetFilter( '' )
	dw_model.Filter( )
End If

wf_LoadClass()
wf_LoadLine()
wf_LoadVendor()
wf_LoadBrand()
wf_LoadMake()
wf_LoadModel()

if is_class[1] = "" then is_class[1] = "|ALL|"
if is_line[1] = "" then is_line[1] = "|ALL|"
if is_vendor[1] = "" then is_vendor[1] = "|ALL|"
if is_brand[1] = "" then is_brand[1] = "|ALL|"
if is_make[1] = "" then is_make[1] = "|ALL|"
if is_model[1] = "" then is_model[1] = "|ALL|"

If lb_class_filtered Then
	//add to re-retrieve the previous selection before filter
	dw_class_filter.TriggerEvent( EditChanged! )
	dw_class.Modify("DataWindow.VerticalScrollPosition=" +  ls_class_vpos)	
	dw_class.SetRedraw( True )
End If

If lb_line_filtered Then
	//add to re-retrieve the previous selection before filter
	dw_line_filter.TriggerEvent( EditChanged! )
	dw_line.Modify("DataWindow.VerticalScrollPosition=" +  ls_line_vpos)	
	dw_line.SetRedraw( True )
End If

If lb_make_filtered Then
	//add to re-retrieve the previous selection before filter
	dw_make_filter.TriggerEvent( EditChanged! )
	dw_make.Modify("DataWindow.VerticalScrollPosition=" +  ls_make_vpos)	
	dw_make.SetRedraw( True )
End If

If lb_model_filtered Then
	//add to re-retrieve the previous selection before filter
	dw_model_filter.TriggerEvent( EditChanged! )
	dw_model.Modify("DataWindow.VerticalScrollPosition=" +  ls_model_vpos)	
	dw_model.SetRedraw( True )
End If

//Check save as if profile ID was changed.
IF ib_new_profile then
	//check if the new profile id exist ?
	select count (*) into :li_ret  from DeleteMake_Profile_Master where ProfileID = :ls_profileID;
	IF li_ret > 0 then
		//If exist
		li_ret = MessageBox("Warning", 'The profile name: ' +ls_profileID + ' already exist, would you like to replace it?',  Question!, YesNo! , 2)
		IF li_ret = 1 THEN
			// 'DeleteMake_Profile_Detail' should be deleted automatically based on ON DELETE CASCADE of Foreign Key
			//delete from DeleteMake_Profile_Detail  where profileid = :ls_profileID;
			DELETE FROM DeleteMake_Profile_Master WHERE profileid = :ls_profileID;
		ELSE
			return false
		END IF
	END IF
	
ELSE
	IF ls_profileID <> is_Pre_ProfileID then
		//check if the new profile id exist?
		select count (*) into :li_ret  from DeleteMake_Profile_Detail where ProfileID = :ls_profileID;
		IF li_ret  > 0 then
			//If exist
			li_ret = MessageBox("Warning", 'The profile name: ' +ls_profileID + ' already exist, would you like to replace it?',  Question!, YesNo! , 2)

			IF li_ret = 1 THEN
				ib_saveas = TRUE
				If wf_load_criteria_into_master(ls_profileID) = False then   		return FALSE
			ELSE
				return false
			END IF
		ELSE
			ib_saveas = TRUE
			If wf_load_criteria_into_master(ls_profileID) = False then   		return FALSE
		END IF
	End if
end if

is_Pre_ProfileID = ls_profileID

//save Master profile
//IF ib_saveas then
	If wf_load_criteria_into_master(ls_profileID) = False then   		return FALSE
//ELSE
//	IF ib_Profile_modified then
//		IF dw_profile_master.update() <> 1 then   		return FALSE
//	end if
	If wf_load_criteria_into_master(ls_profileID) = False then   		return FALSE
//END IF
ib_Profile_modified = FALSE
		
If ib_saveas OR &
	ib_Class_modified OR ib_Line_modified OR &
	ib_Vendor_modified OR ib_Brand_modified OR ib_make_modified OR ib_model_modified OR ib_year_modified Then
	
	If wf_load_criteria_into_detail(ls_profileID) = False then   		return FALSE
	
	ib_Class_modified = False; ib_Line_modified = False
	ib_Vendor_modified = False; ib_Brand_modified = False; ib_make_modified = False; ib_model_modified = False; ib_year_modified = False
End If

//reset profile
IF ib_saveas then
	idwc_profile.settransobject( sqlca)
	idwc_profile.retrieve()
END IF


return true

end function

public function boolean wf_create_profile_tables ();//  Add tables for saving Profile related information

Boolean lb_error
Integer li_count
String ls_sql, ls_filegroup, ls_dataset

//DeleteMake_Profile_Master
li_count = 0
SELECT count(*) 
INTO :li_count
FROM dbo.sysobjects 
WHERE id = object_id('DeleteMake_Profile_Master') and Type='U';

IF li_count=0 Then	

	ls_sql = "CREATE TABLE [dbo].[DeleteMake_Profile_Master]( " + &
		" ProfileID varchar(50) NOT NULL, " + &
		" ProfileDesc varchar(200), " + &
		" UserID varchar(50) NULL,   " + &
		" YearFrom varchar(10) NULL,   " + &
		" YearTo varchar(10) NULL,   " + &
		" Parts TinyInt NULL,   " + &
		" PartFootnotesDefinition TinyInt NULL,   " + &
		" PartFootnotesAttachments TinyInt NULL,   " + &
		" Part_PartInterchangeSpecTemplates TinyInt NULL,  " + &
		" Part_PartInterchangeSpecValues TinyInt NULL,   " + &
		" PartInterchanges TinyInt NULL,   " + &
		" AppFootnotesDefinition TinyInt NULL,   " + &
		" AppSpecTemplates TinyInt NULL, " + &
		" Class TinyInt NULL, " + &
		" Line TinyInt NULL, " + &
		" Make TinyInt NULL,  " + &
		" Model TinyInt NULL,  " + &
		" ModelGroupPrint TinyInt NULL,  " + &
		" ModelGroupInquiry TinyInt NULL,  " + &
		" AllMakesWithNoApps TinyInt NULL,  " + &
		" AllModelsWithNoApps TinyInt NULL,  " + &
		"CONSTRAINT PK_DeleteMake_Profile_Master_ProfileID PRIMARY KEY CLUSTERED  " + &
		" ( " + &
		" 	ProfileID ASC " + &
		" ) " + &
		" ) ON [PRIMARY] " 
	
	EXECUTE IMMEDIATE :ls_sql;	
	If SQLCA.SQLCode <> 0  Then
		MessageBox ('Error', 'Error occurred while creating tables: '+ SQLCA.SQLERRTEXT)
		Return True
	End If

End if

//DeleteMake_Profile_Detail
li_count = 0
SELECT count(*) 
INTO :li_count
FROM dbo.sysobjects 
WHERE id = object_id('DeleteMake_Profile_Detail') and Type='U';


IF li_count=0 Then	

	ls_sql = "CREATE TABLE [dbo].[DeleteMake_Profile_Detail]( " + &
				" ID int IdentitY( 1,1) NOT NULL, " + &
				" ProfileID varchar(50) NOT NULL, " + &				
				" Classes varchar(50) NULL, " + &
				" Lines varchar(50) NULL, " + &
				" Vendors varchar(50) NULL, " + &
				" Brands varchar(50) NULL, " + &
				" Makes varchar(50) NULL, " + &
				" Models varchar(50) NULL, " + &
				" 	 CONSTRAINT PK_DeleteMake_Profile_Detail_ProfileID PRIMARY KEY CLUSTERED  " + &
				" 	( " + &
				" 		ID ASC " + &
				" 	) " + &
				" ) ON [PRIMARY] "

	EXECUTE IMMEDIATE :ls_sql;	
	If SQLCA.SQLCode <> 0  Then
		MessageBox ('Error', 'Error occurred while creating tables: '+ SQLCA.SQLERRTEXT)
		Return True
	End If

End if

// Foreign key of DeleteMake_Profile_Detail
li_count = 0
SELECT count(*) 
INTO :li_count
FROM sys.foreign_keys 
WHERE parent_object_id = OBJECT_ID('DeleteMake_Profile_Detail') 
			and Object_ID = Object_ID ('FK_DeleteMake_Profile_Detail');


IF li_count=0 Then	

	ls_sql= " ALTER TABLE dbo.DeleteMake_Profile_Detail  WITH CHECK ADD  CONSTRAINT FK_DeleteMake_Profile_Detail " + &
				" FOREIGN KEY(ProfileID) " + &
				" REFERENCES dbo.DeleteMake_Profile_Master (ProfileID) " + &
				" ON DELETE CASCADE "
	
	EXECUTE IMMEDIATE :ls_sql;
	If SQLCA.SQLCode <> 0  Then
		MessageBox ('Error', 'Error occurred while creating tables: '+ SQLCA.SQLERRTEXT)
		Return True
	End If

End if

Commit ;


Return False

end function

public subroutine wf_retrieve_profile (string as_profileid);String ls_YearFrom, ls_YearTo, ls_ProfileDesc
Integer li_Parts, li_PartFootnotesDefinition, li_PartFootnotesAttachments
Integer li_Part_PartInterchangeSpecTemplates, li_Part_PartInterchangeSpecValues, li_PartInterchanges, li_AppFootnotesDefinition, li_AppSpecTemplates 
Integer li_Class, li_Line, li_Make, li_Model, li_ModelGroupPrint, li_ModelGroupInquiry, li_AllMakesWithNoApps, li_AllModelsWithNoApps


SELECT Coalesce(ProfileDesc,'') AS ProfileDesc, Coalesce(Parts,0) AS Parts, Coalesce(PartFootnotesDefinition,0) AS PartFootnotesDefinition, 
Coalesce(PartFootnotesAttachments,0) AS PartFootnotesAttachments, 
Coalesce(Part_PartInterchangeSpecTemplates,0) AS Part_PartInterchangeSpecTemplates, Coalesce(Part_PartInterchangeSpecValues,0) AS Part_PartInterchangeSpecValues, 
Coalesce(PartInterchanges,0) AS PartInterchanges, Coalesce(AppFootnotesDefinition,0) AS AppFootnotesDefinition, Coalesce(AppSpecTemplates,0) AS AppSpecTemplates, 
Coalesce(Class,0) AS Class, Coalesce(Line,0) AS Line, Coalesce(Make,0) AS Make, Coalesce(Model,0) AS Model, Coalesce(ModelGroupPrint,0) AS ModelGroupPrint,
Coalesce(ModelGroupInquiry,0) AS ModelGroupInquiry, Coalesce(AllMakesWithNoApps,0) AS AllMakesWithNoApps, 
Coalesce(AllModelsWithNoApps,0) AS AllModelsWithNoApps, Coalesce(YearFrom,'') AS YearFrom, Coalesce(YearTo,'') AS YearTo
	INTO  :ls_ProfileDesc, :li_Parts, :li_PartFootnotesDefinition, :li_PartFootnotesAttachments,
 :li_Part_PartInterchangeSpecTemplates, :li_Part_PartInterchangeSpecValues, :li_PartInterchanges, :li_AppFootnotesDefinition, :li_AppSpecTemplates, 
 :li_Class, :li_Line, :li_Make, :li_Model, :li_ModelGroupPrint, :li_ModelGroupInquiry, :li_AllMakesWithNoApps, :li_AllModelsWithNoApps, :is_FromYear, :is_ToYear
	FROM DeleteMake_Profile_Master
	WHERE profileid = :as_ProfileID;

dw_profile_master.SetItem(1, "ProfileID", as_ProfileID)
dw_profile_master.SetItem(1, "ProfileDesc", ls_ProfileDesc)

If li_Parts = 1 Then
	cbx_parts.Checked = true
Else
	cbx_parts.Checked = false
End If

IF li_PartFootnotesDefinition = 1 Then
	cbx_part_ftnt_def.Checked = true
Else
	cbx_part_ftnt_def.Checked = false
END IF

IF li_PartFootnotesAttachments = 1 Then
	cbx_part_ftnt_attachments.Checked = true
Else
	cbx_part_ftnt_attachments.Checked = false
END IF

IF li_Part_PartInterchangeSpecTemplates = 1 Then
	cbx_part_spec_temp.Checked = true
Else
	cbx_part_spec_temp.Checked = false
END IF

IF li_Part_PartInterchangeSpecValues = 1 Then
	cbx_part_spec_value.Checked = true
Else
	cbx_part_spec_value.Checked = false
END IF



If li_PartInterchanges = 1 Then
	cbx_part_interchange.Checked = true
Else
	cbx_part_interchange.Checked = false
End If

IF li_AppFootnotesDefinition = 1 Then
	cbx_app_ftnt_def.Checked = true
Else
	cbx_app_ftnt_def.Checked = false
END IF

IF li_AppSpecTemplates = 1 Then
	cbx_app_spec_temp.Checked = true
Else
	cbx_app_spec_temp.Checked = false
END IF

IF li_class = 1 Then
	cbx_class.Checked = true
Else
	cbx_class.Checked = false
END IF

IF li_line = 1 Then
	cbx_line.Checked = true
Else
	cbx_line.Checked = false
END IF


If li_make = 1 Then
	cbx_make.Checked = true
Else
	cbx_make.Checked = false
End If

IF li_model = 1 Then
	cbx_model.Checked = true
Else
	cbx_model.Checked = false
END IF

IF li_ModelGroupPrint = 1 Then
	cbx_modelgroup_print.Checked = true
Else
	cbx_modelgroup_print.Checked = false
END IF

IF li_ModelGroupInquiry = 1 Then
	cbx_modelgroup_inquiry.Checked = true
Else
	cbx_modelgroup_inquiry.Checked = false
END IF

IF li_AllMakesWithNoApps = 1 Then
	cbx_all_make_del.Checked = true
Else
	cbx_all_make_del.Checked = false
END IF

IF li_AllModelsWithNoApps = 1 Then
	cbx_all_models_del.Checked = true
Else
	cbx_all_models_del.Checked = false
END IF


end subroutine

public function integer wf_retrieve_detail (string as_profileid);String ls_filter, ls_year , ls_dummy[]
Long ll_index, ll_row, ll_class_count,  ll_line_count,  ll_partdesc_count
Long ll_vt_count,  ll_make_count,  ll_model_count
boolean  lb_AllChecked
String ls_from_year, ls_to_year

is_class = ls_dummy; is_line = ls_dummy;
is_Vendor = ls_dummy; is_brand = ls_dummy; is_make = ls_dummy; is_model = ls_dummy
 
//Retrieve Class
dw_class.retrieve()	
lb_AllChecked = wf_get_checkboxstatus(cbx_all_class)
IF lb_AllChecked then
	cbx_all_class.checked = TRUE
	dw_class.SelectRow(0, TRUE)
	dw_class.Enabled = FALSE
	wf_loadclass()
else
	wf_heightlight_dw('classes', dw_class)
	IF upperbound(is_class) = 0  then
		cbx_all_line.enabled = false
		dw_line.enabled = FALSE
	ELSE
		cbx_all_line.enabled = true		
		dw_line.enabled = true		
	END IF
end if
If UpperBound(is_class) = 0  Then return 0

//Dealing with Line
dw_Line.Retrieve( is_Class )
lb_AllChecked = wf_get_checkboxstatus(cbx_all_line)
IF lb_AllChecked then
	cbx_all_line.checked = TRUE
	dw_line.SelectRow(0, TRUE)
	dw_line.Enabled = FALSE
	wf_loadline()
else
	wf_heightlight_dw('lines', dw_line)
	IF upperbound(is_line) = 0  then
		cbx_all_vendor.enabled = false
		dw_vendor.enabled = FALSE
	ELSE
		cbx_all_vendor.enabled = true		
		dw_vendor.enabled = true		
	END IF
end if
If UpperBound(is_line) = 0 Then return 0

//Dealing with Vendor
dw_Vendor.Retrieve( is_Class, is_Line)
lb_AllChecked = wf_get_checkboxstatus(cbx_all_vendor)
IF lb_AllChecked then
	cbx_all_vendor.checked = TRUE
	dw_vendor.SelectRow(0, TRUE)
	dw_vendor.Enabled = FALSE
	wf_loadvendor()
else
	wf_heightlight_dw('vendors', dw_vendor)
	IF upperbound(is_Vendor) = 0  then
		cbx_all_brand.enabled = false
		dw_brand.enabled = FALSE
	ELSE
		cbx_all_brand.enabled = true		
		dw_brand.enabled = true		
	END IF
end if
If UpperBound(is_Vendor) = 0 Then return 0

//Dealing with Brand
dw_Brand.Retrieve( is_Class, is_Line, is_Vendor )
lb_AllChecked = wf_get_checkboxstatus(cbx_all_brand)
IF lb_AllChecked then
	cbx_all_brand.checked = TRUE
	dw_brand.SelectRow(0, TRUE)
	dw_brand.Enabled = FALSE
	wf_loadBrand()
else
	wf_heightlight_dw('brands', dw_brand)
	IF upperbound(is_brand) = 0  then
		cbx_all_makes.enabled = false
		dw_make.enabled = FALSE
	ELSE
		cbx_all_makes.enabled = true		
		dw_make.enabled = true		
	END IF
end if
If UpperBound(is_brand) = 0 Then return 0

//Dealing with Make
dw_Make.Retrieve( is_Vendor, is_Brand, is_Class, is_Line )
lb_AllChecked = wf_get_checkboxstatus(cbx_all_makes)
IF lb_AllChecked then
	cbx_all_makes.checked = TRUE
	dw_Make.SelectRow(0, TRUE)
	dw_Make.Enabled = FALSE
	wf_loadMake()
else
	wf_heightlight_dw('makes', dw_make)
	IF upperbound(is_make) = 0  then
		cbx_all_models.enabled = false
		dw_model.enabled = FALSE
	ELSE
		cbx_all_models.enabled = true		
		dw_model.enabled = true		
	END IF
end if
If UpperBound(is_make) = 0 Then return 0

//Dealing with Model
dw_Model.Retrieve( is_Vendor, is_Brand, is_Class, is_Line, is_Make )
lb_AllChecked = wf_get_checkboxstatus(cbx_all_models)
IF lb_AllChecked then
	cbx_all_models.checked = TRUE
	dw_model.SelectRow(0, TRUE)
	dw_model.Enabled = FALSE
	wf_loadModel()
else
	wf_heightlight_dw('models', dw_model)
end if

dw_year_from.enabled = True
dw_year_to.enabled = True
idwc_year_from.retrieve( is_vendor, is_brand , is_class, is_line, is_make, is_model )	
idwc_year_to.retrieve( is_vendor, is_brand , is_class, is_line, is_make, is_model )	
dw_year_from.SetItem(1, "year", is_FromYear)
dw_year_to.SetItem(1, "year", is_ToYear)

return 1

end function

public function boolean wf_get_checkboxstatus (checkbox acbx_checkbox);//String ls_CheckBoxType
String  ls_filter , ls_CheckBoxType , ls_ckecked 
Long ll_index, ll_ret , ll_count = 0
//STRING ls_current_array[] , ls_tmp


Choose Case acbx_CheckBox.Classname ( )
	Case 'cbx_all_class'
		ls_CheckBoxType = 'classes'
	Case 'cbx_all_line'
		ls_CheckBoxType = 'lines'
	Case 'cbx_all_vendor'
		ls_CheckBoxType = 'vendors'
	Case 'cbx_all_brand'
		ls_CheckBoxType = 'brands'
	Case 'cbx_all_makes'
		ls_CheckBoxType = 'makes'
	Case 'cbx_all_models'
		ls_CheckBoxType = 'models'		
END Choose


//Get checkbox status
IF ids_profile.rowcount() > 0 then 
	ls_ckecked = ids_profile.getitemstring( 1, ls_CheckBoxType)
	//IF ls_ckecked >'1' then ls_ckecked = '1'
else
	ls_ckecked = ''
end if

IF ls_ckecked = '|ALL|' then
	return true
Else
	return FALSE
End if

end function

public subroutine wf_heightlight_dw (string as_type, datawindow adw_data);String  ls_filter , ls_ID , ls_Ctrl_Name
Long ll_index, ll_ret , ll_count = 0
STRING ls_current_array[] , ls_tmp

ls_Ctrl_Name = adw_data.classname()

//heightlight the selected row
For ll_index = 1 to  ids_profile.rowcount( )
	ls_ID = ids_profile.getitemstring( ll_index, as_type)
	
//	If ls_Ctrl_Name = 'dw_line' Then
//		ll_ret = adw_data.find( "#3 + '|' + #1= '" + ls_ID +"'",   1, adw_data.RowCount())
//	Else
//		ll_ret = adw_data.find( "#1 = '" + uf_singlequote(ls_ID) +"'",   1, adw_data.RowCount())	
//	End If
	
	ll_ret = adw_data.find( "#1 = '" + uf_singlequote(ls_ID) +"'",   1, adw_data.RowCount())
	IF ll_ret > 0 then	
		ll_count ++
		adw_data.SelectRow(ll_ret, TRUE)
		ls_current_array[ll_count] = ls_ID		
	end if
next

//Scroll to the first row
ll_ret = adw_data.GetSelectedRow(0)
IF ll_ret > 0 then adw_data.scrolltorow (ll_ret)

Choose case ls_Ctrl_Name
	case	'dw_class'
		is_class = ls_current_array
	case	'dw_line'
		is_line = ls_current_array

	case	'dw_vendor'
		is_vendor = ls_current_array
	case	'dw_brand'
		is_brand = ls_current_array

	case	'dw_make'
		is_make = ls_current_array
	case	'dw_model'
		is_model = ls_current_array

End choose

end subroutine

public subroutine wf_reset_year ();

dw_year_from.setitem( 1,1,'')
dw_year_to.setitem( 1,1,'')
dw_year_from.enabled = false
dw_year_to.enabled = false
end subroutine

public function boolean wf_load_criteria_into_master (string as_profileid);Integer li_Parts, li_PartFootnotesDefinition, li_PartFootnotesAttachments
Integer li_Part_PartInterchangeSpecTemplates, li_Part_PartInterchangeSpecValues, li_PartInterchanges, li_AppFootnotesDefinition, li_AppSpecTemplates 
Integer li_Class, li_Line, li_Make, li_Model, li_ModelGroupPrint, li_ModelGroupInquiry, li_AllMakesWithNoApps, li_AllModelsWithNoApps
String ls_ProfileDesc, ls_yearFrom, ls_YearTo

ls_ProfileDesc = dw_profile_master.GetItemString(1, "ProfileDesc")
ls_YearFrom = dw_year_from.GetText()
ls_YearTo = dw_year_to.GetText()

IF cbx_parts.Checked Then
	li_Parts = 1
END IF

IF cbx_part_ftnt_def.Checked Then
	li_PartFootnotesDefinition = 1
END IF

IF cbx_part_ftnt_attachments.Checked Then
	li_PartFootnotesAttachments = 1
END IF

IF cbx_part_spec_temp.Checked Then
	li_Part_PartInterchangeSpecTemplates = 1
END IF

IF cbx_part_spec_value.Checked Then
	li_Part_PartInterchangeSpecValues = 1
END IF

IF cbx_part_interchange.Checked Then
	li_PartInterchanges = 1
END IF

IF cbx_app_ftnt_def.Checked Then
	li_AppFootnotesDefinition = 1
END IF

IF cbx_app_spec_temp.Checked Then
	li_AppSpecTemplates = 1
END IF

IF cbx_class.Checked Then
	li_class= 1
End if

IF cbx_line.Checked Then
	li_line= 1
End if

IF cbx_make.Checked Then
	li_make= 1
End if

IF cbx_model.Checked Then
	li_model= 1
End if

IF cbx_modelgroup_print.Checked Then
	li_ModelGroupPrint= 1
End if


IF cbx_modelgroup_inquiry.Checked Then
	li_ModelGroupInquiry= 1
End if

IF cbx_all_make_del.Checked Then
	li_AllMakesWithNoApps= 1
End if

IF cbx_all_models_del.Checked Then
	li_AllModelsWithNoApps= 1
End if

IF ib_Profile_modified and NOT ib_saveas and NOT ib_new_profile then
	
	UPDATE DeleteMake_Profile_Master
				 SET ProfileDesc = :ls_ProfileDesc, Parts =:li_Parts, PartFootnotesDefinition = :li_PartFootnotesDefinition, PartFootnotesAttachments = :li_PartFootnotesAttachments
				  ,Part_PartInterchangeSpecTemplates =  :li_Part_PartInterchangeSpecTemplates, Part_PartInterchangeSpecValues = :li_Part_PartInterchangeSpecValues
				  ,PartInterchanges = :li_PartInterchanges, AppFootnotesDefinition = :li_AppFootnotesDefinition, AppSpecTemplates = :li_AppSpecTemplates
				  ,Class = :li_Class, Line = :li_Line, Make = :li_Make, Model = :li_Model, ModelGroupPrint = :li_ModelGroupPrint
				  ,ModelGroupInquiry = :li_ModelGroupInquiry, AllMakesWithNoApps = :li_AllMakesWithNoApps, AllModelsWithNoApps = :li_AllModelsWithNoApps 
				  ,YearFrom = :ls_YearFrom, YearTo = :ls_YearTo  
				WHERE ProfileID = :as_profileID;					
	
	IF sqlca.sqlcode <> 0 Then 
		MessageBox ( 'Update Failed' , 'Please try again ~n'+sqlca.sqlerrtext )
		Rollback ;
		Return False
	Else
		Commit ;
	End if

Else
	
	Delete from DeleteMake_Profile_Master
	where ProfileID = :as_profileID ;
	
	IF sqlca.sqlcode <> 0 Then 
		MessageBox ( 'Delete Failed' , 'Please try again ~n'+sqlca.sqlerrtext )
		Rollback ;
		Return False
	Else
		Commit ;
	End if
	
	INSERT INTO DeleteMake_Profile_Master
				  (ProfileID, ProfileDesc, UserID, Parts, PartFootnotesDefinition, PartFootnotesAttachments, Part_PartInterchangeSpecTemplates, Part_PartInterchangeSpecValues 
					,PartInterchanges, AppFootnotesDefinition, AppSpecTemplates, Class, Line, Make, Model, ModelGroupPrint
					,ModelGroupInquiry, AllMakesWithNoApps, AllModelsWithNoApps, YearFrom, YearTo)
		  VALUES
				  ( :as_profileID, :ls_ProfileDesc, :gs_userid, :li_Parts, :li_PartFootnotesDefinition, :li_PartFootnotesAttachments, :li_Part_PartInterchangeSpecTemplates
				  , :li_Part_PartInterchangeSpecValues, :li_PartInterchanges, :li_AppFootnotesDefinition, :li_AppSpecTemplates
				  , :li_Class, :li_Line, :li_Make, :li_Model, :li_ModelGroupPrint, :li_ModelGroupInquiry, :li_AllMakesWithNoApps
				  , :li_AllModelsWithNoApps, :ls_YearFrom, :ls_YearTo) ;
		
	IF sqlca.sqlcode <> 0 Then 
		MessageBox ( 'Insert Failed' , 'Please try again ~n'+sqlca.sqlerrtext )
		Rollback ;
		Return False
	Else
		Commit ;
	End if
End If

Return True

end function

public function boolean wf_load_criteria_into_detail (string as_profileid);
Long ll_max_limit_of_array, i 
String ls_Class, ls_Line, ls_Vendor, ls_Brand, ls_make, ls_model 


IF UpperBound( is_class ) > ll_max_limit_of_array Then
	ll_max_limit_of_array = UpperBound( is_class ) 
END IF

IF UpperBound( is_line ) > ll_max_limit_of_array Then
	ll_max_limit_of_array = UpperBound( is_line ) 
END IF

IF UpperBound( is_vendor) > ll_max_limit_of_array Then
	ll_max_limit_of_array = UpperBound( is_vendor ) 
END IF

IF UpperBound( is_brand ) > ll_max_limit_of_array Then
	ll_max_limit_of_array = UpperBound( is_brand ) 
END IF

IF UpperBound( is_make ) > ll_max_limit_of_array Then
	ll_max_limit_of_array = UpperBound( is_make ) 
END IF

IF UpperBound( is_model ) > ll_max_limit_of_array Then
	ll_max_limit_of_array = UpperBound( is_model ) 
END IF


For i = 1 to ll_max_limit_of_array
	IF i <= UpperBound( is_class ) Then
		ls_class = is_class[i]
	ELSE
		ls_class = ''
	END IF
	
	IF i <= UpperBound( is_line ) Then
		ls_line = is_line[i]
	ELSE
		ls_line = ''
	END IF

	IF i <= UpperBound( is_vendor ) Then
		ls_vendor = is_vendor[i]
	ELSE
		ls_vendor = ''
	END IF

	IF i <= UpperBound( is_brand ) Then
		ls_brand = is_brand[i]
	ELSE
		ls_brand = ''
	END IF

	IF i <= UpperBound( is_make[] ) Then
		ls_make = is_make[i]
	ELSE
		ls_make = ''
	END IF

	IF i <= UpperBound( is_model[] ) Then
		ls_model = is_model[i]
	ELSE
		ls_model = ''
	END IF

	
	INSERT INTO dbo.DeleteMake_Profile_Detail (ProfileID, Classes, Lines, Vendors, Brands, Makes, Models)
		  VALUES (:as_profileid, :ls_Class, :ls_Line, :ls_Vendor, :ls_Brand, :ls_make, :ls_model ) ;
		  
	IF sqlca.sqlcode <> 0 Then 
		MessageBox ( 'Insert Failed' , 'Please try again ~n'+sqlca.sqlerrtext )
		Rollback ;
		Return False
	End if
		
Next

Commit ;

Return True


end function

public subroutine wf_reset_profile ();
//cb_reset.TriggerEvent(Clicked!)

// reset user selection
String ls_dummy[]

SetPointer(HourGlass!)

is_class = ls_dummy
is_line = ls_dummy
is_Vendor = ls_dummy
is_Brand = ls_dummy
is_Make = ls_dummy
is_Model = ls_dummy

is_class[1] = '|ALL|'
is_line[1] = '|ALL|'
is_Vendor[1] = '|ALL|'
is_Brand[1] = '|ALL|'
is_Make[1] = '|ALL|'
is_Model[1] = '|ALL|'

dw_class.SelectRow(0, False)
cbx_all_class.checked = False
dw_class.Enabled = True

Open ( w_pleasewait )
w_pleasewait.Title = "Bulk Delete Utility"
w_pleasewait.st_1.Text = 'Retrieving, please wait ...'

dw_class.Retrieve()
cbx_all_class.checked = False

dw_line.Reset()
cbx_all_line.enabled = False
cbx_all_line.checked = False

dw_vendor.Reset()
cbx_all_vendor.enabled = False
cbx_all_vendor.checked = False

dw_Brand.Reset()
cbx_all_Brand.enabled = False
cbx_all_Brand.checked = False

dw_make.Reset()
cbx_all_makes.enabled = False
cbx_all_makes.checked = False

dw_model.Reset()
cbx_all_models.enabled = False
cbx_all_models.checked = False

Close ( w_pleasewait )
SetPointer(Arrow!)

ib_new_profile = false; ib_Profile_modified = false 
ib_Class_modified = False; ib_Line_modified = False
ib_Vendor_modified = False; ib_Brand_modified = False; ib_make_modified = False; ib_model_modified = False; ib_year_modified = False



end subroutine

public subroutine wf_enable_dw (boolean ab_enabled);
If ab_enabled = False Then
	dw_profile_master.enabled = ab_enabled
	dw_class.enabled = ab_enabled
	dw_line.enabled = ab_enabled
	dw_vendor.enabled = ab_enabled
	dw_brand.enabled = ab_enabled
	dw_make.enabled = ab_enabled
	dw_model.enabled = ab_enabled
	cbx_all_class.enabled = ab_enabled
Else
	dw_profile_master.enabled = ab_enabled
//	dw_class.enabled = ab_enabled
//	cbx_all_class.enabled = ab_enabled
End If
end subroutine

event open;

// Set up transaction objects for all input fields on window.
dw_profile.settransobject ( SQLCA )
dw_profile_master.settransobject ( SQLCA )
dw_Vendor.SetTransObject ( SQLCA )
dw_Brand.SetTransObject   ( SQLCA )
dw_Class.SetTransObject ( SQLCA )
dw_Line.SetTransObject   ( SQLCA )
dw_Make.SetTransObject ( SQLCA )
dw_Model.SetTransObject( SQLCA )

PostEvent ( 'ue_postopen' )
end event

on w_delete_make.create
this.cb_reset=create cb_reset
this.dw_profile_master=create dw_profile_master
this.dw_profile=create dw_profile
this.cb_delete_profile=create cb_delete_profile
this.cb_new=create cb_new
this.cb_save=create cb_save
this.cbx_singleuser=create cbx_singleuser
this.dw_year_to=create dw_year_to
this.st_10=create st_10
this.dw_year_from=create dw_year_from
this.st_9=create st_9
this.st_8=create st_8
this.dw_model_filter=create dw_model_filter
this.dw_make_filter=create dw_make_filter
this.dw_class_filter=create dw_class_filter
this.pb_1=create pb_1
this.cbx_all_brand=create cbx_all_brand
this.dw_brand=create dw_brand
this.dw_brand_filter=create dw_brand_filter
this.dw_vendor_filter=create dw_vendor_filter
this.dw_vendor=create dw_vendor
this.cbx_all_vendor=create cbx_all_vendor
this.pb_vendor=create pb_vendor
this.dw_line_filter=create dw_line_filter
this.pb_make=create pb_make
this.pb_model=create pb_model
this.pb_line=create pb_line
this.pb_class=create pb_class
this.cbx_all_models=create cbx_all_models
this.cbx_all_makes=create cbx_all_makes
this.cbx_all_models_del=create cbx_all_models_del
this.cbx_all_make_del=create cbx_all_make_del
this.cbx_all_line=create cbx_all_line
this.cbx_all_class=create cbx_all_class
this.cbx_model=create cbx_model
this.cbx_make=create cbx_make
this.cbx_part_spec_value=create cbx_part_spec_value
this.cbx_part_spec_temp=create cbx_part_spec_temp
this.cbx_part_ftnt_attachments=create cbx_part_ftnt_attachments
this.cbx_part_ftnt_def=create cbx_part_ftnt_def
this.cbx_line=create cbx_line
this.cbx_class=create cbx_class
this.cbx_parts=create cbx_parts
this.mle_3=create mle_3
this.cb_help=create cb_help
this.cb_close=create cb_close
this.cb_process=create cb_process
this.dw_line=create dw_line
this.dw_class=create dw_class
this.dw_make=create dw_make
this.dw_model=create dw_model
this.gb_3=create gb_3
this.gb_1=create gb_1
this.gb_5=create gb_5
this.cbx_part_interchange=create cbx_part_interchange
this.cbx_app_ftnt_def=create cbx_app_ftnt_def
this.cbx_app_spec_temp=create cbx_app_spec_temp
this.cbx_modelgroup_print=create cbx_modelgroup_print
this.cbx_modelgroup_inquiry=create cbx_modelgroup_inquiry
this.gb_2=create gb_2
this.gb_4=create gb_4
this.gb_vendor=create gb_vendor
this.gb_brand=create gb_brand
this.gb_6=create gb_6
this.gb_7=create gb_7
this.Control[]={this.cb_reset,&
this.dw_profile_master,&
this.dw_profile,&
this.cb_delete_profile,&
this.cb_new,&
this.cb_save,&
this.cbx_singleuser,&
this.dw_year_to,&
this.st_10,&
this.dw_year_from,&
this.st_9,&
this.st_8,&
this.dw_model_filter,&
this.dw_make_filter,&
this.dw_class_filter,&
this.pb_1,&
this.cbx_all_brand,&
this.dw_brand,&
this.dw_brand_filter,&
this.dw_vendor_filter,&
this.dw_vendor,&
this.cbx_all_vendor,&
this.pb_vendor,&
this.dw_line_filter,&
this.pb_make,&
this.pb_model,&
this.pb_line,&
this.pb_class,&
this.cbx_all_models,&
this.cbx_all_makes,&
this.cbx_all_models_del,&
this.cbx_all_make_del,&
this.cbx_all_line,&
this.cbx_all_class,&
this.cbx_model,&
this.cbx_make,&
this.cbx_part_spec_value,&
this.cbx_part_spec_temp,&
this.cbx_part_ftnt_attachments,&
this.cbx_part_ftnt_def,&
this.cbx_line,&
this.cbx_class,&
this.cbx_parts,&
this.mle_3,&
this.cb_help,&
this.cb_close,&
this.cb_process,&
this.dw_line,&
this.dw_class,&
this.dw_make,&
this.dw_model,&
this.gb_3,&
this.gb_1,&
this.gb_5,&
this.cbx_part_interchange,&
this.cbx_app_ftnt_def,&
this.cbx_app_spec_temp,&
this.cbx_modelgroup_print,&
this.cbx_modelgroup_inquiry,&
this.gb_2,&
this.gb_4,&
this.gb_vendor,&
this.gb_brand,&
this.gb_6,&
this.gb_7}
end on

on w_delete_make.destroy
destroy(this.cb_reset)
destroy(this.dw_profile_master)
destroy(this.dw_profile)
destroy(this.cb_delete_profile)
destroy(this.cb_new)
destroy(this.cb_save)
destroy(this.cbx_singleuser)
destroy(this.dw_year_to)
destroy(this.st_10)
destroy(this.dw_year_from)
destroy(this.st_9)
destroy(this.st_8)
destroy(this.dw_model_filter)
destroy(this.dw_make_filter)
destroy(this.dw_class_filter)
destroy(this.pb_1)
destroy(this.cbx_all_brand)
destroy(this.dw_brand)
destroy(this.dw_brand_filter)
destroy(this.dw_vendor_filter)
destroy(this.dw_vendor)
destroy(this.cbx_all_vendor)
destroy(this.pb_vendor)
destroy(this.dw_line_filter)
destroy(this.pb_make)
destroy(this.pb_model)
destroy(this.pb_line)
destroy(this.pb_class)
destroy(this.cbx_all_models)
destroy(this.cbx_all_makes)
destroy(this.cbx_all_models_del)
destroy(this.cbx_all_make_del)
destroy(this.cbx_all_line)
destroy(this.cbx_all_class)
destroy(this.cbx_model)
destroy(this.cbx_make)
destroy(this.cbx_part_spec_value)
destroy(this.cbx_part_spec_temp)
destroy(this.cbx_part_ftnt_attachments)
destroy(this.cbx_part_ftnt_def)
destroy(this.cbx_line)
destroy(this.cbx_class)
destroy(this.cbx_parts)
destroy(this.mle_3)
destroy(this.cb_help)
destroy(this.cb_close)
destroy(this.cb_process)
destroy(this.dw_line)
destroy(this.dw_class)
destroy(this.dw_make)
destroy(this.dw_model)
destroy(this.gb_3)
destroy(this.gb_1)
destroy(this.gb_5)
destroy(this.cbx_part_interchange)
destroy(this.cbx_app_ftnt_def)
destroy(this.cbx_app_spec_temp)
destroy(this.cbx_modelgroup_print)
destroy(this.cbx_modelgroup_inquiry)
destroy(this.gb_2)
destroy(this.gb_4)
destroy(this.gb_vendor)
destroy(this.gb_brand)
destroy(this.gb_6)
destroy(this.gb_7)
end on

type cb_reset from commandbutton within w_delete_make
integer x = 3077
integer y = 2988
integer width = 503
integer height = 96
integer taborder = 300
integer textsize = -9
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "&Reset Selection"
end type

event clicked;
wf_reset_profile()


end event

type dw_profile_master from datawindow within w_delete_make
integer x = 379
integer y = 400
integer width = 2546
integer height = 96
integer taborder = 60
string title = "none"
string dataobject = "dw_profile_master"
boolean border = false
boolean livescroll = true
end type

event dberror;return 1
end event

event editchanged;
Cb_save. enabled = TRUE
ib_Profile_modified = TRUE 

accepttext( )

end event

event itemchanged;
IF UPPER( dwo.Name ) = 'PROFILE_ID' THEN
	IF NOT f_isnullorEmpty(data) then

		dw_profile.setitem( 1,1, data)
		
	end if
End if

Cb_save.enabled = TRUE
ib_Profile_modified = TRUE 

end event

type dw_profile from datawindow within w_delete_make
integer x = 439
integer y = 168
integer width = 1326
integer height = 92
integer taborder = 10
string title = "none"
string dataobject = "dw_profileid"
boolean border = false
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event itemchanged;String ls_profileID
int li_ret, li_index
pointer lp_pointer

lp_pointer = setpointer(HourGlass!)

IF ib_Profile_modified OR &
	ib_Class_modified OR ib_Line_modified OR &
	ib_Vendor_modified OR ib_Brand_modified OR ib_make_modified  OR  ib_model_modified OR ib_year_modified Then

	li_ret = MessageBox("Save", 'The profile data selection is modified, would you like to save it?',  Question!, YesNo!, 2)

	IF li_ret = 1 THEN
		IF wf_save( ) = false then  
			Messagebox("Save Error" , "The changes could not be saved~n" + is_error_message)
			IF ib_new_profile then is_Pre_ProfileID =  dw_profile_master.getitemstring( 1, 'profile_id')
			setitem( 1,1,is_Pre_ProfileID)
			return 2
		END IF
		idwc_profile.settransobject( sqlca)
		idwc_profile.retrieve()

	END IF
END IF

wf_reset_profile( )
wf_enable_dw(True)

ls_profileID = data
is_Pre_ProfileID = ls_profileID  

dw_profile_master.retrieve(ls_profileID)
setfocus( )

// Retrieve Detail data
ids_profile = create Datastore
ids_profile.dataobject = 'dw_profileID_single'
ids_profile.settransobject(sqlca)
ids_profile.retrieve(ls_profileID )

//retrieve the exist profile
IF NOT f_isnullorempty(ls_profileID) then
	wf_retrieve_profile(ls_profileID)
	wf_retrieve_detail(ls_profileID)
End If

//Reset profile
cb_save.enabled = FALSE

ib_new_profile = false; ib_Profile_modified = false 
ib_Class_modified = False; ib_Line_modified = False
ib_Vendor_modified = False; ib_Brand_modified = False; ib_make_modified = False; ib_model_modified = False; ib_year_modified = False
Setpointer(lp_pointer )

end event

type cb_delete_profile from commandbutton within w_delete_make
integer x = 1801
integer y = 168
integer width = 411
integer height = 92
integer taborder = 20
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Delete Profile"
end type

event clicked;String ls_profileID
int li_ret
Boolean lb_error


ls_profileID = dw_profile.gettext( )
IF ls_profileID = '' OR isnull(ls_profileID) then
	 MessageBox("Delete", 'Please select a profile to delete.')
	 return
END IF
	
li_ret = MessageBox("Delete", 'Are you sure you want to delete the current profile?',  Question!, YesNo!, 2)
IF li_ret = 2 THEN 	return 


IF NOT ib_new_profile then
//	//Foreign Key with ON DELETE CASCASE will delete Detail data
//	Delete from DeleteMake_Profile_Detail where  ProfileID = :ls_profileID;
//	IF sqlca.sqlcode <>  0  then  lb_error = TRUE
		
	Delete from DeleteMake_Profile_Master where  ProfileID = :ls_profileID;
	IF sqlca.sqlcode <>  0  then  lb_error = TRUE
	
	IF lb_error  Then 
		messagebox("Deleting Error","Delete failed: " + SQLCA.SQLErrText )
		rollback;
		Return
	ELse
		Commit;
	End if
	
	idwc_profile.settransobject( sqlca)
	idwc_profile.retrieve()

end if

dw_profile.setitem( 1, 1,'')

dw_profile_master.reset()
wf_reset_profile()
cb_save.enabled = FALSE





end event

type cb_new from commandbutton within w_delete_make
integer x = 2249
integer y = 168
integer width = 370
integer height = 92
integer taborder = 30
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "New Profile"
end type

event clicked;long ll_row
int li_ret 


IF ib_Profile_modified OR &
	ib_Class_modified OR ib_Line_modified OR &
	ib_Vendor_modified OR ib_Brand_modified OR ib_make_modified  OR  ib_model_modified OR ib_year_modified Then

	li_ret = MessageBox("Save", 'The profile data selection is modified, would you like to save it ?',  Question!, YesNo!, 2)

	IF li_ret = 1 THEN
		IF wf_save( ) = false then  	
			Messagebox("Save Error" , "The changes could not be saved!~n" + is_error_message)
			return
		end if
		
		idwc_profile.settransobject( sqlca)
		idwc_profile.retrieve()
		
	END IF
END IF

wf_enable_dw(True)

dw_profile_master.reset()
ll_row = dw_profile_master.insertrow(0)
dw_profile_master.setfocus()
dw_profile.setitem( 1,1,'')

// set up dw_class
dw_class.SetTransObject(SQLCA)
dw_class.Retrieve()
dw_class.selectrow( 0,false)	

wf_reset_profile()
ib_new_profile = true
cbx_all_class.Enabled = True





end event

type cb_save from commandbutton within w_delete_make
integer x = 2656
integer y = 168
integer width = 402
integer height = 92
integer taborder = 40
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
boolean enabled = false
string text = "Save Profile"
end type

event clicked;
//Save profile
IF wf_save( ) then 
	commit;
	Messagebox("Save" , "Profile is saved successfully")
	idwc_profile.settransobject( sqlca)
	idwc_profile.retrieve()
	
	ib_new_profile = false
Else
	Messagebox("Save Error" , "The changes could not be saved!~n" + is_error_message)
	return
end if

Cb_save. enabled = False



end event

type cbx_singleuser from checkbox within w_delete_make
integer x = 4389
integer y = 428
integer width = 571
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 255
long backcolor = 79741120
string text = "Single User Mode"
end type

type dw_year_to from datawindow within w_delete_make
integer x = 2999
integer y = 2180
integer width = 338
integer height = 76
integer taborder = 260
boolean enabled = false
string title = "none"
string dataobject = "dw_year_selected"
boolean border = false
boolean livescroll = true
end type

event dberror;return 1
end event

event itemchanged;String ls_from_year, ls_to_year, ls_find
Long ll_ret

ls_to_year = data

Cb_save.enabled = TRUE
ib_year_modified = TRUE 

IF ls_to_year = '' Then 
	dw_year_from.Settext( '' )
	Return
End if

ls_find=" year='"+ls_to_year+"'"
ll_ret=idwc_year_to.find(ls_find,1,idwc_year_to.rowcount())

if ll_ret< 1 or  idwc_year_to.rowcount( ) <1  then 
	MessageBox("Year Input Error", "The specified year does not exist")
	SetItem(1, "year",'')
	setfocus( )
	return 1
end if


ls_from_year  = dw_year_from.gettext( )
IF ls_from_year <> '' AND not isnull(ls_from_year) then
	IF ls_from_year > ls_to_year  then
		messagebox ("Error","'To Year' value should be greater or equal to the 'From Year' value. ")
		SetItem(1, "year",ls_from_year)
		return 1
	end if
Else
	 dw_year_from.SetItem(1, "year",ls_to_year)
	 is_FromYear = ls_to_year
End if

is_toYear = ls_to_year


end event

event itemerror;return 1
end event

event losefocus;accepttext( )

end event

type st_10 from statictext within w_delete_make
integer x = 2848
integer y = 2184
integer width = 133
integer height = 56
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
long backcolor = 67108864
string text = "To:"
alignment alignment = right!
boolean focusrectangle = false
end type

type dw_year_from from datawindow within w_delete_make
integer x = 2373
integer y = 2180
integer width = 338
integer height = 76
integer taborder = 250
boolean enabled = false
string title = "none"
string dataobject = "dw_year_selected"
boolean border = false
boolean livescroll = true
end type

event dberror;return 1

end event

event itemchanged;String ls_from_year, ls_to_year, ls_find
Long ll_ret

ls_from_year = data

Cb_save.enabled = TRUE
ib_year_modified = TRUE 

IF ls_from_year = '' Then 
	dw_year_to.Settext( '' )
	Return
End if

ls_find=" year='"+ls_from_year+"'"
ll_ret=idwc_year_from.find(ls_find,1,idwc_year_from.rowcount())

if ll_ret< 1 or  idwc_year_from.rowcount( ) < 1  then 
	MessageBox("Year Input Error", "The specified year does not exist")
	SetItem(1, "year",'')
	setfocus( )
	return 1
end if


ls_to_year  = dw_year_to.gettext( )
IF ls_to_year <> '' AND not isnull(ls_to_year) then
	IF ls_from_year > ls_to_year  then
		messagebox ("Error", "'To Year' value should be greater or equal to the 'From Year' value.")
		SetItem(1, "year",ls_to_year)
		return 1
	end if
Else
	 dw_year_to.SetItem(1, "year",ls_from_year)
	 is_ToYear = ls_from_year
End if

is_FromYear = ls_from_year



end event

event itemerror;return 1

end event

event losefocus;accepttext( )

end event

type st_9 from statictext within w_delete_make
integer x = 2139
integer y = 2184
integer width = 215
integer height = 56
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
long backcolor = 67108864
string text = "From:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_8 from statictext within w_delete_make
integer x = 1751
integer y = 2180
integer width = 370
integer height = 88
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
string text = "Year Ranges:"
alignment alignment = right!
boolean focusrectangle = false
end type

type dw_model_filter from datawindow within w_delete_make
integer x = 3451
integer y = 1412
integer width = 1321
integer height = 84
integer taborder = 220
string title = "none"
string dataobject = "dw_models_list_delete"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event editchanged;accepttext( )

uf_dw_filter_hdvin(this,dw_model, '' )

If cbx_all_models.checked Then
	cbx_all_models.checked = False
	cbx_all_models.TriggerEvent("clicked")
End If
end event

type dw_make_filter from datawindow within w_delete_make
integer x = 1838
integer y = 1412
integer width = 1321
integer height = 84
integer taborder = 190
string title = "none"
string dataobject = "dw_makes_list_delete"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event editchanged;accepttext( )

uf_dw_filter_hdvin(this,dw_make, '' )

If cbx_all_makes.checked Then
	cbx_all_makes.checked = False
	cbx_all_makes.TriggerEvent("clicked")
End If
end event

type dw_class_filter from datawindow within w_delete_make
integer x = 219
integer y = 596
integer width = 1321
integer height = 84
integer taborder = 50
string title = "none"
string dataobject = "dw_productclasses_list_delete"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event editchanged;accepttext( )

uf_dw_filter_hdvin(this,dw_class, '' )

If cbx_all_class.checked Then
	cbx_all_class.checked = False
	cbx_all_class.TriggerEvent("clicked")
End If
end event

type pb_1 from picturebutton within w_delete_make
integer x = 1559
integer y = 1412
integer width = 105
integer height = 92
integer taborder = 170
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string picturename = "SelectAll!"
end type

event clicked;str_dwselection lstr

lstr.dw_input = dw_brand
lstr.s_type = "multi"

openwithparm(w_generic_dwselection, lstr)
wf_loadbrand()

dw_class.Retrieve(is_Vendor, is_Brand)
if cbx_all_class.Checked then
	if dw_class.RowCount() > 0 then
		dw_class.SelectRow(0, TRUE)
	end if
	dw_class.Enabled = FALSE
end if
end event

type cbx_all_brand from checkbox within w_delete_make
integer x = 1559
integer y = 1756
integer width = 155
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
string text = "All"
end type

event clicked;Long ll_ret
String ls_empty[1]

// Initialize Array
is_Brand [] = Dummy[] 

dw_brand_filter.Reset()
dw_brand_filter.InsertRow(0)
dw_brand.SetFilter( '' )
dw_brand.Filter( )

IF Checked then
	dw_Brand.SelectRow(0, TRUE)
	dw_Brand.Enabled = FALSE
	is_Brand [1] = '|ALL|'
Else
	dw_Brand.SelectRow(0, FALSE)
	dw_Brand.Enabled = TRUE
	is_Brand [1] = '|ALL|'
End if

dw_Make.Retrieve( is_vendor, is_brand, is_Class, is_Line )
dw_Model.Retrieve( ls_empty, ls_empty, ls_empty, ls_empty, ls_empty )

Cb_save.enabled = TRUE
ib_Brand_modified = TRUE 
end event

type dw_brand from datawindow within w_delete_make
integer x = 219
integer y = 1504
integer width = 1321
integer height = 572
integer taborder = 180
string dataobject = "dw_brands_list_delete"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event retrieveend;String ls_empty[1]

IF rowcount = 0 Then
	cbx_all_brand.Enabled = False
Else
	cbx_all_brand.Enabled = True
END IF

cbx_all_brand.Checked = False
This.Enabled = True

ls_empty[1] = ''

//
// Reseting the following Make and Model by retrieving nothing ...
// that sets check boxes enabled / disabled @ retrieve end event
//

dw_make.Retrieve ( ls_empty, ls_empty, ls_empty, ls_empty )
dw_model.Retrieve( ls_empty, ls_empty, ls_empty, ls_empty, ls_empty)


end event

event clicked;Long ll_ret
IF row = 0 Then Return

uf_multiselect_dw(this, row)

// Load the selected values into an Array
wf_LoadBrand( )

ll_ret = dw_Make.Retrieve( is_Vendor, is_Brand, is_Class, is_Line )

Cb_save.enabled = TRUE
ib_Brand_modified = TRUE 
end event

type dw_brand_filter from datawindow within w_delete_make
integer x = 219
integer y = 1412
integer width = 1321
integer height = 84
integer taborder = 160
string title = "none"
string dataobject = "dw_brands_list_delete"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event editchanged;accepttext( )

uf_dw_filter_hdvin(this,dw_brand, '' )

If cbx_all_brand.checked Then
	cbx_all_brand.checked = False
	cbx_all_brand.TriggerEvent("clicked")
End If
end event

type dw_vendor_filter from datawindow within w_delete_make
integer x = 3451
integer y = 608
integer width = 1321
integer height = 84
integer taborder = 130
string title = "none"
string dataobject = "dw_vendors_list_delete"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event editchanged;accepttext( )

uf_dw_filter_hdvin(this,dw_vendor, '' )

If cbx_all_vendor.checked Then
	cbx_all_vendor.checked = False
	cbx_all_vendor.TriggerEvent("clicked")
End If
end event

type dw_vendor from datawindow within w_delete_make
integer x = 3451
integer y = 700
integer width = 1321
integer height = 572
integer taborder = 150
string dataobject = "dw_vendors_list_delete"
richtexttoolbaractivation richtexttoolbaractivation = richtexttoolbaractivationalways!
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;Long ll_ret
IF row = 0 Then Return

uf_multiselect_dw(this, row)

// Load the selected values into an Array
wf_LoadVendor( )

// Then Retrieve the Brands for selected Vendors
ll_ret = dw_Brand.Retrieve( is_Class, is_Line, is_Vendor )

Cb_save.enabled = TRUE
ib_Vendor_modified = TRUE 




end event

type cbx_all_vendor from checkbox within w_delete_make
integer x = 4791
integer y = 952
integer width = 155
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
string text = "All"
end type

event clicked;Long ll_ret
String ls_empty[1]

// Initialize Array
is_Vendor [] = Dummy[] 

dw_vendor_filter.Reset()
dw_vendor_filter.InsertRow(0)
dw_vendor.SetFilter( '' )
dw_vendor.Filter( )

// Set the default Value '|ALL|'
is_Brand[1] = '|ALL|'

IF Checked then
	dw_Vendor.SelectRow(0, TRUE)
	dw_Vendor.Enabled = FALSE
	is_Vendor [1] = '|ALL|'
Else
	dw_Vendor.SelectRow(0, FALSE)
	dw_Vendor.Enabled = TRUE
	is_Vendor [1] = '|ALL|'
End if

// Then Retrieve the Brands for selected Vendors
ll_ret = dw_Brand.Retrieve( is_class, is_line, is_vendor )
dw_Make.Retrieve( is_vendor, is_brand, is_Class, is_Line )
dw_Model.Retrieve( ls_empty, ls_empty, ls_empty, ls_empty, ls_empty )

Cb_save.enabled = TRUE
ib_Vendor_modified = TRUE 


end event

type pb_vendor from picturebutton within w_delete_make
integer x = 4791
integer y = 608
integer width = 105
integer height = 92
integer taborder = 140
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string picturename = "SelectAll!"
end type

event clicked;str_dwselection lstr

lstr.dw_input = dw_vendor
lstr.s_type = "multi"

openwithparm(w_generic_dwselection, lstr)
wf_loadvendor()

dw_brand.Retrieve(is_Vendor)
if cbx_all_brand.Checked then
	if dw_brand.RowCount() > 0 then
		dw_brand.SelectRow(0, TRUE)
	end if
	dw_brand.Enabled = FALSE
end if
end event

type dw_line_filter from datawindow within w_delete_make
integer x = 1838
integer y = 596
integer width = 1321
integer height = 84
integer taborder = 100
string title = "none"
string dataobject = "dw_productlines_list_delete"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event editchanged;accepttext( )

uf_dw_filter_hdvin(this,dw_line, '' )

If cbx_all_line.checked Then
	cbx_all_line.checked = False
	cbx_all_line.TriggerEvent("clicked")
End If
end event

type pb_make from picturebutton within w_delete_make
integer x = 3177
integer y = 1412
integer width = 105
integer height = 92
integer taborder = 200
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string picturename = "SelectAll!"
end type

event clicked;str_dwselection lstr

lstr.dw_input = dw_make
lstr.s_type = "multi"

openwithparm(w_generic_dwselection, lstr)
wf_loadmake()

dw_model.Retrieve(is_Vendor, is_Brand, is_class, is_line, is_make)
if cbx_all_models.Checked then
	if dw_model.RowCount() > 0 then
		dw_model.SelectRow(0, TRUE)
	end if
	dw_model.Enabled = FALSE
end if
end event

type pb_model from picturebutton within w_delete_make
integer x = 4791
integer y = 1412
integer width = 105
integer height = 92
integer taborder = 230
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string picturename = "SelectAll!"
end type

event clicked;str_dwselection lstr

lstr.dw_input = dw_model
lstr.s_type = "multi"

openwithparm(w_generic_dwselection, lstr)
wf_loadmodel()

dw_year_from.enabled = true
dw_year_to.enabled = true

dw_year_from.reset()
dw_year_to.reset()
dw_year_from.insertrow(0)
dw_year_to.insertrow(0)
dw_year_from.setitem( 1,1,'')
dw_year_to.setitem( 1,1,'')

idwc_year_from.retrieve( is_vendor, is_brand , is_class, is_line, is_make, is_model )	
idwc_year_to.retrieve( is_vendor, is_brand , is_class, is_line, is_make, is_model )	

end event

type pb_line from picturebutton within w_delete_make
integer x = 3177
integer y = 596
integer width = 105
integer height = 92
integer taborder = 110
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string picturename = "SelectAll!"
end type

event clicked;str_dwselection lstr

lstr.dw_input = dw_line
lstr.s_type = "multi"

openwithparm(w_generic_dwselection, lstr)
wf_loadline()

dw_make.Retrieve(is_Vendor, is_Brand, is_class, is_line)
if cbx_all_makes.Checked then
	if dw_make.RowCount() > 0 then
		dw_make.SelectRow(0, TRUE)
	end if
	dw_make.Enabled = FALSE
end if
end event

type pb_class from picturebutton within w_delete_make
integer x = 1559
integer y = 596
integer width = 105
integer height = 92
integer taborder = 70
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string picturename = "SelectAll!"
end type

event clicked;str_dwselection lstr

lstr.dw_input = dw_class
lstr.s_type = "multi"

openwithparm(w_generic_dwselection, lstr)
wf_loadclass()

//dw_line.Retrieve(is_Vendor, is_Brand, is_class)


dw_Line.Retrieve( is_Class )

dw_Vendor.Retrieve( is_Class, is_Line )
dw_Brand.Retrieve( is_Class, is_Line, is_vendor )


if cbx_all_line.Checked then
	if dw_line.RowCount() > 0 then
		dw_line.SelectRow(0, TRUE)
	end if
	dw_line.Enabled = FALSE
end if
end event

type cbx_all_models from checkbox within w_delete_make
integer x = 4791
integer y = 1756
integer width = 155
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
boolean enabled = false
string text = "All"
end type

event clicked;Long ll_ret

// Initialize Array
is_Model [] = Dummy[] 

dw_model_filter.Reset()
dw_model_filter.InsertRow(0)
dw_model.SetFilter( '' )
dw_model.Filter( )

IF Checked then
	dw_Model.SelectRow(0, TRUE)
	dw_Model.Enabled = FALSE
	is_Model [1] = '|ALL|'
	
Else
	dw_Model.SelectRow(0, FALSE)
	dw_Model.Enabled = TRUE
	is_Model [1] = ''
	
End if

//dw_year_from.reset()
//dw_year_to.reset()
//wf_reset_year()

dw_year_from.setitem( 1,1,'')
dw_year_to.setitem( 1,1,'')
dw_year_from.enabled = true
dw_year_to.enabled = true

idwc_year_from.retrieve( is_vendor, is_brand , is_class, is_line, is_make, is_model )	
idwc_year_to.retrieve( is_vendor, is_brand , is_class, is_line, is_make, is_model )	

Cb_save.enabled = TRUE
ib_model_modified = TRUE 
end event

type cbx_all_makes from checkbox within w_delete_make
integer x = 3177
integer y = 1756
integer width = 155
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
boolean enabled = false
string text = "All"
end type

event clicked;Long ll_ret

// Initialize Array
is_Make [] = Dummy[] 

dw_make_filter.Reset()
dw_make_filter.InsertRow(0)
dw_make.SetFilter( '' )
dw_make.Filter( )

// Set the default Value '|ALL|'
is_Model[1] = '|ALL|'


IF Checked then
	dw_Make.SelectRow(0, TRUE)
	dw_Make.Enabled = FALSE
	// Load '|ALL|'  into an array
	is_Make [1] = '|ALL|'
Else
	dw_Make.SelectRow(0, FALSE)
	dw_Make.Enabled = TRUE
	// Load ''  into an array
	is_Make [1] = ''
End if

// Then Retrieve the Model for Selected Class, line & Makes
ll_ret = dw_Model.Retrieve( is_Vendor, is_Brand, is_Class, is_Line, is_Make )

Cb_save.enabled = TRUE
ib_make_modified = TRUE 
end event

type cbx_all_models_del from checkbox within w_delete_make
integer x = 3442
integer y = 2728
integer width = 1033
integer height = 64
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
boolean enabled = false
string text = "All Models that have no Applications"
boolean checked = true
end type

type cbx_all_make_del from checkbox within w_delete_make
integer x = 3442
integer y = 2648
integer width = 1019
integer height = 64
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
string text = "All Makes that have no Applications"
boolean checked = true
end type

event clicked;IF Checked Then
	cbx_all_models_del.Enabled			= False
	cbx_all_models_del.Checked  = True
ELSE
	cbx_all_models_del.Enabled		= True
END IF

Cb_save.enabled = TRUE
ib_Profile_modified = TRUE 
end event

type cbx_all_line from checkbox within w_delete_make
integer x = 3177
integer y = 940
integer width = 155
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
boolean enabled = false
string text = "All"
end type

event clicked;String ls_empty[1]

// Initialize an Array
is_Line []  = Dummy[] 

dw_line_filter.Reset()
dw_line_filter.InsertRow(0)
dw_line.SetFilter( "line <> '     ' " )
dw_line.Filter( )

// Set the default Value '|ALL|'
is_Vendor[1] = '|ALL|'
is_Brand[1] = '|ALL|'

IF Checked then
	dw_Line.SelectRow(0, TRUE)
	dw_Line.Enabled = FALSE
	is_Line [1] = '|ALL|'
Else
	dw_Line.SelectRow(0, FALSE)
	dw_Line.Enabled = TRUE
	is_Line [1] = ''
End if

ls_empty[1] = ''

// Then Retrieve the Make for selected Lines
dw_Vendor.Retrieve( is_Class, is_Line )
dw_Brand.Retrieve( is_Class, is_Line, is_vendor )
dw_Make.Retrieve( is_vendor, is_brand, is_Class, is_Line )
dw_Model.Retrieve( ls_empty, ls_empty, ls_empty, ls_empty, ls_empty )

Cb_save.enabled = TRUE
ib_Line_modified = TRUE 
end event

type cbx_all_class from checkbox within w_delete_make
integer x = 1559
integer y = 940
integer width = 155
integer height = 64
integer taborder = 90
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
string text = "All"
end type

event clicked;Long ll_ret
String ls_empty[1]

// Initialize Array
is_Class [] = Dummy[] 

dw_class_filter.Reset()
dw_class_filter.InsertRow(0)
dw_class.SetFilter( '' )
dw_class.Filter( )

// Set the default Value '|ALL|'
is_Line[1] = '|ALL|'
is_Vendor[1] = '|ALL|'
is_Brand[1] = '|ALL|'

IF Checked then
	dw_Class.SelectRow(0, TRUE)
	dw_Class.Enabled = FALSE
	is_Class [1] = '|ALL|'
Else
	dw_Class.SelectRow(0, FALSE)
	dw_Class.Enabled = TRUE
	is_Class [1] = ''
End if

ls_empty[1] = ''

// Then Retrieve the Lines for selected CLASSes
ll_ret = dw_Line.Retrieve( is_Class )

dw_Vendor.Retrieve( is_Class, is_Line )
dw_Brand.Retrieve( is_Class, is_Line, is_vendor )

dw_Make.Retrieve( is_Vendor, is_Brand, is_Class, is_Line )
dw_Model.Retrieve( ls_empty, ls_empty, ls_empty, ls_empty, ls_empty )

Cb_save.enabled = TRUE
ib_Class_modified = TRUE 
end event

type cbx_model from checkbox within w_delete_make
integer x = 2674
integer y = 2488
integer width = 416
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
boolean enabled = false
string text = "Model"
boolean checked = true
end type

event clicked;IF cbx_make.Checked OR cbx_model.Checked Then
	cbx_modelgroup_print.Enabled			= False
	cbx_modelgroup_inquiry.Enabled		= False
	
	cbx_modelgroup_print.Checked			= True
	cbx_modelgroup_inquiry.Checked		= True
ELSE
	cbx_modelgroup_print.Enabled			= True
	cbx_modelgroup_inquiry.Enabled		= True
END IF

end event

type cbx_make from checkbox within w_delete_make
integer x = 2674
integer y = 2408
integer width = 416
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
string text = "Make"
boolean checked = true
end type

event clicked;IF cbx_make.Checked Then
	cbx_model.Enabled			= False
	cbx_modelgroup_print.Enabled			= False
	cbx_modelgroup_inquiry.Enabled		= False
	
	cbx_model.Checked  = True
	cbx_modelgroup_print.Checked			= True
	cbx_modelgroup_inquiry.Checked		= True
ELSE
	cbx_modelgroup_print.Enabled			= True
	cbx_modelgroup_inquiry.Enabled		= True
	
	cbx_model.Enabled		= True
END IF

Cb_save.enabled = TRUE
ib_Profile_modified = TRUE 
end event

type cbx_part_spec_value from checkbox within w_delete_make
integer x = 219
integer y = 2728
integer width = 1070
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
boolean enabled = false
string text = "Part && Part Interchange Spec Values"
boolean checked = true
end type

type cbx_part_spec_temp from checkbox within w_delete_make
integer x = 219
integer y = 2648
integer width = 1161
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
boolean enabled = false
string text = "Part && Part Interchange Spec Templates"
boolean checked = true
end type

event clicked;IF This.checked Then
	
	// Enabled=False, for the option that are dependent on Part Spec Template
	// so if we delete the Template we can't keep the VALUES
	cbx_part_spec_value.Enabled	= False
	cbx_part_spec_value.Checked	= True
	
ELSE
	
	// Enabled=True, for the option that are dependent on Part Spec Template
	// User now able to delete or keep it by his choice
	cbx_part_spec_value.Enabled	= True

END IF

end event

type cbx_part_ftnt_attachments from checkbox within w_delete_make
integer x = 219
integer y = 2568
integer width = 827
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
boolean enabled = false
string text = "Part Footnotes Attachments"
boolean checked = true
end type

type cbx_part_ftnt_def from checkbox within w_delete_make
integer x = 219
integer y = 2488
integer width = 827
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
boolean enabled = false
string text = "Part Footnotes Definition"
boolean checked = true
end type

event clicked;IF This.checked Then
	
	// Enabled=False, for the option that are dependent on Part Ftnt Def
	// so if we delete the defination we can't keep the attachments
	cbx_part_ftnt_attachments.Enabled	= False
	cbx_part_ftnt_attachments.Checked	= True
	
ELSE
	
	// Enabled=True, for the option that are dependent on Part Ftnt Def
	// User now able to delete or keep it by his choice
	cbx_part_ftnt_attachments.Enabled	= True

END IF

end event

type cbx_line from checkbox within w_delete_make
integer x = 3442
integer y = 2476
integer width = 416
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
boolean enabled = false
string text = "Line"
boolean checked = true
end type

event clicked;wf_toggle( this.Checked , 'Line' )
end event

type cbx_class from checkbox within w_delete_make
integer x = 3442
integer y = 2396
integer width = 416
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
string text = "Class"
boolean checked = true
end type

event clicked;wf_toggle( this.Checked , 'Class' )

Cb_save.enabled = TRUE
ib_Profile_modified = TRUE 
end event

type cbx_parts from checkbox within w_delete_make
integer x = 219
integer y = 2408
integer width = 827
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
boolean enabled = false
string text = "Parts"
boolean checked = true
end type

event clicked;IF This.checked Then
	
	// Enabled=true for those options that are not dependent on Parts
	cbx_part_ftnt_def.Enabled				= True
	cbx_part_spec_temp.Enabled			= True
	cbx_app_ftnt_def.Enabled				= True
	cbx_class.Enabled 							= True
	cbx_line.Enabled 							= True
	cbx_app_spec_temp.Enabled			= True
	
	IF cbx_make.Checked OR cbx_model.Checked Then
		cbx_modelgroup_print.Enabled			= False
		cbx_modelgroup_inquiry.Enabled		= False
	ELSE
		cbx_modelgroup_print.Enabled			= True
		cbx_modelgroup_inquiry.Enabled		= True
	END IF
	
	// Enabled=False, for those options that are dependent on Parts
	cbx_part_ftnt_attachments.Enabled	= False
	cbx_part_interchange.Enabled			= False
	cbx_part_spec_value.Enabled			= False
	
	// Checked=True, for those options that are dependent on Parts
	cbx_part_ftnt_attachments.Checked	= True
	cbx_part_interchange.Checked			= True
	cbx_part_spec_value.Checked			= True
	
ELSE
	
	// Else means that user selected not to delete Parts then 
	// we should keep the class and line, 
	// and not allowing user to select 4 delete.
	cbx_class.Checked = False
	cbx_class.Enabled = False
	cbx_line.Checked = False
	cbx_line.Enabled = False
	
	// These can be select to delete or not to delete 
	cbx_part_ftnt_def.Enabled				= True
	cbx_part_spec_temp.Enabled			= True
	cbx_app_ftnt_def.Enabled				= True
	cbx_app_spec_temp.Enabled			= True
	cbx_part_interchange.Enabled			= True
	
	IF cbx_make.Checked OR cbx_model.Checked Then
		cbx_modelgroup_print.Enabled			= False
		cbx_modelgroup_inquiry.Enabled		= False
	ELSE
		cbx_modelgroup_print.Enabled			= True
		cbx_modelgroup_inquiry.Enabled		= True
	END IF
	
	IF cbx_part_ftnt_def.Checked Then 
		cbx_part_ftnt_attachments.Enabled	= False
	ELSE
		cbx_part_ftnt_attachments.Enabled	= True
	END IF
	
	IF cbx_part_spec_temp.Checked Then
		cbx_part_spec_value.Enabled			= False
	ELSE
		cbx_part_spec_value.Enabled			= True
	END IF
	
END IF

end event

type mle_3 from multilineedit within w_delete_make
integer y = 32
integer width = 5088
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 255
long backcolor = 79741120
string text = "In order to safeguard your database of possible loss, it is recommended that you Backup your data."
boolean border = false
alignment alignment = center!
end type

type cb_help from commandbutton within w_delete_make
event clicked pbm_bnclicked
integer x = 2638
integer y = 2988
integer width = 366
integer height = 96
integer taborder = 290
integer textsize = -8
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "&Help"
end type

type cb_close from commandbutton within w_delete_make
integer x = 2199
integer y = 2988
integer width = 366
integer height = 96
integer taborder = 280
integer textsize = -8
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Close"
boolean cancel = true
boolean default = true
end type

event clicked;Close(Parent)
end event

type cb_process from commandbutton within w_delete_make
integer x = 1760
integer y = 2988
integer width = 366
integer height = 96
integer taborder = 270
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "&Process"
boolean cancel = true
end type

event clicked;
String ls_sql, ls_profile, ls_empty[]
Integer Choice, li_return
Long ll_row

ls_profile = dw_profile.GetText()
If ls_profile = '' Then
	MessageBox('Input Error', 'No Profile is selected, please complete your selection criteria and try again.', Exclamation!, Ok!)
	dw_Profile.SetFocus()
	Return
End If

ll_row = dw_Class.GetSelectedRow( 0 ) 
If ll_row = 0 Then
	MessageBox('Input Error', 'No product classes are selected, please complete your selection criteria and try again.', Exclamation!, Ok!)
	dw_Class.SetFocus()
	Return	
End If

IF ib_Profile_modified OR &
	ib_Class_modified OR ib_Line_modified OR &
	ib_Vendor_modified OR ib_Brand_modified OR ib_make_modified  OR  ib_model_modified OR ib_year_modified Then

	li_return = MessageBox("Save", 'The profile data selection is modified, would you like to save it?',  Question!, YesNo!, 2)

	IF li_return = 1 THEN
		IF wf_save( ) = false then  	
			Messagebox("Save Error" , "The changes could not be saved!~n" + is_error_message)
			return
		end if
		
		idwc_profile.settransobject( sqlca)
		idwc_profile.retrieve()
		ib_new_profile = false
		Cb_save. enabled = False
	Else
		return
	END IF
END IF


// Show the legal disclaimer...
Choice = MessageBox('Warning', &
	'All references to the selected criteria are about to be removed from database.  ' & 
	 + 'This cannot be undone.  Do you wish to continue?', Question!, YesNo!, 2)

// Did the user wanna check out?
IF Choice = 2 then return

If cbx_singleuser.Checked Then
	//set talkpic database to single user mode
	SQLCA.AutoCommit = TRUE
	ls_sql="alter database "+gs_tp_profile+" set single_user with no_wait"
	execute immediate :ls_sql using SQLCA;
	if SQLCA.sqlcode=0 then
		commit using SQLCA;
	else
		//can not set to single user mode
		rollback using SQLCA;
		MessageBox("Delete Automotive Make","Could not switch database to single-user mode.~r~n~r~nPlease ask all users to disconnect from '"+gs_tp_profile+"' database.",stopsign!)
		Return
	end if
End If

////////////////////////////////////////////////////////////////////////////////////////////////////////

// Otherwise, blow away everything that has anything to do with this part no.
Open ( w_pleasewait )
w_pleasewait.Title = "Bulk Delete Utility"
w_pleasewait.st_1.Text = 'Deleting data, please wait ...'

EnableAudit( )

ls_sql =  "Execute sp_bulk_delete '" + ls_profile +"', '', '" + gs_spid + "', 'False' " 
li_return = wf_execute_sql ( ls_sql , "Error while executing Bulk Delete. Review Error: ", SQLCA ) 

If li_return = -1 Then
	ROLLBACK;
Else
	COMMIT ;
End If

close(w_pleasewait)

If cbx_all_vendor.checked Then cbx_all_vendor.checked = False
If cbx_all_brand.checked Then cbx_all_brand.checked = False

If cbx_all_class.checked Then cbx_all_class.checked = False
If cbx_all_line.checked Then cbx_all_line.checked = False
If cbx_all_makes.checked Then cbx_all_makes.checked = False
If cbx_all_models.checked Then cbx_all_models.checked = False

dw_line.reset()
dw_make.reset()
dw_model.reset()

is_vendor = ls_empty
is_vendor[1] = '|ALL|'
is_brand = ls_empty
is_brand[1] = '|ALL|'

dw_class.Retrieve( )

If ib_enableaudit = False Then DisableAudit( )

If cbx_singleuser.Checked Then
	//reset to multiple user mode
	ls_sql="alter database "+gs_tp_profile+" set MULTI_USER with no_wait"
	execute immediate :ls_sql using sqlca;
	
	commit using sqlca;
End If

IF is_FileName <> '' Then
	Messagebox( 'Result' , 'The requested operation completed successfully with some errors. Please review:~n' +is_FileName , Information!, ok! )
ELSE
	Messagebox( 'Result' , 'The requested operation completed successfully', Information!, ok! )
END IF

If IsValid(w_pleasewait) Then close(w_pleasewait)


end event

type dw_line from datawindow within w_delete_make
event dw_reset pbm_custom01
event keypressed pbm_dwnkey
integer x = 1838
integer y = 688
integer width = 1321
integer height = 572
integer taborder = 120
string dataobject = "dw_productlines_list_delete"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;Long ll_ret
IF row = 0 Then Return

uf_multiselect_dw(this, row)

// Load the selected values into an Array
wf_LoadLine( )

// Then Retrieve Vendors for selected Classes and Lines
ll_ret = dw_Vendor.Retrieve( is_Class, is_Line )
is_Vendor[1] = '|ALL|'

ll_ret = dw_Brand.Retrieve( is_Class, is_Line, is_Vendor )
is_Brand[1] = '|ALL|'

// Then Retrieve the Lines for selected CLASSes
ll_ret = dw_Make.Retrieve( is_Vendor, is_Brand, is_Class, is_Line )

wf_reset_year()

Cb_save.enabled = TRUE
ib_Line_modified = TRUE 
end event

event retrieveend;String ls_empty[1]

IF rowcount = 0 Then
	cbx_all_line.Enabled = False
Else
	cbx_all_line.Enabled = True
END IF

cbx_all_line.Checked = False
This.Enabled = True

ls_empty[1] = ''

//
// Reseting the following Make and Model by retrieving nothing ...
// that sets check boxes enabled / disabled @ retrieve end event
//

dw_make.Retrieve ( ls_empty, ls_empty, ls_empty, ls_empty )
dw_model.Retrieve( ls_empty, ls_empty, ls_empty, ls_empty, ls_empty)

dw_year_from.reset()
dw_year_to.reset()
dw_year_from.insertrow(0)
dw_year_to.insertrow(0)
dw_year_from.setitem( 1,1,'')
dw_year_to.setitem( 1,1,'')
dw_year_from.enabled = false
dw_year_to.enabled = false

end event

type dw_class from datawindow within w_delete_make
event keypressed pbm_dwnkey
integer x = 219
integer y = 688
integer width = 1321
integer height = 572
integer taborder = 80
string dataobject = "dw_productclasses_list_delete"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;Long ll_ret
IF row = 0 Then Return

uf_multiselect_dw(this, row)

// Load the selected values into an Array
wf_LoadClass( )

// Then Retrieve the Lines for selected CLASSes
dw_Line.Retrieve( is_Class )
is_Line[1] = '|ALL|'

ll_ret = dw_Vendor.Retrieve( is_Class, is_Line)
is_Vendor[1] = '|ALL|'

ll_ret = dw_Brand.Retrieve( is_Class, is_Line, is_Vendor )

wf_reset_year()

Cb_save.enabled = TRUE
ib_Class_modified = TRUE 
end event

event retrieveend;String ls_empty[1], ls_profile

ls_profile = dw_profile.GetText()

IF ib_new_profile or NOT f_IsNullorEmpty(ls_profile) Then
	cbx_all_class.Enabled = True
	dw_class.Enabled = True
	dw_class_filter.Enabled = True
ElseIf rowcount = 0 Then	
	cbx_all_class.Enabled = False
	dw_class.Enabled = False
	dw_class_filter.Enabled = False
END IF

cbx_all_line.Checked = False

ls_empty[1] = ''

dw_line.Retrieve ( ls_empty)

//
// Reseting the following Vendor, Brand, Make, and Model by retrieving nothing ...
// that sets check boxes enabled / disabled @ retrieve end event
//

dw_Vendor.Retrieve ( ls_empty, ls_empty )
dw_Brand.Retrieve ( ls_empty, ls_empty, ls_empty)
dw_make.Retrieve ( ls_empty, ls_empty, ls_empty, ls_empty )
dw_model.Retrieve( ls_empty, ls_empty, ls_empty, ls_empty, ls_empty)

dw_year_from.reset()
dw_year_to.reset()
dw_year_from.insertrow(0)
dw_year_to.insertrow(0)
dw_year_from.setitem( 1,1,'')
dw_year_to.setitem( 1,1,'')
dw_year_from.enabled = false
dw_year_to.enabled = false



end event

type dw_make from datawindow within w_delete_make
event keypressed pbm_dwnkey
event dw_reset ( unsignedlong wparam,  long lparam )
integer x = 1838
integer y = 1504
integer width = 1321
integer height = 572
integer taborder = 210
string dataobject = "dw_makes_list_delete"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event retrieveend;IF rowcount = 0 Then
	cbx_all_makes.Enabled = False
ELSE
	cbx_all_makes.Enabled = True
END IF

cbx_all_makes.Checked = False
This.Enabled = True
dw_model.Reset( )

dw_year_from.reset()
dw_year_to.reset()
dw_year_from.insertrow(0)
dw_year_to.insertrow(0)
dw_year_from.setitem( 1,1,'')
dw_year_to.setitem( 1,1,'')
dw_year_from.enabled = false
dw_year_to.enabled = false



end event

event clicked;Long ll_ret
IF row = 0 Then Return

uf_multiselect_dw(this, row)

// Load the selected values into an Array
wf_LoadMake( )

// Then Retrieve the Model for selected CLASSes, Lines & Makes
ll_ret = dw_Model.Retrieve( is_Vendor, is_Brand, is_Class, is_Line, is_Make )

wf_reset_year()

Cb_save.enabled = TRUE
ib_make_modified = TRUE 

end event

type dw_model from datawindow within w_delete_make
event keypressed pbm_dwnkey
event dw_reset ( unsignedlong wparam,  long lparam )
integer x = 3451
integer y = 1504
integer width = 1321
integer height = 572
integer taborder = 240
string dataobject = "dw_models_list_delete"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event retrieveend;IF rowcount = 0 THEN
	cbx_all_models.Enabled = False
ELSE
	cbx_all_models.Enabled = True
END IF

cbx_all_models.Checked = False
This.Enabled = True

dw_year_from.reset()
dw_year_to.reset()
dw_year_from.insertrow(0)
dw_year_to.insertrow(0)
dw_year_from.setitem( 1,1,'')
dw_year_to.setitem( 1,1,'')
dw_year_from.enabled = false
dw_year_to.enabled = false

end event

event clicked;Long ll_ret
IF row = 0 Then Return

uf_multiselect_dw(this, row)

// Load the selected values into an Array
wf_LoadModel( )

//dw_year_from.reset()
//dw_year_to.reset()
//wf_reset_year()

dw_year_from.setitem( 1,1,'')
dw_year_to.setitem( 1,1,'')
dw_year_from.enabled = true
dw_year_to.enabled = true

idwc_year_from.retrieve( is_vendor, is_brand , is_class, is_line, is_make, is_model )	
idwc_year_to.retrieve( is_vendor, is_brand , is_class, is_line, is_make, is_model )	

Cb_save.enabled = TRUE
ib_model_modified = TRUE 
end event

type gb_3 from groupbox within w_delete_make
integer x = 1774
integer y = 1336
integer width = 1568
integer height = 784
integer textsize = -8
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
string text = "Makes"
borderstyle borderstyle = styleraised!
end type

type gb_1 from groupbox within w_delete_make
integer x = 165
integer y = 520
integer width = 1568
integer height = 784
integer textsize = -8
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
string text = "Class"
borderstyle borderstyle = styleraised!
end type

type gb_5 from groupbox within w_delete_make
integer x = 110
integer y = 2328
integer width = 4901
integer height = 584
integer textsize = -8
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
string text = "Delete All Checked Options"
borderstyle borderstyle = styleraised!
end type

type cbx_part_interchange from checkbox within w_delete_make
integer x = 219
integer y = 2808
integer width = 827
integer height = 64
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
boolean enabled = false
string text = "Part Interchanges"
boolean checked = true
end type

type cbx_app_ftnt_def from checkbox within w_delete_make
integer x = 1563
integer y = 2408
integer width = 827
integer height = 64
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
boolean enabled = false
string text = "App Footnotes Definition"
boolean checked = true
end type

type cbx_app_spec_temp from checkbox within w_delete_make
integer x = 1563
integer y = 2488
integer width = 754
integer height = 64
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
boolean enabled = false
string text = "App Spec Templates"
boolean checked = true
end type

type cbx_modelgroup_print from checkbox within w_delete_make
integer x = 2674
integer y = 2648
integer width = 677
integer height = 64
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
boolean enabled = false
string text = "Model Group Print"
boolean checked = true
end type

type cbx_modelgroup_inquiry from checkbox within w_delete_make
integer x = 2674
integer y = 2728
integer width = 677
integer height = 64
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
boolean enabled = false
string text = "Model Group Inquiry"
boolean checked = true
end type

type gb_2 from groupbox within w_delete_make
integer x = 1774
integer y = 520
integer width = 1568
integer height = 784
integer textsize = -8
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
string text = "Line"
borderstyle borderstyle = styleraised!
end type

type gb_4 from groupbox within w_delete_make
integer x = 3387
integer y = 1336
integer width = 1568
integer height = 784
integer textsize = -8
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
string text = "Models"
borderstyle borderstyle = styleraised!
end type

type gb_vendor from groupbox within w_delete_make
integer x = 3387
integer y = 532
integer width = 1568
integer height = 784
integer textsize = -8
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
string text = "Vendor"
borderstyle borderstyle = styleraised!
end type

type gb_brand from groupbox within w_delete_make
integer x = 165
integer y = 1336
integer width = 1568
integer height = 784
integer textsize = -8
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
string text = "Brand"
borderstyle borderstyle = styleraised!
end type

type gb_6 from groupbox within w_delete_make
integer x = 110
integer y = 324
integer width = 4901
integer height = 1972
integer taborder = 20
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 79741120
string text = "Profile Detail Selection Criteria"
end type

type gb_7 from groupbox within w_delete_make
integer x = 110
integer y = 116
integer width = 4901
integer height = 188
integer taborder = 10
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 16711680
long backcolor = 67108864
string text = "Profile"
end type

