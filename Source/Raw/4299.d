instance DIA_GABRIEN_EXIT(C_INFO) {
    NPC = 0xe0d6;
    NR = 999;
    CONDITION = DIA_GABRIEN_EXIT_CONDITION;
    INFORMATION = DIA_GABRIEN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GABRIEN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GABRIEN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GABRIEN_HELLO(C_INFO) {
    NPC = 0xe0d6;
    NR = 1;
    CONDITION = DIA_GABRIEN_HELLO_CONDITION;
    INFORMATION = DIA_GABRIEN_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_GABRIEN_HELLO_CONDITION() {
    if ((NPC_GETDISTTOWP(SELF, "VILLAGE_PLACE_10")) <= (300)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GABRIEN_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gabrien_Hello_15_00");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_Hello_03_01");
}

instance DIA_GABRIEN_LESSON(C_INFO) {
    NPC = 0xe0d6;
    NR = 1;
    CONDITION = DIA_GABRIEN_LESSON_CONDITION;
    INFORMATION = DIA_GABRIEN_LESSON_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Something tells me you must have been skipping manners class.";
}

func int DIA_GABRIEN_LESSON_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x15910)) && ((HERO.GUILD) == (GIL_NONE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GABRIEN_LESSON_INFO() {
    if (TORCH_HEROHOLDINGTORCH()) {
        TORCH_UNEQUIP();
    };
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gabrien_lesson_15_00");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_lesson_03_01");
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gabrien_lesson_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_lesson_03_03");
    AI_REMOVEWEAPON(OTHER);
    AI_UNREADYSPELL(OTHER);
    AI_PLAYANI(OTHER, "T_STAND_2_LGUARD_HERO");
    AI_OUTPUT(OTHER, SELF, "DIA_Gabrien_lesson_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_lesson_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_lesson_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_lesson_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_lesson_03_08");
    AI_WAITTILLEND(OTHER, SELF);
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_PLAYANI(OTHER, "T_REMOVE_LGUARD");
    AI_OUTPUT(OTHER, SELF, "DIA_Gabrien_lesson_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_lesson_03_10");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(0x15913);
    INFO_ADDCHOICE(0x15913, "I don't know the man.", 0x15916);
    INFO_ADDCHOICE(0x15913, "We had nothing to do with his death.", 0x15917);
}

func void DIA_GABRIEN_LESSON_IDONTKNOW() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gabrien_lesson_idontknow_15_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_lesson_idontknow_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_lesson_idontknow_03_13");
}

func void DIA_GABRIEN_LESSON_DEATH() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gabrien_lesson_death_15_14");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_lesson_death_03_15");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_lesson_death_03_16");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GABRIEN_BUILDING(C_INFO) {
    NPC = 0xe0d6;
    NR = 1;
    CONDITION = DIA_GABRIEN_BUILDING_CONDITION;
    INFORMATION = DIA_GABRIEN_BUILDING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What is this building?";
}

func int DIA_GABRIEN_BUILDING_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x15910)) && ((NPC_GETDISTTOWP(SELF, "VILLAGE_PLACE_10")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GABRIEN_BUILDING_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gabrien_building_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_building_03_01");
}

instance DIA_GABRIEN_YOURWORK(C_INFO) {
    NPC = 0xe0d6;
    NR = 1;
    CONDITION = DIA_GABRIEN_YOURWORK_CONDITION;
    INFORMATION = DIA_GABRIEN_YOURWORK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What does your job look like?";
}

func int DIA_GABRIEN_YOURWORK_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15910)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GABRIEN_YOURWORK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gabrien_yourwork_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_yourwork_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_yourwork_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gabrien_yourwork_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_yourwork_03_04");
}

instance DIA_GABRIEN_AMBIENT(C_INFO) {
    NPC = 0xe0d6;
    NR = 900;
    CONDITION = DIA_GABRIEN_AMBIENT_CONDITION;
    INFORMATION = DIA_GABRIEN_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_GABRIEN_AMBIENT_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GABRIEN_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_Ambient_03_00");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_Ambient_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_Ambient_03_02");
    };
}

instance DIA_GABRIEN_SQ104_ARIES(C_INFO) {
    NPC = 0xe0d6;
    NR = 1;
    CONDITION = DIA_GABRIEN_SQ104_ARIES_CONDITION;
    INFORMATION = DIA_GABRIEN_SQ104_ARIES_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Have you seen a ram?";
}

func int DIA_GABRIEN_SQ104_ARIES_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ104)) == (LOG_RUNNING)) && ((NPC_KNOWSINFO(OTHER, 0x15f8a)) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GABRIEN_SQ104_ARIES_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Paulus_SQ104_Aries_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Paulus_SQ104_Aries_15_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    B_SAY(SELF, OTHER, "$RUDE_GOODBYE");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    AI_LOGENTRY(TOPIC_SQ104, LOG_SQ104_GABRIEN);
}

instance DIA_GABRIEN_WHEREISJORN(C_INFO) {
    NPC = 0xe0d6;
    NR = 1;
    CONDITION = DIA_GABRIEN_WHEREISJORN_CONDITION;
    INFORMATION = DIA_GABRIEN_WHEREISJORN_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GABRIEN_WHEREISJORN_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x1575a)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GABRIEN_WHEREISJORN_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_WhereIsJorn_03_01");
    INFO_CLEARCHOICES(0x15924);
    INFO_ADDCHOICE(0x15924, "Have you heard anything about Kurt's break-in?", 0x15927);
    INFO_ADDCHOICE(0x15924, "Have you seen a bald, muscular guy anywhere?", 0x15928);
}

func void DIA_GABRIEN_WHEREISJORN_KURT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gabrien_WhereIsJorn_Kurt_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_WhereIsJorn_Kurt_03_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_WhereIsJorn_Kurt_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_WhereIsJorn_Kurt_03_04");
}

func void DIA_GABRIEN_WHEREISJORN_JORN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gabrien_WhereIsJorn_Jorn_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_WhereIsJorn_Jorn_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gabrien_WhereIsJorn_Jorn_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_WhereIsJorn_Jorn_03_04");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gabrien_WhereIsJorn_Jorn_03_05");
}

instance DIA_GABRIEN_PICKPOCKET(C_INFO) {
    NPC = 0xe0d6;
    NR = 900;
    CONDITION = DIA_GABRIEN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_GABRIEN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_GABRIEN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GABRIEN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x15929);
    INFO_ADDCHOICE(0x15929, DIALOG_BACK, 0x1592d);
    INFO_ADDCHOICE(0x15929, DIALOG_PICKPOCKET, 0x1592c);
}

func void DIA_GABRIEN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x15929);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x15929);
}

func void DIA_GABRIEN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x15929);
}

