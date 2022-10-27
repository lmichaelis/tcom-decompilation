instance DIA_BERTER_EXIT(C_INFO) {
    NPC = 0xe4fb;
    NR = 999;
    CONDITION = DIA_BERTER_EXIT_CONDITION;
    INFORMATION = DIA_BERTER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BERTER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BERTER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BERTER_SQ408_START(C_INFO) {
    NPC = 0xe4fb;
    NR = 1;
    CONDITION = DIA_BERTER_SQ408_START_CONDITION;
    INFORMATION = DIA_BERTER_SQ408_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BERTER_SQ408_START_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((LOG_GETSTATUS(MIS_SQ310)) == (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int BERTER_SQ408_TAKEQUEST = 0;
func void DIA_BERTER_SQ408_START_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_Start_15_01");
    AI_STARTFACEANI(SELF, "S_BREATH", 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_Start_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_Start_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_Start_03_04");
    INFO_CLEARCHOICES(0x14665);
    INFO_ADDCHOICE(0x14665, "I don't have time right now.", 0x1466a);
    INFO_ADDCHOICE(0x14665, "Step back, I'll show you how it's done.", 0x14669);
}

func void DIA_BERTER_SQ408_START_YES() {
    SQ408_CANUSECANON = 1;
    MOB_CHANGEFOCUSNAME("SQ408_CANON_01", "MOBNAME_SQ408_CANONHELP");
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_Start_Yes_15_01");
    INFO_CLEARCHOICES(0x14665);
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ408_TIRED");
}

func void DIA_BERTER_SQ408_START_NO() {
    BERTER_SQ408_TAKEQUEST = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_Start_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_Start_No_03_02");
    INFO_CLEARCHOICES(0x14665);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BERTER_SQ408_TAKEQUEST(C_INFO) {
    NPC = 0xe4fb;
    NR = 1;
    CONDITION = DIA_BERTER_SQ408_TAKEQUEST_CONDITION;
    INFORMATION = DIA_BERTER_SQ408_TAKEQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I changed my mind. I'll help you with the cannon.";
}

func int DIA_BERTER_SQ408_TAKEQUEST_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x14665)) && ((BERTER_SQ408_TAKEQUEST) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERTER_SQ408_TAKEQUEST_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_TakeQuest_15_01");
    DIA_BERTER_SQ408_START_YES();
}

instance DIA_BERTER_SQ408_NEEDCANONBALL(C_INFO) {
    NPC = 0xe4fb;
    NR = 1;
    CONDITION = DIA_BERTER_SQ408_NEEDCANONBALL_CONDITION;
    INFORMATION = DIA_BERTER_SQ408_NEEDCANONBALL_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BERTER_SQ408_NEEDCANONBALL_CONDITION() {
    if ((SQ408_CANUSECANON) == (2)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERTER_SQ408_NEEDCANONBALL_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_NeedCanonball_03_01");
    if ((Q306_STATE) >= (27)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_NeedCanonball_03_02");
        AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_NeedCanonball_15_03");
    };
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_NeedCanonball_15_04");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_NeedCanonball_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_NeedCanonball_03_06");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_NeedCanonball_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_NeedCanonball_03_08");
    INFO_CLEARCHOICES(0x1466e);
    INFO_ADDCHOICE(0x1466e, "What are you going to do?", 0x14671);
}

func void DIA_BERTER_SQ408_NEEDCANONBALL_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_NeedCanonball_What_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_NeedCanonball_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_NeedCanonball_What_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_NeedCanonball_What_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_NeedCanonball_What_15_05");
    INFO_CLEARCHOICES(0x1466e);
    LOG_CREATETOPIC(TOPIC_SQ408, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ408), TOPIC_SQ408, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ408, LOG_SQ408_START);
}

instance DIA_BERTER_SQ408_CANONBALLS(C_INFO) {
    NPC = 0xe4fb;
    NR = 1;
    CONDITION = DIA_BERTER_SQ408_CANONBALLS_CONDITION;
    INFORMATION = DIA_BERTER_SQ408_CANONBALLS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have cannonballs and torches.";
}

func int DIA_BERTER_SQ408_CANONBALLS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ408)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x9064)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERTER_SQ408_CANONBALLS_INFO() {
    SQ408_CANUSECANON = 3;
    MARVIN_CURRENTCANONBALL = NPC_HASITEMS(OTHER, 0x9064);
    B_GIVEPLAYERXP((MARVIN_CURRENTCANONBALL) * (XP_SQ408_CANONBALL));
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_Canonballs_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_Canonballs_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_Canonballs_03_03");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_Canonballs_15_04");
    AI_STARTFACEANI(SELF, S_NOPE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_Canonballs_03_05");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

var int DIA_BERTER_SQ408_CANONBALLS_INFO.MARVIN_CURRENTCANONBALL = 0;
instance DIA_BERTER_SQ408_SURE(C_INFO) {
    NPC = 0xe4fb;
    NR = 10;
    CONDITION = DIA_BERTER_SQ408_SURE_CONDITION;
    INFORMATION = DIA_BERTER_SQ408_SURE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Are you sure this is a good idea?";
}

func int DIA_BERTER_SQ408_SURE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ408)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1466e))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERTER_SQ408_SURE_INFO() {
    AI_STARTFACEANI(OTHER, S_THINK, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_Sure_15_01");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_Sure_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_Sure_03_03");
    INFO_CLEARCHOICES(0x14676);
    if ((Q306_STATE) >= (13)) {
        INFO_ADDCHOICE(0x14676, "Actually, Saul got under my skin, too.", 0x1467a);
    };
    INFO_ADDCHOICE(0x14676, "Maybe you should talk to him?", 0x14679);
}

func void DIA_BERTER_SQ408_SURE_TALK() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_Sure_Talk_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_Sure_Talk_03_02");
    INFO_CLEARCHOICES(0x14676);
    AI_RESETFACEANI(SELF);
}

func void DIA_BERTER_SQ408_SURE_MAD() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_Sure_Mad_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_Sure_Mad_03_02");
    INFO_CLEARCHOICES(0x14676);
    AI_RESETFACEANI(SELF);
}

var int BERTER_GOODAMBIENT = 0;
var int BERTER_BADAMBIENT = 0;
instance DIA_BERTER_SQ408_WHATTHEFUCK(C_INFO) {
    NPC = 0xe4fb;
    NR = 1;
    CONDITION = DIA_BERTER_SQ408_WHATTHEFUCK_CONDITION;
    INFORMATION = DIA_BERTER_SQ408_WHATTHEFUCK_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BERTER_SQ408_WHATTHEFUCK_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ408)) == (LOG_RUNNING)) && ((SQ408_CANUSECANON) == (5))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERTER_SQ408_WHATTHEFUCK_INFO() {
    SQ408_SPAWNRODRIGO();
    AI_STARTFACEANI(SELF, T_HURT, 1, -(1));
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_WhatTheFuck_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_WhatTheFuck_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_WhatTheFuck_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_WhatTheFuck_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_WhatTheFuck_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_WhatTheFuck_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_WhatTheFuck_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_WhatTheFuck_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_WhatTheFuck_03_09");
    INFO_CLEARCHOICES(0x1467d);
    INFO_ADDCHOICE(0x1467d, "Cortez will find out.", 0x14682);
    INFO_ADDCHOICE(0x1467d, "It's okay, I'm not gonna turn you in.", 0x14681);
}

func void DIA_BERTER_SQ408_END() {
    SQ408_REMOVEBERTER = 1;
    B_STARTOTHERROUTINE(PIR_1306_RODRIGO, "SQ408_FOLLOW");
    NPC_REFRESH(PIR_1306_RODRIGO);
    INFO_CLEARCHOICES(0x1467d);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ408_FLEE");
}

func void DIA_BERTER_SQ408_WHATTHEFUCK_YES() {
    SQ408_BERTERHELP = 1;
    CREATEINVITEMS(SELF, 0x844d, 6);
    B_GIVEINVITEMS(SELF, OTHER, 0x844d, 6);
    CREATEINVITEMS(SELF, 0x89f8, 4);
    B_GIVEINVITEMS(SELF, OTHER, 0x89f8, 4);
    CREATEINVITEMS(SELF, 0x8440, 4);
    B_GIVEINVITEMS(SELF, OTHER, 0x8440, 4);
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_WhatTheFuck_Yes_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_WhatTheFuck_Yes_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_WhatTheFuck_Yes_03_03");
    INFO_CLEARCHOICES(0x1467d);
    AI_LOGENTRY(TOPIC_SQ408, LOG_SQ408_BERTER_HELP_V1);
    DIA_BERTER_SQ408_END();
    BERTER_GOODAMBIENT = TRUE;
}

func void DIA_BERTER_SQ408_WHATTHEFUCK_NO() {
    SQ408_BERTERHELP = 2;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_SQ408_WhatTheFuck_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Berter_SQ408_WhatTheFuck_No_03_02");
    AI_LOGENTRY(TOPIC_SQ408, LOG_SQ408_BERTER_HELP_V2);
    DIA_BERTER_SQ408_END();
    BERTER_BADAMBIENT = TRUE;
}

instance DIA_BERTER_AMBIENT(C_INFO) {
    NPC = 0xe4fb;
    NR = 997;
    CONDITION = DIA_BERTER_AMBIENT_CONDITION;
    INFORMATION = DIA_BERTER_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_BERTER_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14665)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERTER_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Berter_Ambient_15_00");
    if (((BERTER_BADAMBIENT) == (FALSE)) && ((BERTER_GOODAMBIENT) == (FALSE))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Berter_Ambient_13_01");
    };
    if ((BERTER_BADAMBIENT) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Berter_Ambient_13_02");
    };
    if ((BERTER_GOODAMBIENT) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Berter_Ambient_13_03");
    };
}

instance DIA_BERTER_PICKPOCKET(C_INFO) {
    NPC = 0xe4fb;
    NR = 900;
    CONDITION = DIA_BERTER_PICKPOCKET_CONDITION;
    INFORMATION = DIA_BERTER_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_BERTER_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERTER_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x14686);
    INFO_ADDCHOICE(0x14686, DIALOG_BACK, 0x1468a);
    INFO_ADDCHOICE(0x14686, DIALOG_PICKPOCKET, 0x14689);
}

func void DIA_BERTER_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x14686);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x14686);
}

func void DIA_BERTER_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x14686);
}
