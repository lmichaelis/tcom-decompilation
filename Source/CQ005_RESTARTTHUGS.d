func void CQ005_RESTARTTHUGS() {
    PRINTD("Zbiry zrestartowa�y si�");
    AI_REMOVEWEAPON(NONE_6255_THUG);
    AI_REMOVEWEAPON(NONE_6256_THUG);
    AI_REMOVEWEAPON(NONE_6257_THUG);
    AI_REMOVEWEAPON(NONE_6258_THUG);
    NPC_SETTRUEGUILD(NONE_6258_THUG, GIL_NONE);
    NONE_6255_THUG.GUILD = GIL_NONE;
    NPC_SETTRUEGUILD(NONE_6257_THUG, GIL_NONE);
    NONE_6256_THUG.GUILD = GIL_NONE;
    NPC_SETTRUEGUILD(NONE_6256_THUG, GIL_NONE);
    NONE_6257_THUG.GUILD = GIL_NONE;
    NPC_SETTRUEGUILD(NONE_6255_THUG, GIL_NONE);
    NONE_6258_THUG.GUILD = GIL_NONE;
    NONE_6255_THUG.FLAGS = 2;
    NONE_6256_THUG.FLAGS = 2;
    NONE_6257_THUG.FLAGS = 2;
    NONE_6258_THUG.FLAGS = 2;
    NPC_SETATTITUDE(NONE_6255_THUG, ATT_NEUTRAL);
    NPC_SETTEMPATTITUDE(NONE_6255_THUG, ATT_NEUTRAL);
    NONE_6255_THUG.AIVAR[1] = CRIME_NONE;
    NONE_6255_THUG.AIVAR[0] = FIGHT_NONE;
    NPC_SETATTITUDE(NONE_6256_THUG, ATT_NEUTRAL);
    NPC_SETTEMPATTITUDE(NONE_6256_THUG, ATT_NEUTRAL);
    NONE_6256_THUG.AIVAR[1] = CRIME_NONE;
    NONE_6256_THUG.AIVAR[0] = FIGHT_NONE;
    NPC_SETATTITUDE(NONE_6257_THUG, ATT_NEUTRAL);
    NPC_SETTEMPATTITUDE(NONE_6257_THUG, ATT_NEUTRAL);
    NONE_6257_THUG.AIVAR[1] = CRIME_NONE;
    NONE_6257_THUG.AIVAR[0] = FIGHT_NONE;
    NPC_SETATTITUDE(NONE_6258_THUG, ATT_NEUTRAL);
    NPC_SETTEMPATTITUDE(NONE_6258_THUG, ATT_NEUTRAL);
    NONE_6258_THUG.AIVAR[1] = CRIME_NONE;
    NONE_6258_THUG.AIVAR[0] = FIGHT_NONE;
    NPC_REFRESH(NONE_6255_THUG);
    NPC_REFRESH(NONE_6256_THUG);
    NPC_REFRESH(NONE_6257_THUG);
    NPC_REFRESH(NONE_6258_THUG);
}

func void CQ005_RESTARTPALADIN() {
    PRINTD("Zbiry nie �yj�!");
    NPC_CLEARAIQUEUE(PAL_101_SILVESTR);
    AI_REMOVEWEAPON(PAL_101_SILVESTR);
    NPC_SETATTITUDE(PAL_101_SILVESTR, ATT_NEUTRAL);
    NPC_SETTEMPATTITUDE(PAL_101_SILVESTR, ATT_NEUTRAL);
    PAL_101_SILVESTR.AIVAR[1] = CRIME_NONE;
    PAL_101_SILVESTR.AIVAR[0] = FIGHT_NONE;
    PAL_101_SILVESTR.FLAGS = NPC_FLAG_IMPORTANT;
}

func void CQ005_KILLPALADIN() {
    FF_APPLYONCEEXT(62690, 75, 4);
    HERO.AIVAR[4] = TRUE;
}

func void CQ005_KILLPALADIN_STARTCUTSCENE() {
    var int CQ005_KILLPALADIN_COUNT;
    CQ005_KILLPALADIN_COUNT = (CQ005_KILLPALADIN_COUNT) + (1);
    if ((CQ005_KILLPALADIN_COUNT) == (4)) {
        CUTSCENE_START(92305);
    };
}

func void CQ005_KILLPALADIN_FINISHCUTSCENE() {
    var int CQ005_KILLPALADIN_FINISHCOUNT;
    CQ005_KILLPALADIN_FINISHCOUNT = (CQ005_KILLPALADIN_FINISHCOUNT) + (1);
    if ((CQ005_KILLPALADIN_FINISHCOUNT) == (4)) {
        HERO.AIVAR[4] = FALSE;
        WLD_SENDUNTRIGGER("KM_DEATHOFSILVESTR");
        CQ005_FIGHTWITHTHUGS = 5;
    };
}

func void CQ005_PROTECTPALADIN() {
    CQ005_FIGHTWITHTHUGS = 2;
    NPC_CLEARAIQUEUE(PAL_101_SILVESTR);
    NPC_CLEARAIQUEUE(NONE_6255_THUG);
    NPC_CLEARAIQUEUE(NONE_6256_THUG);
    NPC_CLEARAIQUEUE(NONE_6257_THUG);
    B_IMMEDIATEATTACKPLAYER(NONE_6256_THUG, AR_KILL);
    B_IMMEDIATEATTACKPLAYER(NONE_6257_THUG, AR_KILL);
    NPC_SETTRUEGUILD(NONE_6258_THUG, GIL_BDT);
    NONE_6255_THUG.GUILD = GIL_BDT;
    NPC_SETTRUEGUILD(NONE_6257_THUG, GIL_BDT);
    NONE_6256_THUG.GUILD = GIL_BDT;
    NPC_SETTRUEGUILD(NONE_6256_THUG, GIL_BDT);
    NONE_6257_THUG.GUILD = GIL_BDT;
    NPC_SETTRUEGUILD(NONE_6255_THUG, GIL_BDT);
    NONE_6258_THUG.GUILD = GIL_BDT;
    NONE_6255_THUG.FLAGS = 0;
    NONE_6256_THUG.FLAGS = 0;
    NONE_6257_THUG.FLAGS = 0;
    NONE_6258_THUG.FLAGS = 0;
    PAL_101_SILVESTR.FLAGS = 2;
    HERO.AIVAR[4] = FALSE;
    CQ005_FIGHTWITHTHUGS_DAY = WLD_GETDAY();
}

func void CQ005_TELEPORTTHUGS() {
    if (HLP_ISVALIDNPC(NONE_6255_THUG)) {
        B_STARTOTHERROUTINE(NONE_6255_THUG, TOT);
        NPC_REFRESH(NONE_6255_THUG);
        TELEPORTNPCTOWP(55590, NONE_6255_THUG.WP);
    };
    if (HLP_ISVALIDNPC(NONE_6256_THUG)) {
        B_STARTOTHERROUTINE(NONE_6256_THUG, TOT);
        NPC_REFRESH(NONE_6256_THUG);
        TELEPORTNPCTOWP(55594, NONE_6256_THUG.WP);
    };
    if (HLP_ISVALIDNPC(NONE_6257_THUG)) {
        B_STARTOTHERROUTINE(NONE_6257_THUG, TOT);
        NPC_REFRESH(NONE_6257_THUG);
        TELEPORTNPCTOWP(55598, NONE_6257_THUG.WP);
    };
    if (HLP_ISVALIDNPC(NONE_6258_THUG)) {
        B_STARTOTHERROUTINE(NONE_6258_THUG, TOT);
        NPC_REFRESH(NONE_6258_THUG);
        TELEPORTNPCTOWP(55602, NONE_6258_THUG.WP);
    };
    PRINTD("Zbiry w Tocie!");
}

func void CQ005_GIVEREWARD() {
    if ((CQ005_TENGRALREWARD) == (1)) {
        CREATEINVITEMS(KDF_9004_TENGRAL, 37165, 1);
        B_GIVEINVITEMS(KDF_9004_TENGRAL, HERO, 37165, 1);
        CREATEINVITEMS(KDF_9004_TENGRAL, 34203, CQ005_REWARD_ALWAYS);
    };
    CREATEINVITEMS(KDF_9004_TENGRAL, 34203, (CQ005_REWARD) + (CQ005_REWARD_ALWAYS));
    B_GIVEINVITEMS(KDF_9004_TENGRAL, HERO, 34203, (CQ005_REWARD) + (CQ005_REWARD_ALWAYS));
    CQ005_TENGRAL_REFERENCEEXCHANGE = 1;
    if ((CQ005_TENGRAL_BONUSREWARD) == (TRUE)) {
        CREATEINVITEMS(KDF_9004_TENGRAL, 34686, 5);
        B_GIVEINVITEMS(KDF_9004_TENGRAL, HERO, 34686, 5);
        CREATEINVITEMS(KDF_9004_TENGRAL, 34691, 4);
        B_GIVEINVITEMS(KDF_9004_TENGRAL, HERO, 34691, 4);
    };
}

var int CQ005_REMOVEMOLERAT;
var int CQ005_REMOVEBLOODFLY;
func void CQ005_REMOVEMONSTERS() {
    if (HLP_ISVALIDNPC(MOLERAT_CQ005_01)) {
        if ((NPC_ISDEAD(MOLERAT_CQ005_01)) == (FALSE)) {
            B_REMOVENPC(50673);
            CQ005_REMOVEMOLERAT = (CQ005_REMOVEMOLERAT) + (1);
        };
    };
    if (HLP_ISVALIDNPC(MOLERAT_CQ005_02)) {
        if ((NPC_ISDEAD(MOLERAT_CQ005_02)) == (FALSE)) {
            B_REMOVENPC(50674);
            CQ005_REMOVEMOLERAT = (CQ005_REMOVEMOLERAT) + (1);
        };
    };
    if (HLP_ISVALIDNPC(MOLERAT_CQ005_03)) {
        if ((NPC_ISDEAD(MOLERAT_CQ005_03)) == (FALSE)) {
            B_REMOVENPC(50675);
            CQ005_REMOVEMOLERAT = (CQ005_REMOVEMOLERAT) + (1);
        };
    };
    if (HLP_ISVALIDNPC(BLOODFLY_CQ005_01)) {
        if ((NPC_ISDEAD(BLOODFLY_CQ005_01)) == (FALSE)) {
            B_REMOVENPC(50348);
            CQ005_REMOVEBLOODFLY = (CQ005_REMOVEBLOODFLY) + (1);
        };
    };
    if (HLP_ISVALIDNPC(BLOODFLY_CQ005_02)) {
        if ((NPC_ISDEAD(BLOODFLY_CQ005_02)) == (FALSE)) {
            B_REMOVENPC(50349);
            CQ005_REMOVEBLOODFLY = (CQ005_REMOVEBLOODFLY) + (1);
        };
    };
    if (HLP_ISVALIDNPC(BLOODFLY_CQ005_03)) {
        if ((NPC_ISDEAD(BLOODFLY_CQ005_03)) == (FALSE)) {
            B_REMOVENPC(50350);
            CQ005_REMOVEBLOODFLY = (CQ005_REMOVEBLOODFLY) + (1);
        };
    };
}

func void CQ005_BRINGBACKMONSTERS() {
    if ((CQ005_REMOVEBLOODFLY) >= (1)) {
        WLD_INSERTNPC(50336, "PART1_MOB_32");
    };
    if ((CQ005_REMOVEBLOODFLY) >= (2)) {
        WLD_INSERTNPC(50336, "PART1_MOB_33");
    };
    if ((CQ005_REMOVEBLOODFLY) == (3)) {
        WLD_INSERTNPC(50336, "PART1_MOB_34");
    };
    if ((CQ005_REMOVEMOLERAT) >= (1)) {
        WLD_INSERTNPC(50628, "PART2_MOB_29");
    };
    if ((CQ005_REMOVEMOLERAT) >= (2)) {
        WLD_INSERTNPC(50628, "PART2_MOB_30");
    };
    if ((CQ005_REMOVEMOLERAT) == (3)) {
        WLD_INSERTNPC(50628, "PART2_MOB_31");
    };
}

func void CQ005_FINISHQUEST() {
    LOG_SETSTATUS(_@(MIS_CQ005), TOPIC_CQ005, LOG_SUCCESS);
    RESTOREROUTINE_RODERICH();
    CQ005_BRINGBACKMONSTERS();
}
