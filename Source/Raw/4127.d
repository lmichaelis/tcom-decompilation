instance DIA_KYLID_EXIT(C_INFO) {
    NPC = 0xe3e2;
    NR = 999;
    CONDITION = DIA_KYLID_EXIT_CONDITION;
    INFORMATION = DIA_KYLID_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_KYLID_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_KYLID_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_KYLID_SQ415_EMOTIONS(C_INFO) {
    NPC = 0xe3e2;
    NR = 1;
    CONDITION = DIA_KYLID_SQ415_EMOTIONS_CONDITION;
    INFORMATION = DIA_KYLID_SQ415_EMOTIONS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How are the emotions before the fight?";
}

func int DIA_KYLID_SQ415_EMOTIONS_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ415)) == (LOG_RUNNING)) && ((SQ415_OURWARRIOR) == (1))) && (NPC_KNOWSINFO(OTHER, 0x141c8))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KYLID_SQ415_EMOTIONS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kylid_SQ415_Emotions_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_Emotions_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Kylid_SQ415_Emotions_15_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_Emotions_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Kylid_SQ415_Emotions_15_05");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_Emotions_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_Emotions_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_Emotions_03_08");
    AI_LOGENTRY(TOPIC_SQ415, LOG_SQ415_KYLID_EMOTIONS);
}

instance DIA_KYLID_SQ415_CANTRAIN(C_INFO) {
    NPC = 0xe3e2;
    NR = 1;
    CONDITION = DIA_KYLID_SQ415_CANTRAIN_CONDITION;
    INFORMATION = DIA_KYLID_SQ415_CANTRAIN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I can train with you.";
}

func int DIA_KYLID_SQ415_CANTRAIN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ415)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x141af))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KYLID_SQ415_CANTRAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kylid_SQ415_CanTrain_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_CanTrain_03_02");
}

instance DIA_KYLID_SQ415_LETSGO(C_INFO) {
    NPC = 0xe3e2;
    NR = 1;
    CONDITION = DIA_KYLID_SQ415_LETSGO_CONDITION;
    INFORMATION = DIA_KYLID_SQ415_LETSGO_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Let's start training.";
}

var int KYLID_SQ415_TRAININGSTATUS = 0;
func int DIA_KYLID_SQ415_LETSGO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ415)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x141b2))) {
        if ((KYLID_SQ415_TRAININGSTATUS) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_KYLID_SQ415_LETSGO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kylid_SQ415_LetsGo_15_01");
    if ((Q402_GRONCUTSCENESTATUS) == (1)) {
        AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_LetsGo_03_02");
    };
    KYLID_SQ415_TRAININGSTATUS = 1;
    SELF.GUILD = GIL_NONE;
    NPC_SETTRUEGUILD(SELF, GIL_NONE);
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_LetsGo_03_03");
    NPC_EXCHANGEROUTINE(SELF, "SQ415_TRAINING");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_KYLID_SQ415_TRAINING(C_INFO) {
    NPC = 0xe3e2;
    NR = 1;
    CONDITION = DIA_KYLID_SQ415_TRAINING_CONDITION;
    INFORMATION = DIA_KYLID_SQ415_TRAINING_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KYLID_SQ415_TRAINING_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ415)) == (LOG_RUNNING)) && ((KYLID_SQ415_TRAININGSTATUS) == (1))) && ((NPC_GETDISTTOWP(SELF, "PART16_CUTSCENE_BOLT_HERO")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void KYLID_ARENAFIGHT() {
    HERO.AIVAR[96] = 10;
    SELF.AIVAR[96] = 10;
    SELF.AIVAR[45] = AF_RUNNING;
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, HERO, AR_NONE, 1);
}

func void DIA_KYLID_SQ415_TRAINING_INFO() {
    KYLID_SQ415_TRAININGSTATUS = 2;
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_Training_03_01");
    KYLID_ARENAFIGHT();
}

instance DIA_KYLID_SQ415_AFTERFIGHT(C_INFO) {
    NPC = 0xe3e2;
    NR = 1;
    CONDITION = DIA_KYLID_SQ415_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_KYLID_SQ415_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KYLID_SQ415_AFTERFIGHT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ415)) == (LOG_RUNNING)) && ((KYLID_SQ415_TRAININGSTATUS) == (2))) {
        if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
            if ((SELF.AIVAR[45]) != (AF_NONE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_KYLID_SQ415_COUNTTASKS() {
    KYLID_SQ415_COUNTTASKS = (KYLID_SQ415_COUNTTASKS) + (1);
    if ((KYLID_SQ415_COUNTTASKS) == (2)) {
        SQ415_KYLIDREADY = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_ReadyForFight_03_01");
        AI_OUTPUT(OTHER, SELF, "DIA_Kylid_SQ415_ReadyForFight_15_02");
        AI_LOGENTRY(TOPIC_SQ415, LOG_SQ415_KYLID_READYFORFIGHT);
    };
}

var int DIA_KYLID_SQ415_COUNTTASKS.KYLID_SQ415_COUNTTASKS = 0;
func void DIA_KYLID_SQ415_AFTERFIGHT_INFO() {
    KYLID_SQ415_TRAININGSTATUS = 3;
    SELF.GUILD = GIL_DJG;
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_AfterFight_03_01");
    };
    NPC_SETTRUEGUILD(SELF, GIL_DJG);
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_AfterFight_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_AfterFight_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Kylid_SQ415_AfterFight_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_AfterFight_03_05");
    AI_LOGENTRY(TOPIC_SQ415, LOG_SQ415_KYLID_AFTERFIGHT);
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, START);
    DIA_KYLID_SQ415_COUNTTASKS();
}

instance DIA_KYLID_SQ415_GOTPLANT(C_INFO) {
    NPC = 0xe3e2;
    NR = 1;
    CONDITION = DIA_KYLID_SQ415_GOTPLANT_CONDITION;
    INFORMATION = DIA_KYLID_SQ415_GOTPLANT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I brought the plant you asked for.";
}

func int DIA_KYLID_SQ415_GOTPLANT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ415)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x141af))) && ((NPC_HASITEMS(OTHER, 0x85ee)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KYLID_SQ415_GOTPLANT_INFO() {
    NPC_REMOVEINVITEMS(SELF, 0x85ee, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Kylid_SQ415_GotPlant_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x85ee, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_GotPlant_03_02");
    B_USEFAKEDEXHERB_STATE_START();
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_GotPlant_03_03");
    B_USEFAKEDEXHERB_STATE_REMOVE();
    AI_LOGENTRY(TOPIC_SQ415, LOG_SQ415_KYLID_GOTPLANT);
    DIA_KYLID_SQ415_COUNTTASKS();
}

instance DIA_KYLID_SQ415_FINISH(C_INFO) {
    NPC = 0xe3e2;
    NR = 1;
    CONDITION = DIA_KYLID_SQ415_FINISH_CONDITION;
    INFORMATION = DIA_KYLID_SQ415_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KYLID_SQ415_FINISH_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ415)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x14181))) && ((SQ415_OURWARRIOR) == (1))) && ((SQ415_FIGHTRESULT) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KYLID_SQ415_FINISH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kylid_SQ415_Finish_15_01");
    if ((SQ415_FIGHTRESULT) == (1)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_Finish_03_02");
    };
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_Finish_03_06");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_Finish_03_03");
    CREATEINVITEMS(SELF, 0x8645, 1);
    if ((SQ415_FIGHTRESULT) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_Finish_03_07");
    };
    B_GIVEINVITEMS(SELF, OTHER, 0x8645, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Kylid_SQ415_Finish_15_04");
    if ((SQ415_FIGHTRESULT) == (1)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Kylid_SQ415_Finish_03_05");
    };
    AI_LOGENTRY(TOPIC_SQ415, LOG_SQ415_KYLID_FINISH);
    SQ415_FINISHQUEST();
}

instance DIA_KYLID_HELLO(C_INFO) {
    NPC = 0xe3e2;
    NR = 1;
    CONDITION = DIA_KYLID_HELLO_CONDITION;
    INFORMATION = DIA_KYLID_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_KYLID_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_KYLID_HELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhoAreYou");
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_Hello_03_01");
}

instance DIA_KYLID_AMBIENT(C_INFO) {
    NPC = 0xe3e2;
    NR = 998;
    CONDITION = DIA_KYLID_AMBIENT_CONDITION;
    INFORMATION = DIA_KYLID_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What's up?";
}

func int DIA_KYLID_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x141c8)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KYLID_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_HowAreYou2");
    if ((SQ415_FIGHTRESULT) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Kylid_Ambient_03_01");
    };
    if ((SQ415_FIGHTRESULT) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Kylid_Ambient_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Kylid_Ambient_03_03");
}

instance DIA_KYLID_Q404_NEEDHELP(C_INFO) {
    NPC = 0xe3e2;
    NR = 850;
    CONDITION = DIA_KYLID_Q404_NEEDHELP_CONDITION;
    INFORMATION = DIA_KYLID_Q404_NEEDHELP_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I need someone to guard the mine.";
}

func int DIA_KYLID_Q404_NEEDHELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING)) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KYLID_Q404_NEEDHELP_INFO() {
    Q404_MARVINASK_NEEDHELP();
    DIA_IMBUSY_CALM();
}

instance DIA_KYLID_PICKPOCKET(C_INFO) {
    NPC = 0xe3e2;
    NR = 900;
    CONDITION = DIA_KYLID_PICKPOCKET_CONDITION;
    INFORMATION = DIA_KYLID_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_KYLID_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KYLID_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x141d1);
    INFO_ADDCHOICE(0x141d1, DIALOG_BACK, 0x141d5);
    INFO_ADDCHOICE(0x141d1, DIALOG_PICKPOCKET, 0x141d4);
}

func void DIA_KYLID_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x141d1);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x141d1);
}

func void DIA_KYLID_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x141d1);
}

