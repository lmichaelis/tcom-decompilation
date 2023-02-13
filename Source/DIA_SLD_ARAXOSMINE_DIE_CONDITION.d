func int DIA_SLD_ARAXOSMINE_DIE_CONDITION() {
    if (C_GOTANYKINDOFBEER(HERO)) {
        if (((QA306_GOTOARAXOSMINE) == (0)) || (((QA306_GOTOARAXOSMINE) >= (1)) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(SLD_13721_ARAXOS))))) {
            if ((SELF.AIVAR[6]) == (FALSE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SLD_ARAXOSMINE_DIE_INFO() {
    var int RNGANWSER;
    QA306_COUNTGIVENBEERS = (QA306_COUNTGIVENBEERS) + (1);
    WORKERREPUTATION_ARAXOSMINE = (WORKERREPUTATION_ARAXOSMINE) - (1);
    PRINTD(CS2("Reputacja u g�rnik�w Araxos: ", INTTOSTRING(WORKERREPUTATION_ARAXOSMINE)));
    B_SAY(OTHER, SELF, "$SQ119_Marvin_OfferBeer");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    RNGANWSER = HLP_RANDOM(3);
    if ((RNGANWSER) == (0)) {
        B_SAY(SELF, OTHER, "$SURE_V1");
    };
    if ((RNGANWSER) == (1)) {
        B_SAY(SELF, OTHER, "$SURE_V2");
    };
    if ((RNGANWSER) == (2)) {
        B_SAY(SELF, OTHER, "$SURE_V3");
    };
    B_GIVEANYBEER_USEIT();
    B_GIVEPLAYERXP(XP_SQ119_ARAXOSMINEDRINK);
    SELF.AIVAR[6] = TRUE;
}

instance DIA_SLD_ARAXOSMINE_NOARMORARAXOS(C_INFO) {
    NR = 11;
    CONDITION = DIA_SLD_ARAXOSMINE_NOARMORARAXOS_CONDITION;
    INFORMATION = DIA_SLD_ARAXOSMINE_NOARMORARAXOS_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_SLD_ARAXOSMINE_NOARMORARAXOS_CONDITION() {
    if ((((SQ119_INSIDEMINE) >= (1)) && ((SQ119_INSIDEMINE) < (3))) && (NPC_HASGUILDARMORINEQ(HERO, GIL_SLD))) {
        if (((QA306_GOTOARAXOSMINE) == (0)) || (((QA306_GOTOARAXOSMINE) >= (1)) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(SLD_13721_ARAXOS))))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SLD_ARAXOSMINE_NOARMORARAXOS_INFO() {
    B_SAY(SELF, OTHER, "$DIA_SLD_AraxosMine_NoArmorAraxos_03_01");
    B_SAY(SELF, OTHER, "$DIA_SLD_AraxosMine_NoArmorAraxos_03_02");
    AI_FUNCTION(SELF, 47244);
}

instance DIA_SLD_ARAXOSMINE_QA306_ROEL(C_INFO) {
    NR = 12;
    CONDITION = DIA_SLD_ARAXOSMINE_QA306_ROEL_CONDITION;
    INFORMATION = DIA_SLD_ARAXOSMINE_QA306_ROEL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Have you seen Roel anywhere?";
}

func int DIA_SLD_ARAXOSMINE_QA306_ROEL_CONDITION() {
    if (((QA306_FOUNDROEL) == (0)) && ((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING))) {
        if (((QA306_GOTOARAXOSMINE) == (2)) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(SLD_13721_ARAXOS)))) {
            if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SLD_ARAXOSMINE_QA306_ROEL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_SLD_AraxosMine_QA306_Roel_15_01");
    B_SAY(SELF, OTHER, "$DIA_SLD_AraxosMine_QA306_Roel_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_SLD_AraxosMine_QA306_Roel_15_03");
    B_SAY(SELF, OTHER, "$DIA_SLD_AraxosMine_QA306_Roel_03_04");
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_WHEREISROEL);
}

instance DIA_SLD_ARAXOSMINE_QA306_WHATSUP(C_INFO) {
    NR = 13;
    CONDITION = DIA_SLD_ARAXOSMINE_QA306_WHATSUP_CONDITION;
    INFORMATION = DIA_SLD_ARAXOSMINE_QA306_WHATSUP_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What's the mood here over the past few days?";
}

func int DIA_SLD_ARAXOSMINE_QA306_WHATSUP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((QA306_GOTOARAXOSMINE) == (2))) {
        if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SLD_ARAXOSMINE_QA306_WHATSUP_INFO() {
    var int RNGANWSER;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$QA306_MARVIN_WHATSUP");
    RNGANWSER = HLP_RANDOM(2);
    if ((RNGANWSER) == (0)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        B_SAY(SELF, OTHER, "$QA306_ARAXOS_WHATSUP_V1");
    };
    if ((RNGANWSER) == (1)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, "$QA306_ARAXOS_WHATSUP_V2");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_SLD_ARAXOSMINE(var C_NPC SLF) {
    DIA_SLD_ARAXOSMINE_GIVEBEER.NPC = HLP_GETINSTANCEID(SLF);
    DIA_SLD_ARAXOSMINE_NOARMORARAXOS.NPC = HLP_GETINSTANCEID(SLF);
    DIA_SLD_ARAXOSMINE_QA306_ROEL.NPC = HLP_GETINSTANCEID(SLF);
    DIA_SLD_ARAXOSMINE_QA306_WHATSUP.NPC = HLP_GETINSTANCEID(SLF);
}

