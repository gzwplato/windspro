const exeName = 'linuxdspro';
const version = '2017.05.22';
const updatesURL = '';

var categories = [
    {
        name: 'All',
        search: ''
    },
    {
        name: 'NDS',
        search: '(NDS)'
    },
    {
        name: 'DOS',
        search: 'DOS'
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
        name: 'NES',
        search: '(NES)'
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
        name: 'SS',
        search: '(SS)'
    },
    {
        name: 'SNES',
        search: '(SNES)'
    },
    {
        name: 'GB',
        search: '(GB)'
    },
    {
        name: 'GBC',
        search: '(GBC)'
    },
    {
        name: 'GBA',
        search: '(GBA)'
    },
    {
        name: 'Atari',
        search: 'Atari'
    },
    {
        name: 'Sega',
        search: 'Sega'
    },
    {
        name: 'Nintendo',
        search: 'Nintendo'
    },
    {
        name: 'Amiga',
        search: 'Amiga'
    }
];

var emulators = [
    {
        name: 'DOSBox',
        category: 'DOS',
        version: '',
        executable: 'dosbox',
        folder: '',
        icon: 'dosbox.png',
        extensions: ''
    },
    {
        name: 'FS-UAE',
        category: 'Amiga',
        version: '',
        executable: 'fs-uae',
        folder: '',
        icon: 'fs-uae.png',
        extensions: ''
    },
    {
        name: 'FS-UAE Launcher',
        category: 'Amiga',
        version: '',
        executable: 'fs-uae-launcher',
        folder: '',
        icon: 'fs-uae.png',
        extensions: ''
    },
    {
        name: 'FS-UAE Arcade',
        category: 'Amiga',
        version: '',
        executable: 'fs-uae-arcade',
        folder: '',
        icon: 'fs-uae.png',
        extensions: ''
    },
    {
        name: 'Hatari',
        category: 'Atari',
        version: '',
        executable: 'hatari',
        folder: '',
        icon: 'hatari.png',
        extensions: ''
    },
    {
        name: 'Higan',
        category: 'Nintendo (NES) (SNES) (GB) (GBA)',
        version: '',
        executable: 'higan',
        folder: '',
        icon: 'higan.png',
        extensions: ''
    },
    {
        name: 'Nestopia',
        category: 'Nintendo Entertainment System (NES)',
        version: '',
        executable: 'nestopia',
        folder: '',
        icon: 'nestopia.png',
        extensions: ''
    },
    {
        name: 'PCSX',
        category: 'Sony PlayStation (PSX)',
        version: '',
        executable: 'pcsx',
        folder: '',
        icon: 'pcsx.png',
        extensions: ''
    },
    {
        name: 'Stella',
        category: 'Atari',
        version: '',
        executable: 'stella',
        folder: '',
        icon: 'stella.png',
        extensions: ''
    },
    {
        name: 'Virtual Jaguar',
        category: 'Atari',
        version: '',
        executable: 'virtualjaguar',
        folder: '',
        icon: 'vj.png',
        extensions: ''
    },
    {
        name: 'Yabause',
        category: 'Sega Saturn (SS)',
        version: '',
        executable: 'yabause',
        folder: '',
        icon: 'yabause.png',
        extensions: ''
    },
    {
        name: 'FCEUX',
        category: 'Nintendo Entertainment System (NES)',
        version: '',
        executable: 'fceux',
        folder: '',
        icon: 'fceux.png',
        extensions: ''
    },
    {
        name: 'DeSmuME',
        category: 'Nintendo DS (NDS)',
        version: '',
        executable: 'desmume',
        folder: '',
        icon: 'desmume.png',
        extensions: ''
    },
    {
        name: 'Mupen64Plus-Qt',
        category: 'Nintendo 64 (N64)',
        version: '',
        executable: 'mupen64plus-qt',
        folder: '',
        icon: 'mupen64plus.png',
        extensions: ''
    },
    {
        name: 'Dolphin',
        category: 'Nintendo Game Cube (GC) / Wii (Wii)',
        version: '',
        executable: 'dolphin-emu',
        folder: '',
        icon: 'dolphin.png',
        extensions: ''
    },
    {
        name: 'VBA Express',
        category: 'Nintendo Game Boy (GB) / Color (GBC) / Advance (GBA)',
        version: '',
        executable: 'vbaexpress',
        folder: '',
        icon: 'vbaexpress.png',
        extensions: ''
    }
];

categories.sort((a, b) => {
    if (a.name > b.name)
      return 1
    if (a.name < b.name)
      return -1
    return 0
});

emulators.sort((a, b) => {
    if (a.name > b.name)
      return 1
    if (a.name < b.name)
      return -1
    return 0
});
