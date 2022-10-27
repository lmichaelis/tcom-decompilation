instance DIA_FLORA_EXIT(C_INFO) {
    NPC = 0xc934;
    NR = 999;
    CONDITION = DIA_FLORA_EXIT_CONDITION;
    INFORMATION = DIA_FLORA_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FLORA_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_FLORA_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FLORA_Q101_HOWAREYOU(C_INFO) {
    NPC = 0xc934;
    NR = 1;
    CONDITION = DIA_FLORA_Q101_HOWAREYOU_CONDITION;
    INFORMATION = DIA_FLORA_Q101_HOWAREYOU_INFO;
    DESCRIPTION = "Hi, how are you doing?";
}

func int DIA_FLORA_Q101_HOWAREYOU_CONDITION() {
    return TRUE;
}

func void DIA_FLORA_Q101_HOWAREYOU_INFO() {
    SHIPTALK += 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Flora_Q101_HowAreYou_15_01");
    AI_STARTFACEANI(SELF, S_DISGUST, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Flora_Q101_HowAreYou_04_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Flora_Q101_HowAreYou_04_03");
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Flora_Q101_HowAreYou_04_04");
    AI_LOGENTRY(TOPIC_Q101, LOG_Q101_FLORA);
    INFO_CLEARCHOICES(0xfd19);
    INFO_ADDCHOICE(0xfd19, "To be honest, I'm a little scared too.", 0xfd1c);
    INFO_ADDCHOICE(0xfd19, "It will be alright.", 0xfd1d);
}

func void DIA_FLORA_Q101_HOWAREYOU_2() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Flora_Q101_HowAreYou2_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Flora_Q101_HowAreYou2_04_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Flora_Q101_HowAreYou2_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Flora_Q101_HowAreYou2_15_04");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Flora_Q101_HowAreYou2_04_05");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(0xfd19);
}

func void DIA_FLORA_Q101_HOWAREYOU_1() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Flora_Q101_HowAreYou1_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Flora_Q101_HowAreYou1_04_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Flora_Q101_HowAreYou1_04_03");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(0xfd19);
}

instance DIA_FLORA_Q101_FATHER(C_INFO) {
    NPC = 0xc934;
    NR = 2;
    CONDITION = DIA_FLORA_Q101_FATHER_CONDITION;
    INFORMATION = DIA_FLORA_Q101_FATHER_INFO;
    DESCRIPTION = "Do you know what your father has planned for you?";
}

func int DIA_FLORA_Q101_FATHER_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0xfd0d)) && (NPC_KNOWSINFO(OTHER, 0xfd19))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FLORA_Q101_FATHER_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Flora_Q101_Father_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Flora_Q101_Father_04_02");
    AI_RESETFACEANI(OTHER);
}

instance DIA_FLORA_Q101_AMBIENT(C_INFO) {
    NPC = 0xc934;
    NR = 2;
    CONDITION = DIA_FLORA_Q101_AMBIENT_CONDITION;
    INFORMATION = DIA_FLORA_Q101_AMBIENT_INFO;
    IMPORTANT = TRUE;
    PERMANENT = TRUE;
}

func int DIA_FLORA_Q101_AMBIENT_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        if ((NPC_KNOWSINFO(OTHER, 0xfd0d)) && (NPC_KNOWSINFO(OTHER, 0xfd19))) {
            if (NPC_KNOWSINFO(OTHER, 0xfd1e)) {
                return TRUE;
            };
        } else if (NPC_KNOWSINFO(OTHER, 0xfd19)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_FLORA_Q101_AMBIENT_INFO() {
    AI_STARTFACEANI(SELF, S_DISGUST, 1, -(1));
    NPC_INITAMBIENTS(SELF, 1);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Flora_Q101_Ambient_04_01");
    };
    AI_STOPPROCESSINFOS(SELF);
}

