instance DIA_BRODDY_EXIT(C_INFO) {
    NPC = 56266;
    NR = 999;
    CONDITION = DIA_BRODDY_EXIT_CONDITION;
    INFORMATION = DIA_BRODDY_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BRODDY_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BRODDY_EXIT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Broddy_EXIT_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Broddy_EXIT_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BRODDY_AMBIENTBEFOREJOIN(C_INFO) {
    NPC = 56266;
    NR = 3;
    CONDITION = DIA_BRODDY_AMBIENTBEFOREJOIN_CONDITION;
    INFORMATION = DIA_BRODDY_AMBIENTBEFOREJOIN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_BRODDY_AMBIENTBEFOREJOIN_CONDITION() {
    if (((Q205_MARVINJOINEDRENEGADES) == (FALSE)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BRODDY_AMBIENTBEFOREJOIN_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Broddy_AmbientBeforeJoin_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Broddy_AmbientBeforeJoin_03_02");
    };
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BRODDY_Q205_ALLDAY(C_INFO) {
    NPC = 56266;
    NR = 1;
    CONDITION = DIA_BRODDY_Q205_ALLDAY_CONDITION;
    INFORMATION = DIA_BRODDY_Q205_ALLDAY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You been sitting here all day?";
}

func int DIA_BRODDY_Q205_ALLDAY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q205)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 78625))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BRODDY_Q205_ALLDAY_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Broddy_Q205_AllDay_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Broddy_Q205_AllDay_03_02");
    AI_RESETFACEANI(OTHER);
    Q205_EATBREAD();
}

instance DIA_BRODDY_Q205_MOVE(C_INFO) {
    NPC = 56266;
    NR = 1;
    CONDITION = DIA_BRODDY_Q205_MOVE_CONDITION;
    INFORMATION = DIA_BRODDY_Q205_MOVE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You're not going anywhere?";
}

func int DIA_BRODDY_Q205_MOVE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q205)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 78567))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BRODDY_Q205_MOVE_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Broddy_Q205_Move_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Broddy_Q205_Move_03_02");
    AI_RESETFACEANI(OTHER);
    Q205_EATBREAD();
}

instance DIA_BRODDY_Q205_SALVI(C_INFO) {
    NPC = 56266;
    NR = 1;
    CONDITION = DIA_BRODDY_Q205_SALVI_CONDITION;
    INFORMATION = DIA_BRODDY_Q205_SALVI_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Even if Salvi orders you?";
}

func int DIA_BRODDY_Q205_SALVI_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q205)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 78570))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BRODDY_Q205_SALVI_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Broddy_Q205_Salvi_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Broddy_Q205_Salvi_03_02");
    AI_RESETFACEANI(OTHER);
    Q205_EATBREAD();
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Broddy_Q205_Salvi_03_03");
    AI_LOGENTRY(TOPIC_Q205, LOG_Q205_BRODDY_DIALOGUE);
}

instance DIA_BRODDY_Q205_HUNGRY(C_INFO) {
    NPC = 56266;
    NR = 1;
    CONDITION = DIA_BRODDY_Q205_HUNGRY_CONDITION;
    INFORMATION = DIA_BRODDY_Q205_HUNGRY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I thought you had quite a few supplies.";
}

func int DIA_BRODDY_Q205_HUNGRY_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 78573)) && ((LOG_GETSTATUS(MIS_Q205)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BRODDY_Q205_HUNGRY_INFO() {
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Broddy_Q205_Hungry_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Broddy_Q205_Hungry_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Broddy_Q205_Hungry_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Broddy_Q205_Hungry_03_04");
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_Q205, LOG_Q205_BRODDY_IDEA);
}

instance DIA_BRODDY_Q205_SMELL(C_INFO) {
    NPC = 56266;
    NR = 1;
    CONDITION = DIA_BRODDY_Q205_SMELL_CONDITION;
    INFORMATION = DIA_BRODDY_Q205_SMELL_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BRODDY_Q205_SMELL_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q205)) == (LOG_RUNNING)) && ((Q205_PREPAREMEAL) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BRODDY_Q205_SMELL_INFO() {
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Broddy_Q205_Smell_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Broddy_Q205_Smell_15_02");
    if ((NPC_HASITEMS(OTHER, 36682)) >= (1)) {
        B_GIVEPLAYERXP(XP_Q205_BRODDYSTEW);
        B_GIVEINVITEMS(OTHER, SELF, 36682, 1);
        AI_OUTPUT(OTHER, SELF, "DIA_Broddy_Q205_Smell_15_03");
        AI_WAITTILLEND(SELF, OTHER);
        AI_STOPLOOKAT(SELF);
        AI_USEITEM(SELF, 36682);
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Broddy_Q205_Smell_15_04");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Broddy_Q205_Smell_03_05");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q205_HUNGRY");
    AI_LOGENTRY(TOPIC_Q205, LOG_Q205_BRODDY_HUNGRY);
}

instance DIA_BRODDY_Q205_IMBUSY(C_INFO) {
    NPC = 56266;
    NR = 1;
    CONDITION = DIA_BRODDY_Q205_IMBUSY_CONDITION;
    INFORMATION = DIA_BRODDY_Q205_IMBUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_BRODDY_Q205_IMBUSY_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q205)) == (LOG_RUNNING)) {
        if ((Q205_ATTACKVINEYARD_READ) == (FALSE)) {
            if ((NPC_KNOWSINFO(OTHER, 78579)) && (NPC_ISINSTATE(SELF, 61599))) {
                return TRUE;
            };
        } else if (NPC_ISINSTATE(SELF, 61599)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_BRODDY_Q205_IMBUSY_INFO() {
    DIA_IMBUSY_ANGRY();
}

instance DIA_BRODDY_QM401_FIGHT(C_INFO) {
    NPC = 56266;
    NR = 1;
    CONDITION = DIA_BRODDY_QM401_FIGHT_CONDITION;
    INFORMATION = DIA_BRODDY_QM401_FIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BRODDY_QM401_FIGHT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 78664))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BRODDY_QM401_FIGHT_INFO() {
    AI_STARTFACEANI(SELF, "S_HOSTILE", 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Broddy_QM401_Fight_03_01");
    AI_DRAWWEAPON(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Broddy_QM401_Fight_03_02");
    INFO_CLEARCHOICES(78585);
    INFO_ADDCHOICE(78585, "(Say nothing and draw your weapon)", 78591);
    INFO_ADDCHOICE(78585, "Is someone who betrays traitors a traitor?", 78590);
}

func void BRODDY_QM401_CHANGEGUILD() {
    QM401_FIGHTWITHBRODDY = 1;
    B_IMMEDIATEATTACKPLAYER(MIL_6268_BRODDY, AR_KILL);
    NPC_SETTRUEGUILD(MIL_6268_BRODDY, GIL_BDT);
    MIL_6268_BRODDY.GUILD = GIL_BDT;
    MIL_6268_BRODDY.FLAGS = 0;
}

func void BRODDY_QM401_STARTFIGHT() {
    AI_WAITTILLEND(SELF, OTHER);
    INFO_CLEARCHOICES(78585);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 78588);
}

func void DIA_BRODDY_QM401_FIGHT_TRAITOR() {
    AI_OUTPUT(OTHER, SELF, "DIA_Broddy_QM401_Fight_Traitor_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Broddy_QM401_Fight_Traitor_03_02");
    BRODDY_QM401_STARTFIGHT();
}

func void DIA_BRODDY_QM401_FIGHT_SILENCE() {
    AI_DRAWWEAPON(OTHER);
    BRODDY_QM401_STARTFIGHT();
}
