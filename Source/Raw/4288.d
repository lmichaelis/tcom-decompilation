instance DIA_13655_FARMER_EXIT(C_INFO) {
    NPC = 0xe19b;
    NR = 999;
    CONDITION = DIA_13655_FARMER_EXIT_CONDITION;
    INFORMATION = DIA_13655_FARMER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13655_FARMER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13655_FARMER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13655_FARMER_PUMPKIN(C_INFO) {
    NPC = 0xe19b;
    NR = 1;
    CONDITION = DIA_13655_FARMER_PUMPKIN_CONDITION;
    INFORMATION = DIA_13655_FARMER_PUMPKIN_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13655_FARMER_PUMPKIN_CONDITION() {
    if (((NPC_GETDISTTOWP(BAU_13656_FARMER, RNG_NS40_WAYPOINT)) <= (500)) && ((NPC_GETDISTTOWP(BAU_13655_FARMER, "VILLAGE_PATH_207")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13655_FARMER_PUMPKIN_INFO() {
    TRIA_INVITE(BAU_13656_FARMER);
    TRIA_START();
    AI_OUTPUT(SELF, OTHER, "DIA_13655_Farmer_Pumpkin_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_13655_Farmer_Pumpkin_15_02");
    TRIA_WAIT();
    TRIA_NEXT(BAU_13656_FARMER);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_13655_Farmer_Pumpkin_03_03");
    TRIA_WAIT();
    TRIA_NEXT(BAU_13655_FARMER);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_13655_Farmer_Pumpkin_03_04");
    TRIA_FINISH();
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
    INFO_CLEARCHOICES(0x15625);
    INFO_ADDCHOICE(0x15625, "I don't have time for such foolishness.", 0x1562a);
    INFO_ADDCHOICE(0x15625, "It's a fruit.", 0x15628);
    INFO_ADDCHOICE(0x15625, "It's a vegetable.", 0x15629);
    NPC_EXCHANGEROUTINE(BAU_13655_FARMER, TOT);
    NPC_EXCHANGEROUTINE(BAU_13656_FARMER, TOT);
}

func void DIA_13655_FARMER_PUMPKIN_FRUIT() {
    TRIA_INVITE(BAU_13656_FARMER);
    TRIA_START();
    AI_OUTPUT(OTHER, SELF, "DIA_13655_Farmer_Pumpkin_Fruit_15_01");
    TRIA_WAIT();
    TRIA_NEXT(BAU_13656_FARMER);
    AI_OUTPUT(SELF, OTHER, "DIA_13655_Farmer_Pumpkin_Fruit_03_02");
    CREATEINVITEMS(SELF, 0x8e19, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8e19, 1);
    B_GIVEPLAYERXP(XP_EVENT_PUMPKIN);
    TRIA_FINISH();
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_13655_FARMER_PUMPKIN_VEGETABLE() {
    AI_OUTPUT(OTHER, SELF, "DIA_13655_Farmer_Pumpkin_Vegetable_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13655_Farmer_Pumpkin_Vegetable_03_02");
    CREATEINVITEMS(SELF, 0x8e19, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8e19, 1);
    B_GIVEPLAYERXP(XP_EVENT_PUMPKIN);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_13655_FARMER_PUMPKIN_BULLSHIT() {
    AI_OUTPUT(OTHER, SELF, "DIA_13655_Farmer_Pumpkin_Bullshit_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13655_Farmer_Pumpkin_Bullshit_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13655_FARMER_PUMPKIN_WHY(C_INFO) {
    NPC = 0xe19b;
    NR = 1;
    CONDITION = DIA_13655_FARMER_PUMPKIN_WHY_CONDITION;
    INFORMATION = DIA_13655_FARMER_PUMPKIN_WHY_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Why do you ask such silly things?";
}

func int DIA_13655_FARMER_PUMPKIN_WHY_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15625)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13655_FARMER_PUMPKIN_WHY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_13655_Farmer_Pumpkin_Why_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13655_Farmer_Pumpkin_Why_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

