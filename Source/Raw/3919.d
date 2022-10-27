instance DIA_LEON_EXIT(C_INFO) {
    NPC = 0xcd22;
    NR = 999;
    CONDITION = DIA_LEON_EXIT_CONDITION;
    INFORMATION = DIA_LEON_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LEON_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LEON_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LEON_GAMBIT(C_INFO) {
    NPC = 0xcd22;
    NR = 1;
    CONDITION = DIA_LEON_GAMBIT_CONDITION;
    INFORMATION = DIA_LEON_GAMBIT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LEON_GAMBIT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_CQ001)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEON_GAMBIT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_03_03");
    INFO_CLEARCHOICES(0x125c2);
    INFO_ADDCHOICE(0x125c2, "The queen can't take the bishop.", 0x125c6);
    INFO_ADDCHOICE(0x125c2, "The bishop can't take the queen.", 0x125c7);
}

func void DIA_LEON_GAMBIT_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Queen_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Queen_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Queen_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Queen_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Queen_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Queen_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Queen_03_08");
    INFO_CLEARCHOICES(0x125c2);
    INFO_ADDCHOICE(0x125c2, "I don't care about politics.", 0x125ca);
    INFO_ADDCHOICE(0x125c2, "Of course. I like to know what's going on around me.", 0x125c8);
}

func void DIA_LEON_GAMBIT_QUEEN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Queen_15_01");
    DIA_LEON_GAMBIT_NEXT();
}

func void DIA_LEON_GAMBIT_BISHOP() {
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Bishop_15_01");
    DIA_LEON_GAMBIT_NEXT();
}

func void DIA_LEON_GAMBIT_BISHOP_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Yes_03_02");
    INFO_CLEARCHOICES(0x125c2);
    INFO_ADDCHOICE(0x125c2, "I think Rhobar is a wise ruler.", 0x125cc);
    INFO_ADDCHOICE(0x125c2, "I consider Ulryk to be the rightful ruler.", 0x125cd);
}

func void DIA_LEON_GAMBIT_ADDCHOICE() {
    INFO_CLEARCHOICES(0x125c2);
    INFO_ADDCHOICE(0x125c2, "Kuno wants me to prove your fraud.", 0x125ce);
}

func void DIA_LEON_GAMBIT_BISHOP_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_No_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_No_03_03");
    DIA_LEON_GAMBIT_ADDCHOICE();
}

func void DIA_LEON_GAMBIT_TRUTH() {
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Rhobar_03_07");
    DIA_LEON_GAMBIT_ADDCHOICE();
}

func void DIA_LEON_GAMBIT_BISHOP_YES_RHOBAR() {
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Rhobar_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Rhobar_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Rhobar_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Rhobar_15_06");
    DIA_LEON_GAMBIT_TRUTH();
}

func void DIA_LEON_GAMBIT_BISHOP_YES_ULRYK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Ulryk_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Ulryk_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Ulryk_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Ulryk_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Ulryk_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Ulryk_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Ulryk_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Ulryk_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Ulryk_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Ulryk_15_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Ulryk_03_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Ulryk_03_12");
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Ulryk_15_13");
    DIA_LEON_GAMBIT_TRUTH();
}

func void DIA_LEON_GAMBIT_BISHOP_YES_RHOBAR_CHEATER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Cheater_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Cheater_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Cheater_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Cheater_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Cheater_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Cheater_03_06");
    INFO_CLEARCHOICES(0x125c2);
    INFO_ADDCHOICE(0x125c2, "Why do you care so much that Kuno actually gets it?", 0x125cf);
}

func void DIA_LEON_GAMBIT_BISHOP_YES_RHOBAR_CHEATER_WHY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Why_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Why_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Why_03_03");
    if ((CQ001_KUNOREWARD) == (1)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Why_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Why_03_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Why_03_06");
    };
    if ((CQ001_KUNOREWARD) == (2)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Why_15_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Why_03_08");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_Gambit_Why_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_Gambit_Why_03_10");
    AI_LOGENTRY(TOPIC_CQ001, LOG_CQ001_LEON);
    CQ001_CHESSBOOK = 1;
}

instance DIA_LEON_KUNOLOST(C_INFO) {
    NPC = 0xcd22;
    NR = 1;
    CONDITION = DIA_LEON_KUNOLOST_CONDITION;
    INFORMATION = DIA_LEON_KUNOLOST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Kuno lost.";
}

func int DIA_LEON_KUNOLOST_CONDITION() {
    if ((LOG_GETSTATUS(MIS_CQ001)) == (LOG_RUNNING)) {
        if ((CQ001_CHESSBOOK) == (4)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int CQ001_LEON_REFERENCEEXCHANGE = 0;
func void DIA_LEON_KUNOLOST_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_KunoLost_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_KunoLost_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_KunoLost_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_KunoLost_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_KunoLost_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_KunoLost_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_KunoLost_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_KunoLost_03_08");
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_KunoLost_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_KunoLost_03_10");
    if ((CQ001_KUNOREWARD) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Leon_KunoLost_03_11");
        AI_LOGENTRY(TOPIC_CQ001, LOG_CQ001_LEON2);
        CREATEINVITEMS(SELF, 0x859b, CQ001_FINISH_V2);
    };
    if ((CQ001_KUNOREWARD) == (2)) {
        CQ001_LEON_REFERENCEEXCHANGE = 1;
        AI_OUTPUT(SELF, OTHER, "DIA_Leon_KunoLost_03_12");
        CREATEINVITEMS(SELF, 0x859b, (CQ001_FINISH_V1) + (CQ001_FINISH_V2));
        B_GIVEINVITEMS(SELF, OTHER, 0x859b, (CQ001_FINISH_V1) + (CQ001_FINISH_V2));
        AI_LOGENTRY(TOPIC_CQ001, LOG_CQ001_LEON3);
    };
    LOG_SETSTATUS(_@(MIS_CQ001), TOPIC_CQ001, LOG_SUCCESS);
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_KunoLost_15_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_KunoLost_03_14");
    AI_OUTPUT(OTHER, SELF, "DIA_Leon_KunoLost_15_15");
    AI_STOPPROCESSINFOS(SELF);
    if ((LOG_GETSTATUS(MIS_Q202)) == (LOG_SUCCESS)) {
        NPC_EXCHANGEROUTINE(VLK_6128_LEON, "OLDCITY");
        AI_OUTPUT(SELF, OTHER, "DIA_Leon_KunoLost_03_16");
    };
    CQ001_CHANGEKUNORTN();
    B_GIVEPLAYERXP(XP_CQ001_FINISH);
}

instance DIA_LEON_REFERENCEEXCHANGE(C_INFO) {
    NPC = 0xcd22;
    NR = 1;
    CONDITION = DIA_LEON_REFERENCEEXCHANGE_CONDITION;
    INFORMATION = DIA_LEON_REFERENCEEXCHANGE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Could I exchange my reward for a reference? (40 GP)";
}

func int DIA_LEON_REFERENCEEXCHANGE_CONDITION() {
    if ((((CQ001_LEON_REFERENCEEXCHANGE) == (1)) && ((LOG_GETSTATUS(MIS_Q202)) == (LOG_RUNNING))) && (NPC_KNOWSINFO(OTHER, 0x11f69))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEON_REFERENCEEXCHANGE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Boris_ReferenceExchange_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (CQ001_FINISH_V1)) {
        NPC_REMOVEINVITEMS(SELF, 0x859b, CQ001_FINISH_V1);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, CQ001_FINISH_V1);
        B_SAY(SELF, OTHER, "$SURE_V3");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 0x9123, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x9123, 1);
        CQ001_LEON_REFERENCEEXCHANGE = 2;
        NPC_EXCHANGEROUTINE(VLK_6128_LEON, "OLDCITY");
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
}

instance DIA_LEON_SQ416_GOODJOB(C_INFO) {
    NPC = 0xcd22;
    NR = 1;
    CONDITION = DIA_LEON_SQ416_GOODJOB_CONDITION;
    INFORMATION = DIA_LEON_SQ416_GOODJOB_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_LEON_SQ416_GOODJOB_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ416)) == (LOG_SUCCESS)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        if ((SQ416_RAMSEYPARTY) != (2)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEON_SQ416_GOODJOB_INFO() {
    if ((SQ416_AMBIENT_LEON) == (FALSE)) {
        SQ416_AMBIENT_LEON = TRUE;
        B_GIVEPLAYERXP(XP_SQ416_AMBIENT);
    };
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Leon_SQ416_GoodJob_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

var int DIA_LEON_SQ416_GOODJOB_INFO.SQ416_AMBIENT_LEON = 0;
instance DIA_LEON_AMBIENT(C_INFO) {
    NPC = 0xcd22;
    NR = 850;
    CONDITION = DIA_LEON_AMBIENT_CONDITION;
    INFORMATION = DIA_LEON_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_LEON_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_LEON_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if ((OLDCITYENTERED) == (TRUE)) {
        NPC_INITAMBIENTS(SELF, 3);
    };
    NPC_INITAMBIENTS(SELF, 2);
    if ((NPC_GETDISTTONPC(VLK_6128_LEON, VLK_6127_KUNO)) >= (0x5dc)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Leon_Ambient_03_03");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Leon_Ambient_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Leon_Ambient_03_05");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Leon_Ambient_03_04");
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_LEON_PICKPOCKET(C_INFO) {
    NPC = 0xcd22;
    NR = 900;
    CONDITION = DIA_LEON_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LEON_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_LEON_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEON_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x125de);
    INFO_ADDCHOICE(0x125de, DIALOG_BACK, 0x125e2);
    INFO_ADDCHOICE(0x125de, DIALOG_PICKPOCKET, 0x125e1);
}

func void DIA_LEON_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        CREATEINVITEMS(SELF, 0x859f, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x859f, 1);
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x125de);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x125de);
}

func void DIA_LEON_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x125de);
}

