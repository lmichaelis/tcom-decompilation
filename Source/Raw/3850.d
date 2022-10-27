instance DIA_LIMAK_EXIT(C_INFO) {
    NPC = 0xd20e;
    NR = 999;
    CONDITION = DIA_LIMAK_EXIT_CONDITION;
    INFORMATION = DIA_LIMAK_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LIMAK_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LIMAK_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

const string LIMAK_CHECKPOINT = "PARTM5_HOTEL_LIMAK";
instance DIA_LIMAK_FIRSTWARN(C_INFO) {
    NPC = 0xd20e;
    NR = 1;
    CONDITION = DIA_LIMAK_FIRSTWARN_CONDITION;
    INFORMATION = DIA_LIMAK_FIRSTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_LIMAK_FIRSTWARN_CONDITION() {
    if ((SQ413_LIMAKALLOWUSTOGO) == (TRUE)) {
        SELF.AIVAR[14] = TRUE;
    };
    SELF.AIVAR[14] = FALSE;
    if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (700)) {
        if (((((SELF.AIVAR[12]) == (GP_NONE)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_REFUSETALK(SELF)) == (FALSE))) {
            if ((NPC_GETDISTTOWP(SELF, "PARTM5_HOTEL_LIMAK")) <= (700)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIMAK_FIRSTWARN_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Limak_FIRSTWARN_03_01");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, LIMAK_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
}

instance DIA_LIMAK_SECONDWARN(C_INFO) {
    NPC = 0xd20e;
    NR = 1;
    CONDITION = DIA_LIMAK_SECONDWARN_CONDITION;
    INFORMATION = DIA_LIMAK_SECONDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_LIMAK_SECONDWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, LIMAK_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        if ((NPC_GETDISTTOWP(SELF, "PARTM5_HOTEL_LIMAK")) <= (700)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIMAK_SECONDWARN_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Limak_SECONDWARN_03_01");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, LIMAK_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
}

instance DIA_LIMAK_LASTWARN(C_INFO) {
    NPC = 0xd20e;
    NR = 1;
    CONDITION = DIA_LIMAK_LASTWARN_CONDITION;
    INFORMATION = DIA_LIMAK_LASTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_LIMAK_LASTWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, LIMAK_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        if ((NPC_GETDISTTOWP(SELF, "PARTM5_HOTEL_LIMAK")) <= (700)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void LIMAK_KILLHERO() {
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
}

func void DIA_LIMAK_LASTWARN_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Limak_LASTWARN_03_01");
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
    LIMAK_KILLHERO();
}

instance DIA_LIMAK_SQ413_RODERICH(C_INFO) {
    NPC = 0xd20e;
    NR = 1;
    CONDITION = DIA_LIMAK_SQ413_RODERICH_CONDITION;
    INFORMATION = DIA_LIMAK_SQ413_RODERICH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Roderich himself ordered me to inspect this building!";
}

func int DIA_LIMAK_SQ413_RODERICH_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ413)) == (LOG_RUNNING)) && (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL))) && ((SQ413_LIMAKALLOWUSTOGO) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIMAK_SQ413_RODERICH_INFO() {
    SQ413_LIMAKALLOWUSTOGO = TRUE;
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Limak_SQ413_Roderich_15_01");
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Limak_SQ413_Roderich_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_SQ413, LOG_SQ413_LIMAK_MILITIA);
}

instance DIA_LIMAK_SQ413_LORENZO(C_INFO) {
    NPC = 0xd20e;
    NR = 1;
    CONDITION = DIA_LIMAK_SQ413_LORENZO_CONDITION;
    INFORMATION = DIA_LIMAK_SQ413_LORENZO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have a very important package that Lorenzo ordered me to deliver.";
}

func int DIA_LIMAK_SQ413_LORENZO_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ413)) == (LOG_RUNNING)) && (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD))) && ((SQ413_LIMAKALLOWUSTOGO) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIMAK_SQ413_LORENZO_INFO() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Limak_SQ413_Lorenzo_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Limak_SQ413_Lorenzo_03_02");
    AI_LOGENTRY(TOPIC_SQ413, LOG_SQ413_LIMAK_ARAXOS);
    AI_RESETFACEANI(OTHER);
}

instance DIA_LIMAK_PICKPOCKET(C_INFO) {
    NPC = 0xd20e;
    NR = 900;
    CONDITION = DIA_LIMAK_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LIMAK_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_LIMAK_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIMAK_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x11b81);
    INFO_ADDCHOICE(0x11b81, DIALOG_BACK, 0x11b85);
    INFO_ADDCHOICE(0x11b81, DIALOG_PICKPOCKET, 0x11b84);
}

func void DIA_LIMAK_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x11b81);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x11b81);
}

func void DIA_LIMAK_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x11b81);
}

