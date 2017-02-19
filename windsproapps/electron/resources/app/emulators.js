const exeName = 'windsproapps.exe';
const version = '2017.02.16';
const updatesURL = 'http://lainz.github.io/windspro/version/windsproapps.json';
const emuFolder = 'windsproapps\\\\app\\\\';

var categories = [
    {
        name: 'All',
        search: ''
    },
    {
        name: 'Atari',
        search: 'Atari'
    },
    {
        name: 'Multiplatform',
        search: 'Multiplatform'
    },
    {
        name: 'Commodore',
        search: 'Commodore'
    },
    {
        name: 'Nintendo',
        search: 'Nintendo'
    },
    {
        name: 'Microsoft',
        search: 'Microsoft'
    },
    {
        name: 'Sega',
        search: 'Sega'
    },
    {
        name: 'Sony',
        search: 'Sony'
    },
    {
        name: 'GC',
        search: '(GC)'
    },
    {
        name: 'Wii',
        search: '(Wii)'
    },
    {
        name: 'Wii U',
        search: '(Wii U)'
    },
    {
        name: '3DS',
        search: '(3DS)'
    },
    {
        name: 'NDS',
        search: '(NDS)'
    },
    {
        name: 'NES',
        search: '(NES)'
    },
    {
        name: 'SNES',
        search: '(SNES)'
    },
    {
        name: 'N64',
        search: '(N64)'
    },
    {
        name: 'PSX',
        search: '(PSX)'
    },
    {
        name: 'PS2',
        search: '(PS2)'
    },
    {
        name: 'PS3',
        search: '(PS3)'
    },
    {
        name: 'PSP',
        search: '(PSP)'
    },
    {
        name: 'SMD',
        search: '(SMD)'
    },
    {
        name: '32X',
        search: '(32X)'
    },
    {
        name: 'DC',
        search: '(DC)'
    }
];

var emulators = [
    {
        name: 'Atari800Win PLus',
        category: 'Atari 5200',
        version: '4.1',
        executable: 'Atari800Win.exe',
        folder: 'Atari800Win_PLus_41',
        icon: 'atari800winplus.png',
        extensions: ''
    },
    {
        name: 'BizHawk',
        category: 'Multiplatform',
        version: '2017.02.16',
        executable: 'EmuHawk.exe',
        folder: 'BizHawk_153',
        icon: 'bizhawk.png',
        extensions: ''
    },
    {
        name: 'blueMSX',
        category: 'Multiplatform',
        version: '2.8.3',
        executable: 'blueMSX.exe',
        folder: 'blueMSX_282',
        icon: 'bluemsx.png',
        extensions: ''
    },
    {
        name: 'CCS64',
        category: 'Commodore 64 (C64)',
        version: '3.9.2',
        executable: 'CCS64.exe',
        folder: 'CCS64_39',
        icon: 'ccs64.png',
        extensions: ''
    },
    {
        name: 'Cemu',
        category: 'Nintendo Wii U (Wii U)',
        version: '1.7.1',
        executable: 'Cemu.exe',
        folder: 'cemu',
        icon: 'cemu.png',
        extensions: ''
    },
    {
        name: 'Citra',
        category: 'Nintendo 3DS (3DS)',
        version: '2017.02.15',
        executable: 'citra-qt.exe',
        folder: 'Citra_3DS_Emulator',
        icon: 'citra.png',
        extensions: ''
    },
    {
        name: 'Cxbx',
        category: 'Microsoft XBOX',
        version: '2017.02.16',
        executable: 'Cxbx.exe',
        folder: 'Cxbx',
        icon: 'cxbx.png',
        extensions: ''
    },
    {
        name: 'Demul',
        category: 'Sega Dreamcast (DC)',
        version: '0.7a',
        executable: 'demul.exe',
        folder: 'Demul_0582',
        icon: 'demul.png',
        extensions: ''
    },
    {
        name: 'DeSmuME X432R 32-bit',
        category: 'Nintendo DS (NDS)',
        version: '2015.04.19',
        executable: 'DeSmuME_X432R_x86.exe',
        folder: 'DeSmuME_x432R',
        icon: 'desmume.png',
        extensions: ''
    },
    {
        name: 'DeSmuME X432R 64-bit',
        category: 'Nintendo DS (NDS)',
        version: '2015.04.19',
        executable: 'DeSmuME_X432R_x64.exe',
        folder: 'DeSmuME_x432R',
        icon: 'desmume.png',
        extensions: ''
    },
    {
        name: 'Dolphin (Ishiiruka) 32-bit',
        category: 'Nintendo Wii (Wii), Nintendo GameCube (GC)',
        version: '2014.07',
        executable: 'Dolphin.exe',
        folder: 'IshiirukaDolphin',
        icon: 'dolphinishiiruka.png',
        extensions: ''
    },
    {
        name: 'Dolphin (Ishiiruka) 64-bit',
        category: 'Nintendo Wii (Wii), Nintendo GameCube (GC)',
        version: '894',
        executable: 'Dolphin.exe',
        folder: 'IshiirukaDolphin64',
        icon: 'dolphinishiiruka.png',
        extensions: ''
    },
    {
        name: 'Dolphin 32-bit',
        category: 'Nintendo Wii (Wii), Nintendo GameCube (GC)',
        version: '4.0.2',
        executable: 'Dolphin.exe',
        folder: 'Dolphin_402_32-bit',
        icon: 'dolphin.png',
        extensions: ''
    },
    {
        name: 'Dolphin 64-bit',
        category: 'Nintendo Wii (Wii), Nintendo GameCube (GC)',
        version: '5.0.2538',
        executable: 'Dolphin.exe',
        folder: 'Dolphin_402_64-bit',
        icon: 'dolphin.png',
        extensions: ''
    },
    {
        name: 'ePSXe',
        category: 'Sony PlayStation (PSX)',
        version: '2.0.5',
        executable: 'ePSXe.exe',
        folder: 'ePSXe_190',
        icon: 'epsxe.png',
        extensions: ''
    },
    {
        name: 'FCEUX',
        category: 'Nintendo (NES)',
        version: 'r3335',
        executable: 'fceux.exe',
        folder: 'FCEUX',
        icon: 'fceux.png',
        extensions: ''
    },
    {
        name: 'Final Burn Alpha rr',
        category: 'Multiplatform',
        version: '0.0.7',
        executable: 'fba.exe',
        folder: 'Final_Burn_Alpha_rr_007',
        icon: 'finalburnalpha.png',
        extensions: ''
    },
    {
        name: 'Gens GS',
        category: 'Sega Mega Drive (SMD), Sega 32X (32X)',
        version: 'r7',
        executable: 'gens.exe',
        folder: 'Gens_gs_r7',
        icon: 'gensgs.png',
        extensions: ''
    },
    {
        name: 'Gens rr',
        category: 'Sega Mega Drive (SMD), Sega 32X (32X)',
        version: '11 r352',
        executable: 'Gens.exe',
        folder: 'Gens_rr_11_r341',
        icon: 'gens.png',
        extensions: ''
    },
    {
        name: 'Handy',
        category: 'Atari Lynx',
        version: '0.95',
        executable: 'handy.exe',
        folder: 'Handy_095',
        icon: 'handy.png',
        extensions: ''
    },
    {
        name: 'Hourglass',
        category: 'Win32',
        version: 'r81',
        executable: 'hourglass.exe',
        folder: 'Hourglass_r81',
        icon: 'hourglass.png',
        extensions: ''
    },
    {
        name: 'JPC-rr',
        category: 'DOS',
        version: 'r11.7',
        executable: 'start-jpcrr.bat',
        folder: 'JPC_rr_r117',
        icon: 'jpcrr.png',
        extensions: ''
    },
    {
        name: 'Kega Fusion',
        category: 'Sega Mega Drive (SMD), Sega 32X (32X)',
        version: '3.64',
        executable: 'Fusion.exe',
        folder: 'Kega_Fusion_364',
        icon: 'kegafusion.png',
        extensions: ''
    },
    {
        name: 'lsnes rr2',
        category: 'Super Nintendo (SNES)',
        version: 'beta 23',
        executable: 'lsnes-bsnes.exe',
        folder: 'lsnes_rr2_beta15',
        icon: 'default.png',
        extensions: ''
    },
    {
        name: 'Mednafen (MedGui)',
        category: 'Multiplatform',
        version: '0.9.36.5',
        executable: 'MedGui.exe',
        folder: 'mednafen_09321_wip',
        icon: 'medgui.png',
        extensions: ''
    },
    {
        name: 'Mednafen-rr',
        category: 'Multiplatform',
        version: '1.1',
        executable: 'Mednafen-Front.exe',
        folder: 'Mednafen_rr_11',
        icon: 'mednafen.png',
        extensions: ''
    },
    {
        name: 'Mupen64-rr',
        category: 'Nintendo 64 (N64)',
        version: '4.6.2',
        executable: 'mupen64.exe',
        folder: 'Mupen64_rr_462',
        icon: 'mupen64.png',
        extensions: ''
    },
    {
        name: 'Mupen64Plus',
        category: 'Nintendo 64 (N64)',
        version: '2.5',
        executable: 'mupen64plus-qt.exe',
        folder: 'Mupen64Plus_20',
        icon: 'mupen64plus.png',
        extensions: ''
    },
    {
        name: 'no$2k6',
        category: 'Atari 2600 (A2600)',
        version: '1.1',
        executable: 'NO$2K6.exe',
        folder: 'no$2k6_11',
        icon: 'nocash2k6.png',
        extensions: ''
    },
    {
        name: 'no$c64',
        category: 'Commodore 64 (C64)',
        version: '1.1',
        executable: 'NO$C64.exe',
        folder: 'no$c64_11',
        icon: 'nocashc64.png',
        extensions: ''
    },
    {
        name: 'no$msx',
        category: 'MSX',
        version: '1.5',
        executable: 'NO$MSX.EXE',
        folder: 'no$msx_15',
        icon: 'nocashmsx.png',
        extensions: ''
    },
    {
        name: 'no$nes',
        category: 'Nintendo (NES)',
        version: '1.1',
        executable: 'NO$NES.EXE',
        folder: 'no$nes_11',
        icon: 'nocashnes.png',
        extensions: ''
    },
    {
        name: 'no$psx',
        category: 'Sony PlayStation (PSX)',
        version: '1.9',
        executable: 'NO$PSX.EXE',
        folder: 'no$psx_18',
        icon: 'nocashpsx.png',
        extensions: ''
    },
    {
        name: 'no$sns',
        category: 'Super Nintendo (SNES)',
        version: '1.5',
        executable: 'NO$SNS.EXE',
        folder: 'no$sns_15',
        icon: 'nocashsnes.png',
        extensions: ''
    },
    {
        name: 'nullDC',
        category: 'Sega Dreamcast (DC)',
        version: 'r150',
        executable: 'nullDC_Win32_Release.exe',
        folder: 'nullDC_150',
        icon: 'nulldc.png',
        extensions: ''
    },
    {
        name: 'Ootake',
        category: 'NEC',
        version: '2.7.8',
        executable: 'Ootake.exe',
        folder: 'Ootake_275',
        icon: 'ootake.png',
        extensions: ''
    },
    {
        name: 'Open MSX 32-bit',
        category: 'MSX',
        version: '0.13.0',
        executable: 'openmsx.exe',
        folder: 'Open_MSX_0100_32-bit',
        icon: 'openmsx.png',
        extensions: ''
    },
    {
        name: 'Open MSX 64-bit',
        category: 'MSX',
        version: '0.13.0',
        executable: 'openmsx.exe',
        folder: 'Open_MSX_0100_64-bit',
        icon: 'openmsx.png',
        extensions: ''
    },
    {
        name: 'Oswan',
        category: 'Bandai',
        version: '1.7.3',
        executable: 'Oswan.exe',
        folder: 'Oswan_173',
        icon: 'oswan.png',
        extensions: ''
    },
    {
        name: 'PCSX-R',
        category: 'Sony PlayStation (PSX)',
        version: '2016.10.01',
        executable: 'pcsxr.exe',
        folder: 'PCSXR_1993',
        icon: 'pcsxr.png',
        extensions: ''
    },
    {
        name: 'PCSX2',
        category: 'Sony PlayStation 2 (PS2)',
        version: '1.5.0-dev-1885',
        executable: 'pcsx2.exe',
        folder: 'PCSX2_121',
        icon: 'pcsx2.png',
        extensions: ''
    },
    {
        name: 'Play!',
        category: 'Sony PlayStation 2 (PS2)',
        version: '2016.10.24',
        executable: 'Play.exe',
        folder: 'Play_32',
        icon: 'play.png',
        extensions: ''
    },
    {
        name: 'PokeMini',
        category: 'Pokémon Mini',
        version: '0.60',
        executable: 'PokeMini.exe',
        folder: 'PokeMini_054',
        icon: 'pokemini.png',
        extensions: ''
    },
    {
        name: 'PPSSPP 32-bit',
        category: 'Sony PlayStation Portable (PSP)',
        version: '1.3-632',
        executable: 'PPSSPPWindows.exe',
        folder: 'PPSSPP',
        icon: 'ppsspp.png',
        extensions: ''
    },
    {
        name: 'PPSSPP 64-bit',
        category: 'Sony PlayStation Portable (PSP)',
        version: '1.3-632',
        executable: 'PPSSPPWindows64.exe',
        folder: 'PPSSPP',
        icon: 'ppsspp.png',
        extensions: ''
    },
    {
        name: 'Project64',
        category: 'Nintendo 64 (N64)',
        version: '2017.02.01',
        executable: 'Project64.exe',
        folder: 'Project64_21',
        icon: 'project64.png',
        extensions: ''
    },
    {
        name: 'Project64K7E',
        category: 'Nintendo 64 (N64)',
        version: '1.3.1',
        executable: 'Project64K7E.exe',
        folder: 'Project64K7E_131',
        icon: 'project64k7e.png',
        extensions: ''
    },
    {
        name: 'ProSystem',
        category: 'Atari 7800 (A7800)',
        version: '1.3',
        executable: 'ProSystem.exe',
        folder: 'ProSystem_13',
        icon: 'prosystem.png',
        extensions: ''
    },
    {
        name: 'pSX fin',
        category: 'Sony PlayStation (PSX)',
        version: '1.13',
        executable: 'psxfin.exe',
        folder: 'pSX_1_13',
        icon: 'psxfin.png',
        extensions: ''
    },
    {
        name: 'PSXjin',
        category: 'Sony PlayStation (PSX)',
        version: '2.0.2',
        executable: 'psxjin.exe',
        folder: 'PSXjin_202',
        icon: 'psxjin.png',
        extensions: ''
    },
    {
        name: 'Red Dragon',
        category: 'Nintendo Virtual Boy (VB)',
        version: '0.38',
        executable: 'rdragon.exe',
        folder: 'Red_Dragon_038',
        icon: 'reddragon.png',
        extensions: ''
    },
    {
        name: 'rpcs3',
        category: 'Sony PlayStation 3 (PS3)',
        version: '2017.02.16',
        executable: 'rpcs3.exe',
        folder: 'rpcs3',
        icon: 'default.png',
        extensions: ''
    },
    {
        name: 'Snes9x 32-bit',
        category: 'Super Nintendo (SNES)',
        version: '1.53',
        executable: 'snes9x.exe',
        folder: 'Snes9x_153',
        icon: 'snes9x.png',
        extensions: ''
    },
    {
        name: 'Snes9x 64-bit',
        category: 'Super Nintendo (SNES)',
        version: '1.53',
        executable: 'snes9x-x64.exe',
        folder: 'Snes9x_153_(64-bit)',
        icon: 'snes9x.png',
        extensions: ''
    },
    {
        name: 'SSF',
        category: 'Sega Saturn',
        version: '0.12 beta r4',
        executable: 'SSF.exe',
        folder: 'SSF_012_beta_R4',
        icon: 'default.png',
        extensions: ''
    },
    {
        name: 'VBA-rr',
        category: 'Nintendo Game Boy (GB) / Color (GBC) / Advance (GBA)',
        version: 'v24m r480',
        executable: 'vba-v24m-svn480.exe',
        folder: 'VBA-rr_v24m_r480',
        icon: 'vbarr.png',
        extensions: ''
    },
    {
        name: 'VBjin',
        category: 'Nintendo Virtual Boy (VB)',
        version: 'r61',
        executable: 'vbjin.exe',
        folder: 'VBjin_r61',
        icon: 'vbjin.png',
        extensions: ''
    },
    {
        name: 'Virtual Jaguar',
        category: 'Atari Jaguar',
        version: '2.1.2',
        executable: 'virtualjaguar.exe',
        folder: 'Virtual_Jaguar_210',
        icon: 'virtualjaguar.png',
        extensions: ''
    },
    {
        name: 'VirtuaNES',
        category: 'Nintendo (NES)',
        version: '0.9.7e',
        executable: 'VirtuaNES.exe',
        folder: 'VirtuaNES_097e',
        icon: 'virtuanes.png',
        extensions: ''
    },
    {
        name: 'WinVICE C128',
        category: 'Commodore 128 (C128)',
        version: '3.0a',
        executable: 'x128.exe',
        folder: 'WinVICE_22',
        icon: 'winvice.png',
        extensions: ''
    },
    {
        name: 'WinVICE C64',
        category: 'Commodore 64 (C64)',
        version: '3.0a',
        executable: 'x64.exe',
        folder: 'WinVICE_22',
        icon: 'winvice.png',
        extensions: ''
    },
    {
        name: 'WinVICE C64 DTV',
        category: 'Commodore 64 Direct-to-TV (C64)',
        version: '3.0a',
        executable: 'x64dtv.exe',
        folder: 'WinVICE_22',
        icon: 'winvice.png',
        extensions: ''
    },
    {
        name: 'WinVICE CBM-II',
        category: 'Commodore CBM-II (CBM-II)',
        version: '3.0a',
        executable: 'xcbm2.exe',
        folder: 'WinVICE_22',
        icon: 'winvice.png',
        extensions: ''
    },
    {
        name: 'WinVICE PET',
        category: 'Commodore PET (PET)',
        version: '3.0a',
        executable: 'xpet.exe',
        folder: 'WinVICE_22',
        icon: 'winvice.png',
        extensions: ''
    },
    {
        name: 'WinVICE PLUS4',
        category: 'Commodore PLUS4 (PLUS4)',
        version: '3.0a',
        executable: 'xplus4.exe',
        folder: 'WinVICE_22',
        icon: 'winvice.png',
        extensions: ''
    },
    {
        name: 'WinVICE VIC20',
        category: 'Commodore VIC20 (VIC20)',
        version: '3.0a',
        executable: 'xvic.exe',
        folder: 'WinVICE_22',
        icon: 'winvice.png',
        extensions: ''
    },
    {
        name: 'Xenia',
        category: 'Microsoft XBOX 360',
        version: '2017.02.15',
        executable: 'xenia.exe',
        folder: 'xenia',
        icon: 'xenia.png',
        extensions: ''
    },
    {
        name: 'ZSNES',
        category: 'Super Nintendo (SNES)',
        version: '1.5.1',
        executable: 'zsnesw.exe',
        folder: 'ZSNES_151',
        icon: 'zsnes.png',
        extensions: ''
    }
];