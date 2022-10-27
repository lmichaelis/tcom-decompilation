func void EVENTSMANAGER_SQ204() {
    if ((LOG_GETSTATUS(MIS_SQ204)) != (LOG_RUNNING)) {
        return;
    };
    if ((DETLOWDIED) == (TRUE)) {
        if ((SQ204_FAILEDQUEST) == (FALSE)) {
            B_LOGENTRY(TOPIC_SQ204, LOG_SQ204_DETLOWDIED);
            LOG_SETSTATUS(_@(MIS_SQ204), TOPIC_SQ204, LOG_FAILED);
            SQ204_FAILEDQUEST = TRUE;
        };
    };
    if ((SQ204_CHECKTIME) == (1)) {
        if (WLD_ISTIME(3, 0, 3, 10)) {
            PRINTD("Zatrzymaj czas");
            SQ204_CHECKTIME = 2;
            SETHOLDTIME(TRUE);
            CHANGETIMESPEED(100);
        };
    };
    if ((SQ204_DETLOWATTACKWOLF) == (1)) {
        if ((((((NPC_ISDEAD(WOLF_DETLOW_01)) && (NPC_ISDEAD(WOLF_DETLOW_02))) && (NPC_ISDEAD(WOLF_DETLOW_03))) && (NPC_ISDEAD(WOLF_DETLOW_04))) && (NPC_ISDEAD(WOLF_DETLOW_05))) && ((NPC_ISINSTATE(VLK_3015_DETLOW, 0xf09f)) == (FALSE))) {
            B_STARTOTHERROUTINE(VLK_3015_DETLOW, "AfterWolfPhase01");
            SQ204_DETLOW_RTNCHECK = 3;
            NPC_REFRESH(VLK_3015_DETLOW);
            PRINTD("Wilki zabity i Detlow zmieni� RTN!");
            SQ204_DETLOWATTACKWOLF = 2;
        };
    };
    if ((SQ204_STARTCUTSCENE) == (1)) {
        if ((HLP_ISVALIDNPC(WOLF_DETLOW_CUTSCENE_01)) && (HLP_ISVALIDNPC(WOLF_DETLOW_CUTSCENE_02))) {
            if ((NPC_ISDEAD(WOLF_DETLOW_CUTSCENE_01)) && (NPC_ISDEAD(WOLF_DETLOW_CUTSCENE_02))) {
                SQ204_SECONDROUND_TELEPORTDETLOW();
                SQ204_STARTCUTSCENE = 2;
            };
        };
    };
    if ((SQ204_STARTCUTSCENE) == (2)) {
        if (((NPC_GETDISTTOWP(VLK_3015_DETLOW, "PART11_PATH_62")) <= (500)) && ((NPC_ISINSTATE(VLK_3015_DETLOW, 0xf09f)) == (FALSE))) {
            B_STARTOTHERROUTINE(VLK_3015_DETLOW, "AFTERWOLFPHASE02RUNTOHERO");
            SQ204_DETLOW_RTNCHECK = 7;
            NPC_REFRESH(VLK_3015_DETLOW);
            SQ204_STARTCUTSCENE = 3;
            PRINTD("Detlow zmieni� RTN!");
        };
    };
    if ((SQ204_FINALWOLFATTACK) == (0)) {
        if (NPC_KNOWSINFO(HERO, 0x120e0)) {
            if (((((((NPC_GETDISTTOWP(WOLF_DETLOW_07, "PART10_PATH2_03")) <= (500)) && ((NPC_GETDISTTOWP(WOLF_DETLOW_08, "PART10_PATH2_03")) <= (500))) && ((NPC_GETDISTTOWP(WOLF_DETLOW_11, "PART10_PATH2_07")) <= (500))) && ((NPC_GETDISTTOWP(WOLF_DETLOW_12, "PART10_PATH2_07")) <= (500))) && ((NPC_GETDISTTOWP(WOLF_DETLOW_13, "PART10_SQ204_WOLF_01")) <= (500))) && ((NPC_GETDISTTOWP(WOLF_DETLOW_14, "PART10_SQ204_WOLF_02")) <= (500))) {
                SQ204_THIRDROUND_LASTWOLFSATTACK();
            };
        };
    };
    if ((SQ204_FINALWOLFATTACK) == (1)) {
        if ((NPC_ISDEAD(WOLF_DETLOW_07)) && (NPC_ISDEAD(WOLF_DETLOW_11))) {
            if ((SQ204_CHANGEWOLFRTN_01) == (FALSE)) {
                SQ204_THIRDROUND_HOWLWOLFATTACK_01();
            };
            if ((SQ204_CHANGEWOLFRTN_02) == (FALSE)) {
                SQ204_THIRDROUND_HOWLWOLFATTACK_02();
            };
            PRINTD("Dwa ostatnie wilki atakuj�!");
            SQ204_FINALWOLFATTACK = 2;
        };
    };
    if (((SQ204_FINALWOLFATTACK) == (1)) && ((SQ204_CHANGEWOLFRTN_01) == (FALSE))) {
        if (((NPC_GETDISTTONPC(HERO, WOLF_DETLOW_13)) <= (450)) || ((WOLF_DETLOW_13.ATTRIBUTE[0]) != (WOLF_DETLOW_13.ATTRIBUTE[1]))) {
            SQ204_THIRDROUND_HOWLWOLFATTACK_01();
        };
    };
    if (((SQ204_FINALWOLFATTACK) == (1)) && ((SQ204_CHANGEWOLFRTN_02) == (FALSE))) {
        if (((NPC_GETDISTTONPC(HERO, WOLF_DETLOW_14)) <= (450)) || ((WOLF_DETLOW_14.ATTRIBUTE[0]) != (WOLF_DETLOW_14.ATTRIBUTE[1]))) {
            SQ204_THIRDROUND_HOWLWOLFATTACK_02();
        };
    };
    if (((SQ204_FINALWOLFATTACK) == (2)) || ((SQ204_FINALWOLFATTACK) == (1))) {
        if ((((((NPC_ISDEAD(WOLF_DETLOW_07)) && (NPC_ISDEAD(WOLF_DETLOW_08))) && (NPC_ISDEAD(WOLF_DETLOW_11))) && (NPC_ISDEAD(WOLF_DETLOW_12))) && (NPC_ISDEAD(WOLF_DETLOW_13))) && (NPC_ISDEAD(WOLF_DETLOW_14))) {
            SQ204_THIRDROUND_FINISH();
        };
    };
}

var int EVENTSMANAGER_SQ204.SQ204_FAILEDQUEST = 0;
