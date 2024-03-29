instance DIA_BANDITWS_EXIT(C_INFO) {
    NPC = 58099;
    NR = 999;
    CONDITION = DIA_BANDITWS_EXIT_CONDITION;
    INFORMATION = DIA_BANDITWS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BANDITWS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BANDITWS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BANDITWS_Q402_BUSY(C_INFO) {
    NPC = 58099;
    NR = 1;
    CONDITION = DIA_BANDITWS_Q402_BUSY_CONDITION;
    INFORMATION = DIA_BANDITWS_Q402_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_BANDITWS_Q402_BUSY_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 61599)) && ((Q402_SPAWNBANDITS) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BANDITWS_Q402_BUSY_INFO() {
    DIA_IMBUSY_ANGRY();
}

instance DIA_BANDITWS_HELLO(C_INFO) {
    NPC = 58099;
    NR = 1;
    CONDITION = DIA_BANDITWS_HELLO_CONDITION;
    INFORMATION = DIA_BANDITWS_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BANDITWS_HELLO_CONDITION() {
    if (((Q402_SPAWNBANDITS) == (TRUE)) && ((LOG_GETSTATUS(MIS_Q402)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BANDITWS_HELLO_INFO() {
    AI_STARTFACEANI(SELF, "S_ANGRY", 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_BanditWS_HELLO_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_BanditWS_HELLO_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_BanditWS_HELLO_03_03");
    AI_STARTFACEANI(OTHER, "S_SURPRISE", 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_BanditWS_HELLO_15_04");
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_Q402, LOG_Q402_JONCHEST);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 81261);
}

func void BANDITWS_KILLMARIVN() {
    NPC_SETTRUEGUILD(HERO, HERO.GUILD);
    BDT_6381_BANDIT.GUILD = GIL_BDT;
    BDT_6380_BANDIT.GUILD = GIL_BDT;
    BDT_6379_BANDIT.GUILD = GIL_BDT;
    NPC_SETTRUEGUILD(BDT_6379_BANDIT, GIL_BDT);
    B_IMMEDIATEATTACKPLAYER(BDT_6381_BANDIT, AR_KILL);
    NPC_SETTRUEGUILD(BDT_6380_BANDIT, GIL_BDT);
    B_IMMEDIATEATTACKPLAYER(BDT_6380_BANDIT, AR_KILL);
    NPC_SETTRUEGUILD(BDT_6381_BANDIT, GIL_BDT);
    B_IMMEDIATEATTACKPLAYER(BDT_6379_BANDIT, AR_KILL);
}

