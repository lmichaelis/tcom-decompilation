instance DIA_13313_BANDIT_EXIT(C_INFO) {
    NPC = 0xe2d2;
    NR = 999;
    CONDITION = DIA_13313_BANDIT_EXIT_CONDITION;
    INFORMATION = DIA_13313_BANDIT_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13313_BANDIT_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13313_BANDIT_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13313_BANDIT_GIVEMEGOLD(C_INFO) {
    NPC = 0xe2d2;
    NR = 1;
    CONDITION = DIA_13313_BANDIT_GIVEMEGOLD_CONDITION;
    INFORMATION = DIA_13313_BANDIT_GIVEMEGOLD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13313_BANDIT_GIVEMEGOLD_CONDITION() {
    return TRUE;
}

func void DIA_13313_BANDIT_GIVEMEGOLD_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_13313_Bandit_GiveMeGold_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_13313_Bandit_GiveMeGold_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_13313_Bandit_GiveMeGold_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_13313_Bandit_GiveMeGold_03_04");
    INFO_CLEARCHOICES(0x150f5);
    INFO_ADDCHOICE(0x150f5, "I'm not giving you anything!", 0x150f8);
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (TRAP18_BANDIT_GOLD)) {
        INFO_ADDCHOICE(0x150f5, "Here's the gold.", 0x150f9);
    };
}

func void DIA_13313_BANDIT_OWIE() {
    AI_OUTPUT(OTHER, SELF, "DIA_13313_Bandit_Owie_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13313_Bandit_Owie_03_02");
    AI_STOPPROCESSINFOS(SELF);
    SELF.GUILD = GIL_BDT;
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

func void DIA_13313_BANDIT_GIVEGOLD() {
    TRAP18_GIVEGOLD = TRUE;
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, TRAP18_BANDIT_GOLD);
    AI_OUTPUT(OTHER, SELF, "DIA_13313_Bandit_GiveGOLD_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13313_Bandit_GiveGOLD_03_02");
    NPC_EXCHANGEROUTINE(SELF, "RUN");
    AI_STOPPROCESSINFOS(SELF);
}

