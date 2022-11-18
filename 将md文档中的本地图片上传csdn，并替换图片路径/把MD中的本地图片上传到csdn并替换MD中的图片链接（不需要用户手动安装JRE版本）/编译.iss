; 脚本由 Inno Setup 脚本向导 生成！
; 有关创建 Inno Setup 脚本文件的详细资料请查阅帮助文档！

#define MyAppName "ReplaceIMGinMDtoCSDN"
#define MyAppVersion "1.0"
#define MyAppPublisher "我的公司"
#define MyAppURL "https://www.example.com/"
#define MyAppExeName "ReplaceIMGinMDtoCSDN.exe"

[Setup]
; 注: AppId的值为单独标识该应用程序。
; 不要为其他安装程序使用相同的AppId值。
; (若要生成新的 GUID，可在菜单中点击 "工具|生成 GUID"。)
AppId={{49839CC5-113A-4E6E-A316-0FF5D6E565B8}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; 以下行取消注释，以在非管理安装模式下运行（仅为当前用户安装）。
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=D:\桌面\setup
OutputBaseFilename=mysetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"
Name: "english"; MessagesFile: "compiler:Languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\桌面\把MD中的本地图片上传到csdn并替换MD中的图片链接（不需要用户手动安装JRE版本）\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\桌面\把MD中的本地图片上传到csdn并替换MD中的图片链接（不需要用户手动安装JRE版本）\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\桌面\把MD中的本地图片上传到csdn并替换MD中的图片链接（不需要用户手动安装JRE版本）\replace_md_img_link-0.0.1-SNAPSHOT.jar"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\桌面\把MD中的本地图片上传到csdn并替换MD中的图片链接（不需要用户手动安装JRE版本）\application.yml"; DestDir: "{app}"; Flags: ignoreversion
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

