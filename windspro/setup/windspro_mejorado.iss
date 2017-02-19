;#define TestCompile
#define Library
#define MyAppName "WinDS PRO"
#define MyAppRegName "windspro"

; cambiar siempre!
#define MyAppVerName "WinDS PRO 2017.02.12"
#define MyAppVersion "2017.02.12"
;#define WPA "WinDS PRO Apps 2015.05.28WP.exe"

#define MyAppPublisher "WinDS PRO Central"
#define MyAppPublisherCopyright "WinDS PRO © 2017 WinDS PRO Central"
#define MyAppURL "http://windsprocentral.blogspot.com/"
#define MyAppExeName "windspro.exe"

#define ExtraLanguages "arabic hindi catalan corsican czech danish dutch finnish greek hebrew hungarian nepali norwegian polish russian scottishgaelic serbiancyrillic serbianlatin slovenian turkish ukrainian"

[Setup]
; app
AppMutex=WinDS PRO
AppID={{4237FF56-4BD0-481E-BD44-C1A8DDA9C753}
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
ChangesEnvironment=yes
ChangesAssociations=yes
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
OutputBaseFilename={#MyAppVerName}
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
;DisableWelcomePage=yes

[Languages]
Name: english; MessagesFile: compiler:Default.isl
Name: french; MessagesFile: compiler:Languages\French.isl
Name: german; MessagesFile: compiler:Languages\German.isl
Name: italian; MessagesFile: compiler:Languages\Italian.isl
Name: japanese; MessagesFile: compiler:Languages\Japanese.isl
Name: spanish; MessagesFile: compiler:Languages\Spanish.isl
Name: brazilianportuguese; MessagesFile: compiler:Languages\BrazilianPortuguese.isl
Name: chinesesimp; MessagesFile: ChineseSimplified.isl
Name: chinesetrad; MessagesFile: ChineseTraditional.isl
Name: korean; MessagesFile: Korean.isl
; Extra
Name: arabic; MessagesFile: Arabic.isl
Name: hindi; MessagesFile: Hindi.islu
; Extra
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[CustomMessages]
english.applications=Applications
english.savedgames=Saved games
english.searchwithgoogle=Search with Google
english.rominfo=ROM Info
english.trimrom=Trim ROM

chinesesimp.applications=应用
chinesesimp.savedgames=保存的游戏
chinesesimp.searchwithgoogle=搜索与谷歌

chinesetrad.applications=应用
chinesetrad.savedgames=保存的游戏
chinesetrad.searchwithgoogle=搜索与谷歌

brazilianportuguese.applications=Aplicações
brazilianportuguese.savedgames=Jogos salvos
brazilianportuguese.searchwithgoogle=Pesquisa com Google

portuguese.applications=Aplicações
portuguese.savedgames=Jogos salvos
portuguese.searchwithgoogle=Pesquisa com Google

italian.applications=Applicazioni
italian.savedgames=Gioco salvato
italian.searchwithgoogle=Riserca con Google

hindi.applications=आवेदन
hindi.savedgames=सहेजे गए गेम
hindi.searchwithgoogle=गूगल के साथ खोज

french.applications=Applications
french.savedgames=Parties sauvegardées
french.searchwithgoogle=Recherche Google

spanish.applications=Aplicaciones
spanish.savedgames=Partidas guardadas
spanish.searchwithgoogle=Buscar en Google

german.applications=Anwendungen
german.savedgames=Gespeicherte spiele
german.searchwithgoogle=Suche mit Google

arabic.applications=تطبيقات
arabic.savedgames=الألعاب التي تم حفظها
arabic.searchwithgoogle=البحث مع جوجل

[Code]
//var
//  WelcomePageID: Integer;
//  BitmapImage: TBitmapImage;

procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpSelectComponents then
    WizardForm.NextButton.Caption := SetupMessage(msgButtonInstall)
  else if CurPageID = wpFinished then
    WizardForm.NextButton.Caption := SetupMessage(msgButtonFinish)
  else
    WizardForm.NextButton.Caption := SetupMessage(msgButtonNext);

//  BitmapImage.Visible := CurPageID = WelcomePageID;
//  WizardForm.Bevel1.Visible := CurPageID <> WelcomePageID;
//  WizardForm.MainPanel.Visible := CurPageID <> WelcomePageID;
//  WizardForm.InnerNotebook.Visible := CurPageID <> WelcomePageID;
end;

//function InitializeSetup: boolean;
//begin
//  ExtractTemporaryFile('background.bmp');
//
//  Result := True;
//end;

//procedure InitializeWizard;
//var
//  WelcomePage: TWizardPage;  
//begin
//  WelcomePage := CreateCustomPage(wpWelcome, '', '');
//  WelcomePageID := WelcomePage.ID;
//  BitmapImage := TBitmapImage.Create(WizardForm);
// BitmapImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\background.bmp'));
//  BitmapImage.Top := 0;
//  BitmapImage.Left := 0;
// BitmapImage.Stretch := True;
//  BitmapImage.Align := alClient;
//  BitmapImage.Cursor := crHand;
//  BitmapImage.Visible := False;
//  BitmapImage.Parent := WizardForm.InnerPage;
//  BitmapImage.Cursor := crDefault;
//end;

[Components]
Name: "WP"; Description: "WinDS PRO"; Types: full compact custom; Flags: fixed;
#ifdef Library
Name: "OpenAL"; Description: "OpenAL (Audio)"; Types: full;
;Name: "VCRedist2010"; Description: "Microsoft Visual C++ 2010"; Types: full;
;Name: "VCRedist2012"; Description: "Microsoft Visual C++ 2012"; Types: full;
;Name: "VCRedist2013"; Description: "Microsoft Visual C++ 2013"; Types: full;
Name: "VCRedist2015"; Description: "Microsoft Visual C++ 2015"; Types: full compact custom; Flags: fixed;
Name: "DirectX9"; Description: "DirectX 9.0c"; Types: full compact custom; Flags: fixed;
#endif

[Files]
;Source: background.bmp; Flags: dontcopy
Source: windsproinfo.exe; DestDir: {app}; Flags: ignoreversion; Components: WP
Source: sgsearch.exe; DestDir: {app}; Flags: ignoreversion; Components: WP
Source: gsearch.exe; DestDir: {app}; Flags: ignoreversion; Components: WP
Source: trimmer.exe; DestDir: {app}; Flags: ignoreversion; Components: WP
;Source: windspro.url; DestDir: {app}; Flags: ignoreversion; Components: WP
;Source: lua51.dll; DestDir: {app}; Flags: ignoreversion; Components: WP
;Source: lua5.1.dll; DestDir: {app}; Flags: ignoreversion; Components: WP
;Source: windspro.ico; DestDir: {app}; Flags: ignoreversion; Components: WP
;Source: {#MyAppExeName}; DestDir: {app}; Flags: ignoreversion; Components: WP
;Source: windspro.cdd; DestDir: {app}; Flags: ignoreversion; Components: WP
Source: windspro.dll; DestDir: {app}; Flags: ignoreversion; Components: WP
Source: emu\*; DestDir: {app}\emu; Flags: ignoreversion recursesubdirs createallsubdirs; Components: WP
;Source: locale\*; DestDir: {app}\locale; Excludes: "*.po"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: WP
Source: 3dsexplorer\*; DestDir: {app}\3dsexplorer; Flags: ignoreversion recursesubdirs createallsubdirs; Components: WP
Source: electron\*; DestDir: {app}; Flags: ignoreversion recursesubdirs createallsubdirs; Components: WP
; desmume x86
Source: desmume_\x86\desmume.exe; DestDir: {app}\emu\desmume\; Flags: ignoreversion; Check: Not Is64BitInstallMode; Components: WP
; desmume x64
Source: desmume_\x64\desmume.exe; DestDir: {app}\emu\desmume\; Flags: ignoreversion; Check: Is64BitInstallMode; Components: WP

; no$gba firmware idioma
Source: firmware\firmware,1.bin; DestDir: {app}\emu\no$gba; DestName: firmware.bin; Languages: chinesesimp chinesetrad; Flags: ignoreversion; Components: WP
Source: firmware\firmware,2.bin; DestDir: {app}\emu\no$gba; DestName: firmware.bin; Languages: german; Flags: ignoreversion; Components: WP
Source: firmware\firmware,3.bin; DestDir: {app}\emu\no$gba; DestName: firmware.bin; Languages: english brazilianportuguese korean portuguese {#ExtraLanguages}; Flags: ignoreversion; Components: WP
Source: firmware\firmware,4.bin; DestDir: {app}\emu\no$gba; DestName: firmware.bin; Languages: spanish; Flags: ignoreversion; Components: WP
Source: firmware\firmware,5.bin; DestDir: {app}\emu\no$gba; DestName: firmware.bin; Languages: french; Flags: ignoreversion; Components: WP
Source: firmware\firmware,6.bin; DestDir: {app}\emu\no$gba; DestName: firmware.bin; Languages: italian; Flags: ignoreversion; Components: WP
Source: firmware\firmware,7.bin; DestDir: {app}\emu\no$gba; DestName: firmware.bin; Languages: japanese; Flags: ignoreversion; Components: WP

; library
#ifdef Library
;Source: library\oalinst.exe; DestDir: {tmp}; Flags: ignoreversion; Components: OpenAL
;Source: library\vcredist_2008_x86.exe; DestDir: {tmp}; Flags: ignoreversion
;Source: library\vcredist_2008_x64.exe; DestDir: {tmp}; Flags: ignoreversion; Check: Is64BitInstallMode
;Source: library\vcredist_2010_x86.exe; DestDir: {tmp}; Flags: ignoreversion; Components: VCRedist2010
;Source: library\vcredist_2010_x64.exe; DestDir: {tmp}; Flags: ignoreversion; Check: Is64BitInstallMode; Components: VCRedist2010
;Source: library\vcredist_2012_x86.exe; DestDir: {tmp}; Flags: ignoreversion; Components: VCRedist2012
;Source: library\vcredist_2012_x64.exe; DestDir: {tmp}; Flags: ignoreversion; Check: Is64BitInstallMode; Components: VCRedist2012
;Source: library\vcredist_2013_x86.exe; DestDir: {tmp}; Flags: ignoreversion; Components: VCRedist2013
;Source: library\vcredist_2013_x64.exe; DestDir: {tmp}; Flags: ignoreversion; Check: Is64BitInstallMode; Components: VCRedist2013
Source: library\vcredist_2015_x86.exe; DestDir: {tmp}; Flags: ignoreversion; Components: VCRedist2015
Source: library\vcredist_2015_x64.exe; DestDir: {tmp}; Flags: ignoreversion; Check: Is64BitInstallMode; Components: VCRedist2015
;Source: library\WinPcap_4_1_2.exe; DestDir: {tmp}; Flags: ignoreversion;
Source: library\dxwebsetup.exe; DestDir: {tmp}; Flags: ignoreversion; Components: DirectX9
#endif

[INI]
; windspro nombre de idioma
;Filename: {app}\windspro\opciones.cfg; Section: WinDS PRO; Key: idioma; String: español; Languages: spanish
;Filename: {app}\windspro\opciones.cfg; Section: WinDS PRO; Key: idioma; String: italiano; Languages: italian
;Filename: {app}\windspro\opciones.cfg; Section: WinDS PRO; Key: idioma; String: portugues; Languages: brazilianportuguese portuguese
;Filename: {app}\windspro\opciones.cfg; Section: WinDS PRO; Key: idioma; String: aleman; Languages: german
;Filename: {app}\windspro\opciones.cfg; Section: WinDS PRO; Key: idioma; String: frances; Languages: french
;Filename: {app}\windspro\opciones.cfg; Section: WinDS PRO; Key: idioma; String: ingles; Languages: english japanese chinesesimp chinesetrad korean

; no$zoomer nombre de idioma
Filename: {app}\emu\no$gba\NO$Zoomer.ini; Section: NO$ZOOMER; Key: Language; String: Chinese Simplified (Money114); Languages: chinesesimp
Filename: {app}\emu\no$gba\NO$Zoomer.ini; Section: NO$ZOOMER; Key: Language; String: Chinese Traditional (Lo585983); Languages: chinesetrad
Filename: {app}\emu\no$gba\NO$Zoomer.ini; Section: NO$ZOOMER; Key: Language; String: German (Shona); Languages: german
Filename: {app}\emu\no$gba\NO$Zoomer.ini; Section: NO$ZOOMER; Key: Language; String: English (Squall Leonhart); Languages: english brazilianportuguese french korean portuguese {#ExtraLanguages}
Filename: {app}\emu\no$gba\NO$Zoomer.ini; Section: NO$ZOOMER; Key: Language; String: Español (WinDS PRO); Languages: spanish
Filename: {app}\emu\no$gba\NO$Zoomer.ini; Section: NO$ZOOMER; Key: Language; String: Italian (Gheporait); Languages: italian
Filename: {app}\emu\no$gba\NO$Zoomer.ini; Section: NO$ZOOMER; Key: Language; String: Japanese; Languages: japanese

; desmume firmware idioma
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 1; Languages: chinesesimp
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 1; Languages: chinesetrad
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 3; Languages: german
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 1; Languages: english brazilianportuguese korean portuguese {#ExtraLanguages}
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 5; Languages: spanish
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 2; Languages: french
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 4; Languages: italian
Filename: {app}\emu\desmume\desmume.ini; Section: Firmware; Key: Language; String: 0; Languages: japanese

; desmume nombre de idioma
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 0; Languages: english german {#ExtraLanguages}
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 1; Languages: french
;Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 2; Languages: ?
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 3; Languages: chinesesimp chinesetrad 
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 4; Languages: italian
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 5; Languages: japanese
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 6; Languages: spanish
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 7; Languages: korean
Filename: {app}\emu\desmume\desmume.ini; Section: General; Key: Language; String: 8; Languages: brazilianportuguese portuguese

; configuracion vbalink
Filename: {app}\emu\vbalink\vba1.ini; Section: preferences; Key: batterydir; String: {app}\emu\vbalink\archivo\partidas_guardadas
Filename: {app}\emu\vbalink\vba2.ini; Section: preferences; Key: batterydir; String: {app}\emu\vbalink\archivo\partidas_guardadas
Filename: {app}\emu\vbalink\vba3.ini; Section: preferences; Key: batterydir; String: {app}\emu\vbalink\archivo\partidas_guardadas
Filename: {app}\emu\vbalink\vba4.ini; Section: preferences; Key: batterydir; String: {app}\emu\vbalink\archivo\partidas_guardadas
Filename: {app}\emu\vbalink\vba1.ini; Section: preferences; Key: savedir; String: {app}\emu\vbalink\archivo\estados_guardados
Filename: {app}\emu\vbalink\vba2.ini; Section: preferences; Key: savedir; String: {app}\emu\vbalink\archivo\estados_guardados
Filename: {app}\emu\vbalink\vba3.ini; Section: preferences; Key: savedir; String: {app}\emu\vbalink\archivo\estados_guardados
Filename: {app}\emu\vbalink\vba4.ini; Section: preferences; Key: savedir; String: {app}\emu\vbalink\archivo\estados_guardados
Filename: {app}\emu\vbalink\vba1.ini; Section: preferences; Key: capturedir; String: {app}\emu\vbalink\archivo\capturas
Filename: {app}\emu\vbalink\vba2.ini; Section: preferences; Key: capturedir; String: {app}\emu\vbalink\archivo\capturas
Filename: {app}\emu\vbalink\vba3.ini; Section: preferences; Key: capturedir; String: {app}\emu\vbalink\archivo\capturas
Filename: {app}\emu\vbalink\vba4.ini; Section: preferences; Key: capturedir; String: {app}\emu\vbalink\archivo\capturas

[Icons]
Name: {commonprograms}\{groupname}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; IconFilename: {app}\{#MyAppExeName}; Comment: {#MyAppName}; IconIndex: 0
Name: {commonprograms}\{groupname}\{#MyAppPublisher}; Filename: {#MyAppURL}; Comment: {#MyAppPublisher}
Name: {commondesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; IconFilename: {app}\{#MyAppExeName}; Comment: {#MyAppName}; IconIndex: 0

[Run]
#ifdef Library
;Filename: {tmp}\oalinst.exe; Parameters: "/silent"; WorkingDir: {tmp}; StatusMsg: "OpenAL Setup..."; Components: OpenAL
;Filename: {tmp}\vcredist_2008_x86.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2008 x86 Setup..."
;Filename: {tmp}\vcredist_2008_x64.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2008 x64 Setup..."; Check: Is64BitInstallMode
;Filename: {tmp}\vcredist_2010_x86.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2010 x86 Setup..."; Components: VCRedist2010
;Filename: {tmp}\vcredist_2010_x64.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2010 x64 Setup..."; Check: Is64BitInstallMode; Components: VCRedist2010
;Filename: {tmp}\vcredist_2012_x86.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2012 x86 Setup..."; Components: VCRedist2012
;Filename: {tmp}\vcredist_2012_x64.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2012 x64 Setup..."; Check: Is64BitInstallMode; Components: VCRedist2012
;Filename: {tmp}\vcredist_2013_x86.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2013 x86 Setup..."; Components: VCRedist2013
;Filename: {tmp}\vcredist_2013_x64.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2013 x64 Setup..."; Check: Is64BitInstallMode; Components: VCRedist2013
Filename: {tmp}\vcredist_2015_x86.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2015 x86 Setup..."; Components: VCRedist2015
Filename: {tmp}\vcredist_2015_x64.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "Microsoft Visual C++ 2015 x64 Setup..."; Check: Is64BitInstallMode; Components: VCRedist2015
;Filename: {tmp}\WinPcap_4_1_2.exe; WorkingDir: {tmp};
Filename: {tmp}\dxwebsetup.exe; Parameters: "/Q"; WorkingDir: {tmp}; StatusMsg: "DirectX 9.0 Web Setup..."; Components: DirectX9
#endif

;Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Flags: postinstall nowait; Description: {#MyAppName}; StatusMsg: {#MyAppName}...
Filename:"http://windsprocentral.blogspot.com/"; Flags: postinstall nowait shellexec

[Registry]
; skin windspro (windsproskin)
;Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.WinDSPROSKIN"; ValueType: String; ValueData: "WinDS PRO SKIN"; Flags: uninsdeletekey
;Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.WinDSPROSKIN\DefaultIcon"; ValueType: String; ValueData: "{app}\windspro.dll,5"; Flags: uninsdeletekey
;Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.WinDSPROSKIN\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
;Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.WinDSPROSKIN\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

; skin noz (nozskin)
;Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NOZSKIN"; ValueType: String; ValueData: "NOZ SKIN"; Flags: uninsdeletekey
;Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NOZSKIN\DefaultIcon"; ValueType: String; ValueData: "{app}\windspro.dll,5"; Flags: uninsdeletekey
;Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NOZSKIN\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
;Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NOZSKIN\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

; roms gameboy (gb gmb sgb)
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy"; ValueType: String; ValueData: "Game Boy"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\DefaultIcon"; ValueType: String; ValueData: "{app}\windspro.dll,0"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\OpenWith"; ValueType: String; ValueData: {cm:applications}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\OpenWith"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,6"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\OpenWith\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\SaveGameSearch"; ValueType: String; ValueData: {cm:savedgames}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\SaveGameSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,4"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\SaveGameSearch\Command"; ValueType: String; ValueData: """{app}\sgsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\GoogleSearch"; ValueType: String; ValueData: {cm:searchwithgoogle}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\GoogleSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\gsearch.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\GoogleSearch\Command"; ValueType: String; ValueData: """{app}\gsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\ROMInfo"; ValueType: String; ValueData: "ROM Info"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\ROMInfo"; ValueName: Icon; ValueType: String; ValueData: "{app}\windsproinfo.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoy\Shell\ROMInfo\Command"; ValueType: String; ValueData: """{app}\windsproinfo.exe"" ""%1"""; Flags: uninsdeletekey

; roms gameboy color (cgb gbc)
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor"; ValueType: String; ValueData: "Game Boy Color"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\DefaultIcon"; ValueType: String; ValueData: "{app}\windspro.dll,2"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\OpenWith"; ValueType: String; ValueData: {cm:applications}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\OpenWith"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,6"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\OpenWith\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\SaveGameSearch"; ValueType: String; ValueData: {cm:savedgames}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\SaveGameSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,4"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\SaveGameSearch\Command"; ValueType: String; ValueData: """{app}\sgsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\GoogleSearch"; ValueType: String; ValueData: {cm:searchwithgoogle}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\GoogleSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\gsearch.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\GoogleSearch\Command"; ValueType: String; ValueData: """{app}\gsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\ROMInfo"; ValueType: String; ValueData: "ROM Info"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\ROMInfo"; ValueName: Icon; ValueType: String; ValueData: "{app}\windsproinfo.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyColor\Shell\ROMInfo\Command"; ValueType: String; ValueData: """{app}\windsproinfo.exe"" ""%1"""; Flags: uninsdeletekey

; roms gameboy advance (agb gba elf mb bin)
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance"; ValueType: String; ValueData: "Game Boy Advance"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\DefaultIcon"; ValueType: String; ValueData: "{app}\windspro.dll,1"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\OpenWith"; ValueType: String; ValueData: {cm:applications}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\OpenWith"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,6"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\OpenWith\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\SaveGameSearch"; ValueType: String; ValueData: {cm:savedgames}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\SaveGameSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,4"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\SaveGameSearch\Command"; ValueType: String; ValueData: """{app}\sgsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\GoogleSearch"; ValueType: String; ValueData: {cm:searchwithgoogle}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\GoogleSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\gsearch.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\GoogleSearch\Command"; ValueType: String; ValueData: """{app}\gsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\ROMInfo"; ValueType: String; ValueData: "ROM Info"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\ROMInfo"; ValueName: Icon; ValueType: String; ValueData: "{app}\windsproinfo.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.GameBoyAdvance\Shell\ROMInfo\Command"; ValueType: String; ValueData: """{app}\windsproinfo.exe"" ""%1"""; Flags: uninsdeletekey

; roms nintendo ds (nds dsi srl pme ds.gba sc.nds)
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS"; ValueType: String; ValueData: "Nintendo DS"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\DefaultIcon"; ValueType: String; ValueData: "{app}\windspro.dll,3"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\OpenWith"; ValueType: String; ValueData: {cm:applications}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\OpenWith"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,6"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\OpenWith\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\SaveGameSearch"; ValueType: String; ValueData: {cm:savedgames}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\SaveGameSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,4"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\SaveGameSearch\Command"; ValueType: String; ValueData: """{app}\sgsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\TrimROM"; ValueType: String; ValueData: {cm:trimrom}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\TrimROM"; ValueName: Icon; ValueType: String; ValueData: "{app}\trimmer.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\TrimROM\Command"; ValueType: String; ValueData: """{app}\trimmer.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\GoogleSearch"; ValueType: String; ValueData: {cm:searchwithgoogle}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\GoogleSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\gsearch.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\GoogleSearch\Command"; ValueType: String; ValueData: """{app}\gsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\ROMInfo"; ValueType: String; ValueData: "ROM Info"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\ROMInfo"; ValueName: Icon; ValueType: String; ValueData: "{app}\windsproinfo.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.NintendoDS\Shell\ROMInfo\Command"; ValueType: String; ValueData: """{app}\windsproinfo.exe"" ""%1"""; Flags: uninsdeletekey

; roms nintendo 3ds (3ds)
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS"; ValueType: String; ValueData: "Nintendo 3DS"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\DefaultIcon"; ValueType: String; ValueData: "{app}\windspro.dll,7"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\OpenWith"; ValueType: String; ValueData: {cm:applications}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\OpenWith"; ValueName: Icon; ValueType: String; ValueData: "{app}\windspro.dll,6"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\OpenWith\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\GoogleSearch"; ValueType: String; ValueData: {cm:searchwithgoogle}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\GoogleSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\gsearch.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\GoogleSearch\Command"; ValueType: String; ValueData: """{app}\gsearch.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\3DSExplorer"; ValueType: String; ValueData: "3DS Explorer"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\3DSExplorer"; ValueName: Icon; ValueType: String; ValueData: "{app}\3dsexplorer\3DSExplorer.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.Nintendo3DS\Shell\3DSExplorer\Command"; ValueType: String; ValueData: """{app}\3dsexplorer\3DSExplorer.exe"" ""%1"""; Flags: uninsdeletekey

; datos guardados (clt sav sna sgm sgs sps dct dst dsv dsm ds1~ds10 sa1~sa4 sg1~sg4)
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.DatosGuardados"; ValueType: String; ValueData: {cm:savedgames}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.DatosGuardados\DefaultIcon"; ValueType: String; ValueData: "{app}\windspro.dll,4"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.DatosGuardados\Shell\Open"; ValueName: Icon; ValueType: String; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.DatosGuardados\Shell\Open\Command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.DatosGuardados\Shell\GoogleSearch"; ValueType: String; ValueData: {cm:searchwithgoogle}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.DatosGuardados\Shell\GoogleSearch"; ValueName: Icon; ValueType: String; ValueData: "{app}\gsearch.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\{#MyAppRegName}.AssocFile.DatosGuardados\Shell\GoogleSearch\Command"; ValueType: String; ValueData: """{app}\gsearch.exe"" ""%1"""; Flags: uninsdeletekey

;Root: HKLM; Subkey: "Software\Classes\.windsproskin"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.WinDSPROSKIN"; Flags: uninsdeletevalue uninsdeletekeyifempty
;Root: HKLM; Subkey: "Software\Classes\.nozskin"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NOZSKIN"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.gb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoy"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.gmb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoy"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.sgb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoy"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.cgb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyColor"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.gbc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyColor"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.agb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.gba"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.elf"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.mb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.bin"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletevalue uninsdeletekeyifempty   
Root: HKLM; Subkey: "Software\Classes\.nds"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletevalue uninsdeletekeyifempty   
Root: HKLM; Subkey: "Software\Classes\.dsi"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.srl"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.pme"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.3ds"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.3dsx"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.cci"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.cxi"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.csu"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.clt"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty   
Root: HKLM; Subkey: "Software\Classes\.sav"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.sna"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.sgm"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.sgs"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.sps"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.dct"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.dst"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.dsv"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.dsm"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.ds1"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.ds2"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.ds3"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.ds4"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.ds5"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.ds6"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.ds7"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.ds8"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.ds9"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.ds10"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.sa1"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.sa2"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.sa3"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.sa4"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.sg1"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.sg2"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.sg3"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Classes\.sg4"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.DatosGuardados"; Flags: uninsdeletevalue uninsdeletekeyifempty

Root: HKLM; Subkey: "Software\{#MyAppRegName}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities"; ValueType: String; ValueName: "ApplicationName"; ValueData: {#MyAppName}; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities"; ValueType: String; ValueName: "ApplicationDescription"; ValueData: "Game Boy, Game Boy Color, Game Boy Advance, Nintendo DS & Nintendo 3DS."; Flags: uninsdeletekey
;Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".windsproskin"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.WinDSPROSKIN"; Flags: uninsdeletekey
;Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".nozskin"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NOZSKIN"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".gb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoy"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".gmb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoy"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".sgb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoy"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".cgb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyColor"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".gbc"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyColor"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".agb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".gba"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".elf"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".mb"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".bin"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.GameBoyAdvance"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".nds"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".dsi"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".srl"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".pme"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.NintendoDS"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".3ds"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".3dsx"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".cci"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".cxi"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\{#MyAppRegName}\Capabilities\FileAssociations"; ValueName: ".csu"; ValueType: String; ValueData: "{#MyAppRegName}.AssocFile.Nintendo3DS"; Flags: uninsdeletekey

Root: HKLM; Subkey: "Software\RegisteredApplications"; ValueType: String; ValueName: "WinDSPRO"; ValueData: "Software\{#MyAppRegName}\Capabilities"; Flags: uninsdeletevalue uninsdeletekeyifempty

; Listar en Abrir con...
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\shell\open\command"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
;Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .windsproskin; Flags: uninsdeletekey
;Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .nozskin; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .gb; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .gmb; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .sgb; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .cgb; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .gbc; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .agb; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .gba; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .elf; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .mb; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .bin; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .nds; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .dsi; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .srl; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .pme; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .3ds; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .3dsx; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .cci; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .cxi; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: String; ValueName: .csu; Flags: uninsdeletekey

; listar en App Paths (ShellExecuteEx)
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\{#MyAppExeName}"; ValueType: String; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\{#MyAppExeName}"; ValueType: String; ValueName: Path; ValueData: """{app}"""; Flags: uninsdeletekey

[UninstallDelete]
Name: {app}\emu\no$gba\no$gba.inp; Type: files

[UninstallRun]
Filename:"http://windsprocentral.blogspot.com/"; Flags: nowait shellexec