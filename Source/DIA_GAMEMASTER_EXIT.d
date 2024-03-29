instance DIA_GAMEMASTER_EXIT(C_INFO) {
    NPC = 52588;
    NR = 999;
    CONDITION = DIA_GAMEMASTER_EXIT_CONDITION;
    INFORMATION = DIA_GAMEMASTER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GAMEMASTER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GAMEMASTER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GAMEMASTER_WELCOME(C_INFO) {
    NPC = 52588;
    NR = 1;
    CONDITION = DIA_GAMEMASTER_WELCOME_CONDITION;
    INFORMATION = DIA_GAMEMASTER_WELCOME_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GAMEMASTER_WELCOME_CONDITION() {
    return TRUE;
}

func void DIA_GAMEMASTER_WELCOME_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_GameMaster_Welcome_03_01");
    AI_FUNCTION(SELF, 68056);
    AI_OUTPUT(SELF, OTHER, "DIA_GameMaster_Welcome_03_02");
    AI_FUNCTION(SELF, 68057);
    AI_OUTPUT(SELF, OTHER, "DIA_GameMaster_Welcome_03_03");
    INFO_CLEARCHOICES(68053);
    INFO_ADDCHOICE(68053, "I don't have time.", 68064);
    if ((NPC_HASITEMS(OTHER, 34203)) >= (EVENT_GAMEMASTER_TIER1)) {
        INFO_ADDCHOICE(68053, "Why not!", 68058);
    };
}

func void GAMEMASTER_ENABLECAMERA() {
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("EVENT_GAMEMASTER");
}

func void GAMEMASTER_DISABLECAMERA() {
    WLD_SENDUNTRIGGER("EVENT_GAMEMASTER");
    DIACAM_ENABLE();
}

func void DIA_GAMEMASTER_WELCOME_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_GameMaster_Welcome_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_GameMaster_Welcome_Yes_03_02");
    INFO_CLEARCHOICES(68053);
    if ((NPC_HASITEMS(OTHER, 34203)) >= (EVENT_GAMEMASTER_TIER3)) {
        INFO_ADDCHOICE(68053, "(Bet 100 GP)", 68061);
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (EVENT_GAMEMASTER_TIER2)) {
        INFO_ADDCHOICE(68053, "(Bet 50 GP)", 68062);
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (EVENT_GAMEMASTER_TIER1)) {
        INFO_ADDCHOICE(68053, "(Bet 10 GP)", 68063);
    };
}

var int EVENT_GAMEMASTER;
func void DIA_GAMEMASTER_WELCOME_LETSPLAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_GameMaster_Welcome_10_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_GameMaster_Welcome_10_03_02");
    if ((EVENT_GAMEMASTER) == (3)) {
    };
    if ((EVENT_GAMEMASTER) == (2)) {
    };
    if ((EVENT_GAMEMASTER) == (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 34203, EVENT_GAMEMASTER_TIER1);
    };
    INFO_CLEARCHOICES(68053);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, FLEE);
}

func void DIA_GAMEMASTER_WELCOME_YES_100() {
    EVENT_GAMEMASTER = 3;
    DIA_GAMEMASTER_WELCOME_LETSPLAY();
}

func void DIA_GAMEMASTER_WELCOME_YES_50() {
    EVENT_GAMEMASTER = 2;
    DIA_GAMEMASTER_WELCOME_LETSPLAY();
}

func void DIA_GAMEMASTER_WELCOME_YES_10() {
    EVENT_GAMEMASTER = 1;
    DIA_GAMEMASTER_WELCOME_LETSPLAY();
}

func void DIA_GAMEMASTER_WELCOME_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_GameMaster_Welcome_No_15_01");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_GameMaster_Welcome_No_03_02");
    INFO_CLEARCHOICES(68053);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "GOAWAY");
}

