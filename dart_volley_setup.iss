; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{E692E2C7-90BE-4046-88E3-31987B89AE0C}
AppName=Dartfish DataVolley Converter
AppVerName=DataVolley Converter 1.0.0.4
AppPublisher=ccnsoft
AppPublisherURL=
AppSupportURL=
AppUpdatesURL=
DefaultDirName={sd}\DataVolley Converter
DisableDirPage=True
DefaultGroupName=DataVolley Converter
DisableProgramGroupPage=true
OutputBaseFilename=DataVolleyConverter_1004setup
Compression=lzma
SolidCompression=true

[Languages]
Name: korean; MessagesFile: compiler:Languages\Korean.isl

[Icons]
Name: {group}\DataVolley Converter; Filename: {app}\DartConverter.exe; WorkingDir: {app}
Name: {group}\DataVolley Converter ����; Filename: {uninstallexe}
Name: {commondesktop}\DataVolley Converter; Filename: {app}\DartConverter.exe; WorkingDir: {app}

[Files]
Source: D:\Delphi2010\DartValley\DataVolley\DartConverter.exe; DestDir: {app}; Flags: ignoreversion
Source: D:\Delphi2010\DartValley\DataVolley\DATAVOLLY.FDB; DestDir: {app}; Flags: ignoreversion
Source: D:\Delphi2010\DartValley\DataVolley\ccnkorean.ini; DestDir: {app}; Flags: ignoreversion

Source: D:\firebird_client\gds32.dll; DestDir: {app}; Flags: ignoreversion
Source: D:\firebird_client\ib_util.dll; DestDir: {app}; Flags: ignoreversion
Source: D:\firebird_client\icudt30.dll; DestDir: {app}; Flags: ignoreversion
Source: D:\firebird_client\icuin30.dll; DestDir: {app}; Flags: ignoreversion
Source: D:\firebird_client\icuuc30.dll; DestDir: {app}; Flags: ignoreversion

[Run]
Filename: "{app}\DartConverter.exe"; Description: "DartConverter ����"; Flags: postinstall waituntilidle

[LangOptions]
LanguageName=Korean
LanguageID=$0412










































