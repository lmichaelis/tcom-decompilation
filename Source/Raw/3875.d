instance DIA_WORKER_KQ406_02_EXIT(C_INFO) {
    NPC = 0xd5cd;
    NR = 999;
    CONDITION = DIA_WORKER_KQ406_02_EXIT_CONDITION;
    INFORMATION = DIA_WORKER_KQ406_02_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_WORKER_KQ406_02_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_WORKER_KQ406_02_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WORKER_KQ406_02_SABOTEUR(C_INFO) {
    NPC = 0xd5cd;
    NR = 1;
    CONDITION = DIA_WORKER_KQ406_02_SABOTEUR_CONDITION;
    INFORMATION = DIA_WORKER_KQ406_02_SABOTEUR_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_WORKER_KQ406_02_SABOTEUR_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ406)) == (LOG_RUNNING)) && ((KQ406_WAITFORSABOTEUR) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WORKER_KQ406_02_SABOTEUR_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Worker_KQ406_02_Saboteur_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Worker_KQ406_02_Saboteur_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Worker_KQ406_02_Saboteur_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Worker_KQ406_02_Saboteur_03_04");
    if (((KQ406_RATPOTION_PLACE_01) == (TRUE)) && ((KQ406_RATPOTION_PLACE_02) == (TRUE))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Worker_KQ406_02_Saboteur_03_05");
    };
    INFO_CLEARCHOICES(0x11e0d);
    INFO_ADDCHOICE(0x11e0d, "I repeat, I have nothing to do with this!", 0x11e10);
}

func void DIA_WORKER_KQ406_02_SABOTEUR_NOTME() {
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Worker_KQ406_02_Saboteur_NotMe_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Worker_KQ406_02_Saboteur_NotMe_03_02");
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Worker_KQ406_02_Saboteur_NotMe_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Worker_KQ406_02_Saboteur_NotMe_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Worker_KQ406_02_Saboteur_NotMe_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Worker_KQ406_02_Saboteur_NotMe_03_06");
    INFO_CLEARCHOICES(0x11e0d);
    INFO_ADDCHOICE(0x11e0d, "You asked for it!", 0x11e12);
    INFO_ADDCHOICE(0x11e0d, "Give it up...", 0x11e13);
}

func void DIA_WORKER_KQ406_02_SABOTEUR_FIGHT() {
    B_REMOVEALLINVENTORY(VLK_13676_WORKER);
    KQ406_FIGHTWITHWORKER = 1;
    SELF.AIVAR[45] = AF_RUNNING;
    SELF.AIVAR[96] = 3;
    INFO_CLEARCHOICES(0x11e0d);
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(OTHER);
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
}

func void DIA_WORKER_KQ406_02_SABOTEUR_NOTME_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Worker_KQ406_02_Saboteur_Yes_15_01");
    DIA_WORKER_KQ406_02_SABOTEUR_FIGHT();
}

func void DIA_WORKER_KQ406_02_SABOTEUR_NOTME_NO() {
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Worker_KQ406_02_Saboteur_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Worker_KQ406_02_Saboteur_No_03_02");
    DIA_WORKER_KQ406_02_SABOTEUR_FIGHT();
}

instance DIA_WORKER_KQ406_02_AFTERFIGHT(C_INFO) {
    NPC = 0xd5cd;
    NR = 1;
    CONDITION = DIA_WORKER_KQ406_02_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_WORKER_KQ406_02_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_WORKER_KQ406_02_AFTERFIGHT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ406)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x11e0d))) {
        if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
            if ((SELF.AIVAR[45]) != (AF_NONE)) {
                if ((KQ406_FIGHTWITHWORKER) != (2)) {
                    return TRUE;
                };
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_WORKER_KQ406_02_AFTERFIGHT_INFO() {
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
    KQ406_FIGHTWITHWORKER = 3;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    if ((SELF.AIVAR[0]) == (FIGHT_LOST)) {
        AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
        AI_OUTPUT(OTHER, SELF, "DIA_Worker_KQ406_02_AfterFight_15_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Worker_KQ406_02_AfterFight_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Worker_KQ406_02_AfterFight_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Worker_KQ406_02_AfterFight_03_04");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    AI_LOGENTRY(TOPIC_KQ406, LOG_KQ406_WORKERFIGHT);
    AI_STOPPROCESSINFOS(SELF);
    B_STARTOTHERROUTINE(MIL_13382_HUXLAY, "KQ406_HARBOUR");
    TELEPORTNPCTOWP(0xd1d7, MIL_13382_HUXLAY.WP);
}

