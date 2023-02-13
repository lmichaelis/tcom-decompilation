instance DIA_NOVIZE_Q501_01_EXIT(C_INFO) {
    NPC = 56588;
    NR = 999;
    CONDITION = DIA_NOVIZE_Q501_01_EXIT_CONDITION;
    INFORMATION = DIA_NOVIZE_Q501_01_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_NOVIZE_Q501_01_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_NOVIZE_Q501_01_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NOVIZE_Q501_01_STOP(C_INFO) {
    NPC = 56588;
    NR = 1;
    CONDITION = DIA_NOVIZE_Q501_01_STOP_CONDITION;
    INFORMATION = DIA_NOVIZE_Q501_01_STOP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NOVIZE_Q501_01_STOP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && ((Q501_MARVINGOTOSLEEP) < (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NOVIZE_Q501_01_STOP_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Novize_Q501_01_STOP_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NOVIZE_Q501_01_BLOCKPATH(C_INFO) {
    NPC = 56588;
    NR = 1;
    CONDITION = DIA_NOVIZE_Q501_01_BLOCKPATH_CONDITION;
    INFORMATION = DIA_NOVIZE_Q501_01_BLOCKPATH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NOVIZE_Q501_01_BLOCKPATH_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && ((Q501_MARVINGOTOSLEEP) == (6))) && ((Q501_AFTERLASTFADESCREEN) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NOVIZE_Q501_01_BLOCKPATH_INFO() {
    CHANGEVOBCOLLISION("MONASTERY_DOOR_HEALROOM", TRUE, FALSE, TRUE, TRUE);
    AI_OUTPUT(SELF, OTHER, "DIA_Novize_Q501_01_BLOCKPATH_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NOVIZE_Q502_TOWER(C_INFO) {
    NPC = 56588;
    NR = 1;
    CONDITION = DIA_NOVIZE_Q502_TOWER_CONDITION;
    INFORMATION = DIA_NOVIZE_Q502_TOWER_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NOVIZE_Q502_TOWER_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q502)) == (LOG_RUNNING)) && ((NPC_GETDISTTOWP(SELF, "PART8_MONASTERY_103")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NOVIZE_Q502_TOWER_INFO() {
    SELF.AIVAR[15] = FALSE;
    AI_OUTPUT(SELF, OTHER, "DIA_Novize_Q502_Tower_03_01");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q502_WAIT");
    AI_LOGENTRY(TOPIC_Q502, LOG_Q502_NOVIZE_TOWER);
    B_STARTOTHERROUTINE(NOV_228_NOVIZE, START);
    NPC_REFRESH(NOV_228_NOVIZE);
    NOV_228_NOVIZE.AIVAR[15] = FALSE;
}

instance DIA_NOVIZE_Q502_READY(C_INFO) {
    NPC = 56588;
    NR = 1;
    CONDITION = DIA_NOVIZE_Q502_READY_CONDITION;
    INFORMATION = DIA_NOVIZE_Q502_READY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm ready.";
}

func int DIA_NOVIZE_Q502_READY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q502)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 80440))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NOVIZE_Q502_READY_INFO() {
    SELF.AIVAR[15] = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Novize_Q502_Ready_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Novize_Q502_Ready_03_02");
    WLD_SENDTRIGGER("MONASTERY_GATE_02");
    WLD_SENDTRIGGER("MONASTERY_GATE_04");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q502_GUIDE_BRIDGE");
}

instance DIA_NOVIZE_Q502_NEARBRIDGE(C_INFO) {
    NPC = 56588;
    NR = 1;
    CONDITION = DIA_NOVIZE_Q502_NEARBRIDGE_CONDITION;
    INFORMATION = DIA_NOVIZE_Q502_NEARBRIDGE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NOVIZE_Q502_NEARBRIDGE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q502)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 80443))) && ((NPC_GETDISTTOWP(SELF, "PART8_MONASTERY_74")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NOVIZE_Q502_NEARBRIDGE_INFO() {
    SELF.AIVAR[15] = FALSE;
    AI_OUTPUT(SELF, OTHER, "DIA_Novize_Q502_NearBridge_03_01");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q501_WAITOUTSIDE");
}
