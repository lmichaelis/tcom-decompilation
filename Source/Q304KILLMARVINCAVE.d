func void Q304KILLMARVINCAVE() {
    Q304_CAVEFIGHTAFTERPAYING = TRUE;
    NPC_EXCHANGEROUTINE(NONE_6341_BODYGUARD, "SMALLTALK");
    NPC_EXCHANGEROUTINE(NONE_6337_BODYGUARD, "SMALLTALK");
    if (C_BODYSTATECONTAINS(BAU_6287_GONZALO, BS_SIT)) {
        AI_STANDUP(BAU_6287_GONZALO);
    };
    NPC_SETTRUEGUILD(BAU_6287_GONZALO, GIL_NONE);
    BAU_6287_GONZALO.GUILD = GIL_NONE;
    BAU_6287_GONZALO.FLAGS = 0;
    BAU_6287_GONZALO.ATTRIBUTE[0] = 10;
    BAU_6287_GONZALO.ATTRIBUTE[1] = 10;
    BAU_6287_GONZALO.AIVAR[52] = TRUE;
    B_KILLNPC(58026);
    B_IMMEDIATEATTACKPLAYER(NONE_6336_BODYGUARD, AR_KILL);
    B_IMMEDIATEATTACKPLAYER(NONE_6337_BODYGUARD, AR_KILL);
    B_IMMEDIATEATTACKPLAYER(NONE_6338_BODYGUARD, AR_KILL);
    B_ATTACK(NONE_6339_BODYGUARD, BAU_6287_GONZALO, AR_KILL, 1);
    B_IMMEDIATEATTACKPLAYER(NONE_6340_SMUGGLER, AR_KILL);
    B_ATTACK(NONE_6341_BODYGUARD, BAU_6287_GONZALO, AR_KILL, 1);
    NONE_6336_BODYGUARD.AIVAR[52] = TRUE;
    NONE_6337_BODYGUARD.AIVAR[52] = TRUE;
    NONE_6338_BODYGUARD.AIVAR[52] = TRUE;
    NONE_6339_BODYGUARD.AIVAR[52] = TRUE;
    NONE_6340_SMUGGLER.AIVAR[52] = TRUE;
    NONE_6341_BODYGUARD.AIVAR[52] = TRUE;
    NONE_6336_BODYGUARD.GUILD = GIL_BDT;
    NONE_6337_BODYGUARD.GUILD = GIL_BDT;
    NONE_6338_BODYGUARD.GUILD = GIL_BDT;
    NONE_6339_BODYGUARD.GUILD = GIL_BDT;
    NONE_6340_SMUGGLER.GUILD = GIL_BDT;
    NONE_6341_BODYGUARD.GUILD = GIL_BDT;
    NPC_SETTRUEGUILD(NONE_6341_BODYGUARD, GIL_BDT);
    NONE_6336_BODYGUARD.FLAGS = 0;
    NPC_SETTRUEGUILD(NONE_6340_SMUGGLER, GIL_BDT);
    NONE_6337_BODYGUARD.FLAGS = 0;
    NPC_SETTRUEGUILD(NONE_6339_BODYGUARD, GIL_BDT);
    NONE_6338_BODYGUARD.FLAGS = 0;
    NPC_SETTRUEGUILD(NONE_6338_BODYGUARD, GIL_BDT);
    NONE_6339_BODYGUARD.FLAGS = 0;
    NPC_SETTRUEGUILD(NONE_6337_BODYGUARD, GIL_BDT);
    NONE_6340_SMUGGLER.FLAGS = 0;
    NPC_SETTRUEGUILD(NONE_6336_BODYGUARD, GIL_BDT);
    NONE_6341_BODYGUARD.FLAGS = 0;
    NPC_SETTRUEGUILD(HERO, HERO.GUILD);
}

func void Q304_MAKETHEMBANDIT() {
    B_ATTACK(NONE_6336_BODYGUARD, PIR_1306_RODRIGO, AR_KILL, 1);
    B_ATTACK(NONE_6339_BODYGUARD, PIR_1308_SIMON, AR_KILL, 1);
    NONE_6336_BODYGUARD.AIVAR[52] = TRUE;
    NONE_6337_BODYGUARD.AIVAR[52] = TRUE;
    NONE_6338_BODYGUARD.AIVAR[52] = TRUE;
    NONE_6339_BODYGUARD.AIVAR[52] = TRUE;
    NONE_6340_SMUGGLER.AIVAR[52] = TRUE;
    NONE_6341_BODYGUARD.AIVAR[52] = TRUE;
    NONE_6336_BODYGUARD.GUILD = GIL_BDT;
    NONE_6337_BODYGUARD.GUILD = GIL_BDT;
    NONE_6338_BODYGUARD.GUILD = GIL_BDT;
    NONE_6339_BODYGUARD.GUILD = GIL_BDT;
    NONE_6340_SMUGGLER.GUILD = GIL_FRIENDLY_HUMAN;
    NONE_6341_BODYGUARD.GUILD = GIL_BDT;
    NPC_SETTRUEGUILD(NONE_6341_BODYGUARD, GIL_BDT);
    NONE_6336_BODYGUARD.FLAGS = 0;
    NPC_SETTRUEGUILD(NONE_6340_SMUGGLER, GIL_FRIENDLY_HUMAN);
    NONE_6337_BODYGUARD.FLAGS = 0;
    NPC_SETTRUEGUILD(NONE_6339_BODYGUARD, GIL_BDT);
    NONE_6338_BODYGUARD.FLAGS = 0;
    NPC_SETTRUEGUILD(NONE_6338_BODYGUARD, GIL_BDT);
    NONE_6339_BODYGUARD.FLAGS = 0;
    NPC_SETTRUEGUILD(NONE_6337_BODYGUARD, GIL_BDT);
    NONE_6340_SMUGGLER.FLAGS = 0;
    NPC_SETTRUEGUILD(NONE_6336_BODYGUARD, GIL_BDT);
    NONE_6341_BODYGUARD.FLAGS = 0;
}

var int Q304_TELEPORTBANDIT;
func void Q304TELEPORTBANDITS() {
    WLD_SENDTRIGGER("KM_SWAMPCAVE_FIREPLACE");
    FF_APPLYONCEEXTGT(63271, 0, -(1));
    B_STARTOTHERROUTINE(NONE_6340_SMUGGLER, TOT);
    B_REMOVEALLINVENTORY(BAU_6287_GONZALO);
    B_STARTOTHERROUTINE(BAU_6287_GONZALO, "START");
    TELEPORTNPCTOWP(58026, BAU_6287_GONZALO.WP);
    B_REMOVENPC(58026);
    if (NPC_ISDEAD(NONE_6336_BODYGUARD)) {
        B_STARTOTHERROUTINE(NONE_6336_BODYGUARD, TOT);
    };
    if ((Q304_TELEPORTBANDIT) == (FALSE)) {
        B_STARTOTHERROUTINE(NONE_6336_BODYGUARD, "PLUNDER");
        Q304_TELEPORTBANDIT = TRUE;
    };
    B_STARTOTHERROUTINE(NONE_6336_BODYGUARD, TOT);
    if (NPC_ISDEAD(NONE_6337_BODYGUARD)) {
        B_STARTOTHERROUTINE(NONE_6337_BODYGUARD, TOT);
    };
    if ((Q304_TELEPORTBANDIT) == (FALSE)) {
        B_STARTOTHERROUTINE(NONE_6337_BODYGUARD, "PLUNDER");
        Q304_TELEPORTBANDIT = TRUE;
    };
    B_STARTOTHERROUTINE(NONE_6337_BODYGUARD, TOT);
    if (NPC_ISDEAD(NONE_6338_BODYGUARD)) {
        B_STARTOTHERROUTINE(NONE_6338_BODYGUARD, TOT);
    };
    if ((Q304_TELEPORTBANDIT) == (FALSE)) {
        B_STARTOTHERROUTINE(NONE_6338_BODYGUARD, "PLUNDER");
        Q304_TELEPORTBANDIT = TRUE;
    };
    B_STARTOTHERROUTINE(NONE_6338_BODYGUARD, TOT);
    if (NPC_ISDEAD(NONE_6339_BODYGUARD)) {
        B_STARTOTHERROUTINE(NONE_6339_BODYGUARD, TOT);
    };
    if ((Q304_TELEPORTBANDIT) == (FALSE)) {
        B_STARTOTHERROUTINE(NONE_6339_BODYGUARD, "PLUNDER");
        Q304_TELEPORTBANDIT = TRUE;
    };
    B_STARTOTHERROUTINE(NONE_6339_BODYGUARD, TOT);
    if (NPC_ISDEAD(NONE_6341_BODYGUARD)) {
        B_STARTOTHERROUTINE(NONE_6341_BODYGUARD, TOT);
    };
    if ((Q304_TELEPORTBANDIT) == (FALSE)) {
        B_STARTOTHERROUTINE(NONE_6341_BODYGUARD, "PLUNDER");
        Q304_TELEPORTBANDIT = TRUE;
    };
    B_STARTOTHERROUTINE(NONE_6341_BODYGUARD, TOT);
}

func void BC_SWAMPCAVE_GONZALOCORPSE() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int CHANGEGONZALOCORPSECOLLISION;
    if ((CHANGEGONZALOCORPSECOLLISION) == (0)) {
        PRINTD("Rozpoczynam - BC_SWAMPCAVE_GONZALOCORPSE");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KM_SWAMPCAVE_GONZALOCORPSE_MOVER");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("KM_CORPSE_GONZALO", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KM_SWAMPCAVE_GONZALOCORPSE_MOVER");
        CHANGEGONZALOCORPSECOLLISION = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - BC_SWAMPCAVE_GONZALOCORPSE");
        CHANGEVOBCOLLISION("KM_CORPSE_GONZALO", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(63271);
        CHANGEGONZALOCORPSECOLLISION = 0;
    };
}

func void Q304_TELEPORTBANDIT_V2() {
    B_STARTOTHERROUTINE(NONE_6336_BODYGUARD, TOT);
    B_STARTOTHERROUTINE(NONE_6337_BODYGUARD, TOT);
    B_STARTOTHERROUTINE(NONE_6338_BODYGUARD, TOT);
    B_STARTOTHERROUTINE(NONE_6339_BODYGUARD, TOT);
    B_STARTOTHERROUTINE(NONE_6340_SMUGGLER, TOT);
    B_STARTOTHERROUTINE(NONE_6341_BODYGUARD, TOT);
}

func void Q304_FINISHQUEST_GOODENDING() {
    LOG_SETSTATUS(_@(MIS_Q304), TOPIC_Q304, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_Q304_GOODENDING);
    B_REMOVENPC(58026);
    if ((Q301_SPOTCORPSELOGENTRY) != (3)) {
        FF_APPLYONCEEXTGT(64190, 0, -(1));
        Q301_SPOTCORPSELOGENTRY = 3;
    };
}

func void Q304_FINISHQUEST_BADENDING() {
    LOG_SETSTATUS(_@(MIS_Q304), TOPIC_Q304, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_Q304_BADENDING);
    B_REMOVENPC(58026);
    if ((Q301_SPOTCORPSELOGENTRY) != (3)) {
        FF_APPLYONCEEXTGT(64190, 0, -(1));
        Q301_SPOTCORPSELOGENTRY = 3;
    };
}

func void QA304_STOPTIME_TELEPORT() {
    var int QA304_STOPTIME_LOGENTRY;
    if ((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_54")) <= (5000)) {
        TELEPORTNPCTOWP(1819, "SLUMS_PATH_53");
    };
    TELEPORTNPCTOWP(1819, "SLUMS_PATH_210");
    if ((QA304_STOPTIME_LOGENTRY) == (FALSE)) {
        QA304_STOPTIME_LOGENTRY = TRUE;
        B_LOGENTRY(TOPIC_QA304, LOG_QA304_DONTGOAWAY);
    };
    NPC_CLEARAIQUEUE(HERO);
    QA304_STOPTIME = 1;
    FADESCREENFROMBLACK(1);
}

func void Q304_ISGONZALOREALLYDEAD() {
    if ((!(NPC_ISDEAD(BAU_6287_GONZALO))) && ((Q304_GONZALOSAFED) == (FALSE))) {
        B_KILLNPC(58026);
        PRINTD("Dobij kurwe");
    };
}

