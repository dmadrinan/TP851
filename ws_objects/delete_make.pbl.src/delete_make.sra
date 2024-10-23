$PBExportHeader$delete_make.sra
$PBExportComments$Generated Application Object
forward
global type delete_make from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
Transaction SQLTrans1
String gs_path, gs_userid, gs_dbUser,  gs_dbPwd, gs_errorpath, gs_resultpath
String gs_servername, gs_tp_profile
Boolean gb_FromCommandLine = False

String gs_Hkey_CurrentUser = "HKEY_CURRENT_USER\SOFTWARE\DSG\TALKING PICTURES"


string gs_filename

String gs_OLEDBDriver = "MSOLEDBSQL19"
//String gs_OLEDBDriver = "SQLOLEDB"

string gs_aces_profile, gs_spid

end variables

shared variables

end variables

global type delete_make from application
string appname = "delete_make"
string themepath = "E:\Program Files (x86)\Appeon\PowerBuilder 21.0\IDE\theme"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 5
long richtexteditx64type = 5
long richtexteditversion = 3
string richtexteditkey = ""
string appicon = "DeleteData.ico"
string appruntimeversion = "22.2.0.3356"
boolean manualsession = false
boolean unsupportedapierror = false
boolean ultrafast = false
boolean bignoreservercertificate = false
uint ignoreservercertificate = 0
long webview2distribution = 0
boolean webview2checkx86 = false
boolean webview2checkx64 = false
string webview2url = "https://developer.microsoft.com/en-us/microsoft-edge/webview2/"
end type
global delete_make delete_make

type variables


end variables

on delete_make.create
appname="delete_make"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on delete_make.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;String ls_CommandParm
Int li_ret

If uf_getDBUser (  gs_dbUser, gs_dbPwd ) = 1 Then Halt Close

//Check to see if application is opened from Synchromap or by double clicking on the EXE
//if there is any argument passed by Synchromap
ls_CommandParm = CommandParm() 
if not isnull(ls_CommandParm) and Trim(ls_CommandParm) <> '' then
	IF not uf_commandline_parm ( ls_CommandParm ) Then
		//	MessageBox("Talking Pictures Automotive Catalog", "This utility must be executed from Talking Pictures Publisher Edition.", StopSign!, Ok!)
		//	halt close
	END IF
End If
If gs_serverName = '' OR gs_tp_profile = '' Then
	// Get the SQL Server name from the registry
	RegistryGet(gs_Hkey_CurrentUser,"SQLServer",gs_servername)
	li_ret=RegistryGet(gs_Hkey_CurrentUser,"Profile",gs_tp_profile)
	li_ret=RegistryGet(gs_Hkey_CurrentUser,"AcesProfile",gs_aces_profile)
	
	if li_ret=-1 then
		messagebox('Registry Error','The registry on this machine is not set up for Database connection, please set the registry and try again.',Exclamation!)
		return
	end if
END IF

//RegistryGet("HKEY_LOCAL_MACHINE\Software\DSG\Talking Pictures", "Path", gs_path)
RegistryGet(gs_Hkey_CurrentUser, "Path", gs_path)

// Profile MSQL_TALKPIC
SQLCA.DBMS = gs_OLEDBDriver
SQLCA.ServerName = gs_serverName
SQLCA.LogId = gs_dbUser
SQLCA.LogPass = gs_dbPwd
SQLCA.AutoCommit = FALSE
SQLCA.Lock = "RU"
//SQLCA.dbparm= "PROVIDER='"+gs_OLEDBDriver+"',DATASOURCE='"+gs_servername+"',PROVIDERSTRING='Database="+gs_tp_profile+";App=TPBulkDelete',DelimitIdentifier='Yes',IdentifierQuoteChar='~"'"
SQLCA.DBParm = "ProviderString='AppName=TPBulkDelete',DelimitIdentifier='Yes',Database='" + gs_tp_profile + "',IdentifierQuoteChar='~"'"

// Attempt to connect to database.
Connect using SQLCA;
//Connect using SQLTrans1;

// Check that database connection established - kill the application if
// connection fails.
if SQLCA.SQLCode <> 0 then
	MessageBox("Database Error", "Unable to initiate the Talking Pictures database.  Talking Pictures Automotive Catalog application will be terminated.", Exclamation!, Ok!)
	Halt Close
end if


//Open(w_main)
if isnull(gs_userid) or gs_userid = '' then
	open(w_login)
	if gs_userid='' then 
		halt close
	else
		///////////////////////////////////////////////////////
		Long ll_spid
		String ls_userid
		
		ls_userid = 'DeleteMake' + gs_userid
		
		//For Audit Log Purposes
		SELECT Top 1 @@spid Into :ll_spid From system_table;
		
		gs_spid = String(ll_spid)
		Insert into Users_Sessions 
				( spid, User_ID )
		Values ( :ll_spid, :ls_userid );
		
		IF sqlca.sqlcode <> 0 Then
			UPDATE  Users_Sessions
				SET User_ID = :ls_userid
				WHERE  spid = :ll_spid;
		END IF
		COMMIT;
		///////////////////////////////////////////////////////

		open(w_main)
	end if
else    
	// Don't let users to fool around with the toolbars.
	ToolBarUserControl = FALSE
	
	uf_geterrorpath( gs_errorpath, gs_resultpath )
	Open( w_main )
	
end if



end event

event close;long ll_spid

SELECT TOP 1 @@spid INTO :ll_spid FROM system_table;

//  Deleting that SPID session from User_Session table i.e. used in Triggers/Strore Procedures.
DELETE  Users_Sessions WHERE  spid = :ll_spid;



// Attempt to disconnect to database.
Disconnect using SQLCA;
//Disconnect using SQLTrans1;
end event

