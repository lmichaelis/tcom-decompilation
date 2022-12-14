instance DIA_URS_EXIT(C_INFO) {
    NPC = 0xc8e5;
    NR = 999;
    CONDITION = DIA_URS_EXIT_CONDITION;
    INFORMATION = DIA_URS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_URS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_URS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_URS_Q101_HELLO(C_INFO) {
    NPC = 0xc8e5;
    NR = 1;
    CONDITION = DIA_URS_Q101_HELLO_CONDITION;
    INFORMATION = DIA_URS_Q101_HELLO_INFO;
    DESCRIPTION = "Hey, who are you?";
}

func int DIA_URS_Q101_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_URS_Q101_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Urs_Q101_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Urs_Q101_Hello_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Urs_Q101_Hello_13_03");
}

instance DIA_URS_Q101_GODS(C_INFO) {
    NPC = 0xc8e5;
    NR = 1;
    CONDITION = DIA_URS_Q101_GODS_CONDITION;
    INFORMATION = DIA_URS_Q101_GODS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What's bothering you?";
}

func int DIA_URS_Q101_GODS_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0xfcbf)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_URS_Q101_GODS_INFO() {
    SHIPTALK += 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Urs_Q101_Gods_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Urs_Q101_Gods_13_02");
    INFO_CLEARCHOICES(0xfcc2);
    INFO_ADDCHOICE(0xfcc2, "I believe in everyone being the master of their own destiny.", 0xfcc7);
    INFO_ADDCHOICE(0xfcc2, "Faith has always been important to me.", 0xfcc6);
}

func void DIA_URS_Q101_GODS_RESULT() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Urs_Q101_Gods_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Urs_Q101_Gods_13_04");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Urs_Q101_Gods_13_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Urs_Q101_Gods_13_06");
    CREATEINVITEMS(SELF, 0x952a, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x952a, 1);
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_URS_Q101_GODS_FAITH() {
    AI_OUTPUT(OTHER, SELF, "DIA_Urs_Q101_Gods_Faith_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Urs_Q101_Gods_Faith_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Urs_Q101_Gods_Faith_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Urs_Q101_Gods_Faith_13_04");
    DIA_URS_Q101_GODS_RESULT();
}

func void DIA_URS_Q101_GODS_FATE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Urs_Q101_Gods_Fate_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Urs_Q101_Gods_Fate_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Urs_Q101_Gods_Fate_13_03");
    DIA_URS_Q101_GODS_RESULT();
}

instance DIA_URS_Q101_AMBIENT(C_INFO) {
    NPC = 0xc8e5;
    NR = 1;
    CONDITION = DIA_URS_Q101_AMBIENT_CONDITION;
    INFORMATION = DIA_URS_Q101_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_URS_Q101_AMBIENT_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && (NPC_KNOWSINFO(OTHER, 0xfcc2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_URS_Q101_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 1);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Urs_Q101_Ambient_13_01");
    };
    AI_STOPPROCESSINFOS(SELF);
}

