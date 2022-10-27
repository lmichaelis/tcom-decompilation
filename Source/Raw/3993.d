instance DIA_HUNTER_EXIT(C_INFO) {
    NPC = 0xd9e1;
    NR = 999;
    CONDITION = DIA_HUNTER_EXIT_CONDITION;
    INFORMATION = DIA_HUNTER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HUNTER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HUNTER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HUNTER_HELLO(C_INFO) {
    NPC = 0xd9e1;
    NR = 1;
    CONDITION = DIA_HUNTER_HELLO_CONDITION;
    INFORMATION = DIA_HUNTER_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Hey, what are you doing here?";
}

func int DIA_HUNTER_HELLO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ416)) != (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_QA303)) != (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int HUNTER_WHATHUNT = 0;
var int HUNTER_HUNT = 0;
func void DIA_HUNTER_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hunter_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hunter_Hello_03_02");
    INFO_CLEARCHOICES(0x12e47);
    if ((HUNTER_WHATHUNT) == (FALSE)) {
        INFO_ADDCHOICE(0x12e47, "What are you hunting?", 0x12e4c);
    };
    if ((HUNTER_HUNT) == (FALSE)) {
        INFO_ADDCHOICE(0x12e47, "I want to learn to hunt.", 0x12e4d);
    };
    if (NPC_KNOWSINFO(OTHER, 0x1575a)) {
        INFO_ADDCHOICE(0x12e47, "I need help finding my brother.", 0x12e4e);
    };
    INFO_ADDCHOICE(0x12e47, "It's okay, I won't bother you.", 0x12e4f);
}

func void DIA_HUNTER_HELLO_WHAT() {
    HUNTER_WHATHUNT = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Hunter_Hello_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hunter_Hello_What_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Hunter_Hello_What_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Hunter_Hello_What_03_04");
}

func void DIA_HUNTER_HELLO_HUNTINGSKILL() {
    HUNTER_HUNT = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Hunter_Hello_HuntingSkill_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hunter_Hello_HuntingSkill_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hunter_Hello_HuntingSkill_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Hunter_Hello_HuntingSkill_03_04");
}

func void DIA_HUNTER_HELLO_GQ001() {
    GQ001_TALKEDWITHHUNTER = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Hunter_Hello_GQ001_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hunter_Hello_GQ001_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hunter_Hello_GQ001_03_03");
    INFO_CLEARCHOICES(0x12e47);
    INFO_ADDCHOICE(0x12e47, "Anyone else come through here?", 0x12e50);
    INFO_ADDCHOICE(0x12e47, "I'm not rich, but I'll pay you if you help me.", 0x12e54);
    INFO_CLEARCHOICES(0x12e55);
    INFO_ADDCHOICE(0x12e55, "Anyone else come through here?", 0x12e50);
    INFO_ADDCHOICE(0x12e55, "I'm not rich, but I'll pay you if you help me.", 0x12e54);
}

func void DIA_HUNTER_HELLO_GOODBYE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hunter_Hello_Goodbye_15_01");
    INFO_CLEARCHOICES(0x12e47);
    AI_STOPPROCESSINFOS(OTHER);
}

func void DIA_HUNTER_HELLO_GQ001_WHO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hunter_Hello_Who_GQ001_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hunter_Hello_Who_GQ001_03_02");
    if ((GQ001_INFOFROMDICKON) == (TRUE)) {
        INFO_CLEARCHOICES(0x12e47);
        INFO_ADDCHOICE(0x12e47, "Do you remember which way their tracks led?", 0x12e52);
        INFO_ADDCHOICE(0x12e47, "What exactly did those footprints look like?", 0x12e53);
        INFO_CLEARCHOICES(0x12e55);
        INFO_ADDCHOICE(0x12e55, "Do you remember which way their tracks led?", 0x12e52);
        INFO_ADDCHOICE(0x12e55, "What exactly did those footprints look like?", 0x12e53);
    };
    INFO_CLEARCHOICES(0x12e47);
    INFO_CLEARCHOICES(0x12e55);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_GQ001, LOG_GQ001_HUNTER_TRACE_V1);
}

func void DIA_HUNTER_GQ001_COUNT() {
    GQ001_HUNTERINFORMATIONJORN = (GQ001_HUNTERINFORMATIONJORN) + (1);
    if ((GQ001_HUNTERINFORMATIONJORN) >= (2)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Hunter_Hello_Remember_GQ001_15_03");
        INFO_CLEARCHOICES(0x12e47);
        INFO_CLEARCHOICES(0x12e55);
        AI_STOPPROCESSINFOS(SELF);
        GQ001_INFOFROMHUNTER = TRUE;
        AI_LOGENTRY(TOPIC_GQ001, LOG_GQ001_HUNTER_TRACE_V2);
    };
}

func void DIA_HUNTER_HELLO_GQ001_WHO_REMEMBER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hunter_Hello_Remember_GQ001_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hunter_Hello_Remember_GQ001_03_02");
    DIA_HUNTER_GQ001_COUNT();
}

func void DIA_HUNTER_HELLO_GQ001_WHO_TRACES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hunter_Hello_Traces_GQ001_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hunter_Hello_Traces_GQ001_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hunter_Hello_Traces_GQ001_03_03");
    DIA_HUNTER_GQ001_COUNT();
}

func void DIA_HUNTER_HELLO_GQ001_GOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hunter_Hello_Gold_GQ001_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hunter_Hello_Gold_GQ001_03_02");
}

instance DIA_HUNTER_GQ001_HELPJORN(C_INFO) {
    NPC = 0xd9e1;
    NR = 2;
    CONDITION = DIA_HUNTER_GQ001_HELPJORN_CONDITION;
    INFORMATION = DIA_HUNTER_GQ001_HELPJORN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need help finding my brother.";
}

func int DIA_HUNTER_GQ001_HELPJORN_CONDITION() {
    if (((((GQ001_TALKEDWITHHUNTER) == (FALSE)) && ((KAPITEL) >= (2))) && (NPC_KNOWSINFO(OTHER, 0x1575a))) && (NPC_KNOWSINFO(OTHER, 0x12e47))) {
        if (((LOG_GETSTATUS(MIS_SQ416)) != (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_QA303)) != (LOG_RUNNING))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HUNTER_GQ001_HELPJORN_INFO() {
    DIA_HUNTER_HELLO_GQ001();
}

instance DIA_HUNTER_WHATHUNT(C_INFO) {
    NPC = 0xd9e1;
    NR = 1;
    CONDITION = DIA_HUNTER_WHATHUNT_CONDITION;
    INFORMATION = DIA_HUNTER_WHATHUNT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you hunting?";
}

func int DIA_HUNTER_WHATHUNT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x12e47)) && ((HUNTER_WHATHUNT) == (0))) {
        if (((LOG_GETSTATUS(MIS_SQ416)) != (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_QA303)) != (LOG_RUNNING))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HUNTER_WHATHUNT_INFO() {
    DIA_HUNTER_HELLO_WHAT();
}

instance DIA_HUNTER_HUNT(C_INFO) {
    NPC = 0xd9e1;
    NR = 1;
    CONDITION = DIA_HUNTER_HUNT_CONDITION;
    INFORMATION = DIA_HUNTER_HUNT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Will you give me a hunting lesson?";
}

func int DIA_HUNTER_HUNT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x12e47)) && ((HUNTER_HUNT) == (0))) {
        if (((LOG_GETSTATUS(MIS_SQ416)) != (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_QA303)) != (LOG_RUNNING))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HUNTER_HUNT_INFO() {
    DIA_HUNTER_HELLO_HUNTINGSKILL();
}

instance DIA_GERKE_QA303_HUNTING(C_INFO) {
    NPC = 0xd9e1;
    NR = 1;
    CONDITION = DIA_GERKE_QA303_HUNTING_CONDITION;
    INFORMATION = DIA_GERKE_QA303_HUNTING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "On a hunt?";
}

func int DIA_GERKE_QA303_HUNTING_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA303)) == (LOG_RUNNING)) && ((QA303_READMONSTERLIST) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GERKE_QA303_HUNTING_INFO() {
    QA303_SCAVENGERS = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Gerke_QA303_Hunting_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gerke_QA303_Hunting_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gerke_QA303_Hunting_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerke_QA303_Hunting_03_04");
    AI_LOGENTRY(TOPIC_QA303, LOG_QA303_SCAVENGERS_V1);
}

instance DIA_GERKE_SQ416_CAVE(C_INFO) {
    NPC = 0xd9e1;
    NR = 1;
    CONDITION = DIA_GERKE_SQ416_CAVE_CONDITION;
    INFORMATION = DIA_GERKE_SQ416_CAVE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GERKE_SQ416_CAVE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ416)) == (LOG_RUNNING)) && ((SQ416_HUNTERSSLEEP) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GERKE_SQ416_CAVE_INFO() {
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gerke_SQ416_Cave_03_01");
    INFO_CLEARCHOICES(0x12e61);
    INFO_ADDCHOICE(0x12e61, "Gerke, what happened?", 0x12e65);
    INFO_ADDCHOICE(0x12e61, "Save your strength, you're badly injured.", 0x12e64);
}

func void DIA_GERKE_SQ416_CAVE_REST() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gerke_SQ416_Cave_Rest_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerke_SQ416_Cave_Rest_03_02");
}

func void DIA_GERKE_SQ416_CAVE_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gerke_SQ416_Cave_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerke_SQ416_Cave_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerke_SQ416_Cave_What_03_03");
    INFO_CLEARCHOICES(0x12e61);
    INFO_ADDCHOICE(0x12e61, "Can I help you?", 0x12e66);
    INFO_ADDCHOICE(0x12e61, "Did you see the Beast?", 0x12e67);
}

func void DIA_GERKE_SQ416_CAVE_WHAT_HELP() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gerke_SQ416_Cave_Help_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerke_SQ416_Cave_Help_03_02");
    AI_LOGENTRY(TOPIC_SQ416, LOG_SQ416_GERKE_HELP);
    INFO_CLEARCHOICES(0x12e61);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x12e68);
}

func void DIA_GERKE_SQ416_CAVE_WHAT_SAW() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gerke_SQ416_Cave_Saw_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerke_SQ416_Cave_Saw_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerke_SQ416_Cave_Saw_03_03");
    SQ416_DETLOWSUSPECT_COUNT();
}

func void GERKE_SQ416_KILLHIM() {
    FF_APPLYONCEEXTGT(0xf844, 0, -(1));
    HERO.AIVAR[4] = FALSE;
}

instance DIA_GERKE_AMBIENT(C_INFO) {
    NPC = 0xd9e1;
    NR = 998;
    CONDITION = DIA_GERKE_AMBIENT_CONDITION;
    INFORMATION = DIA_GERKE_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_GERKE_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_GERKE_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if (!(NPC_KNOWSINFO(OTHER, 0x12e47))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Gerke_Ambient_03_01");
    };
    if ((NPC_KNOWSINFO(OTHER, 0x12e47)) && (!(NPC_KNOWSINFO(OTHER, 0x12e5e)))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Gerke_Ambient_03_02");
    };
    if (NPC_KNOWSINFO(OTHER, 0x12e5e)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Gerke_Ambient_03_03");
    };
}

instance DIA_GERKE_PICKPOCKET(C_INFO) {
    NPC = 0xd9e1;
    NR = 900;
    CONDITION = DIA_GERKE_PICKPOCKET_CONDITION;
    INFORMATION = DIA_GERKE_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_GERKE_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GERKE_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x12e6c);
    INFO_ADDCHOICE(0x12e6c, DIALOG_BACK, 0x12e70);
    INFO_ADDCHOICE(0x12e6c, DIALOG_PICKPOCKET, 0x12e6f);
}

func void DIA_GERKE_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x12e6c);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x12e6c);
}

func void DIA_GERKE_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x12e6c);
}

