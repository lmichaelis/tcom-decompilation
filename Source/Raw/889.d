var int HEROHOUSE_SPAWNDOGGO = 0;
func void SLEEPABIT_HEROHOUSE_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        SELF.AIVAR[4] = TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_SLEEPABIT_HEROHOUSE;
        AI_PROCESSINFOS(HER);
    };
}

instance SLEEPABIT_HEROHOUSE_S1.HER(C_NPC)
func void PC_HEROHOUSE_SLEEP(var int T) {
    AI_STOPPROCESSINFOS(SELF);
    PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
    SELF.AIVAR[4] = FALSE;
    T = (T) + (24);
    WLD_SETTIME(T, 0);
    PRINTSCREEN(PRINT_SLEEPOVER, -(1), -(1), FONT_SCREEN, 2);
    HERO.ATTRIBUTE[0] = HERO.ATTRIBUTE[1];
    HERO.ATTRIBUTE[2] = HERO.ATTRIBUTE[3];
    WLD_STOPEFFECT("DEMENTOR_FX");
    if ((HEROHOUSE_SPAWNDOGGO) == (FALSE)) {
        HEROHOUSE_SPAWNDOGGO = TRUE;
        WLD_INSERTNPC(0xd11f, "PARTM5_PATH_71");
        MDL_APPLYOVERLAYMDS(NONE_13336_DOGGO, "Wolf_Dialogue_HURT.mds");
    };
    if ((TAKEDOGGO) == (TRUE)) {
        RND_TRAP_M5_HA = HLP_RANDOM(RNG_CHANCE_VERYHIGH);
    };
    PRINTGLOBALS(PD_ITEM_MOBSI);
    NPC_SENDPASSIVEPERC(HERO, PERC_ASSESSENTERROOM, $INSTANCE_HELP, HERO);
}

instance PC_HEROHOUSE_NOSLEEP(C_INFO) {
    NPC = 0xc3ab;
    NR = 999;
    CONDITION = PC_HEROHOUSE_NOSLEEP_CONDITION;
    INFORMATION = PC_HEROHOUSE_NOSLEEP_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int PC_HEROHOUSE_NOSLEEP_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SLEEPABIT_HEROHOUSE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_HEROHOUSE_NOSLEEP_INFO() {
    AI_STOPPROCESSINFOS(SELF);
    WLD_STOPEFFECT("DEMENTOR_FX");
    SELF.AIVAR[4] = FALSE;
    PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
}

instance PC_HEROHOUSE_SLEEPTIME_MORNING(C_INFO) {
    NPC = 0xc3ab;
    CONDITION = PC_HEROHOUSE_SLEEPTIME_MORNING_CONDITION;
    INFORMATION = PC_HEROHOUSE_SLEEPTIME_MORNING_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_SLEEP_MORNING;
}

func int PC_HEROHOUSE_SLEEPTIME_MORNING_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SLEEPABIT_HEROHOUSE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_HEROHOUSE_SLEEPTIME_MORNING_INFO() {
    PC_HEROHOUSE_SLEEP(8);
}

instance PC_HEROHOUSE_SLEEPTIME_NOON(C_INFO) {
    NPC = 0xc3ab;
    CONDITION = PC_HEROHOUSE_SLEEPTIME_NOON_CONDITION;
    INFORMATION = PC_HEROHOUSE_SLEEPTIME_NOON_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_SLEEP_NOON;
}

func int PC_HEROHOUSE_SLEEPTIME_NOON_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SLEEPABIT_HEROHOUSE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_HEROHOUSE_SLEEPTIME_NOON_INFO() {
    PC_HEROHOUSE_SLEEP(12);
}

instance PC_HEROHOUSE_SLEEPTIME_EVENING(C_INFO) {
    NPC = 0xc3ab;
    CONDITION = PC_HEROHOUSE_SLEEPTIME_EVENING_CONDITION;
    INFORMATION = PC_HEROHOUSE_SLEEPTIME_EVENING_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_SLEEP_EVENING;
}

func int PC_HEROHOUSE_SLEEPTIME_EVENING_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SLEEPABIT_HEROHOUSE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_HEROHOUSE_SLEEPTIME_EVENING_INFO() {
    PC_HEROHOUSE_SLEEP(20);
}

instance PC_HEROHOUSE_SLEEPTIME_MIDNIGHT(C_INFO) {
    NPC = 0xc3ab;
    CONDITION = PC_HEROHOUSE_SLEEPTIME_MIDNIGHT_CONDITION;
    INFORMATION = PC_HEROHOUSE_SLEEPTIME_MIDNIGHT_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_SLEEP_MIDNIGHT;
}

func int PC_HEROHOUSE_SLEEPTIME_MIDNIGHT_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SLEEPABIT_HEROHOUSE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_HEROHOUSE_SLEEPTIME_MIDNIGHT_INFO() {
    PC_HEROHOUSE_SLEEP(0);
}
