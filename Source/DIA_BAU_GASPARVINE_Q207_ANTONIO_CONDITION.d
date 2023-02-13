func int DIA_BAU_GASPARVINE_Q207_ANTONIO_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q205)) == (LOG_SUCCESS)) {
        if (((LOG_GETSTATUS(MIS_Q207)) == (LOG_RUNNING)) && ((Q207_MARVINKNOWABOUTANTONIO) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_BAU_GASPARVINE_Q207_ANTONIO_INFO() {
    var int RNGANWSER;
    B_SAY(OTHER, SELF, "$Q207_SearchAntonio");
    RNGANWSER = HLP_RANDOM(2);
    if ((RNGANWSER) == (0)) {
        B_SAY(SELF, OTHER, "$DONTKNOW_PERSON_ANGRY");
    };
    if ((RNGANWSER) == (1)) {
        B_SAY(SELF, OTHER, "$DONTKNOW_PERSON_CALM");
    };
}

func void B_ASSIGNAMBIENTINFOS_BAU_GASPARVINE(var C_NPC SLF) {
    DIA_BAU_GASPARVINE_Q207_ANTONIO.NPC = HLP_GETINSTANCEID(SLF);
}

