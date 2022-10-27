var int MILLIE_POISON = 0;
instance DIA_MILLIE_EXIT(C_INFO) {
    NPC = 0xe220;
    NR = 999;
    CONDITION = DIA_MILLIE_EXIT_CONDITION;
    INFORMATION = DIA_MILLIE_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_MILLIE_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_MILLIE_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MILLIE_Q305_HELLO(C_INFO) {
    NPC = 0xe220;
    NR = 1;
    CONDITION = DIA_MILLIE_Q305_HELLO_CONDITION;
    INFORMATION = DIA_MILLIE_Q305_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MILLIE_Q305_HELLO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q305)) == (LOG_RUNNING)) && ((Q305_MILLIECANTALK) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MILLIE_Q305_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Millie_Q305_HELLO_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Millie_Q305_HELLO_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Millie_Q305_HELLO_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Millie_Q305_HELLO_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Millie_Q305_HELLO_03_05");
    AI_LOGENTRY(TOPIC_Q305, LOG_Q305_MILLIE_HELLO);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MILLIE_NEWPLACE(C_INFO) {
    NPC = 0xe220;
    NR = 1;
    CONDITION = DIA_MILLIE_NEWPLACE_CONDITION;
    INFORMATION = DIA_MILLIE_NEWPLACE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I see you've found your place.";
}

func int DIA_MILLIE_NEWPLACE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14788)) {
        if ((Q307_WAITRESSBEN) == (1)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MILLIE_NEWPLACE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Millie_NewPlace_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Millie_NewPlace_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Millie_NewPlace_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Millie_NewPlace_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Millie_NewPlace_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Millie_NewPlace_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Millie_NewPlace_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Millie_NewPlace_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Millie_NewPlace_03_09");
    if (((NPC_KNOWSINFO(OTHER, 0x1493f)) && ((LOG_GETSTATUS(MIS_Q307)) == (LOG_RUNNING))) && ((NPC_HASITEMS(OTHER, 0x9056)) >= (1))) {
        AI_OUTPUT(OTHER, SELF, "DIA_Millie_NewPlace_15_10");
        AI_OUTPUT(SELF, OTHER, "DIA_Millie_NewPlace_03_11");
    };
}

instance DIA_MILLIE_POISON(C_INFO) {
    NPC = 0xe220;
    NR = 1;
    CONDITION = DIA_MILLIE_POISON_CONDITION;
    INFORMATION = DIA_MILLIE_POISON_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I'd like to ask you a favor.";
}

func int DIA_MILLIE_POISON_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 0x1493f)) && ((LOG_GETSTATUS(MIS_Q307)) == (LOG_RUNNING))) && ((NPC_HASITEMS(OTHER, 0x9056)) >= (1))) && (NPC_KNOWSINFO(OTHER, 0x14fd5))) {
        if (((Q307_WAITRESSBEN) == (1)) && ((MILLIE_POISON) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MILLIE_POISON_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Millie_Poison_15_01");
    if ((NPC_GETDISTTONPC(NONE_7500_BEN, NONE_6335_MILLIE)) >= (650)) {
        MILLIE_POISON = TRUE;
        AI_OUTPUT(OTHER, SELF, "DIA_Millie_Poison_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Millie_Poison_03_03");
        AI_OUTPUT(OTHER, SELF, "DIA_Millie_Poison_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Millie_Poison_03_05");
        B_GIVEINVITEMS(OTHER, SELF, 0x9056, 1);
        AI_OUTPUT(OTHER, SELF, "DIA_Millie_Poison_15_06");
        AI_FUNCTION(SELF, 0x14fdc);
        AI_STOPPROCESSINFOS(SELF);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Millie_Poison_03_07");
    AI_STOPPROCESSINFOS(SELF);
    if ((MILLIE_Q307_CANTTALK) == (FALSE)) {
        MILLIE_Q307_CANTTALK = TRUE;
        AI_LOGENTRY(TOPIC_Q307, LOG_Q307_POISONNOTHERE_V2);
    };
}

var int DIA_MILLIE_POISON_INFO.MILLIE_Q307_CANTTALK = 0;
func void MILLIE_REMOVESTRONGPOTION() {
    Q307_POISONWAY = 2;
    Q307_WAITPOISONBENCH_HOUR = WLD_GETHOUR();
    Q307_WAITPOISONBENCH_DAY = WLD_GETDAY();
    if ((NPC_HASITEMS(NONE_6335_MILLIE, 0x9056)) >= (1)) {
        NPC_REMOVEINVITEMS(NONE_6335_MILLIE, 0x9056, 1);
    };
    AI_LOGENTRY(TOPIC_Q307, LOG_Q307_POISONGIVEN);
}

instance DIA_MILLIE_PICKPOCKET(C_INFO) {
    NPC = 0xe220;
    NR = 900;
    CONDITION = DIA_MILLIE_PICKPOCKET_CONDITION;
    INFORMATION = DIA_MILLIE_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40_FEMALE;
}

func int DIA_MILLIE_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MILLIE_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x14fdd);
    INFO_ADDCHOICE(0x14fdd, DIALOG_BACK, 0x14fe1);
    INFO_ADDCHOICE(0x14fdd, DIALOG_PICKPOCKET, 0x14fe0);
}

func void DIA_MILLIE_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x14fdd);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x14fdd);
}

func void DIA_MILLIE_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x14fdd);
}
