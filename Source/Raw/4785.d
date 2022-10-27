func void EVENTSMANAGER_SQ305() {
    if ((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING)) {
        if ((((SQ305_OSIP_GOTPOTION) == (2)) && ((SQ305_TELEPORTGUIDO) == (FALSE))) && ((NPC_ISINSTATE(MIL_6402_GUIDO, 0xf09f)) == (FALSE))) {
            SQ305_TELEPORTGUIDO = TRUE;
            PRINTD("Gudio zosta� zteleportowany");
            TELEPORTNPCTOWP(0xcf02, "PARTM3_PRISON_07");
            B_STARTOTHERROUTINE(MIL_6402_GUIDO, "WAIT");
            NPC_REFRESH(MIL_6402_GUIDO);
        };
        if ((SQ305_MAKEGUIDOMEATBUG) == (1)) {
            if (((NPC_ISINSTATE(STRF_6405_OSIP, 0xf09f)) == (FALSE)) && ((NPC_ISINSTATE(MIL_6402_GUIDO, 0xf09f)) == (FALSE))) {
                FF_APPLYONCEEXT(0x1708d, 1000, 5);
                SQ305_MAKEGUIDOMEATBUG = 2;
                B_STARTOTHERROUTINE(MIL_6402_GUIDO, TOT);
                NPC_REFRESH(MIL_6402_GUIDO);
                TELEPORTNPCTOWP(0xcf02, MIL_6402_GUIDO.WP);
                WLD_INSERTNPC(0xc5b6, "PARTM3_CUTSCENE_GUIDO_02");
                WLD_PLAYEFFECT("FX_EarthQuake", MEATBUG_GUIDO, MEATBUG_GUIDO, 0, 0, 0, FALSE);
                WLD_PLAYEFFECT("spellFX_INCOVATION_RED", MEATBUG_GUIDO, MEATBUG_GUIDO, 0, 0, 0, FALSE);
                WLD_SENDTRIGGER("KM_PRISON_CUTSCENE_05");
                WLD_SENDUNTRIGGER("KM_PRISON_CUTSCENE_04");
            };
        };
        if ((SQ305_GUIDORUNAWAY) == (1)) {
            if (!(NPC_ISINSTATE(STRF_6405_OSIP, 0xf09f))) {
                MDL_APPLYOVERLAYMDS(MIL_6402_GUIDO, "HumanS_StomachHurt.MDS");
                SQ305_GUIDORUNAWAY = 2;
                AI_GOTOWP(MIL_6402_GUIDO, "PARTM3_PRISON_02");
                WLD_SENDTRIGGER("KM_PRISON_CUTSCENE_03");
                WLD_SENDUNTRIGGER("KM_PRISON_CUTSCENE_04");
            };
        } else if ((SQ305_GUIDORUNAWAY) == (2)) {
            if (((NPC_GETDISTTOWP(MIL_6402_GUIDO, "PARTM3_PRISON_03")) <= (350)) && ((NPC_ISINSTATE(MIL_6402_GUIDO, 0xf09f)) == (FALSE))) {
                DIACAM_ENABLE();
                WLD_SENDUNTRIGGER("KM_PRISON_CUTSCENE_03");
                SQ305_GUIDORUNAWAY = 3;
                TELEPORTNPCTOWP(0xcf02, TOT);
                B_STARTOTHERROUTINE(MIL_6402_GUIDO, TOT);
                NPC_REFRESH(MIL_6402_GUIDO);
                PRINTD("Guido polecia� do Tota!");
            };
        };
        if ((SQ305_NATHANIELCLOSEGATES) == (1)) {
            if (((NPC_GETDISTTOWP(HERO, "KM_NATHANIEL_HOUSE_29")) <= (350)) && ((NPC_ISINSTATE(VLK_6409_NATHANIEL, 0xf09f)) == (FALSE))) {
                SQ305_NATHANIELCLOSEGATES = 2;
                WLD_SENDTRIGGER("KM_NATHANIEL_CRATE");
                AI_OUTPUT(HERO, HERO, "DIA_Marvin_CratesClosed_15_01");
                B_LOGENTRY(TOPIC_SQ305, LOG_Q308_NATHANIEL_UPSTAIRS);
                TELEPORTNPCTOWP(0xd783, "KM_NATHANIEL_HOUSE_SOFA_01");
                B_STARTOTHERROUTINE(VLK_6409_NATHANIEL, "WAIT2");
                NPC_REFRESH(VLK_6409_NATHANIEL);
            };
        };
        if ((SQ305_NATHANIELATTACKHERO) == (1)) {
            if (NPC_ISDEAD(VLK_6409_NATHANIEL)) {
                SQ305_NATHANIELATTACKHERO = 2;
                B_LOGENTRY(TOPIC_SQ305, LOG_Q308_NATHANIEL_DEAD);
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ305)) == (LOG_SUCCESS)) {
        if ((SQ305_MARVINCANUSEBLAKELEVER) == (1)) {
            if (((NPC_ISDEAD(NONE_6410_BLAKE)) && (NPC_ISDEAD(NONE_6411_HASMETH))) && (NPC_ISDEAD(NONE_6412_THULSA))) {
                SQ305_MARVINCANUSEBLAKELEVER = 3;
            };
        };
    };
}

func void Q308_DISABLECAMERA() {
    Q308_DISABLECAMERACOUNT = (Q308_DISABLECAMERACOUNT) + (1);
    if ((Q308_DISABLECAMERACOUNT) == (4)) {
        PRINTD("Powr�t");
        DIACAM_ENABLE();
        WLD_SENDUNTRIGGER("KM_PRISON_CUTSCENE_05");
        SQ305_MAKEGUIDOMEATBUG = 3;
        B_STARTOTHERROUTINE(MEATBUG_GUIDO, TOT);
        NPC_REFRESH(MEATBUG_GUIDO);
        MEATBUG_GUIDO.GUILD = GIL_MEATBUG;
    };
}

var int Q308_DISABLECAMERA.Q308_DISABLECAMERACOUNT = 0;