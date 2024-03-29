instance DIA_ARAXOS04_EXIT(C_INFO) {
    NPC = 57379;
    NR = 999;
    CONDITION = DIA_ARAXOS04_EXIT_CONDITION;
    INFORMATION = DIA_ARAXOS04_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ARAXOS04_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ARAXOS04_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ARAXOS04_QA301_READY(C_INFO) {
    NPC = 57379;
    NR = 1;
    CONDITION = DIA_ARAXOS04_QA301_READY_CONDITION;
    INFORMATION = DIA_ARAXOS04_QA301_READY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ARAXOS04_QA301_READY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QA301)) == (LOG_RUNNING)) && (!(NPC_KNOWSINFO(OTHER, 85860)))) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARAXOS04_QA301_READY_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos04_QA301_Ready_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ARAXOS04_QA301_STAY(C_INFO) {
    NPC = 57379;
    NR = 1;
    CONDITION = DIA_ARAXOS04_QA301_STAY_CONDITION;
    INFORMATION = DIA_ARAXOS04_QA301_STAY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ARAXOS04_QA301_STAY_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_QA301)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 85860))) && ((QA301_TALKWITHARAXOSGUARD) == (1))) && ((QA301_FOREST) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARAXOS04_QA301_STAY_INFO() {
    QA301_FOREST = 1;
    QA301_TALKWITHARAXOSGUARD = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos04_QA301_Stay_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos04_QA301_Stay_03_02");
    AI_PLAYANI(SELF, T_GREETGRD);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "QA301_GUARD");
    AI_LOGENTRY(TOPIC_QA301, LOG_QA301_ARAXOS_STAY_V1);
    B_STARTOTHERROUTINE(SLD_11056_GRIZ, "QA301_FOLLOW_V2");
    NPC_REFRESH(SLD_11056_GRIZ);
    B_STARTOTHERROUTINE(SLD_11055_ARAXOS_QA301, "QA301_FOLLOW_V2");
    NPC_REFRESH(SLD_11055_ARAXOS_QA301);
}

instance DIA_ARAXOS04_QA301_ROADCLEAN(C_INFO) {
    NPC = 57379;
    NR = 1;
    CONDITION = DIA_ARAXOS04_QA301_ROADCLEAN_CONDITION;
    INFORMATION = DIA_ARAXOS04_QA301_ROADCLEAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "The path is clear.";
}

func int DIA_ARAXOS04_QA301_ROADCLEAN_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QA301)) == (LOG_RUNNING)) {
        if (((QA301_BADCUTSCENE) == (5)) || ((QA301_GRIZISDEAD) == (2))) {
            if ((QA301_FINISHJOB) == (0)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARAXOS04_QA301_ROADCLEAN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_QA301_RoadClean_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos04_QA301_RoadClean_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_QA301_RoadClean_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos04_QA301_RoadClean_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_QA301_RoadClean_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos04_QA301_RoadClean_03_06");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 85840);
}

func void ARAXOS04_TRANSPORT() {
    QA301_TRANSPORTEND();
}

