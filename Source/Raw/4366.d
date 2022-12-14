instance DIA_ADELARD_Q602_EXIT(C_INFO) {
    NPC = 0xea5a;
    NR = 999;
    CONDITION = DIA_ADELARD_Q602_EXIT_CONDITION;
    INFORMATION = DIA_ADELARD_Q602_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ADELARD_Q602_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ADELARD_Q602_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ADELARD_Q602_FINALLY(C_INFO) {
    NPC = 0xea5a;
    NR = 1;
    CONDITION = DIA_ADELARD_Q602_FINALLY_CONDITION;
    INFORMATION = DIA_ADELARD_Q602_FINALLY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ADELARD_Q602_FINALLY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) && ((Q602_FIGHTWITHBRADLOCK) == (0))) && ((NPC_KNOWSINFO(OTHER, 0x161ce)) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ADELARD_Q602_FINALLY_INFO() {
    if ((OTHER.GUILD) == (GIL_SLD)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Finally_03_01");
    };
    if ((MARVIN_LOSTGUILDARAXOS) == (TRUE)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Finally_03_02");
    };
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Finally_03_03");
    INFO_CLEARCHOICES(0x16202);
    INFO_ADDCHOICE(0x16202, "The Usurer's men are working with the Wolf Sons?", 0x16205);
}

func void DIA_ADELARD_Q602_FINALLY_WHY() {
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Adelard_Q602_Finally_Why_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Finally_Why_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Finally_Why_03_03");
    INFO_CLEARCHOICES(0x16202);
    INFO_ADDCHOICE(0x16202, "What is the situation in the rest of the city?", 0x16206);
}

func void DIA_ADELARD_Q602_FINALLY_WHY_CITY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Adelard_Q602_Finally_City_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Finally_City_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Finally_City_03_03");
    INFO_CLEARCHOICES(0x16202);
    INFO_ADDCHOICE(0x16202, "Was the Usurer with his men?", 0x16207);
}

func void DIA_ADELARD_Q602_FINALLY_WHY_CITY_VOLKER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Adelard_Q602_Finally_Volker_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Finally_Volker_03_02");
    AI_PLAYANI(SELF, T_SEARCH);
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Finally_Volker_03_03");
    INFO_CLEARCHOICES(0x16202);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q602, LOG_Q602_ADELARD_HELP);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "Q602_GUIDE_LORENZO");
}

instance DIA_ADELARD_Q602_LORENZO(C_INFO) {
    NPC = 0xea5a;
    NR = 1;
    CONDITION = DIA_ADELARD_Q602_LORENZO_CONDITION;
    INFORMATION = DIA_ADELARD_Q602_LORENZO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ADELARD_Q602_LORENZO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) && ((Q602_FIGHTWITHBRADLOCK) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ADELARD_Q602_LORENZO_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Lorenzo_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Lorenzo_03_02");
    INFO_CLEARCHOICES(0x16208);
    INFO_ADDCHOICE(0x16208, "Now is not the time to mourn, the city is on fire.", 0x1620c);
    INFO_ADDCHOICE(0x16208, "It's all the Usurer's doing.", 0x1620b);
}

func void DIA_ADELARD_Q602_LORENZO_VOLKER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Adelard_Q602_Lorenzo_Volker_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Adelard_Q602_Lorenzo_Volker_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Lorenzo_Volker_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Lorenzo_Volker_03_04");
    INFO_CLEARCHOICES(0x16208);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q602_PLUNDER");
}

func void DIA_ADELARD_Q602_LORENZO_CITY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Adelard_Q602_Lorenzo_City_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Lorenzo_City_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Lorenzo_City_03_03");
    INFO_CLEARCHOICES(0x16208);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q602_OUTSIDE");
}

instance DIA_ADELARD_Q602_AMBIENT(C_INFO) {
    NPC = 0xea5a;
    NR = 1;
    CONDITION = DIA_ADELARD_Q602_AMBIENT_CONDITION;
    INFORMATION = DIA_ADELARD_Q602_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ADELARD_Q602_AMBIENT_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        if ((NPC_KNOWSINFO(OTHER, 0x16208)) || (NPC_KNOWSINFO(OTHER, 0x161ce))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ADELARD_Q602_AMBIENT_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    if (NPC_KNOWSINFO(OTHER, 0x16208)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Ambient_03_01");
    };
    if (NPC_KNOWSINFO(OTHER, 0x161ce)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Ambient_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Adelard_Q602_Ambient_03_03");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

