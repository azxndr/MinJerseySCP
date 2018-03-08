@call .creds.bat
@%hcp_tools%\neo stop --account %hcp_accnt% --application %hcp_app% --host %hcp_host% --user %hcp_user% --password %hcp_pwd% --synchronous

@rem Home/SAP Cloud Platform/Tools/Console Client/Console Client Commands/stop
@rem https://help.sap.com/viewer/65de2977205c403bbc107264b8eccf4b/Cloud/en-US/b5bfcbf682684129b142606e1d4ca5cb.html
