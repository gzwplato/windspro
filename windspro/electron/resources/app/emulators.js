const exeName = 'windspro.exe';
const version = '2017.03.07';
const updatesURL = 'http://lainz.github.io/windspro/version/windspro.json';
const emuFolder = 'emu\\\\';

var categories = [
    {
        name: 'All',
        search: ''
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
        name: 'NDS',
        search: '(NDS)'
    },
    {
        name: '3DS',
        search: '(3DS)'
    }
];

var emulators = [
    {
        name: 'Citra',
        category: 'Nintendo 3DS (3DS)',
        version: '2017.03.06',
        executable: 'citra-qt.exe',
        folder: 'citra',
        icon: 'citra.png',
        extensions: '(3ds)(3dsx)(cci)(cxi)(csu)'
    },
    {
        name: 'Citra (32 bit)',
        category: 'Nintendo 3DS (3DS)',
        version: '2016.10.17',
        executable: 'citra_x86.exe',
        folder: 'citra32',
        icon: 'citraedge.png',
        extensions: '(3ds)(3dsx)(cci)(cxi)(csu)'
    },
    {
        name: 'Citra Edge',
        category: 'Nintendo 3DS (3DS)',
        version: '0.1.236',
        executable: 'citra-qt.exe',
        folder: 'citraedge',
        icon: 'citraedge.png',
        extensions: '(3ds)(3dsx)(cci)(cxi)(csu)'
    },
    {
        name: 'DeSmuME',
        category: 'Nintendo DS (NDS)',
        version: '2017.03.06',
        executable: 'desmume.exe',
        folder: 'desmume',
        icon: 'desmume.png',
        extensions: '(dsi)(nds)(pme)(srl)'
    },
    {
        name: 'MyZoom',
        category: 'Nintendo DS (NDS)',
        version: '1.8.36',
        executable: 'myzoom.exe',
        folder: 'no$gba',
        icon: 'nocashgba.png',
        extensions: ''
    },
    {
        name: 'NGZoom',
        category: 'Nintendo DS (NDS)',
        version: '1.0',
        executable: 'ngzoom.exe',
        folder: 'no$gba',
        icon: 'nocashgba.png',
        extensions: ''
    },
    {
        name: 'No$gba',
        category: 'Nintendo DS (NDS), Game Boy Advance (GBA)',
        version: '2.6a',
        executable: 'no$gba.exe',
        folder: 'no$gba',
        icon: 'nocashgba.png',
        extensions: '(dsi)(nds)(pme)(srl)(agb)(bin)(elf)(gba)(mb)'
    },
    {
        name: 'No$gba2X',
        category: 'Nintendo DS (NDS)',
        version: '1.0',
        executable: 'no$gba2x.exe',
        folder: 'no$gba',
        icon: 'nocashgba.png',
        extensions: ''
    },
    {
        name: 'No$gba',
        category: 'Nintendo DS (NDS), Game Boy Advance (GBA)',
        version: '2.8e',
        executable: 'no$gba.exe',
        folder: 'no$gba_',
        icon: 'nocashgba.png',
        extensions: '(dsi)(nds)(pme)(srl)(agb)(bin)(elf)(gba)(mb)'
    },
    {
        name: 'No$Mooz',
        category: 'Nintendo DS (NDS)',
        version: '1.0',
        executable: 'no$mooz.exe',
        folder: 'no$gba',
        icon: 'nocashgba.png',
        extensions: ''
    },
    {
        name: 'No$Zoomer',
        category: 'Nintendo DS (NDS), Game Boy Advance (GBA)',
        version: '2.3.0.2',
        executable: 'no$zoomer.exe',
        folder: 'no$gba',
        icon: 'nocashgba.png',
        extensions: '(dsi)(nds)(pme)(srl)(agb)(bin)(elf)(gba)(mb)'
    },
    {
        name: 'NOZ',
        category: 'Nintendo DS (NDS)',
        version: '2.3',
        executable: 'noz.exe',
        folder: 'no$gba',
        icon: 'nocashgba.png',
        extensions: ''
    },
    {
        name: 'VBA Link',
        category: 'Game Boy (GB), Game Boy Color (GBC), Game Boy Advance (GBA)',
        version: '1.8.0',
        executable: 'vbalink.exe',
        folder: 'vbalink',
        icon: 'vbam.png',
        extensions: '(gb)(gmb)(sgb)(cgb)(gbc)(agb)(bin)(elf)(gba)(mb)'
    },
    {
        name: 'VBA-M',
        category: 'Game Boy (GB), Game Boy Color (GBC), Game Boy Advance (GBA)',
        version: '2.0',
        executable: 'vbam.exe',
        folder: 'vbam',
        icon: 'vbam.png',
        extensions: '(gb)(gmb)(sgb)(cgb)(gbc)(agb)(bin)(elf)(gba)(mb)'
    }
];