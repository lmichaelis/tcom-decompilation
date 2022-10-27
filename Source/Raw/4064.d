instance DIA_BADULF_EXIT(C_INFO) {
    NPC = 0xdd58;
    NR = 999;
    CONDITION = DIA_BADULF_EXIT_CONDITION;
    INFORMATION = DIA_BADULF_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BADULF_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BADULF_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
    RUNESTRADE_CHECKBOUGHTRUNES();
}

instance DIA_BADULF_FIRSTWARN(C_INFO) {
    NPC = 0xdd58;
    NR = 1;
    CONDITION = DIA_BADULF_FIRSTWARN_CONDITION;
    INFORMATION = DIA_BADULF_FIRSTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

const string BADULF_CHECKPOINT = "PART8_UNDERGROUND_SECRET_03";
var int BADULF_ALLOWUSTOGO = 0;
func int DIA_BADULF_FIRSTWARN_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q515)) != (LOG_SUCCESS)) {
        if ((BADULF_ALLOWUSTOGO) == (TRUE)) {
            SELF.AIVAR[14] = TRUE;
        } else {
            SELF.AIVAR[14] = FALSE;
        } else if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (700)) {
            if (((((SELF.AIVAR[12]) == (GP_NONE)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_REFUSETALK(SELF)) == (FALSE))) {
                if ((Q502_STARTTRIALOG) != (2)) {
                    return TRUE;
                };
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_BADULF_FIRSTWARN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Badulf_FirstWarn_03_01");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, BADULF_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
}

instance DIA_BADULF_SECONDWARN(C_INFO) {
    NPC = 0xdd58;
    NR = 1;
    CONDITION = DIA_BADULF_SECONDWARN_CONDITION;
    INFORMATION = DIA_BADULF_SECONDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_BADULF_SECONDWARN_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q515)) != (LOG_SUCCESS)) {
        if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, BADULF_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
            if ((Q502_STARTTRIALOG) != (2)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_BADULF_SECONDWARN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Badulf_SecondWarn_03_01");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, BADULF_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
}

instance DIA_BADULF_LASTWARN(C_INFO) {
    NPC = 0xdd58;
    NR = 1;
    CONDITION = DIA_BADULF_LASTWARN_CONDITION;
    INFORMATION = DIA_BADULF_LASTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_BADULF_LASTWARN_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q515)) != (LOG_SUCCESS)) {
        if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, BADULF_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
            if ((Q502_STARTTRIALOG) != (2)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_BADULF_LASTWARN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Badulf_LastWarn_03_01");
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
    AI_STOPPROCESSINFOS(SELF);
    RUNESTRADE_CHECKBOUGHTRUNES();
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
}

instance DIA_BADULF_WHY(C_INFO) {
    NPC = 0xdd58;
    NR = 1;
    CONDITION = DIA_BADULF_WHY_CONDITION;
    INFORMATION = DIA_BADULF_WHY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Why?";
}

func int DIA_BADULF_WHY_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q515)) != (LOG_SUCCESS)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BADULF_WHY_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Badulf_Why_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Badulf_Why_03_02");
    AI_RESETFACEANI(OTHER);
}

instance DIA_BADULF_WHAT(C_INFO) {
    NPC = 0xdd58;
    NR = 1;
    CONDITION = DIA_BADULF_WHAT_CONDITION;
    INFORMATION = DIA_BADULF_WHAT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What's in that basement?";
}

func int DIA_BADULF_WHAT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x137fd)) && ((LOG_GETSTATUS(MIS_Q515)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BADULF_WHAT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Badulf_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Badulf_What_03_02");
    AI_RESETFACEANI(OTHER);
}

instance DIA_BADULF_ANGRY(C_INFO) {
    NPC = 0xdd58;
    NR = 1;
    CONDITION = DIA_BADULF_ANGRY_CONDITION;
    INFORMATION = DIA_BADULF_ANGRY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BADULF_ANGRY_CONDITION() {
    if (((BADULF_DEEPSLEEP) == (TRUE)) && ((LOG_GETSTATUS(MIS_Q515)) == (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BADULF_ANGRY_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Badulf_Angry_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Badulf_Angry_03_02");
    AI_RESETFACEANI(SELF);
}

instance DIA_BADULF_PASS(C_INFO) {
    NPC = 0xdd58;
    NR = 1;
    CONDITION = DIA_BADULF_PASS_CONDITION;
    INFORMATION = DIA_BADULF_PASS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Aren't you guarding the entrance to the catacombs?";
}

func int DIA_BADULF_PASS_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q515)) == (LOG_SUCCESS)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BADULF_PASS_INFO() {
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Badulf_Pass_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Badulf_Pass_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Badulf_Pass_03_03");
    AI_RESETFACEANI(OTHER);
}

instance DIA_BADULF_POTION(C_INFO) {
    NPC = 0xdd58;
    NR = 50;
    CONDITION = DIA_BADULF_POTION_CONDITION;
    INFORMATION = DIA_BADULF_POTION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could I get some healing potions from you?";
}

func int DIA_BADULF_POTION_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x13806)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BADULF_POTION_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Badulf_Potion_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Badulf_Potion_03_02");
    CREATEINVITEMS(SELF, 0x838e, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x838e, 1);
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Badulf_Potion_03_03");
    AI_RESETFACEANI(OTHER);
}

instance DIA_BADULF_TRADE(C_INFO) {
    NPC = 0xdd58;
    NR = 950;
    CONDITION = DIA_BADULF_TRADE_CONDITION;
    INFORMATION = DIA_BADULF_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's deal.";
}

func int DIA_BADULF_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x13809)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BADULF_TRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade");
    B_GIVETRADEINV(SELF);
}

instance DIA_BADULF_AMBIENT(C_INFO) {
    NPC = 0xdd58;
    NR = 800;
    CONDITION = DIA_BADULF_AMBIENT_CONDITION;
    INFORMATION = DIA_BADULF_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's life?";
}

func int DIA_BADULF_AMBIENT_CONDITION() {
    if ((KAPITEL) == (5)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BADULF_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Badulf_Ambient_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Badulf_Ambient_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Badulf_Ambient_03_03");
    };
    AI_RESETFACEANI(SELF);
}

instance DIA_BADULF_PICKPOCKET(C_INFO) {
    NPC = 0xdd58;
    NR = 900;
    CONDITION = DIA_BADULF_PICKPOCKET_CONDITION;
    INFORMATION = DIA_BADULF_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_BADULF_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BADULF_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x13812);
    INFO_ADDCHOICE(0x13812, DIALOG_BACK, 0x13816);
    INFO_ADDCHOICE(0x13812, DIALOG_PICKPOCKET, 0x13815);
}

func void DIA_BADULF_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        CREATEINVITEMS(SELF, 0x8c94, 2);
        B_GIVEINVITEMS(SELF, OTHER, 0x8c94, 2);
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x13812);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x13812);
}

func void DIA_BADULF_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x13812);
}
