func void SQ202_HARRYCHECKTIMER() {
    HARRYCHECKTIMER = (HARRYCHECKTIMER) + (1);
    PRINTD("�ebski Harry mo�e cie przeszuka�");
    PRINTD(INTTOSTRING(HARRYCHECKTIMER));
    if ((HARRYCHECKTIMER) == (18)) {
        SQ202_HARRYCHECK = FALSE;
        HARRYCHECKTIMER = 0;
        PRINTD("�ebski Harry nie mo�e cie przeszuka�");
    };
}

var int SQ202_HARRYCHECKTIMER.HARRYCHECKTIMER = 0;
func void SQ202_STONEFOLLOWPLAYER() {
    B_STARTOTHERROUTINE(BAU_712_STONE, "SQ202_FOLLOW");
    NPC_REFRESH(BAU_712_STONE);
}

func void SQ202_FINISH_CHANGERTN() {
    NPC_EXCHANGEROUTINE(SELF, START);
    B_STARTOTHERROUTINE(MIL_707_HARRY, START);
    B_STARTOTHERROUTINE(BAU_11012_FARMER, START);
}

func void ALBYN_SQ202_STOCKS_FADESCREEN() {
    CUTSCENE_START(0x16ad3);
}

func void SQ202_CUTSCENE_APPLY() {
    SQ202_CUTSCENE_COUNT = (SQ202_CUTSCENE_COUNT) + (1);
    if ((SQ202_CUTSCENE_COUNT) == (4)) {
        WLD_SENDUNTRIGGER("KM_STOCKS_01");
        WLD_SENDUNTRIGGER("KM_STOCKS_02");
        WLD_SENDUNTRIGGER("KM_STOCKS_03");
        AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
        B_STARTOTHERROUTINE(NONE_11048_HENKER, START);
        B_STARTOTHERROUTINE(BAU_11028_FARMER, START);
        B_STARTOTHERROUTINE(BAU_11035_FARMER, START);
        B_STARTOTHERROUTINE(BAU_11015_FARMER, START);
        B_STARTOTHERROUTINE(BAU_11032_FARMER, START);
        B_STARTOTHERROUTINE(BAU_11019_FARMER, START);
        B_STARTOTHERROUTINE(BAU_724_PAULUS, START);
        NPC_REFRESH(NONE_11048_HENKER);
        NPC_REFRESH(BAU_11028_FARMER);
        NPC_REFRESH(BAU_11035_FARMER);
        NPC_REFRESH(BAU_11015_FARMER);
        NPC_REFRESH(BAU_11032_FARMER);
        NPC_REFRESH(BAU_11019_FARMER);
        NPC_REFRESH(BAU_724_PAULUS);
        if ((SQ202_HARRYBUSTED) == (TRUE)) {
            AI_RESETFACEANI(MIL_707_HARRY);
            B_STARTOTHERROUTINE(MIL_707_HARRY, START);
            NPC_REFRESH(MIL_707_HARRY);
        };
        B_PASSTIME(4);
        if ((HERO.ATTRIBUTE[0]) > (12)) {
            HERO.ATTRIBUTE[0] = (HERO.ATTRIBUTE[0]) / (4);
        };
        HERO.AIVAR[4] = FALSE;
        FADESCREENFROMBLACK(1);
    };
}

var int SQ202_CUTSCENE_APPLY.SQ202_CUTSCENE_COUNT = 0;
func void SQ202_EXCHANGEGOODS() {
    if ((NPC_HASITEMS(HERO, 0x9105)) >= (1)) {
        CREATEINVITEM(HERO, 0x9106);
    };
    if ((NPC_HASITEMS(HERO, 0x9107)) >= (1)) {
        CREATEINVITEM(HERO, 0x9108);
    };
    if ((NPC_HASITEMS(HERO, 0x9109)) >= (1)) {
        CREATEINVITEM(HERO, 0x910a);
    };
    WLD_REMOVEITEM(ITMIS_SQ202_HAMMERS_01);
}

func void SQ202_SPAWNBANDITS() {
    WLD_INSERTNPC(0xddcb, "PART9_PETRAMAN_02");
    WLD_INSERTNPC(0xddcd, "PART9_PETRAMAN_01");
}
