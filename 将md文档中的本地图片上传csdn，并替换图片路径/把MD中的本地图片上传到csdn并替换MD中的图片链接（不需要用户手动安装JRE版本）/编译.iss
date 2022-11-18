; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "ReplaceIMGinMDtoCSDN"
#define MyAppVersion "1.0"
#define MyAppPublisher "�ҵĹ�˾"
#define MyAppURL "https://www.example.com/"
#define MyAppExeName "ReplaceIMGinMDtoCSDN.exe"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (��Ҫ�����µ� GUID�����ڲ˵��е�� "����|���� GUID"��)
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
; ������ȡ��ע�ͣ����ڷǹ���װģʽ�����У���Ϊ��ǰ�û���װ����
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=D:\����\setup
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
Source: "D:\����\��MD�еı���ͼƬ�ϴ���csdn���滻MD�е�ͼƬ���ӣ�����Ҫ�û��ֶ���װJRE�汾��\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\����\��MD�еı���ͼƬ�ϴ���csdn���滻MD�е�ͼƬ���ӣ�����Ҫ�û��ֶ���װJRE�汾��\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\����\��MD�еı���ͼƬ�ϴ���csdn���滻MD�е�ͼƬ���ӣ�����Ҫ�û��ֶ���װJRE�汾��\replace_md_img_link-0.0.1-SNAPSHOT.jar"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\����\��MD�еı���ͼƬ�ϴ���csdn���滻MD�е�ͼƬ���ӣ�����Ҫ�û��ֶ���װJRE�汾��\application.yml"; DestDir: "{app}"; Flags: ignoreversion
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

