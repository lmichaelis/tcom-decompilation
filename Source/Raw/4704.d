func void EVENTSMANAGER_Q309() {
    if ((LOG_GETSTATUS(MIS_Q309)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q309_READYFORGRAVE) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM8_FUNERAL_TRIMEGISTO")) <= (0x7d0)) {
            Q309_READYFORGRAVE = 2;
            WLD_SENDTRIGGER("KM_GRAVE_01");
            TELEPORTNPCTOWP(0xcae7, "PARTM8_FUNERAL_TRIMEGISTO");
            TELEPORTNPCTOWP(0xd8a0, "PARTM8_FUNERAL_GRAVEDIGGER");
            TELEPORTNPCTOWP(0x71b, "PARTM8_GRAVE_HERO_01");
            NPC_CLEARAIQUEUE(KDF_6404_TRIMEGISTO);
            NPC_CLEARAIQUEUE(VLK_6307_GRAVE);
            KDF_6404_TRIMEGISTO.AIVAR[92] = TRUE;
            MDL_APPLYOVERLAYMDS(KDF_6404_TRIMEGISTO, "HumanS_MageSpeech.MDS");
            AI_TURNTONPC(KDF_6404_TRIMEGISTO, HERO);
            AI_TURNTONPC(VLK_6307_GRAVE, HERO);
            AI_TURNTONPC(VLK_6045_CITIZEN, HERO);
            AI_TURNTONPC(VLK_6254_MAILOR, HERO);
            AI_TURNTONPC(VLK_6113_GUY, HERO);
            AI_TURNTONPC(VLK_6041_GIRL, HERO);
            AI_PLAYANI(KDF_6404_TRIMEGISTO, T_STAND_2_LGUARD);
            AI_OUTPUT(KDF_6404_TRIMEGISTO, HERO, "DIA_Trimegisto_Grave_03_01");
            AI_OUTPUT(KDF_6404_TRIMEGISTO, HERO, "DIA_Trimegisto_Grave_03_02");
            AI_FUNCTION(KDF_6404_TRIMEGISTO, 0x16f86);
            AI_OUTPUT(KDF_6404_TRIMEGISTO, HERO, "DIA_Trimegisto_Grave_03_03");
            AI_OUTPUT(KDF_6404_TRIMEGISTO, HERO, "DIA_Trimegisto_Grave_03_04");
            AI_FUNCTION(KDF_6404_TRIMEGISTO, 0x16f87);
            AI_OUTPUT(KDF_6404_TRIMEGISTO, HERO, "DIA_Trimegisto_Grave_03_05");
            AI_OUTPUT(KDF_6404_TRIMEGISTO, HERO, "DIA_Trimegisto_Grave_03_06");
            AI_OUTPUT(KDF_6404_TRIMEGISTO, HERO, "DIA_Trimegisto_Grave_03_07");
            AI_FUNCTION(KDF_6404_TRIMEGISTO, 0x16f88);
        };
    };
    if (((Q309_BOLTLOGENTRY) == (FALSE)) && ((NPC_HASITEMS(HERO, 0x91ad)) >= (1))) {
        Q309_BOLTLOGENTRY = TRUE;
        if ((HERO.GUILD) == (GIL_MIL)) {
            B_LOGENTRY(TOPIC_Q309, LOG_Q309_GOTBOLT_V2);
        } else if ((HERO.GUILD) == (GIL_SLD)) {
            B_LOGENTRY(TOPIC_Q309, LOG_Q309_GOTBOLT_V1);
        };
    };
    if ((Q309_LAZARDEAL) == (2)) {
        if (HLP_ISVALIDNPC(NONE_6414_LAZAR)) {
            if (NPC_ISDEAD(NONE_6414_LAZAR)) {
                Q309_LAZARDEAL = 3;
                Q309_DIGNORMANGRACE = 2;
                MOB_CHANGEFOCUSNAME("KM_NORMAN_GRAVE_BODY_AFTER", "MOBNAME_DIG_IN");
                B_LOGENTRY(TOPIC_Q309, LOG_Q309_LAZAR_KILLLAZARAFTERDEAL);
            };
            if ((Q309_LAZARDEAL_DAY) == ((WLD_GETDAY()) - (1))) {
                Q309_LAZARDEAL = 4;
                Q309_DIGNORMANGRACE = 2;
                MOB_CHANGEFOCUSNAME("KM_NORMAN_GRAVE_BODY_AFTER", "MOBNAME_DIG_IN");
                B_STARTOTHERROUTINE(NONE_6414_LAZAR, TOT);
                PRINTD("Lazar polecia� do tota, rip");
            };
        };
    };
}

func void Q309_GRAVECUTSCENE_01() {
    TELEPORTNPCTOWP(0x71b, "PARTM8_GRAVE_HERO_02");
    WLD_SENDTRIGGER("KM_GRAVE_02");
    WLD_SENDUNTRIGGER("KM_GRAVE_01");
}

func void Q309_GRAVECUTSCENE_02() {
    TELEPORTNPCTOWP(0x71b, "PARTM8_GRAVE_HERO_03");
    WLD_SENDTRIGGER("KM_GRAVE_03");
    WLD_SENDUNTRIGGER("KM_GRAVE_02");
}

func void Q309_GRAVECUTSCENE_03() {
    TELEPORTNPCTOWP(0x71b, "PARTM8_PATH_79");
    WLD_SENDUNTRIGGER("KM_GRAVE_03");
    KDF_6404_TRIMEGISTO.AIVAR[92] = FALSE;
    MDL_REMOVEOVERLAYMDS(KDF_6404_TRIMEGISTO, "HumanS_MageSpeech.MDS");
    AI_PLAYANI(KDF_6404_TRIMEGISTO, T_LGUARD_2_STAND);
    B_LOGENTRY(TOPIC_Q309, LOG_Q309_GRAVE_ENDCUTSCENE);
    B_Q309_GRAVEEND();
}
