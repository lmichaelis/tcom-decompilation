func void SQ103_KILLMAIWENANDDARYLL() {
    PRINTD("Maiwen i Darryl rip");
    SQ103_MAIWENDEAD = 1;
    B_REMOVENPC(0xc8c6);
    B_REMOVENPC(0xc8bc);
    FF_APPLYONCEEXTGT(0xf395, 0, -(1));
    FF_APPLYONCEEXTGT(0xf39d, 0, -(1));
}

func void SQ103_KILLRUPERT() {
    PRINTD("Rupert nie czuje si? dobrze, Mr.Stark");
    B_REMOVENPC(0xc95d);
    B_REMOVENPC(0xc8c6);
    B_REMOVENPC(0xc8bc);
    B_STARTOTHERROUTINE(MIL_708_DICKON, START);
    FF_APPLYONCEEXTGT(0xf399, 0, -(1));
    FF_APPLYONCEEXTGT(0xf39d, 0, -(1));
    FF_APPLYONCEEXTGT(0xf395, 0, -(1));
}

func void SQ103_PREPARERUPERT() {
    SQ103_RUPERTREADY = 1;
    B_STARTOTHERROUTINE(NONE_100007_RUPERT, "SQ103_OUTSIDEPUB");
    NPC_REFRESH(NONE_100007_RUPERT);
    TELEPORTNPCTOWP(0xc95d, NONE_100007_RUPERT.WP);
    PRINTD("Rupert ready");
}

func void SQ103_RUPERTSEARCHWPN() {
    B_STARTOTHERROUTINE(BAU_11026_FARMER, "SQ103_VILLAGE");
    NPC_REFRESH(BAU_11026_FARMER);
    B_STARTOTHERROUTINE(BAU_11027_FARMER, "SQ103_VILLAGE");
    NPC_REFRESH(BAU_11027_FARMER);
    B_STARTOTHERROUTINE(BAU_711_THORSTEN, "SQ103_VILLAGE");
    NPC_REFRESH(BAU_711_THORSTEN);
    NPC_EXCHANGEROUTINE(SELF, "SQ103_VILLAGE");
}

func void SQ103_RUPERTSEARCHHELP() {
    B_STARTOTHERROUTINE(MIL_708_DICKON, "SQ103_VILLAGE");
    NPC_REFRESH(MIL_708_DICKON);
    NPC_EXCHANGEROUTINE(SELF, "SQ103_VILLAGEV2");
}

func void SQ103_READYTOGOFINDMAIWEN() {
    B_STARTOTHERROUTINE(BAU_11026_FARMER, START);
    NPC_REFRESH(BAU_11026_FARMER);
    B_STARTOTHERROUTINE(BAU_11027_FARMER, START);
    NPC_REFRESH(BAU_11027_FARMER);
    B_STARTOTHERROUTINE(BAU_711_THORSTEN, START);
    NPC_REFRESH(BAU_711_THORSTEN);
    NPC_EXCHANGEROUTINE(SELF, "SQ103_OUTSIDEPUB");
}

func void SQ103_MAIWENFIGHT() {
    SND_PLAY("LUR_Warn_A1");
    WLD_INSERTNPC(0xc5a4, "PART_13_FABIO_CAVE_01");
    B_REMOVENPC(0xc8bc);
    if ((SQ103_MAIWENDEAD) == (0)) {
        FF_APPLYONCEEXTGT(0xf395, 0, -(1));
    };
}

func void SQ103_DARRYLCORPSE_APPLY() {
    if ((SQ103_DARRYLCORPSE_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ103_DARRYLCORPSE_APPLY");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("MOVER_SQ118_DARRYL");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("SQ118_DARRYL", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("MOVER_SQ118_DARRYL");
        SQ103_DARRYLCORPSE_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko?czy?em - SQ103_DARRYLCORPSE_APPLY");
        CHANGEVOBCOLLISION("SQ118_DARRYL", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf395);
        SQ103_DARRYLCORPSE_COUNT = 0;
    };
}

var int SQ103_DARRYLCORPSE_APPLY.SQ103_DARRYLCORPSE_COUNT = 0;
instance SQ103_DARRYLCORPSE_APPLY.MOVER1(ZCMOVER)
var int SQ103_DARRYLCORPSE_APPLY.MOVPTR1 = 0;
func void SQ103_RUPERTCORPSE_APPLY() {
    if ((SQ103_RUPERTCORPSE_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ103_RUPERTCORPSE_APPLY");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("MOVER_SQ118_RUPERT");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("SQ118_RUPERT", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("MOVER_SQ118_RUPERT");
        SQ103_RUPERTCORPSE_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko?czy?em - SQ103_RUPERTCORPSE_APPLY");
        CHANGEVOBCOLLISION("SQ118_RUPERT", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf399);
        SQ103_RUPERTCORPSE_COUNT = 0;
    };
}

var int SQ103_RUPERTCORPSE_APPLY.SQ103_RUPERTCORPSE_COUNT = 0;
instance SQ103_RUPERTCORPSE_APPLY.MOVER1(ZCMOVER)
var int SQ103_RUPERTCORPSE_APPLY.MOVPTR1 = 0;
func void SQ103_MAIWENCORPSE_APPLY() {
    if ((SQ103_MAIWENCORPSE_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ103_MAIWENCORPSE_APPLY");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("MOVER_SQ118_MAIWEN");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("SQ118_MAIWEN", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("MOVER_SQ118_MAIWEN");
        SQ103_MAIWENCORPSE_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko?czy?em - SQ103_MAIWENCORPSE_APPLY");
        CHANGEVOBCOLLISION("SQ118_MAIWEN", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf39d);
        SQ103_MAIWENCORPSE_COUNT = 0;
    };
}

var int SQ103_MAIWENCORPSE_APPLY.SQ103_MAIWENCORPSE_COUNT = 0;
instance SQ103_MAIWENCORPSE_APPLY.MOVER1(ZCMOVER)
var int SQ103_MAIWENCORPSE_APPLY.MOVPTR1 = 0;
