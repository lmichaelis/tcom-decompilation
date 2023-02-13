instance DIA_DANIEL2_EXIT(C_INFO) {
    NPC = 60224;
    NR = 999;
    CONDITION = DIA_DANIEL2_EXIT_CONDITION;
    INFORMATION = DIA_DANIEL2_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_DANIEL2_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_DANIEL2_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_DANIEL_QM401_AFTERFIGHT(C_INFO) {
    NPC = 60224;
    NR = 1;
    CONDITION = DIA_DANIEL_QM401_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_DANIEL_QM401_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DANIEL_QM401_AFTERFIGHT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) && ((QM401_FIGHTWITHRENEGADESCHECK) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DANIEL_QM401_AFTERFIGHT_NEXT() {
    AI_WAITTILLEND(SELF, OTHER);
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Daniel_QM401_AfterFight_Next_03_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Daniel_QM401_AfterFight_Next_03_02");
    INFO_CLEARCHOICES(68253);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

func void DIA_DANIEL_QM401_AFTERFIGHT_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Daniel_QM401_AfterFight_03_01");
    INFO_CLEARCHOICES(68253);
    INFO_ADDCHOICE(68253, "It was the right thing to do. You fought well today.", 68258);
    INFO_ADDCHOICE(68253, "(Nod)", 68257);
}

func void DIA_DANIEL_QM401_AFTERFIGHT_NOD() {
    AI_PLAYANI(OTHER, T_YES);
    DIA_DANIEL_QM401_AFTERFIGHT_NEXT();
}

func void DIA_DANIEL_QM401_AFTERFIGHT_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Daniel_QM401_AfterFight_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Daniel_QM401_AfterFight_Yes_03_02");
    DIA_DANIEL_QM401_AFTERFIGHT_NEXT();
}

instance DIA_DANIEL_PICKPOCKET(C_INFO) {
    NPC = 60224;
    NR = 900;
    CONDITION = DIA_DANIEL_PICKPOCKET_CONDITION;
    INFORMATION = DIA_DANIEL_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_DANIEL_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DANIEL_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(68259);
    INFO_ADDCHOICE(68259, DIALOG_BACK, 68263);
    INFO_ADDCHOICE(68259, DIALOG_PICKPOCKET, 68262);
}

func void DIA_DANIEL_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(68259);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(68259);
}

func void DIA_DANIEL_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(68259);
}

