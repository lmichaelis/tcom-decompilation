instance DIA_13310_BANDIT_EXIT(C_INFO) {
    NPC = 0xda25;
    NR = 999;
    CONDITION = DIA_13310_BANDIT_EXIT_CONDITION;
    INFORMATION = DIA_13310_BANDIT_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13310_BANDIT_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13310_BANDIT_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13310_BANDIT_GIVEAWAYGOLD(C_INFO) {
    NPC = 0xda25;
    NR = 1;
    CONDITION = DIA_13310_BANDIT_GIVEAWAYGOLD_CONDITION;
    INFORMATION = DIA_13310_BANDIT_GIVEAWAYGOLD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13310_BANDIT_GIVEAWAYGOLD_CONDITION() {
    return TRUE;
}

func void DIA_13310_BANDIT_GIVEAWAYGOLD_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_13310_Bandit_GiveAwayGold_05_04");
    AI_OUTPUT(SELF, OTHER, "DIA_13310_Bandit_GiveAwayGold_05_05");
    INFO_CLEARCHOICES(0x12f12);
    INFO_ADDCHOICE(0x12f12, "I'm not giving you anything!", 0x12f15);
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (EVENT_PART4BANDITSSCAM)) {
        INFO_ADDCHOICE(0x12f12, "Here's the gold.", 0x12f16);
    };
}

func void DIA_13310_BANDIT_NOGOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_13310_Bandit_NoGold_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_13310_Bandit_NoGold_03_02");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x12f18);
}

func void DIA_13310_BANDIT_GIVEGOLD() {
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, EVENT_PART4BANDITSSCAM);
    AI_OUTPUT(OTHER, SELF, "DIA_13310_Bandit_GiveGold_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_13310_Bandit_GiveGold_03_02");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x12f17);
}

func void BANDIT_PART4EVENT_GOAWAY() {
    NPC_EXCHANGEROUTINE(BDT_13309_BANDIT, TOT);
    B_STARTOTHERROUTINE(BDT_13310_BANDIT, TOT);
}

func void BANDIT_PART4EVENT_ATTACK() {
    BDT_13309_BANDIT.AIVAR[61] = FALSE;
    BDT_13310_BANDIT.AIVAR[61] = FALSE;
    B_IMMEDIATEATTACKPLAYER(BDT_13309_BANDIT, AR_KILL);
    B_IMMEDIATEATTACKPLAYER(BDT_13310_BANDIT, AR_KILL);
}

