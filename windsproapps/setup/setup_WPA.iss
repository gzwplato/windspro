;#define TestCompile

#define MyAppName "WinDS PRO Apps"
#define MyAppVerName "WinDS PRO Apps 2015.12.16"
#define MyAppVersion "2015.12.16"
#define MyAppPublisher "WinDS PRO Central"
#define MyAppPublisherCopyright "WinDS PRO Apps © 2015 WinDS PRO Central"
#define MyAppURL "http://windsprocentral.blogspot.com/"
#define MyAppExeName "windsproapps.exe"

[Setup]
; app
AppID={{92C4C953-5CE1-4DC3-97D5-BBD1A63EF706}
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppVersion={#MyAppVersion}
AppCopyright={#MyAppPublisherCopyright}
; version
VersionInfoVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoDescription={#MyAppName}
VersionInfoTextVersion={#MyAppVersion}
VersionInfoCopyright={#MyAppPublisherCopyright}
VersionInfoProductName={#MyAppName}
VersionInfoProductVersion={#MyAppVersion}
; system
ArchitecturesInstallIn64BitMode=x64
;ChangesEnvironment=yes
;ChangesAssociations=yes
;AlwaysRestart=yes
; compression
#ifdef TestCompile
Compression=none
SolidCompression=false
InternalCompressLevel=none
#else
Compression=lzma2/Ultra64
SolidCompression=true
InternalCompressLevel=Ultra64
#endif
; output
#ifdef TestCompile
  OutputBaseFilename={#MyAppVerName}_test
#else
  OutputBaseFilename={#MyAppVerName}
#endif
; folders
DirExistsWarning=no
UsePreviousAppDir=yes
DefaultDirName={commondocs}\{#MyAppName}
; group
UsePreviousGroup=no
DefaultGroupName={#MyAppName}
; language
ShowLanguageDialog=yes
UsePreviousLanguage=yes
; uninstall
UninstallDisplayName={#MyAppVerName}
UninstallFilesDir={app}\uninstall
UninstallDisplayIcon={app}\{#MyAppExeName}
; style
SetupIconFile=windsproapps.ico
WizardImageFile=barra.bmp
WizardSmallImageFile=icono.bmp
WizardImageStretch=false
WizardImageBackColor=clWhite
; pages
;DisableDirPage=yes
DisableProgramGroupPage=yes
DisableReadyPage=yes
DisableFinishedPage=yes
; privileges
;PrivilegesRequired=admin

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"
Name: chinesesimp; MessagesFile: ChineseSimplified.isl
Name: chinesetrad; MessagesFile: ChineseTraditional.isl
Name: korean; MessagesFile: Korean.isl
Name: arabic; MessagesFile: Arabic.isl
Name: hindi; MessagesFile: Hindi.islu

[Code]
function GetWPath(Str: string):string;
begin
  Result := ParamStr(3);
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpSelectComponents then
    WizardForm.NextButton.Caption := SetupMessage(msgButtonInstall)
  else if CurPageID = wpFinished then
    WizardForm.NextButton.Caption := SetupMessage(msgButtonFinish)
  else
    WizardForm.NextButton.Caption := SetupMessage(msgButtonNext);
end;

[Components]
Name: "atari"; Description: "Atari"; Types: full custom
Name: "atari\atari800winplus"; Description: "Atari800Win PLus"; Types: full compact custom
Name: "atari\handy"; Description: "Handy"; Types: full compact custom
Name: "atari\nocash2k6"; Description: "no$2k6"; Types: full compact custom
Name: "atari\prosystem"; Description: "ProSystem"; Types: full compact custom
Name: "atari\virtualjaguar"; Description: "Virtual Jaguar"; Types: full compact custom

Name: "commodore"; Description: "Commodore"; Types: full custom
Name: "commodore\ccs64"; Description: "CCS64"; Types: full custom
Name: "commodore\nocashc64"; Description: "no$c64"; Types: full custom
Name: "commodore\winvice"; Description: "WinVICE"; Types: full compact custom

Name: "microsoft"; Description: "Microsoft"; Types: full custom
Name: "microsoft\cxbx"; Description: "Cxbx"; Types: full compact custom
Name: "microsoft\hourglass"; Description: "Hourglass"; Types: full compact custom
Name: "microsoft\jpcrr"; Description: "JPC-rr"; Types: full compact custom
Name: "microsoft\nocashmsx"; Description: "no$msx"; Types: full custom
Name: "microsoft\openmsx"; Description: "Open MSX"; Types: full custom

Name: "nintendo"; Description: "Nintendo"; Types: full custom
Name: "nintendo\3dmoo"; Description: "3dmoo"; Types: full custom; 
Name: "nintendo\citra"; Description: "Citra"; Types: full compact custom; Check: Is64BitInstallMode
Name: "nintendo\desmume"; Description: "DeSmuME"; Types: full compact custom
Name: "nintendo\dolphin"; Description: "Dolphin"; Types: full compact custom
Name: "nintendo\dolphini"; Description: "Dolphin (Ishiiruka)"; Types: full compact custom
Name: "nintendo\fceux"; Description: "FCEUX"; Types: full custom
Name: "nintendo\lsnesrr"; Description: "lsnes rr"; Types: full custom
Name: "nintendo\mupen64plus"; Description: "Mupen64Plus"; Types: full custom
Name: "nintendo\mupen64rr"; Description: "Mupen64-rr"; Types: full custom
Name: "nintendo\nocashnes"; Description: "no$nes"; Types: full custom
Name: "nintendo\nocashsns"; Description: "no$sns"; Types: full custom
Name: "nintendo\pokemini"; Description: "PokeMini"; Types: full compact custom
Name: "nintendo\project64k7e"; Description: "Project64K7E"; Types: full custom
Name: "nintendo\project64"; Description: "Project64"; Types: full compact custom
Name: "nintendo\reddragon"; Description: "Red Dragon"; Types: full custom
Name: "nintendo\snes9x"; Description: "Snes9x"; Types: full custom
Name: "nintendo\tronds"; Description: "TronDS"; Types: full custom
Name: "nintendo\vbarr"; Description: "VBA-rr"; Types: full custom
Name: "nintendo\vbjin"; Description: "VBjin"; Types: full custom
Name: "nintendo\virtuanes"; Description: "VirtuaNES"; Types: full custom
Name: "nintendo\zsnes"; Description: "ZSNES"; Types: full custom

Name: "sega"; Description: "Sega"; Types: full custom
Name: "sega\demul"; Description: "Demul"; Types: full compact custom
Name: "sega\gensgs"; Description: "Gens GS"; Types: full custom
Name: "sega\gensrr"; Description: "Gens-rr"; Types: full custom
Name: "sega\kegafusion"; Description: "Kega Fusion"; Types: full compact custom
Name: "sega\nulldc"; Description: "nullDC"; Types: full custom
Name: "sega\ssf"; Description: "SSF"; Types: full compact custom

Name: "sony"; Description: "Sony"; Types: full custom
Name: "sony\epsxe"; Description: "ePSXe"; Types: full custom
Name: "sony\nocashpsx"; Description: "no$psx"; Types: full custom
Name: "sony\pcsx2"; Description: "PCSX2"; Types: full compact custom
Name: "sony\pcsxr"; Description: "PCSX-R"; Types: full custom
Name: "sony\play32"; Description: "Play!"; Types: full custom
Name: "sony\ppsspp"; Description: "PPSSPP"; Types: full compact custom
Name: "sony\psxjin"; Description: "PSXjin"; Types: full custom
Name: "sony\psx"; Description: "pSX fin"; Types: full custom
Name: "sony\rpcs3"; Description: "rpcs3"; Types: full compact custom; Check: Is64BitInstallMode

Name: "multi"; Description: "Multi"; Types: full custom
Name: "multi\bizhawk"; Description: "BizHawk"; Types: full custom
Name: "multi\bluemsx"; Description: "blueMSX"; Types: full compact custom
Name: "multi\finalburnalpha"; Description: "Final Burn Alpha"; Types: full custom
Name: "multi\mednafen"; Description: "Mednafen"; Types: full compact custom
Name: "multi\mednafenrr"; Description: "Mednafen rr"; Types: full custom

Name: "other"; Description: "Other"; Types: full custom
Name: "other\glovepie"; Description: "GlovePIE"; Types: full compact custom
Name: "other\ootake"; Description: "Ootake"; Types: full custom
Name: "other\oswan"; Description: "Oswan"; Types: full compact custom

[Files]
Source: "windsproapps.exe"; DestDir: "{app}"; DestName: "windsproapps.exe"; Flags: ignoreversion;
Source: locale\*; DestDir: {app}\locale; Excludes: "*.po"; Flags: ignoreversion recursesubdirs createallsubdirs;
;Check: Not Is64BitInstallMode
;Source: "windsproapps_x64.exe"; DestDir: "{app}"; DestName: "windsproapps.exe"; Flags: ignoreversion; Check: Is64BitInstallMode
;Source: "windsproapps\applist\*"; DestDir: "{app}\windsproapps\applist\"; Flags: ignoreversion
;Source: "windsproapps\sys\*"; DestDir: "{app}\windsproapps\sys\"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "windsproapps\syslist\*"; DestDir: "{app}\windsproapps\syslist"; Flags: ignoreversion recursesubdirs createallsubdirs

Source: "windsproapps\app\3dmoo\*"; DestDir: "{app}\windsproapps\app\3dmoo\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\3dmoo"
Source: "windsproapps\app\Atari800Win_PLus_41\*"; DestDir: "{app}\windsproapps\app\Atari800Win_PLus_41\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "atari\atari800winplus"
Source: "windsproapps\app\BizHawk_153\*"; DestDir: "{app}\windsproapps\app\BizHawk_153\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "multi\bizhawk"
Source: "windsproapps\app\blueMSX_282\*"; DestDir: "{app}\windsproapps\app\blueMSX_282\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "multi\bluemsx"
Source: "windsproapps\app\Cxbx\*"; DestDir: "{app}\windsproapps\app\Cxbx\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "microsoft\cxbx"
Source: "windsproapps\app\CCS64_39\*"; DestDir: "{app}\windsproapps\app\CCS64_39\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "commodore\ccs64"
Source: "windsproapps\app\Citra_3DS_Emulator\*"; DestDir: "{app}\windsproapps\app\Citra_3DS_Emulator\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\citra"; Check: Is64BitInstallMode
Source: "windsproapps\app\Demul_0582\*"; DestDir: "{app}\windsproapps\app\Demul_0582\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sega\demul"
Source: "windsproapps\app\DeSmuME_x432R\*"; DestDir: "{app}\windsproapps\app\DeSmuME_x432R\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\desmume"
Source: "windsproapps\app\Dolphin_402_32-bit\*"; DestDir: "{app}\windsproapps\app\Dolphin_402_32-bit\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\dolphin"; Check: Not Is64BitInstallMode
Source: "windsproapps\app\Dolphin_402_64-bit\*"; DestDir: "{app}\windsproapps\app\Dolphin_402_64-bit\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\dolphin"; Check: Is64BitInstallMode
Source: "windsproapps\app\IshiirukaDolphin\*"; DestDir: "{app}\windsproapps\app\IshiirukaDolphin\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\dolphini"; Check: Not Is64BitInstallMode
Source: "windsproapps\app\IshiirukaDolphin64\*"; DestDir: "{app}\windsproapps\app\IshiirukaDolphin64\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\dolphini"; Check: Is64BitInstallMode
Source: "windsproapps\app\ePSXe_190\*"; DestDir: "{app}\windsproapps\app\ePSXe_190\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sony\epsxe"
Source: "windsproapps\app\FCEUX\*"; DestDir: "{app}\windsproapps\app\FCEUX\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\fceux"
Source: "windsproapps\app\Final_Burn_Alpha_rr_007\*"; DestDir: "{app}\windsproapps\app\Final_Burn_Alpha_rr_007\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "multi\finalburnalpha"
Source: "windsproapps\app\Gens_gs_r7\*"; DestDir: "{app}\windsproapps\app\Gens_gs_r7\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sega\gensgs"
Source: "windsproapps\app\Gens_rr_11_r341\*"; DestDir: "{app}\windsproapps\app\Gens_rr_11_r341\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sega\gensrr"
Source: "windsproapps\app\GlovePIE_045\*"; DestDir: "{app}\windsproapps\app\GlovePIE_045\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "other\glovepie"
Source: "windsproapps\app\Handy_095\*"; DestDir: "{app}\windsproapps\app\Handy_095\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "atari\handy"
Source: "windsproapps\app\Hourglass_r81\*"; DestDir: "{app}\windsproapps\app\Hourglass_r81\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "microsoft\hourglass"
Source: "windsproapps\app\JPC_rr_r117\*"; DestDir: "{app}\windsproapps\app\JPC_rr_r117\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "microsoft\jpcrr"
Source: "windsproapps\app\Kega_Fusion_364\*"; DestDir: "{app}\windsproapps\app\Kega_Fusion_364\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sega\kegafusion"
Source: "windsproapps\app\lsnes_rr2_beta15\*"; DestDir: "{app}\windsproapps\app\lsnes_rr2_beta15\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\lsnesrr"
Source: "windsproapps\app\mednafen_09321_wip\*"; DestDir: "{app}\windsproapps\app\mednafen_09321_wip\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "multi\mednafen"
Source: "windsproapps\app\Mednafen_rr_11\*"; DestDir: "{app}\windsproapps\app\Mednafen_rr_11\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "multi\mednafenrr"
Source: "windsproapps\app\Mupen64Plus_20\*"; DestDir: "{app}\windsproapps\app\Mupen64Plus_20\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\mupen64plus"
Source: "windsproapps\app\Mupen64_rr_462\*"; DestDir: "{app}\windsproapps\app\Mupen64_rr_462\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\mupen64rr"
Source: "windsproapps\app\no$2k6_11\*"; DestDir: "{app}\windsproapps\app\no$2k6_11\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "atari\nocash2k6"
Source: "windsproapps\app\no$c64_11\*"; DestDir: "{app}\windsproapps\app\no$c64_11\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "commodore\nocashc64"
Source: "windsproapps\app\no$msx_15\*"; DestDir: "{app}\windsproapps\app\no$msx_15\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "microsoft\nocashmsx"
Source: "windsproapps\app\no$nes_11\*"; DestDir: "{app}\windsproapps\app\no$nes_11\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\nocashnes"
Source: "windsproapps\app\no$psx_18\*"; DestDir: "{app}\windsproapps\app\no$psx_18\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sony\nocashpsx"
Source: "windsproapps\app\no$sns_15\*"; DestDir: "{app}\windsproapps\app\no$sns_15\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\nocashsns"
Source: "windsproapps\app\nullDC_150\*"; DestDir: "{app}\windsproapps\app\nullDC_150\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sega\nulldc"
Source: "windsproapps\app\Ootake_275\*"; DestDir: "{app}\windsproapps\app\Ootake_275\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "other\ootake"
Source: "windsproapps\app\Open_MSX_0100_32-bit\*"; DestDir: "{app}\windsproapps\app\Open_MSX_0100_32-bit\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "microsoft\openmsx"; Check: Not Is64BitInstallMode
Source: "windsproapps\app\Open_MSX_0100_64-bit\*"; DestDir: "{app}\windsproapps\app\Open_MSX_0100_64-bit\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "microsoft\openmsx"; Check: Is64BitInstallMode
Source: "windsproapps\app\Oswan_173\*"; DestDir: "{app}\windsproapps\app\Oswan_173\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "other\oswan"
Source: "windsproapps\app\PCSX2_121\*"; DestDir: "{app}\windsproapps\app\PCSX2_121\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sony\pcsx2"
Source: "windsproapps\app\PCSXR_1993\*"; DestDir: "{app}\windsproapps\app\PCSXR_1993\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sony\pcsxr"
Source: "windsproapps\app\Play_32\*"; DestDir: "{app}\windsproapps\app\Play_32\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sony\play32"
Source: "windsproapps\app\PokeMini_054\*"; DestDir: "{app}\windsproapps\app\PokeMini_054\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\pokemini"
Source: "windsproapps\app\PPSSPP\*"; DestDir: "{app}\windsproapps\app\PPSSPP\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sony\ppsspp"
Source: "windsproapps\app\Project64K7E_131\*"; DestDir: "{app}\windsproapps\app\Project64K7E_131\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\project64k7e"
Source: "windsproapps\app\Project64_21\*"; DestDir: "{app}\windsproapps\app\Project64_21\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\project64"
Source: "windsproapps\app\ProSystem_13\*"; DestDir: "{app}\windsproapps\app\ProSystem_13\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "atari\prosystem"
Source: "windsproapps\app\PSXjin_202\*"; DestDir: "{app}\windsproapps\app\PSXjin_202\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sony\psxjin"
Source: "windsproapps\app\pSX_1_13\*"; DestDir: "{app}\windsproapps\app\pSX_1_13\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sony\psx"
Source: "windsproapps\app\Red_Dragon_038\*"; DestDir: "{app}\windsproapps\app\Red_Dragon_038\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\reddragon"
Source: "windsproapps\app\rpcs3\*"; DestDir: "{app}\windsproapps\app\rpcs3\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sony\rpcs3"; Check: Is64BitInstallMode
Source: "windsproapps\app\Snes9x_153\*"; DestDir: "{app}\windsproapps\app\Snes9x_153\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\snes9x"; Check: Not Is64BitInstallMode
Source: "windsproapps\app\Snes9x_153_(64-bit)\*"; DestDir: "{app}\windsproapps\app\Snes9x_153_(64-bit)\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\snes9x"; Check: Is64BitInstallMode
Source: "windsproapps\app\SSF_012_beta_R4\*"; DestDir: "{app}\windsproapps\app\SSF_012_beta_R4\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "sega\ssf"
Source: "windsproapps\app\TronDS\*"; DestDir: "{app}\windsproapps\app\TronDS\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\tronds"
Source: "windsproapps\app\VBA-rr_v24m_r480\*"; DestDir: "{app}\windsproapps\app\VBA-rr_v24m_r480\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\vbarr"
Source: "windsproapps\app\VBjin_r61\*"; DestDir: "{app}\windsproapps\app\VBjin_r61\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\vbjin"
Source: "windsproapps\app\Virtual_Jaguar_210\*"; DestDir: "{app}\windsproapps\app\Virtual_Jaguar_210\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "atari\virtualjaguar"
Source: "windsproapps\app\VirtuaNES_097e\*"; DestDir: "{app}\windsproapps\app\VirtuaNES_097e\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\virtuanes"
Source: "windsproapps\app\WinVICE_22\*"; DestDir: "{app}\windsproapps\app\WinVICE_22\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "commodore\winvice"
Source: "windsproapps\app\ZSNES_151\*"; DestDir: "{app}\windsproapps\app\ZSNES_151\"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "nintendo\zsnes"

[Icons]
Name: {commonprograms}\{groupname}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; IconFilename: {app}\{#MyAppExeName}; Comment: {#MyAppName}; IconIndex: 0
Name: {commonprograms}\{groupname}\{#MyAppPublisher}; Filename: {#MyAppURL}; Comment: {#MyAppPublisher}
Name: {commondesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; IconFilename: {app}\{#MyAppExeName}; Comment: {#MyAppName}; IconIndex: 0

[Run]
;Filename: "{app}\{#MyAppExeName}"; Parameters: "-RegisterFileAssociation"; WorkingDir: {app}; StatusMsg: "-RegisterFileAssociation"
Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Flags: postinstall nowait; Description: {#MyAppName}; StatusMsg: {#MyAppName}...
Filename:"http://windsprocentral.blogspot.com/"; Flags: postinstall nowait shellexec

[UninstallRun]
;Filename: "{app}\{#MyAppExeName}"; Parameters: "-UnRegisterFileAssociation"; WorkingDir: {app}; StatusMsg: "-UnRegisterFileAssociation"
Filename:"http://windsprocentral.blogspot.com/"; Flags: nowait shellexec

[Registry]    
; Listar en Abrir con...
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\shell\open\command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

; listar en App Paths (ShellExecuteEx)
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\{#MyAppExeName}"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\{#MyAppExeName}"; ValueType: String; ValueName: Path; ValueData: """{app}"""; Flags: uninsdeletekey