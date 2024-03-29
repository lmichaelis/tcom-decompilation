func int DIA_Q308_CITIZENVOLKER_TRAGEDY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING))) {
        if ((Q308_VOLKERHOUSECUTSCENE) == (FALSE)) {
            if (NPC_ISINSTATE(SELF, 61599)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_Q308_CITIZENVOLKER_TRAGEDY_INFO() {
    var int RND_Q308_CITIZENVOLKER;
    RND_Q308_CITIZENVOLKER = HLP_RANDOM(3);
    if ((RND_Q308_CITIZENVOLKER) == (0)) {
        AI_STARTFACEANI(SELF, "S_ANGRY", 1, -(1));
        B_SAY(SELF, OTHER, "$DIA_Q308_CitizenVolker_Tragedy_03_01");
    };
    if ((RND_Q308_CITIZENVOLKER) == (1)) {
        AI_STARTFACEANI(SELF, "S_SAD", 1, -(1));
        B_SAY(SELF, OTHER, "$DIA_Q308_CitizenVolker_Tragedy_03_02");
    };
    if ((RND_Q308_CITIZENVOLKER) == (2)) {
        AI_STARTFACEANI(SELF, "S_TIRED", 1, -(1));
        B_SAY(SELF, OTHER, "$DIA_Q308_CitizenVolker_Tragedy_03_03");
    };
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}

func void B_ASSIGNAMBIENTINFOS_Q308_CITIZENVOLKER(var C_NPC SLF) {
    DIA_Q308_CITIZENVOLKER_TRAGEDY.NPC = HLP_GETINSTANCEID(SLF);
}

