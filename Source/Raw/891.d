func void SLEEPABIT_ARAXOSMINE_POOR_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        SELF.AIVAR[4] = TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_SLEEPABIT_ARAXOSMINE_POOR;
        AI_PROCESSINFOS(HER);
    };
}

instance SLEEPABIT_ARAXOSMINE_POOR_S1.HER(C_NPC)
func void PC_ARAXOSMINE_POOR_SLEEP(var int T) {
    AI_STOPPROCESSINFOS(SELF);
    PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
    SELF.AIVAR[4] = FALSE;
    T = (T) + (24);
    WLD_SETTIME(T, 0);
    PRINTSCREEN(PRINT_SLEEPOVER_BAD, -(1), -(1), FONT_SCREEN, 2);
    WLD_STOPEFFECT("DEMENTOR_FX");
    GOLDCOUNTER_NEEDTOTAKEBREAK = 0;
    if ((SQ119_NEEDTOREST) == (TRUE)) {
        SQ119_NEEDTOREST = FALSE;
    };
    PRINTGLOBALS(PD_ITEM_MOBSI);
    NPC_SENDPASSIVEPERC(HERO, PERC_ASSESSENTERROOM, $INSTANCE_HELP, HERO);
}

instance PC_ARAXOSMINE_POOR_NOSLEEP(C_INFO) {
    NPC = 0xc3ab;
    NR = 999;
    CONDITION = PC_ARAXOSMINE_POOR_NOSLEEP_CONDITION;
    INFORMATION = PC_ARAXOSMINE_POOR_NOSLEEP_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int PC_ARAXOSMINE_POOR_NOSLEEP_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SLEEPABIT_ARAXOSMINE_POOR)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_ARAXOSMINE_POOR_NOSLEEP_INFO() {
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[4] = FALSE;
    PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
}

instance PC_ARAXOSMINE_POOR_SLEEPTIME_MORNING(C_INFO) {
    NPC = 0xc3ab;
    CONDITION = PC_ARAXOSMINE_POOR_SLEEPTIME_MORNING_CONDITION;
    INFORMATION = PC_ARAXOSMINE_POOR_SLEEPTIME_MORNING_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_SLEEP_MORNING;
}

func int PC_ARAXOSMINE_POOR_SLEEPTIME_MORNING_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SLEEPABIT_ARAXOSMINE_POOR)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_ARAXOSMINE_POOR_SLEEPTIME_MORNING_INFO() {
    PC_ARAXOSMINE_POOR_SLEEP(8);
}

instance PC_ARAXOSMINE_POOR_SLEEPTIME_NOON(C_INFO) {
    NPC = 0xc3ab;
    CONDITION = PC_ARAXOSMINE_POOR_SLEEPTIME_NOON_CONDITION;
    INFORMATION = PC_ARAXOSMINE_POOR_SLEEPTIME_NOON_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_SLEEP_NOON;
}

func int PC_ARAXOSMINE_POOR_SLEEPTIME_NOON_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SLEEPABIT_ARAXOSMINE_POOR)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_ARAXOSMINE_POOR_SLEEPTIME_NOON_INFO() {
    PC_ARAXOSMINE_POOR_SLEEP(12);
}

instance PC_ARAXOSMINE_POOR_SLEEPTIME_EVENING(C_INFO) {
    NPC = 0xc3ab;
    CONDITION = PC_ARAXOSMINE_POOR_SLEEPTIME_EVENING_CONDITION;
    INFORMATION = PC_ARAXOSMINE_POOR_SLEEPTIME_EVENING_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_SLEEP_EVENING;
}

func int PC_ARAXOSMINE_POOR_SLEEPTIME_EVENING_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SLEEPABIT_ARAXOSMINE_POOR)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_ARAXOSMINE_POOR_SLEEPTIME_EVENING_INFO() {
    PC_ARAXOSMINE_POOR_SLEEP(20);
}

instance PC_ARAXOSMINE_POOR_SLEEPTIME_MIDNIGHT(C_INFO) {
    NPC = 0xc3ab;
    CONDITION = PC_ARAXOSMINE_POOR_SLEEPTIME_MIDNIGHT_CONDITION;
    INFORMATION = PC_ARAXOSMINE_POOR_SLEEPTIME_MIDNIGHT_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_SLEEP_MIDNIGHT;
}

func int PC_ARAXOSMINE_POOR_SLEEPTIME_MIDNIGHT_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SLEEPABIT_ARAXOSMINE_POOR)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_ARAXOSMINE_POOR_SLEEPTIME_MIDNIGHT_INFO() {
    PC_ARAXOSMINE_POOR_SLEEP(0);
}

