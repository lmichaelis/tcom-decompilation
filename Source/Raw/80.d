const string LEGO_VERSION = "LeGo 2.7.0";
const int LEGO_PRINTS = 1;
const int LEGO_HOOKENGINE = 2;
const int LEGO_AI_FUNCTION = 4;
const int LEGO_TRIALOGE = 8;
const int LEGO_DIALOGGESTURES = 16;
const int LEGO_FRAMEFUNCTIONS = 32;
const int LEGO_CURSOR = 64;
const int LEGO_FOCUSNAMES = 128;
const int LEGO_RANDOM = 256;
const int LEGO_BLOODSPLATS = 512;
const int LEGO_SAVES = 1024;
const int LEGO_PERMMEM = 2048;
const int LEGO_ANIM8 = 4096;
const int LEGO_VIEW = 8192;
const int LEGO_INTERFACE = 16384;
const int LEGO_BARS = 32768;
const int LEGO_BUTTONS = 65536;
const int LEGO_TIMER = 131072;
const int LEGO_EVENTHANDLER = 262144;
const int LEGO_GAMESTATE = 524288;
const int LEGO_SPRITE = 1048576;
const int LEGO_NAMES = 2097152;
const int LEGO_CONSOLECOMMANDS = 4194304;
const int LEGO_BUFFS = 8388608;
const int LEGO_RENDER = 16777216;
const int LEGO_DRAW3D = 33554432;
const int LEGO_ALL = 67108863;
const int _LEGO_INIT = 0;
var int _LEGO_LOADED = 0;
func void LEGO_INITFLAGS(var int F) {
    if ((F) & (LEGO_BLOODSPLATS)) {
        F = ((((F) | (LEGO_FRAMEFUNCTIONS)) | (LEGO_HOOKENGINE)) | (LEGO_RANDOM)) | (LEGO_ANIM8);
    };
    if ((F) & (LEGO_BUFFS)) {
        F = (((F) | (LEGO_FRAMEFUNCTIONS)) | (LEGO_PERMMEM)) | (LEGO_VIEW);
    };
    if ((F) & (LEGO_GAMESTATE)) {
        F = ((F) | (LEGO_EVENTHANDLER)) | (LEGO_SAVES);
    };
    if ((F) & (LEGO_CURSOR)) {
        F = ((F) | (LEGO_INTERFACE)) | (LEGO_VIEW);
    };
    if ((F) & (LEGO_PRINTS)) {
        F = (((F) | (LEGO_AI_FUNCTION)) | (LEGO_ANIM8)) | (LEGO_INTERFACE);
    };
    if ((F) & (LEGO_ANIM8)) {
        F = (((F) | (LEGO_PERMMEM)) | (LEGO_FRAMEFUNCTIONS)) | (LEGO_TIMER);
    };
    if ((F) & (LEGO_BUTTONS)) {
        F = (((F) | (LEGO_PERMMEM)) | (LEGO_VIEW)) | (LEGO_FRAMEFUNCTIONS);
    };
    if ((F) & (LEGO_CONSOLECOMMANDS)) {
        F = (F) | (LEGO_HOOKENGINE);
    };
    if ((F) & (LEGO_FRAMEFUNCTIONS)) {
        F = (((F) | (LEGO_PERMMEM)) | (LEGO_HOOKENGINE)) | (LEGO_TIMER);
    };
    if ((F) & (LEGO_DRAW3D)) {
        F = ((F) | (LEGO_PERMMEM)) | (LEGO_HOOKENGINE);
    };
    if ((F) & (LEGO_BARS)) {
        F = ((F) | (LEGO_PERMMEM)) | (LEGO_VIEW);
    };
    if ((F) & (LEGO_EVENTHANDLER)) {
        F = (F) | (LEGO_PERMMEM);
    };
    if ((F) & (LEGO_VIEW)) {
        F = (F) | (LEGO_PERMMEM);
    };
    if ((F) & (LEGO_INTERFACE)) {
        F = ((F) | (LEGO_PERMMEM)) | (LEGO_AI_FUNCTION);
    };
    if ((F) & (LEGO_TRIALOGE)) {
        F = (F) | (LEGO_AI_FUNCTION);
    };
    if ((F) & (LEGO_AI_FUNCTION)) {
        F = (F) | (LEGO_HOOKENGINE);
    };
    if ((F) & (LEGO_SPRITE)) {
        F = (F) | (LEGO_PERMMEM);
    };
    if ((F) & (LEGO_NAMES)) {
        F = (F) | (LEGO_PERMMEM);
    };
    if ((F) & (LEGO_PERMMEM)) {
        F = (F) | (LEGO_SAVES);
    };
    if ((F) & (LEGO_SAVES)) {
        F = (F) | (LEGO_HOOKENGINE);
    };
    _LEGO_FLAGS = F;
}

func string LEGO_FLAGSHR(var int FLAGS) {
    SYMBONSET = (MEM_GETSYMBOLINDEX("LEGO_VERSION")) + (1);
    if ((!(SYMBONSET)) || (!((FLAGS) & (((LEGO_DRAW3D) * (2)) - (1))))) {
        return "";
    };
    RET = "";
    REPEAT(I, 32);
    if ((FLAGS) & ((1) << (I))) {
        NAME = MEM_READSTRING(MEM_GETSYMBOLBYINDEX((SYMBONSET) + (I)));
        NAME = STR_SUBSTR(NAME, 5, (STR_LEN(NAME)) - (5));
        RET = CONCATSTRINGS(CONCATSTRINGS(RET, NAME), " ");
    };
    END;
    return STR_PREFIX(RET, (STR_LEN(RET)) - (1));
}

var int LEGO_FLAGSHR.SYMBONSET = 0;
var string LEGO_FLAGSHR.RET = "";
var int LEGO_FLAGSHR.I = 0;
var string LEGO_FLAGSHR.NAME = "";
func void LEGO_INITALWAYS(var int F) {
    if (!(_LEGO_LOADED)) {
        if ((F) & (LEGO_PERMMEM)) {
            _PM_RESET();
            HANDLESPOINTER = _HT_CREATE();
            HANDLESINSTANCE = _HT_CREATE();
            HANDLESWRAPPED = MEM_ARRAYCREATE();
            _PM_CREATEFOREACHTABLE();
        };
    };
    if ((F) & (LEGO_TIMER)) {
        _TIMER_INIT();
        _TIMERGT_INIT();
    };
    if ((_LEGO_LOADED) && (!(_LEGO_ISLEVELCHANGE()))) {
        if ((F) & (LEGO_SAVES)) {
            _BR_LOADGAME();
        };
    };
    if ((F) & (LEGO_ANIM8)) {
        FF_APPLYONCEGT(0x2a36);
    };
    if ((F) & (LEGO_BUFFS)) {
        if (!(HLP_ISVALIDHANDLE(BUFFLIST_HERO))) {
            BUFFLIST_INIT();
        };
    };
}

func void LEGO_INITGAMESTART(var int F) {
    if ((F) & (LEGO_AI_FUNCTION)) {
        HOOKENGINEF(OCNPC__EV_PLAYANI, 5, 0x2b2f);
    };
    if ((F) & (LEGO_FRAMEFUNCTIONS)) {
        HOOKENGINEF(OCGAME__RENDER, 7, 0x2aa2);
    };
    if ((F) & (LEGO_CONSOLECOMMANDS)) {
        HOOKENGINEF(ZCCONSOLEOUTPUTOVERWRITEADDR, 9, 0x2ae2);
        CC_REGISTER(0x2aeb, "LeGo", "Show information about LeGo");
    };
    if ((F) & (LEGO_SAVES)) {
        HOOKENGINEF(OCGAME__CHANGELEVEL, 7, 0x2eb7);
        HOOKENGINEF(OCGAME__CHANGELEVELEND, 7, 0x2eb8);
        HOOKENGINEF(OCSAVEGAMEMANAGER__SETANDWRITESAVEGAME, 5, 0x2ec6);
        HOOKENGINEF(CGAMEMANAGER__READ_SAVEGAME, 7, 0x2ec3);
    };
    if ((F) & (LEGO_SPRITE)) {
        HOOKENGINEF(ZRND_D3D__ENDFRAME, 6, 0x2fc5);
    };
    if ((F) & (LEGO_RENDER)) {
        _RENDER_INIT();
    };
    if ((F) & (LEGO_INTERFACE)) {
        PRINT_FIXPS();
    };
    if ((F) & (LEGO_BARS)) {
        HOOKENGINEF(OCGAME__UPDATESCREENRESOLUTION_END, 6, 0x2e79);
    };
}

func void LEGO_INIT(var int FLAGS) {
    if (!(MEM_CHECKVERSION(1, 2, 0))) {
        MEM_ERROR("LeGo ben�tigt mindestens Ikarus 1.2!");
        return;
    };
    if ((_LEGO_LOADED) == (-(1))) {
        _LEGO_LOADED = 1;
        return;
    };
    MEM_INFO(CONCATSTRINGS(LEGO_VERSION, " wird initialisiert."));
    LEGO_INITFLAGS(FLAGS);
    MEM_INFO(CONCATSTRINGS("Flags: ", LEGO_FLAGSHR(_LEGO_FLAGS)));
    if (!(_LEGO_INIT)) {
        LEGO_INITGAMESTART(_LEGO_FLAGS);
    };
    LEGO_INITALWAYS(_LEGO_FLAGS);
    _LEGO_INIT = 1;
    if ((((GOTHIC_BASE_VERSION) == (1)) && (!(_LEGO_LOADED))) && (!(HLP_ISVALIDNPC(HERO)))) {
        _LEGO_LOADED = -(1);
    };
    _LEGO_LOADED = 1;
    MEM_INFO(CONCATSTRINGS(LEGO_VERSION, " wurde erfolgreich initialisiert."));
}

