instance DIA_BERNAND_EXIT(C_INFO) {
    NPC = 0xd0cd;
    NR = 999;
    CONDITION = DIA_BERNAND_EXIT_CONDITION;
    INFORMATION = DIA_BERNAND_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BERNAND_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BERNAND_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BERNAND_Q308AMBIENT(C_INFO) {
    NPC = 0xd0cd;
    NR = 1;
    CONDITION = DIA_BERNAND_Q308AMBIENT_CONDITION;
    INFORMATION = DIA_BERNAND_Q308AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_BERNAND_Q308AMBIENT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 0xf09f))) && ((NPC_KNOWSINFO(OTHER, 0x11f16)) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERNAND_Q308AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 1);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Bernand_Q308Ambient_03_01");
        };
    };
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) {
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Bernand_Q308Ambient_03_02");
            AI_OUTPUT(SELF, OTHER, "DIA_Bernand_Q308Ambient_03_03");
        };
    };
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

instance DIA_BERNAND_WHAT(C_INFO) {
    NPC = 0xd0cd;
    NR = 1;
    CONDITION = DIA_BERNAND_WHAT_CONDITION;
    INFORMATION = DIA_BERNAND_WHAT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_BERNAND_WHAT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x11f16)) && ((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int BERNAND_WHAT_ENEMY = 0;
var int BERNAND_WHAT_ASSASSIN = 0;
var int BERNAND_WHAT_SCRIBBLES = 0;
var int BERNAND_WHAT_ASSASSIN_COUNT = 0;
var int BERNAND_WHAT_QUESTIONSDONE_COUNT = 0;
func void DIA_BERNAND_WHAT_CHOICES() {
    INFO_CLEARCHOICES(0x129bc);
    if ((BERNAND_WHAT_ENEMY) == (FALSE)) {
        INFO_ADDCHOICE(0x129bc, "Do you know if Volker has any enemies in this city?", 0x129c5);
    };
    if ((BERNAND_WHAT_ASSASSIN) == (FALSE)) {
        INFO_ADDCHOICE(0x129bc, "Do you know anything about the assassin?", 0x129c6);
    };
    if ((BERNAND_WHAT_SCRIBBLES) == (FALSE)) {
        INFO_ADDCHOICE(0x129bc, "What's that blood on the wall?", 0x129c7);
    };
    if ((BERNAND_WHAT_QUESTIONSDONE_COUNT) == (3)) {
        INFO_ADDCHOICE(0x129bc, "Thanks for talking to me, but I have to go.", 0x129cb);
    };
}

func void DIA_BERNAND_WHAT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Bernand_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Bernand_What_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_03_04");
    DIA_BERNAND_WHAT_CHOICES();
}

func void DIA_BERNAND_WHAT_ENEMY() {
    BERNAND_WHAT_QUESTIONSDONE_COUNT = (BERNAND_WHAT_QUESTIONSDONE_COUNT) + (1);
    BERNAND_WHAT_ENEMY = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Bernand_What_Enemy_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_Enemy_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Bernand_What_Enemy_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_Enemy_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_Enemy_03_05");
    INFO_CLEARCHOICES(0x129bc);
    INFO_ADDCHOICE(0x129bc, "Who's Alfred?", 0x129c8);
}

func void DIA_BERNAND_WHAT_ASSASSIN() {
    BERNAND_WHAT_QUESTIONSDONE_COUNT = (BERNAND_WHAT_QUESTIONSDONE_COUNT) + (1);
    BERNAND_WHAT_ASSASSIN = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Bernand_What_Assassin_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_Assassin_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_Assassin_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_Assassin_03_04");
    INFO_CLEARCHOICES(0x129bc);
    INFO_ADDCHOICE(0x129bc, "Were there others?", 0x129c9);
    INFO_ADDCHOICE(0x129bc, "How did he manage to enter the property?", 0x129ca);
}

func void DIA_BERNAND_WHAT_SCRIBBLES() {
    BERNAND_WHAT_QUESTIONSDONE_COUNT = (BERNAND_WHAT_QUESTIONSDONE_COUNT) + (1);
    BERNAND_WHAT_SCRIBBLES = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Bernand_What_Scribbles_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_Scribbles_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_Scribbles_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_Scribbles_03_04");
    DIA_BERNAND_WHAT_CHOICES();
}

func void DIA_BERNAND_WHAT_ENEMY_ALFRED() {
    AI_OUTPUT(OTHER, SELF, "DIA_Bernand_What_Alfred_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_Alfred_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_Alfred_03_03");
    DIA_BERNAND_WHAT_CHOICES();
}

func void DIA_BERNAND_WHAT_ASSASSIN_OTHERS() {
    BERNAND_WHAT_ASSASSIN_COUNT = (BERNAND_WHAT_ASSASSIN_COUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Bernand_What_Others_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_Others_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_Others_03_03");
    if ((BERNAND_WHAT_ASSASSIN_COUNT) == (2)) {
        DIA_BERNAND_WHAT_CHOICES();
    };
}

func void DIA_BERNAND_WHAT_ASSASSIN_HOW() {
    BERNAND_WHAT_ASSASSIN_COUNT = (BERNAND_WHAT_ASSASSIN_COUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Bernand_What_How_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_How_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_How_03_03");
    if ((BERNAND_WHAT_ASSASSIN_COUNT) == (2)) {
        DIA_BERNAND_WHAT_CHOICES();
    };
}

func void DIA_BERNAND_WHAT_BYE() {
    MOB_CHANGEFOCUSNAME("KM_BLOODFLASK_VOLKER", "MOBNAME_BLOODFLASK");
    AI_OUTPUT(OTHER, SELF, "DIA_Bernand_What_Bye_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Bernand_What_Bye_03_02");
    INFO_CLEARCHOICES(0x129bc);
    AI_STOPPROCESSINFOS(SELF);
    if ((Q308_IVYTOOKFLASK) == (FALSE)) {
        AI_LOGENTRY(TOPIC_Q308, LOG_Q308_BERNAND_BLOOD_V1);
    };
    AI_LOGENTRY(TOPIC_Q308, LOG_Q308_BERNAND_BLOOD_V2);
}

instance DIA_BERNAND_AMBIENT(C_INFO) {
    NPC = 0xd0cd;
    NR = 700;
    CONDITION = DIA_BERNAND_AMBIENT_CONDITION;
    INFORMATION = DIA_BERNAND_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_BERNAND_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_BERNAND_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if (NPC_KNOWSINFO(OTHER, 0x129bc)) {
        B_SAY(SELF, OTHER, "$IMBUSY_CALM");
    };
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    B_SAY(SELF, OTHER, "$SQ311_MilitiaMiner_LeaveMeV4");
}

instance DIA_BERNAND_PICKPOCKET(C_INFO) {
    NPC = 0xd0cd;
    NR = 900;
    CONDITION = DIA_BERNAND_PICKPOCKET_CONDITION;
    INFORMATION = DIA_BERNAND_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_BERNAND_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERNAND_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x129cf);
    INFO_ADDCHOICE(0x129cf, DIALOG_BACK, 0x129d3);
    INFO_ADDCHOICE(0x129cf, DIALOG_PICKPOCKET, 0x129d2);
}

func void DIA_BERNAND_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x129cf);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x129cf);
}

func void DIA_BERNAND_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x129cf);
}
