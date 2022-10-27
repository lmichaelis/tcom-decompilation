instance DIA_VRAZKA_EXIT(C_INFO) {
    NPC = 0xc8ea;
    NR = 999;
    CONDITION = DIA_VRAZKA_EXIT_CONDITION;
    INFORMATION = DIA_VRAZKA_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_VRAZKA_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VRAZKA_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VRAZKA_Q101_HELLO(C_INFO) {
    NPC = 0xc8ea;
    NR = 1;
    CONDITION = DIA_VRAZKA_Q101_HELLO_CONDITION;
    INFORMATION = DIA_VRAZKA_Q101_HELLO_INFO;
    DESCRIPTION = "Hello, who are you?";
}

func int DIA_VRAZKA_Q101_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_VRAZKA_Q101_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Vrazka_Q101_Hello_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Vrazka_Q101_Hello_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vrazka_Q101_Hello_14_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Vrazka_Q101_Hello_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vrazka_Q101_Hello_14_04");
    AI_RESETFACEANI(OTHER);
}

instance DIA_VRAZKA_Q101_FROM(C_INFO) {
    NPC = 0xc8ea;
    NR = 1;
    CONDITION = DIA_VRAZKA_Q101_FROM_CONDITION;
    INFORMATION = DIA_VRAZKA_Q101_FROM_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Where are you from?";
}

func int DIA_VRAZKA_Q101_FROM_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0xfcce)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VRAZKA_Q101_FROM_INFO() {
    Q101_VRAZKACHEST = 1;
    SHIPTALK += 1;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Vrazka_Q101_From_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Vrazka_Q101_From_14_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Vrazka_Q101_From_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vrazka_Q101_From_14_04");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Vrazka_Q101_From_14_05");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Vrazka_Q101_From_14_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Vrazka_Q101_From_14_07");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Vrazka_Q101_From_14_08");
    AI_LOGENTRY(TOPIC_Q101, LOG_Q101_VRAZKA_LOSTAMULET);
}

instance DIA_VRAZKA_Q101_GOTCHEST(C_INFO) {
    NPC = 0xc8ea;
    NR = 1;
    CONDITION = DIA_VRAZKA_Q101_GOTCHEST_CONDITION;
    INFORMATION = DIA_VRAZKA_Q101_GOTCHEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I found your box.";
}

func int DIA_VRAZKA_Q101_GOTCHEST_CONDITION() {
    if (((NPC_HASITEMS(OTHER, 0x908a)) >= (1)) && ((Q101_VRAZKACHEST) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VRAZKA_Q101_GOTCHEST_INFO() {
    ACH_3_COUNTER += 1;
    WLD_SENDTRIGGER("Q101_SHIP_MOVER_AMULET");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Vrazka_Q101_GotChest_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x908a, 1);
    MOB_CREATEITEMS("KM_VRAZKA", 0x908b, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Vrazka_Q101_GotChest_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vrazka_Q101_GotChest_14_03");
    AI_LOGENTRY(TOPIC_Q101, LOG_Q101_VRAZKA_FOUNDCHEST);
    B_GIVEPLAYERXP(XP_Q101_VRAZKACHEST);
    AI_RESETFACEANI(OTHER);
}

instance DIA_VRAZKA_Q101_AMBIENT(C_INFO) {
    NPC = 0xc8ea;
    NR = 1;
    CONDITION = DIA_VRAZKA_Q101_AMBIENT_CONDITION;
    INFORMATION = DIA_VRAZKA_Q101_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_VRAZKA_Q101_AMBIENT_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && (NPC_KNOWSINFO(OTHER, 0xfcd4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VRAZKA_Q101_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 1);
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vrazka_Q101_Ambient_14_01");
    };
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VRAZKA_Q101_GOGETCHEST(C_INFO) {
    NPC = 0xc8ea;
    NR = 1;
    CONDITION = DIA_VRAZKA_Q101_GOGETCHEST_CONDITION;
    INFORMATION = DIA_VRAZKA_Q101_GOGETCHEST_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_VRAZKA_Q101_GOGETCHEST_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((Q101_VRAZKACHEST) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VRAZKA_Q101_GOGETCHEST_INFO() {
    B_SAY(SELF, OTHER, "$NOITEMS");
    AI_STOPPROCESSINFOS(SELF);
}

