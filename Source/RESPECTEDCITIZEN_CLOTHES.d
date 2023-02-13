var int RESPECTEDCITIZEN_CLOTHES;
instance DIA_RESPECTEDCITIZEN_EXIT(C_INFO) {
    NPC = 53842;
    NR = 999;
    CONDITION = DIA_RESPECTEDCITIZEN_EXIT_CONDITION;
    INFORMATION = DIA_RESPECTEDCITIZEN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_RESPECTEDCITIZEN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_RESPECTEDCITIZEN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_RESPECTEDCITIZEN_EMPERORNEWCLOTHES(C_INFO) {
    NPC = 53842;
    NR = 1;
    CONDITION = DIA_RESPECTEDCITIZEN_EMPERORNEWCLOTHES_CONDITION;
    INFORMATION = DIA_RESPECTEDCITIZEN_EMPERORNEWCLOTHES_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_RESPECTEDCITIZEN_EMPERORNEWCLOTHES_CONDITION() {
    return TRUE;
}

func void DIA_RESPECTEDCITIZEN_EMPERORNEWCLOTHES_INFO() {
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_RespectedCitizen_EmperorNewClothes_03_01");
    INFO_CLEARCHOICES(72611);
    NPC_EXCHANGEROUTINE(SELF, TOT);
    INFO_ADDCHOICE(72611, "They look amazing!", 72614);
    INFO_ADDCHOICE(72611, "What robes? You're not wearing anything!", 72615);
}

func void DIA_RESPECTEDCITIZEN_NICEPANTIESBRO() {
    AI_OUTPUT(OTHER, SELF, "DIA_RespectedCitizen_NicePantiesBro_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_RespectedCitizen_NicePantiesBro_03_02");
    CREATEINVITEMS(SELF, 34203, EVENT_EMPERORNEWCLOTHES);
    B_GIVEINVITEMS(SELF, OTHER, 34203, EVENT_EMPERORNEWCLOTHES);
    RESPECTEDCITIZEN_CLOTHES = 1;
    B_GIVEPLAYERXP(XP_EVENT_EMPERORNEWCLOTHES);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_RESPECTEDCITIZEN_YOURASSISBARE() {
    AI_OUTPUT(OTHER, SELF, "DIA_RespectedCitizen_YourAssIsBare_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_RespectedCitizen_YourAssIsBare_03_02");
    RESPECTEDCITIZEN_CLOTHES = 2;
    B_GIVEPLAYERXP(XP_EVENT_EMPERORNEWCLOTHES);
    B_GIVEPLAYERXP(XP_SECRET_ENIGMATICWANDERER_WRONGWAY);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_RESPECTEDCITIZEN_AFTEREVENT(C_INFO) {
    NPC = 53842;
    NR = 5;
    CONDITION = DIA_RESPECTEDCITIZEN_AFTEREVENT_CONDITION;
    INFORMATION = DIA_RESPECTEDCITIZEN_AFTEREVENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_RESPECTEDCITIZEN_AFTEREVENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 72611)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RESPECTEDCITIZEN_AFTEREVENT_INFO() {
    if ((RESPECTEDCITIZEN_CLOTHES) == (1)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_RespectedCitizen_AfterEvent_03_01");
    };
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    B_SAY(SELF, OTHER, "$RUDE_GOODBYE");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}
