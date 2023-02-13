func void KQ405_SEARCHCORPSE_STANDUP() {
    HERO.AIVAR[4] = FALSE;
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
}

func void KQ405_SEARCHCORPSE_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_STRCMP(NPC_GETNEARESTWP(HER), "S2_KQ405_CORPSE_BURKHARD")) {
            KQ405_FOUNDBODY = TRUE;
            AI_OUTPUT(HERO, HERO, "DIA_MARVIN_KQ405_SEARCHCORPSE_15_01");
            if ((NPC_KNOWSINFO(OTHER, 86487)) || (NPC_KNOWSINFO(OTHER, 86496))) {
                B_LOGENTRY(TOPIC_KQ405, LOG_KQ405_FOUNDBODY_DEGORY);
            } else {
                B_LOGENTRY(TOPIC_KQ405, LOG_KQ405_FOUNDBODY);
            };
            KQ405_SEARCHCORPSE_STANDUP();
        } else if (HLP_STRCMP(NPC_GETNEARESTWP(HER), "S2_KQ405_CORPSE_01")) {
            AI_OUTPUT(HERO, HERO, "DIA_MARVIN_KQ405_SEARCHCORPSE_15_03");
            KQ405_SEARCHCORPSE_STANDUP();
        } else if (HLP_STRCMP(NPC_GETNEARESTWP(HER), "S2_KQ405_CORPSE_02")) {
            AI_OUTPUT(HERO, HERO, "DIA_MARVIN_KQ405_SEARCHCORPSE_15_04");
            KQ405_SEARCHCORPSE_STANDUP();
        } else if (HLP_STRCMP(NPC_GETNEARESTWP(HER), "S2_KQ405_CORPSE_03")) {
            AI_OUTPUT(HERO, HERO, "DIA_MARVIN_KQ405_SEARCHCORPSE_15_05");
            KQ405_SEARCHCORPSE_STANDUP();
        };
    };
}

