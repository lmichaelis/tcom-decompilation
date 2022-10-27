instance DIA_CITIZEN06_RPS_EXIT(C_INFO) {
    NPC = 0xd618;
    NR = 999;
    CONDITION = DIA_CITIZEN06_RPS_EXIT_CONDITION;
    INFORMATION = DIA_CITIZEN06_RPS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CITIZEN06_RPS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CITIZEN06_RPS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CITIZEN06_RPS_GAME(C_INFO) {
    NPC = 0xd618;
    NR = 1;
    CONDITION = DIA_CITIZEN06_RPS_GAME_CONDITION;
    INFORMATION = DIA_CITIZEN06_RPS_GAME_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CITIZEN06_RPS_GAME_CONDITION() {
    return TRUE;
}

func void DIA_CITIZEN06_RPS_GAME_INFO() {
    AI_STOPLOOKAT(SELF);
    AI_PLAYANI(SELF, "T_RPS_START");
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    AI_WAIT(SELF, 0x3dcccccd);
    AI_FUNCTION(OTHER, 0x11ac6);
    AI_OUTPUT(SELF, OTHER, "Dia_Citizen06_RPS_Game_03_01");
    INFO_CLEARCHOICES(0x11ac2);
    INFO_ADDCHOICE(0x11ac2, "(Stone)", 0x11acb);
    INFO_ADDCHOICE(0x11ac2, "(Scissors)", 0x11acc);
    INFO_ADDCHOICE(0x11ac2, "(Paper)", 0x11acd);
}

func void DIA_CITIZEN06_RPS_MOVE() {
    AI_REMOVEWEAPON(OTHER);
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    B_GIVEPLAYERXP(XP_EVENT_CITIZEN_RPS);
    AI_PLAYANI(SELF, "T_RPS_ROCK");
    AI_WAIT(SELF, 0x3dcccccd);
    AI_FUNCTION(SELF, 0x11ac8);
    AI_PLAYANI(OTHER, "T_MARVIN_RPS_ROCK");
    AI_WAIT(OTHER, 0x3e4ccccd);
    AI_FUNCTION(OTHER, 0x11ac7);
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    AI_OUTPUT(SELF, OTHER, "Dia_Citizen06_RPS_Game_Rock_03_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_PLAYANI(SELF, "T_RPS_REMOVE");
    AI_WAIT(SELF, 0x3e4ccccd);
    AI_WAIT(OTHER, 0x3ecccccd);
    AI_FUNCTION(OTHER, 0x11ac9);
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    AI_OUTPUT(SELF, OTHER, "Dia_Citizen06_RPS_Game_Rock_03_02");
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    AI_PLAYANI(OTHER, "T_RPS_REMOVE");
    AI_WAIT(OTHER, 0x3e4ccccd);
    AI_WAIT(SELF, 0x3ecccccd);
    AI_FUNCTION(SELF, 0x11aca);
    AI_OUTPUT(SELF, OTHER, "Dia_Citizen06_RPS_Game_Rock_03_03");
    INFO_CLEARCHOICES(0x11ac2);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, TOT);
}

func void CITIZEN_RPS_CHANGEMDS_01() {
    MDL_APPLYOVERLAYMDS(VLK_11285_CITIZEN_RPS, "HumanS_RPSGame_Choice.mds");
}

func void CITIZEN_RPS_CHANGEMDS_02() {
    MDL_APPLYOVERLAYMDS(VLK_11285_CITIZEN_RPS, "HumanS_RPSGame_AfterChoice.mds");
    MDL_REMOVEOVERLAYMDS(VLK_11285_CITIZEN_RPS, "HumanS_RPSGame_Choice.mds");
}

func void CITIZEN_RPS_CHANGEMDS_03() {
    MDL_APPLYOVERLAYMDS(HERO, "HumanS_RPSGame_AfterChoice.mds");
}

func void CITIZEN_RPS_REMOVEMDS() {
    MDL_REMOVEOVERLAYMDS(VLK_11285_CITIZEN_RPS, "HumanS_RPSGame_AfterChoice.mds");
}

func void CITIZEN_RPS_REMOVEMDS_HERO() {
    MDL_REMOVEOVERLAYMDS(HERO, "HumanS_RPSGame_AfterChoice.mds");
}

func void DIA_CITIZEN06_RPS_GAME_ROCK() {
    DIA_CITIZEN06_RPS_MOVE();
}

func void DIA_CITIZEN06_RPS_GAME_SCISSORS() {
    DIA_CITIZEN06_RPS_MOVE();
}

func void DIA_CITIZEN06_RPS_GAME_PAPER() {
    DIA_CITIZEN06_RPS_MOVE();
}

