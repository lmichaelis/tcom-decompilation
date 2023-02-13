instance DIA_LEXX_EXIT(C_INFO) {
    NPC = 53066;
    NR = 999;
    CONDITION = DIA_LEXX_EXIT_CONDITION;
    INFORMATION = DIA_LEXX_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LEXX_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LEXX_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LEXX_HELLO(C_INFO) {
    NPC = 53066;
    NR = 1;
    CONDITION = DIA_LEXX_HELLO_CONDITION;
    INFORMATION = DIA_LEXX_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What is this place?";
}

func int DIA_LEXX_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_LEXX_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_HELLO_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_HELLO_03_02");
}

instance DIA_LEXX_JOB(C_INFO) {
    NPC = 53066;
    NR = 1;
    CONDITION = DIA_LEXX_JOB_CONDITION;
    INFORMATION = DIA_LEXX_JOB_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Are you involved in usury?";
}

func int DIA_LEXX_JOB_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 73242)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEXX_JOB_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_Job_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_Job_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_Job_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_Job_03_04");
    AI_RESETFACEANI(OTHER);
}

instance DIA_LEXX_ANYGOLD(C_INFO) {
    NPC = 53066;
    NR = 1;
    CONDITION = DIA_LEXX_ANYGOLD_CONDITION;
    INFORMATION = DIA_LEXX_ANYGOLD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Does that mean I can borrow ANY amount from you?";
}

func int DIA_LEXX_ANYGOLD_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 73245)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEXX_ANYGOLD_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_AnyGold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_AnyGold_03_02");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_AnyGold_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_AnyGold_15_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_AnyGold_03_05");
    AI_RESETFACEANI(OTHER);
}

instance DIA_LEXX_VOLKER(C_INFO) {
    NPC = 53066;
    NR = 1;
    CONDITION = DIA_LEXX_VOLKER_CONDITION;
    INFORMATION = DIA_LEXX_VOLKER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Are you sending them to your competitor?";
}

func int DIA_LEXX_VOLKER_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 73248)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEXX_VOLKER_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_Volker_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_Volker_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_Volker_03_03");
}

instance DIA_LEXX_SQ207_START(C_INFO) {
    NPC = 53066;
    NR = 1;
    CONDITION = DIA_LEXX_SQ207_START_CONDITION;
    INFORMATION = DIA_LEXX_SQ207_START_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can I borrow some gold from you?";
}

func int DIA_LEXX_SQ207_START_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 73248)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEXX_SQ207_START_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Start_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Start_03_02");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Start_03_03");
    INFO_CLEARCHOICES(73254);
    INFO_ADDCHOICE(73254, "I'm not interested.", 73258);
    INFO_ADDCHOICE(73254, "What kind of proposal is that?", 73259);
}

var int LEXX_SQ207_TAKEQUEST;
func void DIA_LEXX_SQ207_START_NO() {
    LEXX_SQ207_TAKEQUEST = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Start_No_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Start_No_03_02");
    INFO_CLEARCHOICES(73254);
}

func void DIA_LEXX_SQ207_START_YES() {
    LEXX_SQ207_TAKEQUEST = 2;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Start_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Start_Yes_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Start_Yes_03_03");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(73254);
}

instance DIA_LEXX_SQ207_TAKEQUEST(C_INFO) {
    NPC = 53066;
    NR = 1;
    CONDITION = DIA_LEXX_SQ207_TAKEQUEST_CONDITION;
    INFORMATION = DIA_LEXX_SQ207_TAKEQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What kind of proposal is that?";
}

func int DIA_LEXX_SQ207_TAKEQUEST_CONDITION() {
    if ((LEXX_SQ207_TAKEQUEST) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEXX_SQ207_TAKEQUEST_INFO() {
    DIA_LEXX_SQ207_START_YES();
}

instance DIA_LEXX_SQ207_WHO(C_INFO) {
    NPC = 53066;
    NR = 1;
    CONDITION = DIA_LEXX_SQ207_WHO_CONDITION;
    INFORMATION = DIA_LEXX_SQ207_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who specifically should I go to?";
}

func int DIA_LEXX_SQ207_WHO_CONDITION() {
    if ((LEXX_SQ207_TAKEQUEST) == (2)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEXX_SQ207_WHO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Who_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Who_Allright_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Who_Allright_03_02");
    LOG_CREATETOPIC(TOPIC_SQ207, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ207), TOPIC_SQ207, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ207, LOG_SQ207_START);
}

instance DIA_LEXX_SQ207_ASK(C_INFO) {
    NPC = 53066;
    NR = 30;
    CONDITION = DIA_LEXX_SQ207_ASK_CONDITION;
    INFORMATION = DIA_LEXX_SQ207_ASK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ASKABOUTDEBTORS;
}

var int LEXX_SQ207_ASK_FORCE;
var int LEXX_SQ207_ASK_MORE;
func int DIA_LEXX_SQ207_ASK_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ207)) == (LOG_RUNNING)) {
        if (((LEXX_SQ207_ASK_FORCE) == (FALSE)) || ((LEXX_SQ207_ASK_MORE) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEXX_SQ207_ASK_INFO() {
    INFO_CLEARCHOICES(73266);
    INFO_ADDCHOICE(73266, DIALOG_BACK, 73271);
    if ((LEXX_SQ207_ASK_FORCE) == (FALSE)) {
        INFO_ADDCHOICE(73266, "Should I force them to pay the debt?", 73273);
    };
    if ((LEXX_SQ207_ASK_MORE) == (FALSE)) {
        INFO_ADDCHOICE(73266, "What should I know about them?", 73272);
    };
}

func void DIA_LEXX_SQ207_ASK_BACK() {
    INFO_CLEARCHOICES(73266);
}

func void DIA_LEXX_SQ207_ASK_MORE() {
    LEXX_SQ207_ASK_MORE = TRUE;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Ask_More_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Ask_More_03_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Ask_More_03_03");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Ask_More_03_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    DIA_LEXX_SQ207_ASK_INFO();
}

func void DIA_LEXX_SQ207_ASK_FORCE() {
    LEXX_SQ207_ASK_FORCE = TRUE;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Ask_Force_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Ask_Force_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Ask_Force_03_03");
    AI_RESETFACEANI(OTHER);
    DIA_LEXX_SQ207_ASK_INFO();
}

instance DIA_LEXX_SQ207_FINISH(C_INFO) {
    NPC = 53066;
    NR = 20;
    CONDITION = DIA_LEXX_SQ207_FINISH_CONDITION;
    INFORMATION = DIA_LEXX_SQ207_FINISH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Back to debt...";
}

func int DIA_LEXX_SQ207_FINISH_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ207)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int LEXX_SQ207_FINISH_DIMA;
var int LEXX_SQ207_FINISH_KUNO;
var int LEXX_SQ207_FINISH_BORIS;
func void DIA_LEXX_SQ207_FINISH_DONE() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Finish_Done_03_03");
    CREATEINVITEMS(SELF, 34203, SQ207_REWARD);
    B_GIVEINVITEMS(SELF, OTHER, 34203, SQ207_REWARD);
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Finish_Done_15_04");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Finish_Done_03_05");
    INFO_CLEARCHOICES(73274);
    INFO_ADDCHOICE(73274, "Why?", 73280);
}

func void DIA_LEXX_SQ207_FINISH_DONE_WHY() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Finish_Why_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Finish_Why_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Finish_Why_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Finish_Why_15_04");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Finish_Why_03_05");
    INFO_CLEARCHOICES(73274);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_SQ207, LOG_SQ207_FINISH);
    LOG_SETSTATUS(_@(MIS_SQ207), TOPIC_SQ207, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_SQ207_FINISH);
}

func void DIA_LEXX_SQ207_FINISH_CHOICES() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    if ((((LEXX_SQ207_FINISH_KUNO) == (FALSE)) || ((LEXX_SQ207_FINISH_DIMA) == (FALSE))) || ((LEXX_SQ207_FINISH_BORIS) == (FALSE))) {
        INFO_CLEARCHOICES(73274);
        INFO_ADDCHOICE(73274, DIALOG_BACK, 73283);
        if (((SQ207_DIMATOLEXX) >= (9)) || ((SQ207_DIMATOLEXX) == (3))) {
            if ((LEXX_SQ207_FINISH_DIMA) == (FALSE)) {
                INFO_ADDCHOICE(73274, "Did Dima visit you?", 73284);
            };
        };
        if ((SQ207_KUNORESULT) >= (1)) {
            if ((LEXX_SQ207_FINISH_KUNO) == (FALSE)) {
                if ((SQ207_KUNORESULT) == (1)) {
                    INFO_ADDCHOICE(73274, "I want to pay for Kuno (100 GP).", 73285);
                } else {
                    INFO_ADDCHOICE(73274, "Kuno refused to repay the debt.", 73286);
                };
            };
        };
        if ((LEXX_SQ207_FINISH_BORIS) == (FALSE)) {
            if (NPC_KNOWSINFO(OTHER, 74420)) {
                INFO_ADDCHOICE(73274, "Frida will come whenever she finds a spare moment.", 73287);
            };
        };
    };
    DIA_LEXX_SQ207_FINISH_DONE();
}

func void DIA_LEXX_SQ207_FINISH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Finish_15_01");
    DIA_LEXX_SQ207_FINISH_CHOICES();
}

func void DIA_LEXX_SQ207_FINISH_BACK() {
    INFO_CLEARCHOICES(73274);
}

func void DIA_LEXX_SQ207_FINISH_DIMA() {
    LEXX_SQ207_FINISH_DIMA = TRUE;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Finish_Dima_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Finish_Dima_03_02");
    DIA_LEXX_SQ207_FINISH_CHOICES();
}

func void DIA_LEXX_SQ207_FINISH_KUNO_PAY() {
    LEXX_SQ207_FINISH_KUNO = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Finish_Kuno_Pay_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Finish_Kuno_Pay_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Finish_Kuno_Pay_03_03");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Finish_Kuno_Pay_03_04");
    DIA_LEXX_SQ207_FINISH_CHOICES();
}

func void DIA_LEXX_SQ207_FINISH_KUNO_NOTPAY() {
    LEXX_SQ207_FINISH_KUNO = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Finish_Kuno_NotPay_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Finish_Kuno_NotPay_03_02");
    DIA_LEXX_SQ207_FINISH_CHOICES();
}

func void DIA_LEXX_SQ207_FINISH_BORIS() {
    LEXX_SQ207_FINISH_BORIS = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lexx_SQ207_Finish_Boris_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lexx_SQ207_Finish_Boris_03_02");
    DIA_LEXX_SQ207_FINISH_CHOICES();
}

instance DIA_LEXX_AMBIENT(C_INFO) {
    NPC = 53066;
    NR = 900;
    CONDITION = DIA_LEXX_AMBIENT_CONDITION;
    INFORMATION = DIA_LEXX_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's business going?";
}

func int DIA_LEXX_AMBIENT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ207)) == (LOG_SUCCESS)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEXX_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_AboutBuisness");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lexx_AMBIENT_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lexx_AMBIENT_03_03");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lexx_AMBIENT_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Lexx_AMBIENT_03_05");
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_LEXX_PICKPOCKET(C_INFO) {
    NPC = 53066;
    NR = 900;
    CONDITION = DIA_LEXX_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LEXX_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80_FEMALE;
}

func int DIA_LEXX_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEXX_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(73291);
    INFO_ADDCHOICE(73291, DIALOG_BACK, 73295);
    INFO_ADDCHOICE(73291, DIALOG_PICKPOCKET, 73294);
}

func void DIA_LEXX_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(73291);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(73291);
}

func void DIA_LEXX_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(73291);
}

