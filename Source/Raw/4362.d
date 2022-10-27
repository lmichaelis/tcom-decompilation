instance DIA_GALBO_Q602_EXIT(C_INFO) {
    NPC = 0xea33;
    NR = 999;
    CONDITION = DIA_GALBO_Q602_EXIT_CONDITION;
    INFORMATION = DIA_GALBO_Q602_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GALBO_Q602_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GALBO_Q602_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GALBO_Q602_FLEE(C_INFO) {
    NPC = 0xea33;
    NR = 1;
    CONDITION = DIA_GALBO_Q602_FLEE_CONDITION;
    INFORMATION = DIA_GALBO_Q602_FLEE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GALBO_Q602_FLEE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GALBO_Q602_FLEE_INFO() {
    Q602_GALBO_CHANGERTN = 1;
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Galbo_Q602_FLEE_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q602, LOG_Q602_GALBO_FLEE);
    NPC_EXCHANGEROUTINE(SELF, "Q602_FLEE");
}

instance DIA_GALBO_Q602_GOTIT(C_INFO) {
    NPC = 0xea33;
    NR = 1;
    CONDITION = DIA_GALBO_Q602_GOTIT_CONDITION;
    INFORMATION = DIA_GALBO_Q602_GOTIT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I got you!";
}

func int DIA_GALBO_Q602_GOTIT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x161d7))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void GALBO_Q602_ARENAFIGHT() {
    Q602_FIGHTWITHGALBO = 1;
    SELF.AIVAR[96] = 6;
    SELF.AIVAR[45] = AF_RUNNING;
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
}

func void DIA_GALBO_Q602_GOTIT_INFO() {
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Galbo_Q602_GOTIT_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Galbo_Q602_GOTIT_03_02");
    AI_STOPPROCESSINFOS(SELF);
    GALBO_Q602_ARENAFIGHT();
}

instance DIA_GALBO_Q602_AFTERFIGHT(C_INFO) {
    NPC = 0xea33;
    NR = 1;
    CONDITION = DIA_GALBO_Q602_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_GALBO_Q602_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GALBO_Q602_AFTERFIGHT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x161da))) {
        if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
            if ((SELF.AIVAR[45]) != (AF_NONE)) {
                if ((SELF.AIVAR[0]) == (FIGHT_LOST)) {
                    return TRUE;
                };
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GALBO_Q602_AFTERFIGHT_INFO() {
    Q602_FIGHTWITHGALBO = 0;
    Q602_GALBO_CHANGERTN = 3;
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Galbo_Q602_AfterFight_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Galbo_Q602_AfterFight_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Galbo_Q602_AfterFight_03_03");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q602_FLEE_V2");
}
