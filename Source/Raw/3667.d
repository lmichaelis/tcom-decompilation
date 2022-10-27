instance DIA_LOGAR_EXIT(C_INFO) {
    NPC = 0xce1e;
    NR = 999;
    CONDITION = DIA_LOGAR_EXIT_CONDITION;
    INFORMATION = DIA_LOGAR_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LOGAR_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LOGAR_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LOGAR_SQ317_STUFF(C_INFO) {
    NPC = 0xce1e;
    NR = 1;
    CONDITION = DIA_LOGAR_SQ317_STUFF_CONDITION;
    INFORMATION = DIA_LOGAR_SQ317_STUFF_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LOGAR_SQ317_STUFF_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ317)) == (LOG_SUCCESS)) && ((SQ317_HOMERESCAPED) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int LOGAR_SQ317_BUYSTUFF = 0;
func void DIA_LOGAR_SQ317_STUFF_INFO() {
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Logar_SQ317_Stuff_03_01");
    if ((HERO.GUILD) == (GIL_SLD)) {
        LOGAR_SQ317_BUYSTUFF = 1;
        AI_OUTPUT(SELF, OTHER, "DIA_Logar_SQ317_Stuff_03_02");
    };
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Logar_SQ317_Stuff_03_03");
    SQ317_GIVEHOMERSTUFF();
    AI_RESETFACEANI(SELF);
}

instance DIA_LOGAR_SQ317_BUYSTUFF(C_INFO) {
    NPC = 0xce1e;
    NR = 1;
    CONDITION = DIA_LOGAR_SQ317_BUYSTUFF_CONDITION;
    INFORMATION = DIA_LOGAR_SQ317_BUYSTUFF_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Give me that stuff. (Pay 150 GP)";
}

func int DIA_LOGAR_SQ317_BUYSTUFF_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ317)) == (LOG_SUCCESS)) && ((LOGAR_SQ317_BUYSTUFF) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LOGAR_SQ317_BUYSTUFF_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Logar_SQ317_BuyStuff_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ317_LOGARSTUFF)) {
        NPC_REMOVEINVITEMS(SELF, 0x859b, SQ317_LOGARSTUFF);
        LOGAR_SQ317_BUYSTUFF = 2;
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, SQ317_LOGARSTUFF);
        SQ317_GIVEHOMERSTUFF();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
}

instance DIA_LOGAR_ARSSTUFF(C_INFO) {
    NPC = 0xce1e;
    NR = 1;
    CONDITION = DIA_LOGAR_ARSSTUFF_CONDITION;
    INFORMATION = DIA_LOGAR_ARSSTUFF_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "The assassin had something on him?";
}

func int DIA_LOGAR_ARSSTUFF_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q309)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x10724))) {
        if ((Q309_READYFORGRAVE) != (2)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LOGAR_ARSSTUFF_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Logar_ArsStuff_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Logar_ArsStuff_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Logar_ArsStuff_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Logar_ArsStuff_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Logar_ArsStuff_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Logar_ArsStuff_03_06");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q309, LOG_Q308_PRISONGUARD_INFO);
}

instance DIA_LOGAR_LUDLOFJAIL(C_INFO) {
    NPC = 0xce1e;
    NR = 1;
    CONDITION = DIA_LOGAR_LUDLOFJAIL_CONDITION;
    INFORMATION = DIA_LOGAR_LUDLOFJAIL_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LOGAR_LUDLOFJAIL_CONDITION() {
    if (((Q311_LUDLOFRIOT) == (2)) && ((LOG_GETSTATUS(MIS_Q311)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LOGAR_LUDLOFJAIL_INFO() {
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Logar_LudlofJail_03_01");
    };
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Logar_LudlofJail_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Logar_LudlofJail_03_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Logar_LudlofJail_03_04");
        AI_OUTPUT(OTHER, SELF, "DIA_Logar_LudlofJail_15_14");
        AI_OUTPUT(SELF, OTHER, "DIA_Logar_LudlofJail_03_15");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Logar_LudlofJail_03_05");
    if ((HERO.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Logar_LudlofJail_03_06");
        if ((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_FIGHTER)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Logar_LudlofJail_03_07");
        } else if ((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_CROSSBOWMAN)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Logar_LudlofJail_03_08");
        };
        AI_OUTPUT(SELF, OTHER, "DIA_Logar_LudlofJail_03_09");
        AI_OUTPUT(OTHER, SELF, "DIA_Logar_LudlofJail_15_10");
        AI_OUTPUT(SELF, OTHER, "DIA_Logar_LudlofJail_03_11");
        AI_OUTPUT(SELF, OTHER, "DIA_Logar_LudlofJail_03_12");
        AI_OUTPUT(OTHER, SELF, "DIA_Logar_LudlofJail_15_13");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Logar_LudlofJail_03_16");
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PRISONGUARD_LUDLOF);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LOGAR_HELLO(C_INFO) {
    NPC = 0xce1e;
    NR = 1;
    CONDITION = DIA_LOGAR_HELLO_CONDITION;
    INFORMATION = DIA_LOGAR_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you do?";
}

func int DIA_LOGAR_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_LOGAR_HELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatIsYourJob");
    AI_OUTPUT(SELF, OTHER, "DIA_Logar_Hello_03_01");
}

instance DIA_LOGAR_AMBIENT(C_INFO) {
    NPC = 0xce1e;
    NR = 998;
    CONDITION = DIA_LOGAR_AMBIENT_CONDITION;
    INFORMATION = DIA_LOGAR_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_LOGAR_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x105e4)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LOGAR_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if ((HERO.GUILD) == (GIL_MIL)) {
        if ((!(NPC_KNOWSINFO(OTHER, 0x105de))) && ((KAPITEL) != (5))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Logar_Ambient_03_01");
        } else if ((NPC_KNOWSINFO(OTHER, 0x105de)) && ((KAPITEL) != (5))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Logar_Ambient_03_02");
        } else if ((KAPITEL) == (5)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Logar_Ambient_03_03");
        };
    };
    if ((KAPITEL) < (4)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Logar_Ambient_03_04");
    };
    if ((KAPITEL) >= (4)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Logar_Ambient_03_05");
    };
}

instance DIA_LOGAR_PICKPOCKET(C_INFO) {
    NPC = 0xce1e;
    NR = 900;
    CONDITION = DIA_LOGAR_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LOGAR_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_LOGAR_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LOGAR_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x105ea);
    INFO_ADDCHOICE(0x105ea, DIALOG_BACK, 0x105ee);
    INFO_ADDCHOICE(0x105ea, DIALOG_PICKPOCKET, 0x105ed);
}

func void DIA_LOGAR_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x105ea);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x105ea);
}

func void DIA_LOGAR_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x105ea);
}

