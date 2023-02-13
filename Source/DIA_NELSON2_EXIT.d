instance DIA_NELSON2_EXIT(C_INFO) {
    NPC = 58231;
    NR = 999;
    CONDITION = DIA_NELSON2_EXIT_CONDITION;
    INFORMATION = DIA_NELSON2_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_NELSON2_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_NELSON2_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NELSON_SQ402_MONASTERY(C_INFO) {
    NPC = 58231;
    NR = 1;
    CONDITION = DIA_NELSON_SQ402_MONASTERY_CONDITION;
    INFORMATION = DIA_NELSON_SQ402_MONASTERY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Nelson? Here?";
}

func int DIA_NELSON_SQ402_MONASTERY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ402)) == (LOG_SUCCESS)) && ((SQ402_NELSON_READYFORHUNT) == (5))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NELSON_SQ402_MONASTERY_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Nelson_SQ402_Monastery_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nelson_SQ402_Monastery_03_02");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Nelson_SQ402_Monastery_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Nelson_SQ402_Monastery_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Nelson_SQ402_Monastery_03_05");
    CREATEINVITEMS(SELF, 34203, SQ402_REWARD_V3);
    B_GIVEINVITEMS(SELF, OTHER, 34203, SQ402_REWARD_V3);
    B_GIVEPLAYERXP(XP_SQ402_BONUSEXP_MONASTERY);
}

instance DIA_NELSON_AMBIENT(C_INFO) {
    NPC = 58231;
    NR = 1;
    CONDITION = DIA_NELSON_AMBIENT_CONDITION;
    INFORMATION = DIA_NELSON_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Are you okay living here?";
}

func int DIA_NELSON_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 79448)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NELSON_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 3);
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Nelson_Ambient_15_01");
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nelson_Ambient_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nelson_Ambient_03_03");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nelson_Ambient_03_04");
    };
}

instance DIA_NELSONM_HUNTING_BASE(C_INFO) {
    NPC = 58231;
    NR = 940;
    CONDITION = DIA_NELSONM_HUNTING_BASE_CONDITION;
    INFORMATION = DIA_NELSONM_HUNTING_BASE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = B_BUILDLEARNSTRING2(PRINT_LEARN_HUNTING_BASE, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_FUR), NELSON_BASETROPHY);
}

func int DIA_NELSONM_HUNTING_BASE_CONDITION() {
    if ((((NELSON_CANTEACH) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 79448))) && ((PLAYER_TALENT_TAKEANIMALTROPHY[2]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NELSONM_HUNTING_BASE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_NelsonM_Hunting_Base_15_01");
    if ((NPC_HASITEMS(OTHER, 34203)) >= (NELSON_BASETROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[2]) == (TRUE)) {
            B_GIVEINVITEMS(OTHER, SELF, 34203, NELSON_BASETROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Base_03_02");
            AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Base_03_03");
            AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Base_03_04");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHY, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (NELSON_BASETROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Base_03_05");
    };
}

instance DIA_NELSONM_HUNTING_SPECIAL(C_INFO) {
    NPC = 58231;
    NR = 1;
    CONDITION = DIA_NELSONM_HUNTING_SPECIAL_CONDITION;
    INFORMATION = DIA_NELSONM_HUNTING_SPECIAL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Can you teach me something about hunting?";
}

func int DIA_NELSONM_HUNTING_SPECIAL_CONDITION() {
    if (((((NELSON_CANTEACH) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 81102))) && ((NELSON_ALLHUNT) == (FALSE))) && ((PLAYER_TALENT_TAKEANIMALTROPHY[2]) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NELSONM_HUNTING_SPECIAL_CHOICES() {
    INFO_CLEARCHOICES(79457);
    INFO_ADDCHOICE(79457, DIALOG_BACK, 79461);
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[7]) == (FALSE)) {
        INFO_ADDCHOICE(79457, B_BUILDLEARNSTRING2(PRINT_TEACHBFSTING, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSTING), NELSON_STINGSTROPHY), 79462);
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[8]) == (FALSE)) {
        INFO_ADDCHOICE(79457, B_BUILDLEARNSTRING2(PRINT_TEACHMANDIBLES, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_MANDIBLES), NELSON_MANDIBLESTROPHY), 79463);
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[6]) == (FALSE)) {
        INFO_ADDCHOICE(79457, B_BUILDLEARNSTRING2(PRINT_TEACHBFWING, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFWING), NELSON_WINGSTROPHY), 79464);
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[15]) == (FALSE)) {
        INFO_ADDCHOICE(79457, B_BUILDLEARNSTRING2(PRINT_TEACHFATS, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_FATS), NELSON_FATSTROPHY), 79466);
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[17]) == (FALSE)) {
        INFO_ADDCHOICE(79457, B_BUILDLEARNSTRING2(PRINT_TEACHSHELLS, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_SHELLS), NELSON_SHELLSTROPHY), 79465);
    };
}

func void DIA_NELSONM_HUNTING_SPECIAL_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_CanYouTeachMeHunting");
    AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_03_01");
    DIA_NELSONM_HUNTING_SPECIAL_CHOICES();
}

func void DIA_NELSONM_HUNTING_SPECIAL_BACK() {
    INFO_CLEARCHOICES(79457);
    if ((((((PLAYER_TALENT_TAKEANIMALTROPHY[7]) == (TRUE)) && ((PLAYER_TALENT_TAKEANIMALTROPHY[8]) == (TRUE))) && ((PLAYER_TALENT_TAKEANIMALTROPHY[6]) == (TRUE))) && ((PLAYER_TALENT_TAKEANIMALTROPHY[15]) == (TRUE))) && ((PLAYER_TALENT_TAKEANIMALTROPHY[17]) == (TRUE))) {
        NELSON_ALLHUNT = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_AllHunt_03_01");
    };
}

func void DIA_NELSONM_HUNTING_SPECIAL_BFSTING() {
    AI_OUTPUT(OTHER, SELF, "DIA_NelsonM_Hunting_Special_BFSting_15_01");
    if ((NPC_HASITEMS(OTHER, 34203)) >= (NELSON_STINGSTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[7]) == (TRUE)) {
            B_GIVEINVITEMS(OTHER, SELF, 34203, NELSON_STINGSTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_BFSting_03_02");
            AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_BFSting_03_03");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYSTING, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (NELSON_STINGSTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_BFSting_03_04");
    };
    DIA_NELSONM_HUNTING_SPECIAL_CHOICES();
}

func void DIA_NELSONM_HUNTING_SPECIAL_MANDIBLES() {
    AI_OUTPUT(OTHER, SELF, "DIA_NelsonM_Hunting_Special_Mandibles_15_01");
    if ((NPC_HASITEMS(OTHER, 34203)) >= (NELSON_MANDIBLESTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[8]) == (TRUE)) {
            B_GIVEINVITEMS(OTHER, SELF, 34203, NELSON_MANDIBLESTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_Mandibles_03_02");
            AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_Mandibles_03_03");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYMANDIBLES, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (NELSON_MANDIBLESTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_Mandibles_03_04");
    };
    DIA_NELSONM_HUNTING_SPECIAL_CHOICES();
}

func void DIA_NELSONM_HUNTING_SPECIAL_BFWING() {
    AI_OUTPUT(OTHER, SELF, "DIA_NelsonM_Hunting_Special_BFWing_15_01");
    if ((NPC_HASITEMS(OTHER, 34203)) >= (NELSON_WINGSTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[6]) == (TRUE)) {
            B_GIVEINVITEMS(OTHER, SELF, 34203, NELSON_WINGSTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_BFWing_03_02");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYWING, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (NELSON_WINGSTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_BFWing_03_03");
    };
    DIA_NELSONM_HUNTING_SPECIAL_CHOICES();
}

func void DIA_NELSONM_HUNTING_SPECIAL_SHELLS() {
    AI_OUTPUT(OTHER, SELF, "DIA_NelsonM_Hunting_Special_Shells_15_01");
    if ((NPC_HASITEMS(OTHER, 34203)) >= (NELSON_SHELLSTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[17]) == (TRUE)) {
            B_GIVEINVITEMS(OTHER, SELF, 34203, NELSON_SHELLSTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_Shells_03_02");
            AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_Shells_03_03");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYSHELLS, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (NELSON_SHELLSTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_Shells_03_04");
    };
    DIA_NELSONM_HUNTING_SPECIAL_CHOICES();
}

func void DIA_NELSONM_HUNTING_SPECIAL_FATS() {
    AI_OUTPUT(OTHER, SELF, "DIA_NelsonM_Hunting_Special_Fats_15_01");
    if ((NPC_HASITEMS(OTHER, 34203)) >= (NELSON_FATSTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[15]) == (TRUE)) {
            B_GIVEINVITEMS(OTHER, SELF, 34203, NELSON_FATSTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_Fats_03_02");
            AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_Fats_03_03");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYFAT, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (NELSON_FATSTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_NelsonM_Hunting_Special_Fats_03_04");
    };
    DIA_NELSONM_HUNTING_SPECIAL_CHOICES();
}

instance DIA_NELSON_MONASTERY_PICKPOCKET(C_INFO) {
    NPC = 58231;
    NR = 900;
    CONDITION = DIA_NELSON_MONASTERY_PICKPOCKET_CONDITION;
    INFORMATION = DIA_NELSON_MONASTERY_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_NELSON_MONASTERY_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NELSON_MONASTERY_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(79467);
    INFO_ADDCHOICE(79467, DIALOG_BACK, 79471);
    INFO_ADDCHOICE(79467, DIALOG_PICKPOCKET, 79470);
}

func void DIA_NELSON_MONASTERY_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 35989, 8);
        B_GIVEINVITEMS(SELF, OTHER, 35989, 8);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(79467);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(79467);
}

func void DIA_NELSON_MONASTERY_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(79467);
}

