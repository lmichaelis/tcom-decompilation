instance DIA_FISHERMAN_Q206_BUSY(C_INFO) {
    NPC = 55584;
    NR = 1;
    CONDITION = DIA_FISHERMAN_Q206_BUSY_CONDITION;
    INFORMATION = DIA_FISHERMAN_Q206_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_FISHERMAN_Q206_BUSY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q206)) == (LOG_RUNNING)) && ((NPC_GETDISTTOWP(SELF, SELF.WP)) <= (500))) && ((Q206_FISHERMAN_RUNAWAY) == (2))) {
        return FALSE;
    };
    if (((((LOG_GETSTATUS(MIS_Q206)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 69208))) && ((Q206_FISHERMAN_RUNAWAY) == (FALSE))) && ((SELF.AIVAR[93]) <= (WLD_GETDAY()))) {
        return FALSE;
    };
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FISHERMAN_Q206_BUSY_INFO() {
    DIA_IMBUSY_ANGRY();
}

instance DIA_FISHERMAN_Q206_INFORMATIONS(C_INFO) {
    NPC = 55584;
    NR = 1;
    CONDITION = DIA_FISHERMAN_Q206_INFORMATIONS_CONDITION;
    INFORMATION = DIA_FISHERMAN_Q206_INFORMATIONS_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FISHERMAN_Q206_INFORMATIONS_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q206)) == (LOG_RUNNING)) && ((NPC_GETDISTTOWP(SELF, SELF.WP)) <= (500))) && ((Q206_FISHERMAN_RUNAWAY) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FISHERMAN_Q206_INFORMATIONS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fisherman_Q206_Informations_15_01");
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_PLAYANI(SELF, T_STAND_2_SCAREDDIALOGUE);
    AI_OUTPUT(SELF, OTHER, "DIA_Fisherman_Q206_Informations_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fisherman_Q206_Informations_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fisherman_Q206_Informations_03_04");
    INFO_CLEARCHOICES(77154);
    INFO_ADDCHOICE(77154, "All right, get out of here.", 77157);
}

func void DIA_FISHERMAN_Q206_INFORMATIONS_LEAVE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fisherman_Q206_Informations_Leave_15_01");
    AI_PLAYANI(SELF, "T_REMOVE_SCAREDDIALOGUE");
    AI_WAITTILLEND(SELF, OTHER);
    INFO_CLEARCHOICES(77154);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q206, LOG_Q206_FISHERMAN_SMUGGLERS);
    NPC_EXCHANGEROUTINE(SELF, TOT);
}

