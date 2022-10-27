var int _LEGO_LEVELCHANGEISEXECUTED = 0;
var int _LEGO_LEVELCHANGECOUNTER = 0;
func void BW_SAVEGAME() {
}

func void BR_SAVEGAME() {
}

func void _LEGO_CHANGELEVELHOOKBEGIN() {
    _LEGO_LEVELCHANGEISEXECUTED = TRUE;
}

func void _LEGO_CHANGELEVELHOOKEND() {
    _LEGO_LEVELCHANGEISEXECUTED = FALSE;
    _LEGO_LEVELCHANGECOUNTER = 0;
}

func int _LEGO_ISLEVELCHANGE() {
    return _LEGO_LEVELCHANGEISEXECUTED;
}

func string GETPARMVALUE(var string STR) {
    CALL_ZSTRINGPTRPARAM(STR);
    CALL_RETVALISZSTRING();
    CALL__THISCALL(MEM_READINT(ZOPTIONS_POINTER_ADDRESS), ZCOPTION__PARMVALUE);
    return CALL_RETVALASZSTRING();
}

func string _BIN_GETSAVEFILEPATH(var int SLOT) {
    ZOPT = MEM_READINT(ZOPTIONS_POINTER_ADDRESS);
    PATH = MEM_READSTRINGARRAY((ZOPT) + (ZCOPTIONS_DIR_STRING_OFFSET), 2);
    PATH = STR_SUBSTR(PATH, 1, (STR_LEN(PATH)) - (2));
    if (SLOT) {
        PATH = CONCATSTRINGS(PATH, "/savegame");
        PATH = CONCATSTRINGS(PATH, INTTOSTRING(SLOT));
    };
    PATH = CONCATSTRINGS(PATH, "/quicksave");
    PATH = CONCATSTRINGS(PATH, "/SCRPTSAVE.SAV");
    return PATH;
}

var int _BIN_GETSAVEFILEPATH.ZOPT = 0;
var string _BIN_GETSAVEFILEPATH.PATH = "";
func int _BR_GETSELECTEDSLOT() {
    MAN = _^(MEM_READINT(MEMINT_GAMEMAN_POINTER_ADDRESS));
    SLOT = MEM_READINT((MAN.MENU_LOAD_SAVEGAME) + (MENU_SAVEGAME_SLOT_OFFSET));
    return SLOT;
}

instance _BR_GETSELECTEDSLOT.MAN(CGAMEMANAGER)
var int _BR_GETSELECTEDSLOT.SLOT = 0;
func void _BR_SETSELECTEDSLOT() {
    SLOT = MEM_READINT((ESP) + (4));
    MAN = _^(MEM_READINT(MEMINT_GAMEMAN_POINTER_ADDRESS));
    MEM_WRITEINT((MAN.MENU_LOAD_SAVEGAME) + (MENU_SAVEGAME_SLOT_OFFSET), SLOT);
}

var int _BR_SETSELECTEDSLOT.SLOT = 0;
instance _BR_SETSELECTEDSLOT.MAN(CGAMEMANAGER)
func void _BW_SAVEGAME() {
    EXT = MEM_READINT((EBP) + (OCSAVEGAMEMANAGER__SETANDWRITESAVEGAME_BP_OFFSET));
    if (BW_NEWFILE(_BIN_GETSAVEFILEPATH(EXT))) {
        if ((_LEGO_FLAGS) & (LEGO_PERMMEM)) {
            _PM_ARCHIVE();
        };
        BW_SAVEGAME();
        BW_CLOSE();
    };
}

var int _BW_SAVEGAME.EXT = 0;
func void _BR_LOADGAME() {
    SLOT = _BR_GETSELECTEDSLOT();
    if ((SLOT) == (-(1))) {
        SLOT = 0;
    };
    if (BR_OPENFILE(_BIN_GETSAVEFILEPATH(SLOT))) {
        if ((_LEGO_FLAGS) & (LEGO_PERMMEM)) {
            _PM_UNARCHIVE();
        };
        BR_SAVEGAME();
        BR_CLOSE();
    };
    if ((_LEGO_FLAGS) & (LEGO_PERMMEM)) {
        _PM_RESET();
        HANDLESPOINTER = _HT_CREATE();
        HANDLESINSTANCE = _HT_CREATE();
        HANDLESWRAPPED = MEM_ARRAYCREATE();
        _PM_CREATEFOREACHTABLE();
    };
}

var int _BR_LOADGAME.SLOT = 0;