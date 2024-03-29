instance DIA_ERNESTO_EXIT(C_INFO) {
    NPC = 53423;
    NR = 999;
    CONDITION = DIA_ERNESTO_EXIT_CONDITION;
    INFORMATION = DIA_ERNESTO_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ERNESTO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ERNESTO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

instance DIA_ERNESTO_HELLO(C_INFO) {
    NPC = 53423;
    NR = 8;
    CONDITION = DIA_ERNESTO_HELLO_CONDITION;
    INFORMATION = DIA_ERNESTO_HELLO_INFO;
    DESCRIPTION = "Who are you?";
}

func int DIA_ERNESTO_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_ERNESTO_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Hello_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Hello_14_03");
}

instance DIA_ERNESTO_BUY(C_INFO) {
    NPC = 53423;
    NR = 1;
    CONDITION = DIA_ERNESTO_BUY_CONDITION;
    INFORMATION = DIA_ERNESTO_BUY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can I buy wine from you?";
}

func int DIA_ERNESTO_BUY_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ412)) != (LOG_SUCCESS)) {
        if (NPC_KNOWSINFO(OTHER, 74730)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ERNESTO_BUY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_Buy_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Buy_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Buy_03_03");
}

instance DIA_ERNESTO_MONOPOL(C_INFO) {
    NPC = 53423;
    NR = 2;
    CONDITION = DIA_ERNESTO_MONOPOL_CONDITION;
    INFORMATION = DIA_ERNESTO_MONOPOL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I see you've acquired quite a monopoly on what you do.";
}

func int DIA_ERNESTO_MONOPOL_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 74730)) && ((NPC_GETDISTTOWP(SELF, "PARTM5_ERNESTO_STAND")) <= (4000))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ERNESTO_MONOPOL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_Monopol_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Monopol_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Monopol_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_Monopol_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Monopol_03_05");
}

func void DIA_ERNESTO_HELLO_BACK() {
    INFO_CLEARCHOICES(74730);
}

instance DIA_ERNESTO_FAQ002_START(C_INFO) {
    NPC = 53423;
    NR = 1;
    CONDITION = DIA_ERNESTO_FAQ002_START_CONDITION;
    INFORMATION = DIA_ERNESTO_FAQ002_START_INFO;
    DESCRIPTION = "I heard from Lorenzo that you have a problem with a certain alchemist.";
}

func int DIA_ERNESTO_FAQ002_START_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 71011)) && (NPC_KNOWSINFO(OTHER, 74730))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ERNESTO_FAQ002_START_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_Start_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Start_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Start_14_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_Start_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Start_14_05");
}

instance DIA_ERNESTO_FAQ002_TOTHEPOINT(C_INFO) {
    NPC = 53423;
    NR = 1;
    CONDITION = DIA_ERNESTO_FAQ002_TOTHEPOINT_CONDITION;
    INFORMATION = DIA_ERNESTO_FAQ002_TOTHEPOINT_INFO;
    DESCRIPTION = "I'm all ears.";
}

func int DIA_ERNESTO_FAQ002_TOTHEPOINT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 74740)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void ERNESTO_DRINKWINE() {
    AI_STOPLOOKAT(SELF);
    CREATEINVITEMS(SELF, 36023, 1);
    B_USEITEM(SELF, 36023);
}

func void ERNESTO_MARVIN_DRINKWINE() {
    AI_WAIT(OTHER, 1050253722);
    AI_STOPLOOKAT(OTHER);
    CREATEINVITEMS(OTHER, 36023, 1);
    B_USEITEM(OTHER, 36023);
}

func void DIA_ERNESTO_FAQ002_TOTHEPOINT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_ToThePoint_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_14_02");
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    ERNESTO_DRINKWINE();
    ERNESTO_MARVIN_DRINKWINE();
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_14_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_14_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_14_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_14_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_14_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_14_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_14_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_14_11");
    INFO_CLEARCHOICES(74743);
    INFO_ADDCHOICE(74743, "Why are you so concerned about Bodowin's opinion?", 74750);
}

func void DIA_ERNESTO_FAQ002_TOTHEPOINT_COUNT_V2() {
    var int ERNESTO_FAQ002_TOTHEPOINT_COUNT;
    ERNESTO_FAQ002_TOTHEPOINT_COUNT = (ERNESTO_FAQ002_TOTHEPOINT_COUNT) + (1);
    if ((ERNESTO_FAQ002_TOTHEPOINT_COUNT) == (2)) {
        INFO_ADDCHOICE(74743, "I will try to get this matter resolved quickly.", 74754);
    };
}

func void DIA_ERNESTO_FAQ002_TOTHEPOINT_RICHGUY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_ToThePoint_RichGuy_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_RichGuy_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_RichGuy_14_03");
    INFO_CLEARCHOICES(74743);
    INFO_ADDCHOICE(74743, "How can I help you?", 74751);
}

func void DIA_ERNESTO_FAQ002_TOTHEPOINT_START() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_ToThePoint_start_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_start_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_start_14_11");
    INFO_CLEARCHOICES(74743);
    INFO_ADDCHOICE(74743, "Who was this expert on herbs?", 74752);
    INFO_ADDCHOICE(74743, "How do you know this man?", 74753);
}

func void DIA_ERNESTO_FAQ002_TOTHEPOINT_GUY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_ToThePoint_Guy_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_Guy_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_Guy_14_03");
    DIA_ERNESTO_FAQ002_TOTHEPOINT_COUNT_V2();
}

func void DIA_ERNESTO_FAQ002_TOTHEPOINT_KNOW() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_ToThePoint_Know_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_Know_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_Know_14_03");
    DIA_ERNESTO_FAQ002_TOTHEPOINT_COUNT_V2();
}

func void DIA_ERNESTO_FAQ002_TOTHEPOINT_THATSALL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_ToThePoint_ThatsAll_15_01");
    if ((OTHER.GUILD) == (GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_ThatsAll_14_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_ThatsAll_14_05");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_ThatsAll_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_ToThePoint_ThatsAll_14_03");
    LOG_CREATETOPIC(TOPIC_FAQ002, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_FAQ002), TOPIC_FAQ002, LOG_RUNNING);
    AI_FUNCTION(HERO, 41898);
    AI_LOGENTRY(TOPIC_FAQ002, LOG_FAQ002_START);
    INFO_CLEARCHOICES(74743);
}

instance DIA_ERNESTO_AMBIENT(C_INFO) {
    NPC = 53423;
    NR = 940;
    CONDITION = DIA_ERNESTO_AMBIENT_CONDITION;
    INFORMATION = DIA_ERNESTO_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's your wine?";
}

func int DIA_ERNESTO_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 74730)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ERNESTO_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_Ambient_15_00");
    if ((LOG_GETSTATUS(MIS_FAQ002)) == (LOG_RUNNING)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Ambient_14_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Ambient_14_05");
    };
    if (((LOG_GETSTATUS(MIS_QA302)) == (LOG_RUNNING)) && ((QA302_ERNESTODIALOGUE) >= (1))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Ambient_14_06");
    };
    NPC_INITAMBIENTS(SELF, 5);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Ambient_14_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Ambient_14_08");
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Ambient_14_09");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_STARTFACEANI(SELF, S_NOPE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Ambient_14_10");
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Ambient_14_11");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Ambient_14_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (4)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Ambient_14_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (5)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Ambient_14_03");
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_ERNESTO_FAQ002_FINISH(C_INFO) {
    NPC = 53423;
    NR = 1;
    CONDITION = DIA_ERNESTO_FAQ002_FINISH_CONDITION;
    INFORMATION = DIA_ERNESTO_FAQ002_FINISH_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ERNESTO_FAQ002_FINISH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_FAQ002)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 61599))) {
        if ((((FAQ002_BODOWINTRADEARAXOSSTATUS) == (1)) || ((FAQ002_BODOWINTRADEARAXOSSTATUS) == (2))) || ((FAQ002_KAFINFORMATION) == (2))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ERNESTO_FAQ002_FINISH_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_01");
    INFO_CLEARCHOICES(74758);
    INFO_ADDCHOICE(74758, "(Complete task)", 74763);
    INFO_ADDCHOICE(74758, "(Don't complete the task)", 74764);
}

func void DIA_ERNESTO_FAQ002_FINISH_GOODBYE() {
    if ((OTHER.GUILD) == (GIL_SLD)) {
        AI_LOGENTRY(TOPIC_FAQ002, LOG_FAQ002_FINISH_BEST_V1);
    };
    AI_LOGENTRY(TOPIC_FAQ002, LOG_FAQ002_FINISH_BEST_V2);
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_22");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_23");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_24");
    LOG_SETSTATUS(_@(MIS_FAQ002), TOPIC_FAQ002, LOG_SUCCESS);
    INFO_CLEARCHOICES(74758);
    NPC_EXCHANGEROUTINE(SELF, "OLDCITY");
}

func void DIA_ERNESTO_FAQ002_FINISH_RESULT() {
    if (((FAQ002_KAFINFORMATION) != (2)) && ((FAQ002_BODOWINTRADEARAXOSSTATUS) != (2))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_19");
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_20");
        if ((OTHER.GUILD) == (GIL_SLD)) {
            AI_LOGENTRY(TOPIC_FAQ002, LOG_FAQ002_FINISH_BAD_V1);
        } else {
            AI_LOGENTRY(TOPIC_FAQ002, LOG_FAQ002_FINISH_BAD_V2);
        };
        LOG_SETSTATUS(_@(MIS_FAQ002), TOPIC_FAQ002, LOG_FAILED);
        FAQ002_RESULT = 1;
    };
    if (((FAQ002_BODOWINTRADEARAXOSSTATUS) == (2)) && ((FAQ002_KAFINFORMATION) == (2))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_21");
        FAQ002_GIVEREWARD();
        DIA_ERNESTO_FAQ002_FINISH_GOODBYE();
    };
    if (((FAQ002_BODOWINTRADEARAXOSSTATUS) == (2)) && ((FAQ002_KAFINFORMATION) != (2))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_25");
        FAQ002_GIVEREWARD();
        DIA_ERNESTO_FAQ002_FINISH_GOODBYE();
    };
    if (((FAQ002_BODOWINTRADEARAXOSSTATUS) != (2)) && ((FAQ002_KAFINFORMATION) == (2))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_26");
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_27");
        FAQ002_GIVEREWARD();
        DIA_ERNESTO_FAQ002_FINISH_GOODBYE();
    };
    if (((FAQ002_KAFINFORMATION) == (2)) && ((FAQ002_BROTHERSAREDEAD) == (FALSE))) {
        FAQ002_KILLBROTHERS();
    };
}

func void DIA_ERNESTO_FAQ002_FINISH_GIVE() {
    ROTTENFOOD_BRINGBACK_RANDOM_TRAPS();
    if (((FAQ002_BODOWINTRADEARAXOSSTATUS) == (1)) || ((FAQ002_BODOWINTRADEARAXOSSTATUS) == (0))) {
        AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_Finish_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_04");
        if ((OTHER.GUILD) == (GIL_SLD)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_05");
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_06");
        };
    };
    if ((FAQ002_BODOWINTRADEARAXOSSTATUS) == (2)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_Finish_15_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_08");
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_09");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_10");
    if ((FAQ002_KAFINFORMATION) == (2)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_Finish_15_11");
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_12");
        AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_Finish_15_13");
        AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_Finish_15_14");
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_15");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_Finish_15_16");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_17");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_FAQ002_Finish_03_18");
    DIA_ERNESTO_FAQ002_FINISH_RESULT();
}

func void DIA_ERNESTO_FAQ002_FINISH_DONTGIVE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_FAQ002_Finish_15_28");
    INFO_CLEARCHOICES(74758);
}

instance DIA_ERNESTO_QA302_DEAL(C_INFO) {
    NPC = 53423;
    NR = 1;
    CONDITION = DIA_ERNESTO_QA302_DEAL_CONDITION;
    INFORMATION = DIA_ERNESTO_QA302_DEAL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I came to inquire about the details of your transaction.";
}

func int DIA_ERNESTO_QA302_DEAL_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA302)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 70342))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ERNESTO_QA302_DEAL_INFO() {
    if (NPC_HASGUILDARMOREQUIPPED(HERO, GIL_SLD)) {
        QA302_ARAXOSARMOREQUIPED = TRUE;
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_QA302_Deal_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_QA302_Deal_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_QA302_Deal_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_QA302_Deal_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_QA302_Deal_15_05");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_QA302_Deal_03_06");
    INFO_CLEARCHOICES(74765);
    INFO_ADDCHOICE(74765, "Sorry, I didn't hear that.", 74769);
    INFO_ADDCHOICE(74765, "(Let him talk)", 74770);
}

func void DIA_ERNESTO_QA302_DEAL_NEXT() {
    INFO_CLEARCHOICES(74765);
    INFO_ADDCHOICE(74765, "Is the tunnel the final decision?", 74772);
    INFO_ADDCHOICE(74765, "I'm glad you're not going through the ravine...", 74773);
}

func void DIA_ERNESTO_QA302_DEAL_SORRY() {
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_QA302_Deal_Sorry_15_01");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_QA302_Deal_Sorry_03_02");
    DIA_ERNESTO_QA302_DEAL_NEXT();
}

func void DIA_ERNESTO_QA302_DEAL_SILENCE() {
    AI_WAIT(OTHER, 1056964608);
    AI_WAITTILLEND(SELF, OTHER);
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_QA302_Deal_Silence_03_01");
    DIA_ERNESTO_QA302_DEAL_NEXT();
}

func void DIA_ERNESTO_QA302_DEAL_END() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(74765);
    AI_STOPPROCESSINFOS(SELF);
    if ((QA302_ERNESTODIALOGUE) == (1)) {
        AI_LOGENTRY(TOPIC_QA302, LOG_QA302_ERNESTO_DEAL_V1);
    };
    AI_LOGENTRY(TOPIC_QA302, LOG_QA302_ERNESTO_DEAL_V2);
    AI_FUNCTION(SELF, 61442);
}

func void DIA_ERNESTO_QA302_DEAL_SILENCE_TUNNEL() {
    QA302_ERNESTODIALOGUE = 1;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_QA302_Deal_Tunnel_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_QA302_Deal_Tunnel_03_02");
    DIA_ERNESTO_QA302_DEAL_END();
}

func void DIA_ERNESTO_QA302_DEAL_SILENCE_NORMALPATH() {
    QA302_ERNESTODIALOGUE = 2;
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_QA302_Deal_NormalPath_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_QA302_Deal_NormalPath_03_02");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_QA302_Deal_NormalPath_15_03");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_QA302_Deal_NormalPath_03_04");
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_QA302_Deal_NormalPath_15_05");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_QA302_Deal_NormalPath_03_06");
    DIA_ERNESTO_QA302_DEAL_END();
}

instance DIA_ERNESTO_SQ412_START(C_INFO) {
    NPC = 53423;
    NR = 1;
    CONDITION = DIA_ERNESTO_SQ412_START_CONDITION;
    INFORMATION = DIA_ERNESTO_SQ412_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ERNESTO_SQ412_START_CONDITION() {
    if (((KAPITEL) == (4)) && ((NPC_GETDISTTOWP(SELF, "PARTM5_ERNESTO_STAND")) <= (4000))) {
        if (((LOG_GETSTATUS(MIS_FAQ002)) == (LOG_SUCCESS)) || ((LOG_GETSTATUS(MIS_FAQ002)) == (LOG_FAILED))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ERNESTO_SQ412_START_INFO() {
    if ((LOG_GETSTATUS(MIS_FAQ002)) == (LOG_SUCCESS)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_SQ412_Start_03_01");
    };
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_SQ412_Start_03_02");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_SQ412_Start_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_SQ412_Start_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_SQ412_Start_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_SQ412_Start_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_SQ412_Start_03_07");
}

instance DIA_ERNESTO_SQ412_WHAT(C_INFO) {
    NPC = 53423;
    NR = 1;
    CONDITION = DIA_ERNESTO_SQ412_WHAT_CONDITION;
    INFORMATION = DIA_ERNESTO_SQ412_WHAT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you need?";
}

func int DIA_ERNESTO_SQ412_WHAT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 74774)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ERNESTO_SQ412_WHAT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_SQ412_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_SQ412_What_03_02");
    INFO_CLEARCHOICES(74777);
    INFO_ADDCHOICE(74777, "I didn't expect you to make soup for the poor yourself.", 74780);
}

func void DIA_ERNESTO_SQ412_WHAT_YOURSELF() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_SQ412_What_Yourself_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_SQ412_What_Yourself_03_02");
    INFO_CLEARCHOICES(74777);
    INFO_ADDCHOICE(74777, "I think the mages meant for you personally to do something for the poor.", 74781);
    INFO_ADDCHOICE(74777, "In that case, I'll get to cooking the soup.", 74782);
}

func void DIA_ERNESTO_SQ412_WHAT_YOURSELF_MAGES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_SQ412_What_Mages_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_SQ412_What_Mages_03_02");
}

func void DIA_ERNESTO_SQ412_WHAT_YOURSELF_DOIT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_SQ412_What_DoIt_15_01");
    CREATEINVITEMS(SELF, 35893, 1);
    B_GIVEINVITEMS(SELF, OTHER, 35893, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_SQ412_What_DoIt_03_02");
    INFO_CLEARCHOICES(74777);
    LOG_CREATETOPIC(TOPIC_SQ412, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ412), TOPIC_SQ412, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ412, LOG_SQ412_START);
}

instance DIA_ERNESTO_SQ412_FINISH(C_INFO) {
    NPC = 53423;
    NR = 1;
    CONDITION = DIA_ERNESTO_SQ412_FINISH_CONDITION;
    INFORMATION = DIA_ERNESTO_SQ412_FINISH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I delivered the soup.";
}

func int DIA_ERNESTO_SQ412_FINISH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ412)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 65522))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ERNESTO_SQ412_FINISH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_SQ412_Finish_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_SQ412_Finish_03_02");
    AI_STARTFACEANI(OTHER, S_THINK, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_SQ412_Finish_15_03");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_SQ412_Finish_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_SQ412_Finish_03_05");
    LOG_SETSTATUS(_@(MIS_SQ412), TOPIC_SQ412, LOG_SUCCESS);
    AI_LOGENTRY(TOPIC_SQ412, LOG_SQ412_FINISH);
    B_GIVEPLAYERXP(XP_SQ412_FINISH);
    if (((HERO.ATTRIBUTE[3]) > (HERO.ATTRIBUTE[5])) && ((HERO.ATTRIBUTE[3]) > (HERO.ATTRIBUTE[4]))) {
        CREATEINVITEMS(SELF, 36744, 1);
    };
    if (((HERO.ATTRIBUTE[5]) > (HERO.ATTRIBUTE[4])) && ((HERO.ATTRIBUTE[5]) > (HERO.ATTRIBUTE[3]))) {
        CREATEINVITEMS(SELF, 36742, 1);
    };
    if (((HERO.ATTRIBUTE[4]) > (HERO.ATTRIBUTE[5])) && ((HERO.ATTRIBUTE[4]) > (HERO.ATTRIBUTE[3]))) {
        CREATEINVITEMS(SELF, 36740, 1);
    };
    CREATEINVITEMS(SELF, 36445, 1);
    B_GIVEINVITEMS(SELF, OTHER, 36445, 1);
}

instance DIA_ERNESTO_SQ416_GOODJOB(C_INFO) {
    NPC = 53423;
    NR = 1;
    CONDITION = DIA_ERNESTO_SQ416_GOODJOB_CONDITION;
    INFORMATION = DIA_ERNESTO_SQ416_GOODJOB_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ERNESTO_SQ416_GOODJOB_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ416)) == (LOG_SUCCESS)) && (NPC_ISINSTATE(SELF, 61599))) {
        if ((SQ416_RAMSEYPARTY) != (2)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ERNESTO_SQ416_GOODJOB_INFO() {
    var int SQ416_AMBIENT_ERNESTO;
    if ((SQ416_AMBIENT_ERNESTO) == (FALSE)) {
        SQ416_AMBIENT_ERNESTO = TRUE;
        B_GIVEPLAYERXP(XP_SQ416_AMBIENT);
    };
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_SQ416_GoodJob_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ERNESTO_Q505_HELP(C_INFO) {
    NPC = 53423;
    NR = 1;
    CONDITION = DIA_ERNESTO_Q505_HELP_CONDITION;
    INFORMATION = DIA_ERNESTO_Q505_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need food.";
}

func int DIA_ERNESTO_Q505_HELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q505)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 80244))) {
        if ((LOG_GETSTATUS(MIS_SQ412)) == (LOG_SUCCESS)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ERNESTO_Q505_HELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_Q505_Help_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Q505_Help_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_Q505_Help_15_03");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ernesto_Q505_Help_03_04");
    AI_RESETFACEANI(SELF);
    CREATEINVITEMS(SELF, 37566, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37566, 1);
}

instance DIA_ERNESTO_TRADE(C_INFO) {
    NPC = 53423;
    NR = 700;
    CONDITION = DIA_ERNESTO_TRADE_CONDITION;
    INFORMATION = DIA_ERNESTO_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Can I buy wine from you?";
}

func int DIA_ERNESTO_TRADE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ412)) == (LOG_SUCCESS)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ERNESTO_TRADE_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ernesto_Buy_15_01");
    B_SAY(SELF, OTHER, "$SURE_V3");
    B_GIVETRADEINV(SELF);
    TRADER_LOGENTRY_ERNESTO();
}

instance DIA_ERNESTO_PICKPOCKET(C_INFO) {
    NPC = 53423;
    NR = 900;
    CONDITION = DIA_ERNESTO_PICKPOCKET_CONDITION;
    INFORMATION = DIA_ERNESTO_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_ERNESTO_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ERNESTO_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(74796);
    INFO_ADDCHOICE(74796, DIALOG_BACK, 74800);
    INFO_ADDCHOICE(74796, DIALOG_PICKPOCKET, 74799);
}

func void DIA_ERNESTO_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        CREATEINVITEMS(SELF, 36445, 1);
        B_GIVEINVITEMS(SELF, OTHER, 36445, 1);
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(74796);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(74796);
}

func void DIA_ERNESTO_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(74796);
}

