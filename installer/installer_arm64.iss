; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "iZND WSA Sideloader"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "isaacandy"
#define MyAppURL "https://github.com/isaacandy/iZND-WSA-Sideloader"
#define MyAppUpdateURL "https://github.com/isaacandy/iZND-WSA-Sideloader/releases/latest"
#define MyAppExeName "WSASideloader.exe"
#define MyAppAssocName "APK File"
#define MyAppAssocExt ".apk"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt
#define MyAppAssocName1 "XAPK File"
#define MyAppAssocExt1 ".xapk"
#define MyAppAssocKey1 StringChange(MyAppAssocName1, " ", "") + MyAppAssocExt1
#define MyAppAssocName2 "APKM File"
#define MyAppAssocExt2 ".apkm"
#define MyAppAssocKey2 StringChange(MyAppAssocName2, " ", "") + MyAppAssocExt2
#define MyAppAssocName3 "APKS File"
#define MyAppAssocExt3 ".apks"
#define MyAppAssocKey3 StringChange(MyAppAssocName3, " ", "") + MyAppAssocExt3

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{414C99CF-4B91-486C-83C1-B8B08F7F8540}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppUpdateURL}
DefaultDirName={autopf}\{#MyAppName}
DisableDirPage=no
ChangesAssociations=yes
DisableProgramGroupPage=yes
LicenseFile=C:\Users\DrIsaacAndyPhD\Documents\WSA-Sideloader\license.txt
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\Users\DrIsaacAndyPhD\Desktop\Installer
OutputBaseFilename=WSASideloader_{#MyAppVersion}_arm64
SetupIconFile=C:\Users\DrIsaacAndyPhD\Documents\WSA-Sideloader\icon.ico
UninstallDisplayIcon={app}\icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
;MinVersion=10.0.22000
ArchitecturesAllowed=arm64
ArchitecturesInstallIn64BitMode=arm64
LanguageDetectionMethod=uilanguage
ShowLanguageDialog=no

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "ja"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "hu"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "ro"; MessagesFile: "compiler:Languages\Romanian.isl"
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"
Name: "ar"; MessagesFile: "compiler:Languages\Arabic.isl"
Name: "pt_br"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Files]
Source: "C:\Users\DrIsaacAndyPhD\Documents\WSA-Sideloader\sideloader.dist\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\DrIsaacAndyPhD\Documents\WSA-Sideloader\sideloader.dist\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
; associate .apk
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\apk.ico"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".apk"; ValueData: ""

; associate .xapk
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt1}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey1}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey1}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName1}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey1}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\apk.ico"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey1}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".xapk"; ValueData: ""

; associate .apkm
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt2}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey2}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey2}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName2}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey2}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\apk.ico"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey2}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".apkm"; ValueData: ""

; associate .apks
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt3}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey3}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey3}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName3}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey3}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\apk.ico"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey3}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".apks"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Messages]
;WindowsVersionNotSupported=You need Windows 11 to install iZND WSA Sideloader (as well as the subsystem itself). Please upgrade your operating system and install WSA before installing this program.%nFor more information and support, visit github.com/isaacandy/WSA-Sideloader.
;OnlyOnTheseArchitectures=The ARM64 version of iZND WSA Sideloader is not compatible with your system. Please download the x64 version.
