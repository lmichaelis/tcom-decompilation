instance DIA_FAKEHERO_EXIT(C_INFO) {
    NPC = 56002;
    NR = 999;
    CONDITION = DIA_FAKEHERO_EXIT_CONDITION;
    INFORMATION = DIA_FAKEHERO_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FAKEHERO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_FAKEHERO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FAKEHERO_DEJAVU(C_INFO) {
    NPC = 56002;
    NR = 1;
    CONDITION = DIA_FAKEHERO_DEJAVU_CONDITION;
    INFORMATION = DIA_FAKEHERO_DEJAVU_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FAKEHERO_DEJAVU_CONDITION() {
    return TRUE;
}

func void DIA_FAKEHERO_DEJAVU_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_FakeHero_DejaVu_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_FakeHero_DejaVu_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_FakeHero_DejaVu_03_03");
    AI_PLAYANI(HERO, T_SEARCH);
    NONE_13343_FAKEHERO.FLAGS = 0;
    AI_OUTPUT(OTHER, SELF, "DIA_FakeHero_DejaVu_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_FakeHero_DejaVu_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_FakeHero_DejaVu_15_06");
    AI_OUTPUT(OTHER, SELF, "DIA_FakeHero_DejaVu_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_FakeHero_DejaVu_03_08");
    AI_OUTPUT(OTHER, SELF, "DIA_FakeHero_DejaVu_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_FakeHero_DejaVu_03_10");
    NPC_EXCHANGEROUTINE(NONE_13343_FAKEHERO, TOT);
    B_GIVEPLAYERXP(XP_EVENT_FAKEHERO);
    AI_STOPPROCESSINFOS(SELF);
}

