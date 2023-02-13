func int DIA_VLK_CITY_Q209_WHEREJORN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q209)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING))) {
        if ((SELF.AIVAR[93]) <= (WLD_GETDAY())) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLK_CITY_Q209_WHEREJORN_INFO() {
    var int Q209_WHEREJORN_COUNT;
    var int RNGANWSER;
    B_SAY(OTHER, SELF, "$MARVIN_AboutJorn6");
    RNGANWSER = HLP_RANDOM(5);
    if ((RNGANWSER) == (0)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, "$DONTKNOW_PERSON_ANGRY");
    };
    if ((RNGANWSER) == (1)) {
        B_SAY(SELF, OTHER, "$DONTKNOW_PERSON_CALM");
    };
    if ((RNGANWSER) == (2)) {
        DIA_IMBUSY_CALM();
    };
    if ((RNGANWSER) == (3)) {
        DIA_IMBUSY_ANGRY();
    };
    if ((RNGANWSER) == (4)) {
        B_SAY(SELF, OTHER, "$NO");
    };
    AI_RESETFACEANI(SELF);
    SELF.AIVAR[93] = (WLD_GETDAY()) + (1);
    Q209_WHEREJORN_COUNT = (Q209_WHEREJORN_COUNT) + (1);
    if ((Q209_WHEREJORN_COUNT) == (2)) {
        B_LOGENTRY(TOPIC_Q209, LOG_Q209_NOUSE);
    };
}

instance DIA_VLK_CITY_Q206_SMUGGLERS(C_INFO) {
    NR = 11;
    CONDITION = DIA_VLK_CITY_Q206_SMUGGLERS_CONDITION;
    INFORMATION = DIA_VLK_CITY_Q206_SMUGGLERS_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "You know anything about smugglers?";
}

func int DIA_VLK_CITY_Q206_SMUGGLERS_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q206)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 70294))) && ((NPC_GETDISTTONPC(VLK_3018_OLAF, OTHER)) <= (3500))) && ((NPC_KNOWSINFO(OTHER, 70297)) == (FALSE))) {
        if ((SELF.AIVAR[93]) <= (WLD_GETDAY())) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLK_CITY_Q206_SMUGGLERS_INFO() {
    var int RNGANWSER;
    B_SAY(OTHER, SELF, "$Q206_SearchSmugglers");
    RNGANWSER = HLP_RANDOM(2);
    if ((RNGANWSER) == (0)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, "$DONTKNOW_PERSON_ANGRY");
    };
    if ((RNGANWSER) == (1)) {
        B_SAY(SELF, OTHER, "$DONTKNOW_PERSON_CALM");
    };
    AI_RESETFACEANI(SELF);
    SELF.AIVAR[93] = (WLD_GETDAY()) + (1);
}

instance DIA_VLK_CITY_Q206_FINBARBODY(C_INFO) {
    NR = 12;
    CONDITION = DIA_VLK_CITY_Q206_FINBARBODY_CONDITION;
    INFORMATION = DIA_VLK_CITY_Q206_FINBARBODY_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "You know what happened here?";
}

func int DIA_VLK_CITY_Q206_FINBARBODY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q206)) == (LOG_RUNNING)) && ((Q206_KNOWSFINBAR) == (TRUE))) && ((NPC_GETDISTTOWP(SELF, "HARBOUR_PATH_100")) <= (1000))) {
        if ((SELF.AIVAR[93]) <= (WLD_GETDAY())) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLK_CITY_Q206_FINBARBODY_INFO() {
    var int RNGANWSER;
    B_SAY(OTHER, SELF, "$MARVIN_KNOWWHATHAPPENDHERE");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    RNGANWSER = HLP_RANDOM(3);
    if ((RNGANWSER) == (0)) {
        B_SAY(SELF, OTHER, "$Q206_FinbarBody_V1");
    };
    if ((RNGANWSER) == (1)) {
        B_SAY(SELF, OTHER, "$Q206_FinbarBody_V2");
    };
    if ((RNGANWSER) == (2)) {
        B_SAY(SELF, OTHER, "$DONTKNOW_TOPIC_CALM");
    };
    AI_RESETFACEANI(SELF);
    SELF.AIVAR[93] = (WLD_GETDAY()) + (1);
}

func void B_ASSIGNAMBIENTINFOS_VLK_CITY(var C_NPC SLF) {
    DIA_VLK_CITY_Q206_SMUGGLERS.NPC = HLP_GETINSTANCEID(SLF);
    DIA_VLK_CITY_Q206_FINBARBODY.NPC = HLP_GETINSTANCEID(SLF);
    DIA_VLK_CITY_Q209_WHEREJORN.NPC = HLP_GETINSTANCEID(SLF);
}

