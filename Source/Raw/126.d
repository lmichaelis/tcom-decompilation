class CUTSCENE {
	var int ONSTART;
};

func void CUTSCENE_START(var int CUTSCENE) {
    PRINTD(CS2("Start cutscenki: ", _PM_INSTNAME(CUTSCENE)));
    CUTSCENEPTR = CREATE(CUTSCENE);
    C = MEM_PTRTOINST(CUTSCENEPTR);
    MEM_CALLBYID(C.ONSTART);
}

var int CUTSCENE_START.CUTSCENEPTR = 0;
instance CUTSCENE_START.C(CUTSCENE)
func void KILLSUMMONEDNPCS(var int NODE) {
    L = _^(NODE);
    if (L.DATA) {
        NPC = _^(L.DATA);
        if (((NPC.BITFIELD[0]) & (OCNPC_BITFIELD0_ISSUMMONED)) == (OCNPC_BITFIELD0_ISSUMMONED)) {
            NPC.ATTRIBUTE[0] = 0;
        };
    };
}

instance KILLSUMMONEDNPCS.L(ZCLISTSORT)
instance KILLSUMMONEDNPCS.NPC(OCNPC)
var int CURRENTTRIGGEREDCAMERAPTR = 0;
var int ISINCAMERA = 0;
var int ISINFINALBOARDS = 0;
func void ZCCSCAMERA__ONTRIGGER_HOOK() {
    if ((((CURRENTLEVEL) != (ARCHOLOS_VOLFZACKE_ZEN)) && ((CURRENTLEVEL) != (ARCHOLOS_ENDGAME_ZEN))) && ((RESERVED_VAR_INT_13) != (TRUE))) {
        LIST_FORFS(MEM_WORLD.VOBLIST_NPCS, 0x553e);
        if (NPC_HASREADIEDWEAPON(HERO)) {
            AI_REMOVEWEAPON(HERO);
        };
        if ((NPC_GETACTIVESPELL(HERO)) != (-(1))) {
            AI_UNREADYSPELL(HERO);
        };
    };
    ISINCAMERA = TRUE;
    ENABLELOADSAVEGAME(FALSE);
    CURRENTTRIGGEREDCAMERAPTR = EAX;
}

func void ZCCSCAMERA__ONUNTRIGGER_HOOK() {
    if ((EAX) == (CURRENTTRIGGEREDCAMERAPTR)) {
        ISINCAMERA = FALSE;
        ENABLELOADSAVEGAME(TRUE);
        CURRENTTRIGGEREDCAMERAPTR = 0;
    };
}

func void ZCVIEW__DIALOGMESSAGECXY_HOOK() {
    if (ISINFINALBOARDS) {
        MEM_WRITEINT(MEM_READINT((ESP) + (16)), RGBA(255, 255, 0, 255));
        MEM_WRITESTRING(MEM_READINT((ESP) + (4)), "");
    };
    if (ISINCAMERA) {
        if ((ECX) == (MEM_GAME.ARRAY_VIEW[5])) {
            ECX = MEM_GAME.ARRAY_VIEW[1];
            NPCNAME = MEM_READSTRING(MEM_READINT((ESP) + (4)));
            if ((STR_LEN(NPCNAME)) == (0)) {
                COLOR = RGBA(255, 255, 255, 255);
            } else {
                COLOR = RGBA(255, 255, 0, 255);
            } else {
                MEM_WRITEINT(MEM_READINT((ESP) + (16)), COLOR);
            };
        };
    };
}

const int ZCVIEW__DIALOGMESSAGECXY_HOOK.CGAME_VIEW_CONVERSATION = 1;
const int ZCVIEW__DIALOGMESSAGECXY_HOOK.CGAME_VIEW_NOISE = 5;
var string ZCVIEW__DIALOGMESSAGECXY_HOOK.NPCNAME = "";
var int ZCVIEW__DIALOGMESSAGECXY_HOOK.COLOR = 0;
func void OCGAME__UPDATEPLAYERSTATUS_REPLACECHECKINGGLOBALCUTSCENE() {
    EAX = (ISINCAMERA) || (ISINFINALBOARDS);
}

func void OCAIHUMAN__MOVING_REPLACECHECKINGGLOBALCUTSCENE() {
    EAX = (ISINCAMERA) || (ISINFINALBOARDS);
}

func void CGAMEMANAGER__MENUENABLED_REPLACECHECKINGGLOBALCUTSCENE() {
    EAX = (ISINCAMERA) || (ISINFINALBOARDS);
}

func void OCNPC__STOPRUNNINGOU_REPLACEKILLOUSOUND() {
    G_BDONTKILLOUSOUND = MEM_READINT(0xab2698);
    EAX = ((G_BDONTKILLOUSOUND) || (ISINCAMERA)) || (ISINFINALBOARDS);
}

var int OCNPC__STOPRUNNINGOU_REPLACEKILLOUSOUND.G_BDONTKILLOUSOUND = 0;
func void CUTSCENESYSTEM_INIT() {
    HOOKENGINEF(0x7a9240, 6, 0x5547);
    HOOKENGINEF(0x4c3270, 7, 0x5545);
    HOOKENGINEF(0x4c3ac0, 7, 0x5546);
    MEMORYPROTECTIONOVERRIDE(0x6c31d6, 5);
    WRITENOP(0x6c31d6, 5);
    HOOKENGINEF(0x6c31d6, 5, 0x554c);
    MEMORYPROTECTIONOVERRIDE(0x42abe7, 5);
    WRITENOP(0x42abe7, 5);
    HOOKENGINEF(0x42abe7, 5, 0x554e);
    MEMORYPROTECTIONOVERRIDE(0x69b9f1, 5);
    WRITENOP(0x69b9f1, 5);
    HOOKENGINEF(0x69b9f1, 5, 0x554d);
}

