var int PICKLOCKBONUS;
func string RANDOMIZEPICKLOCKSTRING(var int LENGTH) {
    var string S;
    var int RND;
    var int LOOPSTART;
    var int INDEX;
    var int BUF;
    BUF = SB_NEW();
    INDEX = 0;
    LOOPSTART = MEM_STACKPOS.POSITION;
    if ((INDEX) < (LENGTH)) {
        RND = HLP_RANDOM(100);
        if ((RND) <= (50)) {
            SB("L");
        } else {
            SB("R");
        };
        INDEX += 1;
        MEM_STACKPOS.POSITION = LOOPSTART;
    };
    S = SB_TOSTRING();
    SB_DESTROY();
    return S;
}

func void RANDOMIZEPICKLOCKS_SUB(var int NODE) {
    var int LENGTH;
    var OCMOBLOCKABLE MOB;
    var ZCLISTSORT L;
    L = _^(NODE);
    if (L.DATA) {
        if (HLP_IS_OCMOBLOCKABLE(L.DATA)) {
            MOB = _^(L.DATA);
            LENGTH = STR_LEN(MOB.PICKLOCKSTR);
            if ((LENGTH) > (0)) {
                MOB.PICKLOCKSTR = RANDOMIZEPICKLOCKSTRING(LENGTH);
            };
        };
    };
}

func int GETPICKLOCKSTRLEN(var string ORIGINALPICKLOCKSTR) {
    var int SKILLLEVEL;
    var int PICKLOCKSTRLEN;
    PICKLOCKSTRLEN = STR_LEN(ORIGINALPICKLOCKSTR);
    SKILLLEVEL = NPC_GETTALENTSKILL(HERO, NPC_TALENT_PICKLOCK);
    if ((SKILLLEVEL) == (2)) {
        PICKLOCKSTRLEN -= 2;
    };
    if ((SKILLLEVEL) == (3)) {
        PICKLOCKSTRLEN -= 4;
    };
    if ((PICKLOCKBONUS) > (0)) {
        PICKLOCKSTRLEN -= PICKLOCKBONUS;
    };
    if ((PICKLOCKSTRLEN) < (0)) {
        PICKLOCKSTRLEN = 0;
    };
    return PICKLOCKSTRLEN;
}

func void HANDLE_RANDOMIZEPICKLOCKS() {
    if (MEM_WORLD.VOBLIST) {
        LIST_FORFS(MEM_WORLD.VOBLIST, 20609);
    };
}

func void HANDLE_CANOPEN() {
    var int PICKLOCKSTRLEN;
    var OCMOBLOCKABLE MOB;
    MOB = _^(ECX);
    if ((MOB.BITFIELD) & (OCMOBLOCKABLE_BITFIELD_LOCKED)) {
        if ((STR_LEN(MOB.PICKLOCKSTR)) > (0)) {
            PICKLOCKSTRLEN = GETPICKLOCKSTRLEN(MOB.PICKLOCKSTR);
            if ((PICKLOCKSTRLEN) == (0)) {
                PRINT(PRINT_PICKLOCK_AUTOMATIC);
                MOB.BITFIELD = (MOB.BITFIELD) & (~(OCMOBLOCKABLE_BITFIELD_LOCKED));
            };
        };
    };
}

func void HANDLE_SETPROPERPICKLOCKSTRLEN() {
    var int PICKLOCKSTRLEN;
    var OCMOBLOCKABLE MOB;
    MOB = _^(ESI);
    PICKLOCKSTRLEN = GETPICKLOCKSTRLEN(MOB.PICKLOCKSTR);
    ECX = PICKLOCKSTRLEN;
}

func void INIT_RANDOMIZEPICKLOCKS_GAMESTART() {
    HOOKENGINEF(7488752, 7, 20619);
    WRITENOP(7487202, 6);
    HOOKENGINEF(7487202, 6, 20622);
}

func void INIT_RANDOMIZEPICKLOCKS_ALWAYS() {
    FF_APPLYEXT(20618, 1, 1);
}

