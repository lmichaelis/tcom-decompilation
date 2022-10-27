var int FARMER14_JOINTREACTION = 0;
instance DIA_FARMER14_EXIT(C_INFO) {
    NPC = 0xe050;
    NR = 999;
    CONDITION = DIA_FARMER14_EXIT_CONDITION;
    INFORMATION = DIA_FARMER14_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FARMER14_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_FARMER14_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SALERS_BUSY(C_INFO) {
    NPC = 0xe050;
    NR = 1;
    CONDITION = DIA_SALERS_BUSY_CONDITION;
    INFORMATION = DIA_SALERS_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_SALERS_BUSY_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        if (((LOG_GETSTATUS(MIS_SQ221)) != (LOG_RUNNING)) || (((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) && ((SQ221_MAIK_WORK) == (0)))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SALERS_BUSY_INFO() {
    if (((SILBACHREPUTATION) >= (6)) && ((LOG_GETSTATUS(MIS_SQ221)) != (LOG_RUNNING))) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$GREETINGS_FromFriend");
    };
    if ((SILBACHREPUTATION) >= (3)) {
        DIA_IMBUSY_CALM();
    };
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    DIA_IMBUSY_ANGRY();
    AI_RESETFACEANI(SELF);
}

instance DIA_SALERS_SQ221_ROCKS(C_INFO) {
    NPC = 0xe050;
    NR = 1;
    CONDITION = DIA_SALERS_SQ221_ROCKS_CONDITION;
    INFORMATION = DIA_SALERS_SQ221_ROCKS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Stones need to be removed from the riverbed.";
}

func int DIA_SALERS_SQ221_ROCKS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) && ((SQ221_MAIK_WORK) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SALERS_SQ221_ROCKS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_SQ221_Rocks_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salers_SQ221_Rocks_03_02");
}

instance DIA_SALERS_SQ221_FIGHT(C_INFO) {
    NPC = 0xe050;
    NR = 1;
    CONDITION = DIA_SALERS_SQ221_FIGHT_CONDITION;
    INFORMATION = DIA_SALERS_SQ221_FIGHT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Get to work, or I'll give you a hard time right now!";
}

func int DIA_SALERS_SQ221_FIGHT_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x155a4))) && (NPC_KNOWSINFO(OTHER, 0x15a96))) && ((SQ221_MAIK_WORK) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SALERS_SQ221_FIGHT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_SQ221_FIGHT_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Salers_SQ221_FIGHT_03_02");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf46a);
}

instance DIA_SALERS_SQ221_AFTERFIGHT(C_INFO) {
    NPC = 0xe050;
    NR = 1;
    CONDITION = DIA_SALERS_SQ221_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_SALERS_SQ221_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SALERS_SQ221_AFTERFIGHT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) && ((SQ221_FARMERS_FIGHT) >= (2))) {
        if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
            if ((SELF.AIVAR[45]) != (AF_NONE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SALERS_SQ221_AFTERFIGHT_INFO() {
    if ((SELF.AIVAR[0]) == (FIGHT_LOST)) {
        SQ221_MAIK_WORK = 3;
        AI_OUTPUT(OTHER, SELF, "DIA_SQ221_AfterFight_15_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Salers_SQ221_AfterFight_03_02");
        AI_LOGENTRY(TOPIC_SQ221, LOG_SQ221_FARMERS_WORK);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Salers_SQ221_AfterFight_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Salers_SQ221_AfterFight_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Salers_SQ221_AfterFight_03_05");
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
}

