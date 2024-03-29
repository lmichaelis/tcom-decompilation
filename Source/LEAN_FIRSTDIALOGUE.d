var int LEAN_FIRSTDIALOGUE;
var int LEAN_ALLOWUSTOGO;
const string LEAN_CHECKPOINT = "WOLFSDEN_LEAN";
instance DIA_LEAN_EXIT(C_INFO) {
    NPC = 58310;
    NR = 999;
    CONDITION = DIA_LEAN_EXIT_CONDITION;
    INFORMATION = DIA_LEAN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LEAN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LEAN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LEAN_FIRSTWARN(C_INFO) {
    NPC = 58310;
    NR = 1;
    CONDITION = DIA_LEAN_FIRSTWARN_CONDITION;
    INFORMATION = DIA_LEAN_FIRSTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_LEAN_FIRSTWARN_CONDITION() {
    if ((LEAN_ALLOWUSTOGO) == (FALSE)) {
        SELF.AIVAR[14] = FALSE;
    };
    SELF.AIVAR[14] = TRUE;
    if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (700)) {
        if (((((SELF.AIVAR[12]) == (GP_NONE)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_REFUSETALK(SELF)) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEAN_KILLMARVIN() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    B_SAY(SELF, OTHER, "$Alarm");
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
}

func void DIA_LEAN_ENTER() {
    LEAN_ALLOWUSTOGO = TRUE;
    FF_APPLYONCEEXTGT(64212, 0, -(1));
    if (((Q401_FABIOANDGANGGONE) == (2)) && ((Q401_REFUGEEAREDEAD) == (FALSE))) {
        Q401_REMOVEFABIOGANG();
    };
    INFO_CLEARCHOICES(82129);
    AI_STOPPROCESSINFOS(SELF);
    B_STARTOTHERROUTINE(NONE_15_ULRYK, START);
    NPC_REFRESH(NONE_15_ULRYK);
    TELEPORTNPCTOWP(58350, NONE_15_ULRYK.WP);
    B_STARTOTHERROUTINE(NONE_500_RAMSEY, "ULRYK_WAIT");
    NPC_REFRESH(NONE_500_RAMSEY);
    TELEPORTNPCTOWP(53754, NONE_500_RAMSEY.WP);
    AI_LOGENTRY(TOPIC_Q402, LOG_Q402_LEANENTRY);
}

func void DIA_LEAN_FIRSTWARN_INFO() {
    if ((Q402_INFOABOUTMINE) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lean_FirstWarn_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Lean_FirstWarn_03_05");
        DIA_LEAN_ENTER();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Lean_FirstWarn_03_01");
    if ((LEAN_FIRSTDIALOGUE) == (FALSE)) {
        LEAN_FIRSTDIALOGUE = TRUE;
        INFO_CLEARCHOICES(82129);
        INFO_ADDCHOICE(82129, "Can you go at least 2 steps...", 82136);
        INFO_ADDCHOICE(82129, "What is it this time?", 82135);
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Lean_FirstWarn_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lean_FirstWarn_03_03");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, LEAN_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
    INFO_CLEARCHOICES(82129);
}

func void DIA_LEAN_FIRSTWARN_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lean_FirstWarn_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Lean_FirstWarn_03_07");
    INFO_CLEARCHOICES(82129);
    AI_LOGENTRY(TOPIC_Q402, LOG_Q402_LEAN_NOENTRY);
}

func void DIA_LEAN_FIRSTWARN_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lean_FirstWarn_What_15_01");
    DIA_LEAN_FIRSTWARN_NEXT();
}

func void DIA_LEAN_FIRSTWARN_STEPS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lean_FirstWarn_Steps_15_01");
    DIA_LEAN_FIRSTWARN_NEXT();
}

instance DIA_LEAN_SECONDWARN(C_INFO) {
    NPC = 58310;
    NR = 1;
    CONDITION = DIA_LEAN_SECONDWARN_CONDITION;
    INFORMATION = DIA_LEAN_SECONDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_LEAN_SECONDWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, LEAN_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEAN_SECONDWARN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lean_SecondWarn_03_01");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, LEAN_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
    INFO_CLEARCHOICES(82129);
}

instance DIA_LEAN_LASTWARN(C_INFO) {
    NPC = 58310;
    NR = 1;
    CONDITION = DIA_LEAN_LASTWARN_CONDITION;
    INFORMATION = DIA_LEAN_LASTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_LEAN_LASTWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, LEAN_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEAN_LASTWARN_INFO() {
    DIA_LEAN_KILLMARVIN();
}

instance DIA_LEAN_Q403_CRAWLERPLATE(C_INFO) {
    NPC = 58310;
    NR = 1;
    CONDITION = DIA_LEAN_Q403_CRAWLERPLATE_CONDITION;
    INFORMATION = DIA_LEAN_Q403_CRAWLERPLATE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I heard Jon was trying to make armor out of minecrawler plates.";
}

func int DIA_LEAN_Q403_CRAWLERPLATE_CONDITION() {
    return NPC_KNOWSINFO(OTHER, 82539);
}

func void DIA_LEAN_Q403_CRAWLERPLATE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lean_Q403_CrawlerPlate_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lean_Q403_CrawlerPlate_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lean_Q403_CrawlerPlate_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lean_Q403_CrawlerPlate_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lean_Q403_CrawlerPlate_03_05");
}

instance DIA_LEAN_AMBIENT(C_INFO) {
    NPC = 58310;
    NR = 850;
    CONDITION = DIA_LEAN_AMBIENT_CONDITION;
    INFORMATION = DIA_LEAN_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the guard duty?";
}

func int DIA_LEAN_AMBIENT_CONDITION() {
    if ((LEAN_ALLOWUSTOGO) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEAN_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lean_Ambient_15_01");
    if ((KAPITEL) == (4)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lean_Ambient_03_02");
    };
    if ((KAPITEL) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lean_Ambient_03_03");
    };
}

instance DIA_LEAN_PICKPOCKET(C_INFO) {
    NPC = 58310;
    NR = 900;
    CONDITION = DIA_LEAN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LEAN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_LEAN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEAN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(82149);
    INFO_ADDCHOICE(82149, DIALOG_BACK, 82153);
    INFO_ADDCHOICE(82149, DIALOG_PICKPOCKET, 82152);
}

func void DIA_LEAN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(82149);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(82149);
}

func void DIA_LEAN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(82149);
}

