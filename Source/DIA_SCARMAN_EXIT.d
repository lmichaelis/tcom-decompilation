instance DIA_SCARMAN_EXIT(C_INFO) {
    NPC = 53490;
    NR = 999;
    CONDITION = DIA_SCARMAN_EXIT_CONDITION;
    INFORMATION = DIA_SCARMAN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SCARMAN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SCARMAN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SCARMAN_SQ207_TROUBLE(C_INFO) {
    NPC = 53490;
    NR = 1;
    CONDITION = DIA_SCARMAN_SQ207_TROUBLE_CONDITION;
    INFORMATION = DIA_SCARMAN_SQ207_TROUBLE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I hear you like to cause trouble.";
}

func int DIA_SCARMAN_SQ207_TROUBLE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ207)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 74416))) && ((SQ207_FAILED) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SCARMAN_SQ207_TROUBLE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_ScarMan_SQ207_Trouble_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_ScarMan_SQ207_Trouble_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_ScarMan_SQ207_Trouble_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_ScarMan_SQ207_Trouble_03_04");
    INFO_CLEARCHOICES(68383);
    INFO_ADDCHOICE(68383, "You wanted this...", 68387);
    INFO_ADDCHOICE(68383, "I wonder what Volker has to say about this.", 68388);
}

var int SCARMAN_SQ207_ARENAFIGHT;
func void DIA_SCARMAN_SQ207_TROUBLE_FIGHT() {
    SCARMAN_SQ207_ARENAFIGHT = 1;
    SELF.AIVAR[45] = AF_RUNNING;
    SELF.AIVAR[96] = 12;
    AI_OUTPUT(OTHER, SELF, "DIA_ScarMan_SQ207_Trouble_Fight_15_01");
    INFO_CLEARCHOICES(68383);
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
}

func void DIA_SCARMAN_SQ207_TROUBLE_VOLKER() {
    AI_OUTPUT(OTHER, SELF, "DIA_ScarMan_SQ207_Trouble_Volker_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_ScarMan_SQ207_Trouble_Volker_03_02");
    INFO_CLEARCHOICES(68383);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ207, LOG_SQ207_SCARMAN_BORRISRIGHT);
}

instance DIA_SCARMAN_SQ207_AFTERFIGHT(C_INFO) {
    NPC = 53490;
    NR = 1;
    CONDITION = DIA_SCARMAN_SQ207_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_SCARMAN_SQ207_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SCARMAN_SQ207_AFTERFIGHT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ207)) == (LOG_RUNNING)) && ((SCARMAN_SQ207_ARENAFIGHT) == (1))) && ((SQ207_FAILED) == (FALSE))) {
        if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
            if ((SELF.AIVAR[45]) != (AF_NONE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SCARMAN_SQ207_AFTERFIGHT_INFO() {
    SCARMAN_SQ207_ARENAFIGHT = 2;
    if ((SELF.AIVAR[0]) == (FIGHT_LOST)) {
        SQ207_BORISRESULT = 1;
        AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
        AI_PLAYANI(SELF, T_STAND_2_SCAREDDIALOGUE);
        AI_OUTPUT(SELF, OTHER, "DIA_ScarMan_SQ207_AfterFight_03_02");
        AI_OUTPUT(OTHER, SELF, "DIA_ScarMan_SQ207_AfterFight_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_ScarMan_SQ207_AfterFight_03_04");
        AI_PLAYANI(SELF, "T_REMOVE_SCAREDDIALOGUE");
        AI_LOGENTRY(TOPIC_SQ207, LOG_SQ207_SCARMAN_FIGHTRESULT_V1);
        NPC_EXCHANGEROUTINE(SELF, FLEE);
    };
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_ScarMan_SQ207_AfterFight_03_01");
    AI_LOGENTRY(TOPIC_SQ207, LOG_SQ207_SCARMAN_FIGHTRESULT_V2);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

