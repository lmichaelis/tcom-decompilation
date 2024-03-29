instance DIA_SMUGGLER_ARCHOLOS_EXIT(C_INFO) {
    NPC = 58778;
    NR = 999;
    CONDITION = DIA_SMUGGLER_ARCHOLOS_EXIT_CONDITION;
    INFORMATION = DIA_SMUGGLER_ARCHOLOS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SMUGGLER_ARCHOLOS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SMUGGLER_ARCHOLOS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SMUGGLER_ARCHOLOS_Q305_HELP(C_INFO) {
    NPC = 58778;
    NR = 1;
    CONDITION = DIA_SMUGGLER_ARCHOLOS_Q305_HELP_CONDITION;
    INFORMATION = DIA_SMUGGLER_ARCHOLOS_Q305_HELP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SMUGGLER_ARCHOLOS_Q305_HELP_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q305)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void SMUGGLER_KILLHIMSELF() {
    B_MAGICHURTNPC(PIR_1320_SMUGGLER_ARCHOLOS, PIR_1320_SMUGGLER_ARCHOLOS, 9999999);
    HERO.AIVAR[4] = FALSE;
}

func void DIA_SMUGGLER_ARCHOLOS_Q305_HELP_INFO() {
    SELF.FLAGS = 0;
    AI_STARTFACEANI(SELF, "S_SAD", 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_Archolos_Q305_Help_03_01");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_Archolos_Q305_Help_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_Archolos_Q305_Help_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_Archolos_Q305_Help_03_04");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(84684);
    if (C_GOTINGRENDIENTS_ANYHEALTHPOTION(HERO)) {
        INFO_ADDCHOICE(84684, "(Give healing potion)", 84688);
    };
    INFO_ADDCHOICE(84684, "What should I do?", 84689);
}

func void DIA_SMUGGLER_ARCHOLOS_Q305_HELP_HEAL() {
    B_GIVEANYPOTION_USEIT();
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_Archolos_Q305_Help_Heal_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_Archolos_Q305_Help_Heal_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_Archolos_Q305_Help_Heal_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_Archolos_Q305_Help_Heal_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_Archolos_Q305_Help_Heal_03_05");
    AI_LOGENTRY(TOPIC_Q305, LOG_Q305_WOUNDEDSMUGGLER_V1);
    AI_FUNCTION(SELF, 84686);
    AI_WAITTILLEND(OTHER, SELF);
    AI_STOPPROCESSINFOS(OTHER);
}

func void DIA_SMUGGLER_ARCHOLOS_Q305_HELP_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_Archolos_Q305_Help_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_Archolos_Q305_Help_What_03_02");
    AI_LOGENTRY(TOPIC_Q305, LOG_Q305_WOUNDEDSMUGGLER_V2);
    AI_FUNCTION(SELF, 84686);
    AI_WAITTILLEND(OTHER, SELF);
    AI_STOPPROCESSINFOS(OTHER);
}

