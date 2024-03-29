instance DIA_TOLLEK_EXIT(C_INFO) {
    NPC = 56341;
    NR = 999;
    CONDITION = DIA_TOLLEK_EXIT_CONDITION;
    INFORMATION = DIA_TOLLEK_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_TOLLEK_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_TOLLEK_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_TOLLEK_NICEPLACE(C_INFO) {
    NPC = 56341;
    NR = 1;
    CONDITION = DIA_TOLLEK_NICEPLACE_CONDITION;
    INFORMATION = DIA_TOLLEK_NICEPLACE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_TOLLEK_NICEPLACE_CONDITION() {
    if (((SQ119_SPAWNTOLLEK_CHECK) == (TRUE)) && ((QA306_GOTOARAXOSMINE) == (0))) {
        if ((Q504_TAKEWORKERS) != (2)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int TOLLEK_GOLDNUGGET_PRICE;
func void DIA_TOLLEK_NICEPLACE_INFO() {
    TOLLEK_GOLDNUGGET_PRICE = 6;
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_NicePlace_03_01");
    AI_STARTFACEANI(SELF, S_DISGUST, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_NicePlace_03_02");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_NicePlace_03_03");
    INFO_CLEARCHOICES(78844);
    INFO_ADDCHOICE(78844, "No, thanks. I'll be fine on my own.", 78849);
    INFO_ADDCHOICE(78844, "Here, I would love to learn a little more about this craft.", 78848);
}

func void DIA_TOLLEK_NICEPLACE_SURE() {
    SQ119_TOLLEKRESULT = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Tollek_NicePlace_Sure_15_01");
    if ((NPC_HASITEMS(OTHER, 33660)) >= (TOLLEK_GOLDNUGGET_PRICE)) {
        if ((HERO_HACKCHANCE) != (100)) {
            if ((HERO_HACKCHANCE) < (93)) {
                B_UPGRADE_HERO_HACKCHANCE(7);
            } else {
                B_UPGRADE_HERO_HACKCHANCE((100) - (HERO_HACKCHANCE));
            };
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_NicePlace_Sure_03_03");
    if ((HERO_HACKCHANCE) != (100)) {
        if ((HERO_HACKCHANCE) < (97)) {
            B_UPGRADE_HERO_HACKCHANCE(3);
        } else {
            B_UPGRADE_HERO_HACKCHANCE((100) - (HERO_HACKCHANCE));
        };
    };
    AI_WAITTILLEND(SELF, OTHER);
    AI_GOTOWP(SELF, "PART7_MINE_GOLDMOB_NIKOLT");
    AI_USEMOB(SELF, "ORE", 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_NicePlace_Sure_03_02");
    NPC_EXCHANGEROUTINE(SELF, "GOLDMOB_WORK");
    INFO_CLEARCHOICES(78844);
    AI_STOPPROCESSINFOS(SELF);
    if ((LOG_GETSTATUS(MIS_SQ119)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_SQ119, LOG_SQ119_TOLLEK_SHOWTHEWAY);
    };
}

func void DIA_TOLLEK_NICEPLACE_NO() {
    TOLLEK_GOLDNUGGET_PRICE = 4;
    AI_OUTPUT(OTHER, SELF, "DIA_Tollek_NicePlace_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_NicePlace_No_03_02");
    INFO_ADDCHOICE(78844, "I already told you something, I'm not interested.", 78850);
}

func void DIA_TOLLEK_NICEPLACE_NO_GOAWAY() {
    TOLLEK_GOLDNUGGET_PRICE = 3;
    AI_OUTPUT(OTHER, SELF, "DIA_Tollek_NicePlace_GoAway_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_NicePlace_GoAway_03_02");
    INFO_ADDCHOICE(78844, "Leave me alone or you'll get hurt.", 78851);
}

func void DIA_TOLLEK_NICEPLACE_NO_GOAWAY_PISSOFF() {
    SQ119_TOLLEKRESULT = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Tollek_NicePlace_PissOff_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_NicePlace_PissOff_03_02");
    INFO_CLEARCHOICES(78844);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "GOLDMOB_GOAWAY");
    AI_FUNCTION(SELF, 47232);
}

instance DIA_TOLLEK_GIVEBACK(C_INFO) {
    NPC = 56341;
    NR = 1;
    CONDITION = DIA_TOLLEK_GIVEBACK_CONDITION;
    INFORMATION = DIA_TOLLEK_GIVEBACK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "All right, now you can give me my spot back.";
}

func int DIA_TOLLEK_GIVEBACK_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 78844)) && ((SQ119_TOLLEKRESULT) == (1))) && ((QA306_GOTOARAXOSMINE) == (0))) {
        if ((Q504_TAKEWORKERS) != (2)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOLLEK_GIVEBACK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tollek_GiveBack_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_GiveBack_03_02");
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Tollek_GiveBack_15_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_GiveBack_03_04");
    INFO_CLEARCHOICES(78852);
    INFO_ADDCHOICE(78852, "I paid you, and you're still stealing from me?", 78857);
    INFO_ADDCHOICE(78852, "You leave me no choice, I'll have to drag you away by force.", 78856);
}

func void DIA_TOLLEK_GIVEBACK_NEXT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tollek_GiveBack_Next_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_GiveBack_Next_03_02");
    if ((LOG_GETSTATUS(MIS_SQ119)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_SQ119, LOG_SQ119_TOLLEK_SCAMED);
    };
    INFO_CLEARCHOICES(78852);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_FUNCTION(SELF, 47232);
}

func void DIA_TOLLEK_GIVEBACK_FORCE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tollek_GiveBack_Force_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_GiveBack_Force_03_02");
    DIA_TOLLEK_GIVEBACK_NEXT();
}

func void DIA_TOLLEK_GIVEBACK_PAID() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tollek_GiveBack_Paid_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_GiveBack_Paid_03_02");
    DIA_TOLLEK_GIVEBACK_NEXT();
}

instance DIA_TOLLEK_QA306_FIRSTWARN(C_INFO) {
    NPC = 56341;
    NR = 1;
    CONDITION = DIA_TOLLEK_QA306_FIRSTWARN_CONDITION;
    INFORMATION = DIA_TOLLEK_QA306_FIRSTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

const string TOLLEK_CHECKPOINT = "PART7_MINE_QA306_TOLLEK";
var int TOLLEK_ALLOWUSTOGO;
func int DIA_TOLLEK_QA306_FIRSTWARN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((QA306_GOTOARAXOSMINE) == (2))) {
        if ((TOLLEK_ALLOWUSTOGO) == (TRUE)) {
            SELF.AIVAR[14] = TRUE;
        };
        if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (700)) {
            if (((((SELF.AIVAR[12]) == (GP_NONE)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_REFUSETALK(SELF)) == (FALSE))) {
                if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
                    return TRUE;
                };
            };
        };
    };
    return 0 /* !broken stack! */;
}

var int TOLLEK_QA306_FIRSTWARN_FIRSTDIALOGUE;
var int TOLLEK_QA306_WANTSTOWORK;
func void DIA_TOLLEK_QA306_FIRSTWARN_INFO() {
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    if (NPC_KNOWSINFO(OTHER, 78844)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_FIRSTWARN_03_01");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_FIRSTWARN_03_02");
    if ((TOLLEK_QA306_FIRSTWARN_FIRSTDIALOGUE) == (FALSE)) {
        TOLLEK_QA306_FIRSTWARN_FIRSTDIALOGUE = TRUE;
        INFO_CLEARCHOICES(78858);
        if ((HERO_HACKCHANCE) >= (50)) {
            INFO_ADDCHOICE(78858, "I've been training a lot lately.", 78865);
        } else {
            INFO_ADDCHOICE(78858, "I can swing a pickaxe if that's what you want to know.", 78866);
        };
    };
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, TOLLEK_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
}

func void DIA_TOLLEK_QA306_FIRSTWARN_TRAIN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Tollek_QA306_FIRSTWARN_Train_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_FIRSTWARN_Train_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_FIRSTWARN_Train_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_FIRSTWARN_Train_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_FIRSTWARN_Train_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_FIRSTWARN_Train_03_06");
    INFO_CLEARCHOICES(78858);
    INFO_ADDCHOICE(78858, "I'm not going into any business with you.", 78868);
    INFO_ADDCHOICE(78858, "Sure, let's get to work.", 78867);
    INFO_CLEARCHOICES(78875);
    INFO_ADDCHOICE(78875, "I'm not going into any business with you.", 78868);
    INFO_ADDCHOICE(78875, "Sure, let's get to work.", 78867);
}

func void DIA_TOLLEK_QA306_FIRSTWARN_NO() {
    TOLLEK_QA306_WANTSTOWORK = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Tollek_QA306_FIRSTWARN_No_15_01");
    AI_STARTFACEANI(SELF, S_DOUBT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_FIRSTWARN_No_03_02");
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_TOLLEK_SEARCHWORKER);
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(78858);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_TOLLEK_QA306_FIRSTWARN_TRAIN_SURE() {
    TOLLEK_ALLOWUSTOGO = TRUE;
    QA306_HELPTOLLEK = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Tollek_QA306_FIRSTWARN_Sure_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_FIRSTWARN_Sure_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_FIRSTWARN_Sure_03_03");
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_TOLLEK_AGREE);
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(78858);
    INFO_CLEARCHOICES(78875);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 63232);
}

func void DIA_TOLLEK_QA306_FIRSTWARN_TRAIN_NOPE() {
    TOLLEK_QA306_WANTSTOWORK = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Tollek_QA306_FIRSTWARN_Nope_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_FIRSTWARN_Nope_03_02");
    AI_RESETFACEANI(SELF);
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_TOLLEK_REFUSE);
    INFO_CLEARCHOICES(78858);
    INFO_CLEARCHOICES(78875);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_TOLLEK_QA306_SECONDWARN(C_INFO) {
    NPC = 56341;
    NR = 2;
    CONDITION = DIA_TOLLEK_QA306_SECONDWARN_CONDITION;
    INFORMATION = DIA_TOLLEK_QA306_SECONDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_TOLLEK_QA306_SECONDWARN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((QA306_GOTOARAXOSMINE) == (2))) {
        if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, TOLLEK_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
            if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOLLEK_QA306_SECONDWARN_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_SECONDWARN_03_01");
    AI_RESETFACEANI(SELF);
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, TOLLEK_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
}

instance DIA_TOLLEK_QA306_THIRDWARN(C_INFO) {
    NPC = 56341;
    NR = 1;
    CONDITION = DIA_TOLLEK_QA306_THIRDWARN_CONDITION;
    INFORMATION = DIA_TOLLEK_QA306_THIRDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_TOLLEK_QA306_THIRDWARN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((QA306_GOTOARAXOSMINE) == (2))) {
        if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, TOLLEK_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
            if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOLLEK_QA306_THIRDWARN_INFO() {
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    B_SAY(SELF, OTHER, "$Alarm");
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
}

instance DIA_TOLLEK_QA306_WANTTOHELP(C_INFO) {
    NPC = 56341;
    NR = 1;
    CONDITION = DIA_TOLLEK_QA306_WANTTOHELP_CONDITION;
    INFORMATION = DIA_TOLLEK_QA306_WANTTOHELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I've been training a lot lately.";
}

func int DIA_TOLLEK_QA306_WANTTOHELP_CONDITION() {
    if ((((((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((TOLLEK_QA306_WANTSTOWORK) == (1))) && ((TOLLEK_QA306_FIRSTWARN_FIRSTDIALOGUE) == (TRUE))) && ((HERO_HACKCHANCE) >= (50))) && ((QA306_GOTOARAXOSMINE) == (2))) {
        if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOLLEK_QA306_WANTTOHELP_INFO() {
    DIA_TOLLEK_QA306_FIRSTWARN_TRAIN();
}

instance DIA_TOLLEK_QA306_THANKS(C_INFO) {
    NPC = 56341;
    NR = 1;
    CONDITION = DIA_TOLLEK_QA306_THANKS_CONDITION;
    INFORMATION = DIA_TOLLEK_QA306_THANKS_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_TOLLEK_QA306_THANKS_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((QA306_HELPTOLLEK) == (2))) && ((QA306_GOTOARAXOSMINE) == (2))) {
        if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOLLEK_QA306_THANKS_INFO() {
    QA306_FINISHEDEVENTS = (QA306_FINISHEDEVENTS) + (1);
    WORKERREPUTATION_ARAXOSMINE = (WORKERREPUTATION_ARAXOSMINE) + (3);
    PRINTD(CS2("Reputacja u g�rnik�w Araxos: ", INTTOSTRING(WORKERREPUTATION_ARAXOSMINE)));
    AI_FUNCTION(SELF, 63233);
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_Thanks_03_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_Thanks_03_02");
    if ((SQ119_TOLLEKRESULT) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_Thanks_03_03");
        B_GIVEPLAYERXP(XP_QA306_TOLLEKSORRY);
    };
}

instance DIA_TOLLEK_QA306_TELLABOUT(C_INFO) {
    NPC = 56341;
    NR = 1;
    CONDITION = DIA_TOLLEK_QA306_TELLABOUT_CONDITION;
    INFORMATION = DIA_TOLLEK_QA306_TELLABOUT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Tell me what's been going on here lately.";
}

func int DIA_TOLLEK_QA306_TELLABOUT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 78878))) && ((QA306_GOTOARAXOSMINE) == (2))) {
        if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOLLEK_QA306_TELLABOUT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Tollek_QA306_TellAbout_15_01");
    AI_PLAYANI(SELF, T_SEARCH);
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_TellAbout_03_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_QA306_TellAbout_03_03");
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_TOLLEK_ABOUTMINE);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_TOLLEK_Q504_FEEL(C_INFO) {
    NPC = 56341;
    NR = 90;
    CONDITION = DIA_TOLLEK_Q504_FEEL_CONDITION;
    INFORMATION = DIA_TOLLEK_Q504_FEEL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the morale?";
}

func int DIA_TOLLEK_Q504_FEEL_CONDITION() {
    if ((((NPC_GETDISTTOWP(SELF, "PART5_WORKERSCAMP_SMALLTALK_02")) <= (2000)) && ((Q504_TAKEWORKERS) == (2))) && ((Q504_LOAFSVOLFZACKE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOLLEK_Q504_FEEL_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale3");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Tollek_Q504_Feel_03_01");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_TOLLEK_PICKPOCKET(C_INFO) {
    NPC = 56341;
    NR = 900;
    CONDITION = DIA_TOLLEK_PICKPOCKET_CONDITION;
    INFORMATION = DIA_TOLLEK_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_TOLLEK_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOLLEK_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(78887);
    INFO_ADDCHOICE(78887, DIALOG_BACK, 78891);
    INFO_ADDCHOICE(78887, DIALOG_PICKPOCKET, 78890);
}

func void DIA_TOLLEK_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 33660, 2);
        B_GIVEINVITEMS(SELF, OTHER, 33660, 2);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(78887);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(78887);
}

func void DIA_TOLLEK_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(78887);
}

