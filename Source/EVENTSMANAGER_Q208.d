func void EVENTSMANAGER_Q208() {
    if (((LOG_GETSTATUS(MIS_Q208)) != (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q206)) != (LOG_SUCCESS))) {
        return;
    };
    if ((Q208_FOUNDHOD) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PART6_WITHOUTTRACE_HODCORPSE")) <= (300)) {
            Q208_FOUNDHOD = TRUE;
            PRINTD("Znalaz�em Hoda");
            if ((Q208_HODLOGENTRIES) >= (1)) {
                AI_OUTPUT(HERO, HERO, "DIA_Marvin_GQ001_LookingForHod_15_01");
                B_LOGENTRY(TOPIC_Q208, LOG_Q208_FOUNDHOD);
            };
        };
    };
    if (((Q208_HODLOGENTRIES) == (1)) && ((Q208_FOUNDHOD) == (FALSE))) {
        if ((NPC_GETDISTTOWP(HERO, "PART6_WITHOUTTRACE_GROG")) <= (500)) {
            Q208_HODLOGENTRIES = 2;
            B_LOGENTRY(TOPIC_Q208, LOG_Q208_GROG);
        };
    };
    if ((NPC_KNOWSINFO(HERO, 78426)) && ((Q208_TALKEDWITHYANNIC) == (FALSE))) {
        if ((NPC_GETDISTTOWP(HERO, "PART4_FISHERMAN_62")) <= (400)) {
            Q208_TALKEDWITHYANNIC = 1;
            CUTSCENE_START(92317);
        } else if ((NPC_GETDISTTOWP(HERO, "PART4_FISHERMAN_CUTSCENE_HERO_02")) <= (250)) {
            Q208_TALKEDWITHYANNIC = 2;
            CUTSCENE_START(92317);
        };
    };
    if ((Q208_FIGHTWITHMILITIA) == (1)) {
        if ((NPC_ISINSTATE(MIL_6352_RANDHAL, 61603)) && (NPC_ISINSTATE(MIL_6353_MILITIA, 61603))) {
            Q208_FIGHTWITHMILITIA = 2;
            PRINTD("Clear AI");
            NPC_SETATTITUDE(MIL_6352_RANDHAL, ATT_NEUTRAL);
            NPC_SETTEMPATTITUDE(MIL_6352_RANDHAL, ATT_NEUTRAL);
            MIL_6352_RANDHAL.AIVAR[1] = CRIME_NONE;
            MIL_6352_RANDHAL.AIVAR[0] = FIGHT_NONE;
            NPC_SETATTITUDE(MIL_6353_MILITIA, ATT_NEUTRAL);
            NPC_SETTEMPATTITUDE(MIL_6353_MILITIA, ATT_NEUTRAL);
            MIL_6353_MILITIA.AIVAR[1] = CRIME_NONE;
            MIL_6353_MILITIA.AIVAR[0] = FIGHT_NONE;
            MIL_6352_RANDHAL.AIVAR[96] = 1;
            MIL_6353_MILITIA.AIVAR[96] = 2;
        };
    };
}

