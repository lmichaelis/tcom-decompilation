instance KQ404_INEXTREMOBIGCONCERT_EURIC(CUTSCENE) {
    ONSTART = FUNCTION(92356);
}

func void KQ404_INEXTREMOBIGCONCERT_EURIC_WAIT() {
    AI_WAITTILLEND(NONE_1393_INEXTREMO_UNICORN, MIL_13381_EURIC_CUTSCENE);
    AI_WAITTILLEND(NONE_1393_INEXTREMO_UNICORN, HERO);
    AI_WAITTILLEND(MIL_13381_EURIC_CUTSCENE, NONE_1393_INEXTREMO_UNICORN);
    AI_WAITTILLEND(MIL_13381_EURIC_CUTSCENE, HERO);
    AI_WAITTILLEND(HERO, NONE_1393_INEXTREMO_UNICORN);
    AI_WAITTILLEND(HERO, MIL_13381_EURIC_CUTSCENE);
}

func void KQ404_INEXTREMOBIGCONCERT_EURIC_START() {
    TELEPORTNPCTOWP(54456, NONE_1393_INEXTREMO_UNICORN.WP);
    TELEPORTNPCTOWP(54452, "HARBOUR_PATH_319");
    TELEPORTNPCTOWP(54448, "HARBOUR_PATH_319");
    TELEPORTNPCTOWP(54444, "HARBOUR_PATH_319");
    TELEPORTNPCTOWP(54468, "HARBOUR_PATH_319");
    TELEPORTNPCTOWP(54464, "HARBOUR_PATH_319");
    TELEPORTNPCTOWP(54460, "HARBOUR_PATH_319");
    TELEPORTNPCTOWP(53716, "HARBOUR_PATH_319");
    TELEPORTNPCTOWP(53716, "KQ404_VIEWER_HERO");
    NPC_CLEARAIQUEUE(NONE_1393_INEXTREMO_UNICORN);
    NPC_CLEARAIQUEUE(NONE_1392_INEXTREMO_THOMASTHEFORGER);
    NPC_CLEARAIQUEUE(NONE_1391_INEXTREMO_THEFLAIL);
    NPC_CLEARAIQUEUE(NONE_1390_INEXTREMO_DRPYMONTE);
    NPC_CLEARAIQUEUE(NONE_1396_INEXTREMO_FLEX);
    NPC_CLEARAIQUEUE(NONE_1395_INEXTREMO_LUTTER);
    NPC_CLEARAIQUEUE(NONE_1394_INEXTREMO_YELLOWPFEIFFER);
    NPC_CLEARAIQUEUE(MIL_13381_EURIC_CUTSCENE);
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 92361);
    AI_TURNTONPC(MIL_13381_EURIC_CUTSCENE, NONE_1393_INEXTREMO_UNICORN);
    AI_TURNTONPC(NONE_1393_INEXTREMO_UNICORN, MIL_13381_EURIC_CUTSCENE);
    AI_WAIT(MIL_13381_EURIC_CUTSCENE, 1050253722);
    AI_OUTPUT(MIL_13381_EURIC_CUTSCENE, HERO, "DIA_KQ404_InExtremoBigConcert_Euric_03_14");
    KQ404_INEXTREMOBIGCONCERT_EURIC_WAIT();
    AI_RESETFACEANI(NONE_1393_INEXTREMO_UNICORN);
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_Euric_03_15");
    KQ404_INEXTREMOBIGCONCERT_EURIC_WAIT();
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 92362);
    AI_OUTPUT(MIL_13381_EURIC_CUTSCENE, HERO, "DIA_KQ404_InExtremoBigConcert_Euric_03_16");
    AI_OUTPUT(MIL_13381_EURIC_CUTSCENE, HERO, "DIA_KQ404_InExtremoBigConcert_Euric_03_17");
    KQ404_INEXTREMOBIGCONCERT_EURIC_WAIT();
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 92363);
    AI_OUTPUT(MIL_13381_EURIC_CUTSCENE, HERO, "DIA_KQ404_InExtremoBigConcert_Euric_03_18");
    KQ404_INEXTREMOBIGCONCERT_EURIC_WAIT();
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_Euric_03_19");
    KQ404_INEXTREMOBIGCONCERT_EURIC_WAIT();
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 92364);
    AI_WAIT(NONE_1393_INEXTREMO_UNICORN, 1065353216);
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 61875);
    AI_WAIT(NONE_1393_INEXTREMO_UNICORN, 1065353216);
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_Euric_03_20");
    KQ404_INEXTREMOBIGCONCERT_EURIC_WAIT();
    AI_OUTPUT(MIL_13381_EURIC_CUTSCENE, HERO, "DIA_KQ404_InExtremoBigConcert_Euric_03_21");
    KQ404_INEXTREMOBIGCONCERT_EURIC_WAIT();
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 92365);
    AI_STARTFACEANI(NONE_1393_INEXTREMO_UNICORN, S_SAD, 1, -(1));
    AI_WAIT(NONE_1393_INEXTREMO_UNICORN, 1065353216);
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_Euric_03_22");
    KQ404_INEXTREMOBIGCONCERT_EURIC_WAIT();
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 92357);
}

func void KQ404_INEXTREMOBIGCONCERT_EURIC_END() {
    FADESCREENTOBLACKF(1, 92358, 1000);
}

func void KQ404_INEXTREMOBIGCONCERT_EURIC_FADESCREEN() {
    FF_APPLYONCEEXT(92359, 75, 4);
}

func void KQ404_INEXTREMOBIGCONCERT_EURIC_END_APPLY() {
    var int KQ404_INEXTREMOBIGCONCERT_EURIC_END_COUNT;
    KQ404_INEXTREMOBIGCONCERT_EURIC_END_COUNT = (KQ404_INEXTREMOBIGCONCERT_EURIC_END_COUNT) + (1);
    if ((KQ404_INEXTREMOBIGCONCERT_EURIC_END_COUNT) == (4)) {
        KQ404_FINISHWAY = 1;
        KQ404_REMOVENPC();
        WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_01");
        WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_02");
        WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_03");
        WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_04");
        WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_05");
        WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_06");
        WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_07");
        WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_08");
        WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_09");
        WLD_SENDUNTRIGGER("KQ404_CONCERT_03");
        WLD_SENDUNTRIGGER("KQ404_CONCERT_08");
        WLD_SENDUNTRIGGER("KQ404_CONCERT_06");
        WLD_SENDUNTRIGGER("KQ404_CONCERT_05");
        WLD_SENDUNTRIGGER("KQ404_CONCERT_01");
        HERO.AIVAR[4] = FALSE;
        TELEPORTNPCTOWP(1819, "PARTM5_CITYHALL_35");
        AI_TURNTONPC(HERO, NONE_11068_GRAYSON);
        FADESCREENFROMBLACK(1);
        B_LOGENTRY(TOPIC_KQ404, LOG_KQ404_INEXTREMO_BAIT_SUCCESS);
    };
}

func void KQ404_INEXTREMOBIGCONCERT_EURIC_CAMERA_09() {
    WLD_SENDTRIGGER("KQ404_CONCERT_03");
    WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_09");
    TELEPORTNPCTOWP(1819, "HARBOUR_PATH_31");
}

func void KQ404_INEXTREMOBIGCONCERT_EURIC_CAMERA_10() {
    WLD_SENDTRIGGER("KQ404_CONCERT_08");
    WLD_SENDUNTRIGGER("KQ404_CONCERT_03");
    TELEPORTNPCTOWP(1819, "KQ404_CONCERT_VLKRICH");
}

func void KQ404_INEXTREMOBIGCONCERT_EURIC_CAMERA_11() {
    WLD_SENDTRIGGER("KQ404_CONCERT_06");
    WLD_SENDUNTRIGGER("KQ404_CONCERT_08");
}

func void KQ404_INEXTREMOBIGCONCERT_EURIC_CAMERA_12() {
    WLD_SENDTRIGGER("KQ404_CONCERT_05");
    WLD_SENDUNTRIGGER("KQ404_CONCERT_06");
}

func void KQ404_INEXTREMOBIGCONCERT_EURIC_CAMERA_13() {
    WLD_SENDTRIGGER("KQ404_CONCERT_01");
    WLD_SENDUNTRIGGER("KQ404_CONCERT_05");
}
