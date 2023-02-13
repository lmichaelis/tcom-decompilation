instance KQ404_INEXTREMOBIGCONCERT(CUTSCENE) {
    ONSTART = FUNCTION(92344);
}

func void KQ404_INEXTREMOBIGCONCERT_WAIT() {
    AI_WAITTILLEND(NONE_1393_INEXTREMO_UNICORN, NONE_1396_INEXTREMO_FLEX);
    AI_WAITTILLEND(NONE_1393_INEXTREMO_UNICORN, NONE_1395_INEXTREMO_LUTTER);
    AI_WAITTILLEND(NONE_1393_INEXTREMO_UNICORN, NONE_1394_INEXTREMO_YELLOWPFEIFFER);
    AI_WAITTILLEND(NONE_1393_INEXTREMO_UNICORN, NONE_1390_INEXTREMO_DRPYMONTE);
    AI_WAITTILLEND(NONE_1396_INEXTREMO_FLEX, NONE_1393_INEXTREMO_UNICORN);
    AI_WAITTILLEND(NONE_1396_INEXTREMO_FLEX, NONE_1395_INEXTREMO_LUTTER);
    AI_WAITTILLEND(NONE_1396_INEXTREMO_FLEX, NONE_1394_INEXTREMO_YELLOWPFEIFFER);
    AI_WAITTILLEND(NONE_1396_INEXTREMO_FLEX, NONE_1390_INEXTREMO_DRPYMONTE);
    AI_WAITTILLEND(NONE_1395_INEXTREMO_LUTTER, NONE_1393_INEXTREMO_UNICORN);
    AI_WAITTILLEND(NONE_1395_INEXTREMO_LUTTER, NONE_1396_INEXTREMO_FLEX);
    AI_WAITTILLEND(NONE_1395_INEXTREMO_LUTTER, NONE_1394_INEXTREMO_YELLOWPFEIFFER);
    AI_WAITTILLEND(NONE_1395_INEXTREMO_LUTTER, NONE_1390_INEXTREMO_DRPYMONTE);
    AI_WAITTILLEND(NONE_1394_INEXTREMO_YELLOWPFEIFFER, NONE_1393_INEXTREMO_UNICORN);
    AI_WAITTILLEND(NONE_1394_INEXTREMO_YELLOWPFEIFFER, NONE_1396_INEXTREMO_FLEX);
    AI_WAITTILLEND(NONE_1394_INEXTREMO_YELLOWPFEIFFER, NONE_1395_INEXTREMO_LUTTER);
    AI_WAITTILLEND(NONE_1394_INEXTREMO_YELLOWPFEIFFER, NONE_1390_INEXTREMO_DRPYMONTE);
    AI_WAITTILLEND(NONE_1390_INEXTREMO_DRPYMONTE, NONE_1393_INEXTREMO_UNICORN);
    AI_WAITTILLEND(NONE_1390_INEXTREMO_DRPYMONTE, NONE_1396_INEXTREMO_FLEX);
    AI_WAITTILLEND(NONE_1390_INEXTREMO_DRPYMONTE, NONE_1395_INEXTREMO_LUTTER);
    AI_WAITTILLEND(NONE_1390_INEXTREMO_DRPYMONTE, NONE_1394_INEXTREMO_YELLOWPFEIFFER);
}

func void KQ404_INEXTREMOBIGCONCERT_WAIT_V2() {
    AI_WAITTILLEND(NONE_1390_INEXTREMO_DRPYMONTE, NONE_1393_INEXTREMO_UNICORN);
    AI_WAITTILLEND(NONE_1395_INEXTREMO_LUTTER, NONE_1393_INEXTREMO_UNICORN);
    AI_WAITTILLEND(NONE_1394_INEXTREMO_YELLOWPFEIFFER, NONE_1393_INEXTREMO_UNICORN);
    AI_WAITTILLEND(NONE_1396_INEXTREMO_FLEX, NONE_1393_INEXTREMO_UNICORN);
}

func void KQ404_INEXTREMOBIGCONCERT_START() {
    WLD_SENDTRIGGER("KQ404_BIGCONCERT_01");
    WLD_SETTIME(19, 20);
    FADESCREENFROMBLACK(1);
    TELEPORTNPCTOWP(54280, "KQ404_VIEWER_04");
    TELEPORTNPCTOWP(54286, "KQ404_VIEWER_05");
    TELEPORTNPCTOWP(54342, "KQ404_VIEWER_06");
    TELEPORTNPCTOWP(54268, "KQ404_VIEWER_01");
    TELEPORTNPCTOWP(54264, "KQ404_VIEWER_02");
    TELEPORTNPCTOWP(54210, "KQ404_VIEWER_03");
    TELEPORTNPCTOWP(54352, "KQ404_VIEWER_07");
    TELEPORTNPCTOWP(54197, "KQ404_VIEWER_08");
    TELEPORTNPCTOWP(54201, "KQ404_VIEWER_09");
    TELEPORTNPCTOWP(54304, "KQ404_VIEWER_10");
    TELEPORTNPCTOWP(50092, "HARBOUR_GUARD_08");
    TELEPORTNPCTOWP(1819, "HARBOUR_STORAGE01_07");
    TELEPORTNPCTOWP(54456, NONE_1393_INEXTREMO_UNICORN.WP);
    TELEPORTNPCTOWP(54452, "HARBOUR_PATH_319");
    TELEPORTNPCTOWP(54448, "HARBOUR_PATH_319");
    TELEPORTNPCTOWP(54444, "HARBOUR_PATH_319");
    TELEPORTNPCTOWP(54468, "HARBOUR_PATH_319");
    TELEPORTNPCTOWP(54464, "HARBOUR_PATH_319");
    TELEPORTNPCTOWP(54460, "HARBOUR_PATH_319");
    TELEPORTNPCTOWP(53716, "HARBOUR_PATH_319");
    NPC_CLEARAIQUEUE(NONE_1393_INEXTREMO_UNICORN);
    NPC_CLEARAIQUEUE(NONE_1392_INEXTREMO_THOMASTHEFORGER);
    NPC_CLEARAIQUEUE(NONE_1391_INEXTREMO_THEFLAIL);
    NPC_CLEARAIQUEUE(NONE_1390_INEXTREMO_DRPYMONTE);
    NPC_CLEARAIQUEUE(NONE_1396_INEXTREMO_FLEX);
    NPC_CLEARAIQUEUE(NONE_1395_INEXTREMO_LUTTER);
    NPC_CLEARAIQUEUE(NONE_1394_INEXTREMO_YELLOWPFEIFFER);
    NPC_CLEARAIQUEUE(MIL_13381_EURIC_CUTSCENE);
    NONE_1393_INEXTREMO_UNICORN.AIVAR[92] = TRUE;
    MIL_13381_EURIC_CUTSCENE.AIVAR[92] = TRUE;
    B_TURNTONPC(NONE_1393_INEXTREMO_UNICORN, VLK_6066_GIRL);
    AI_WAIT(NONE_1393_INEXTREMO_UNICORN, 1077936128);
    KQ404_INEXTREMOBIGCONCERT_WAIT();
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 92345);
    AI_STARTFACEANI(NONE_1393_INEXTREMO_UNICORN, S_SMILE, 1, -(1));
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_03_01");
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_03_02");
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 92346);
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_03_03");
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_03_04");
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 92347);
    KQ404_INEXTREMOBIGCONCERT_WAIT();
    KQ404_INEXTREMOBIGCONCERT_WAIT_V2();
    AI_TURNTONPC(NONE_1390_INEXTREMO_DRPYMONTE, VLK_6066_GIRL);
    AI_TURNTONPC(NONE_1396_INEXTREMO_FLEX, VLK_6066_GIRL);
    AI_RESETFACEANI(NONE_1393_INEXTREMO_UNICORN);
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_03_05");
    KQ404_INEXTREMOBIGCONCERT_WAIT();
    KQ404_INEXTREMOBIGCONCERT_WAIT_V2();
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 92348);
    B_TURNTONPC(NONE_1390_INEXTREMO_DRPYMONTE, MARVIN_CUTSCENEHELPER_KQ404);
    B_TURNTONPC(NONE_1396_INEXTREMO_FLEX, MARVIN_CUTSCENEHELPER_KQ404);
    AI_WAITTILLEND(NONE_1390_INEXTREMO_DRPYMONTE, NONE_1393_INEXTREMO_UNICORN);
    AI_WAIT(NONE_1390_INEXTREMO_DRPYMONTE, 1036831949);
    AI_PLAYANI(NONE_1390_INEXTREMO_DRPYMONTE, "T_TRADEITEM");
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_03_06");
    KQ404_INEXTREMOBIGCONCERT_WAIT();
    KQ404_INEXTREMOBIGCONCERT_WAIT_V2();
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 92349);
    AI_TURNTONPC(NONE_1390_INEXTREMO_DRPYMONTE, NONE_1394_INEXTREMO_YELLOWPFEIFFER);
    AI_TURNTONPC(NONE_1396_INEXTREMO_FLEX, NONE_1395_INEXTREMO_LUTTER);
    AI_TURNTONPC(NONE_1394_INEXTREMO_YELLOWPFEIFFER, VLK_6066_GIRL);
    AI_TURNTONPC(NONE_1395_INEXTREMO_LUTTER, VLK_6066_GIRL);
    AI_PLAYANI(NONE_1395_INEXTREMO_LUTTER, T_STAND_2_LGUARD);
    AI_PLAYANI(NONE_1390_INEXTREMO_DRPYMONTE, T_STAND_2_SCAREDDIALOGUE);
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_03_07");
    KQ404_INEXTREMOBIGCONCERT_WAIT();
    KQ404_INEXTREMOBIGCONCERT_WAIT_V2();
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 92350);
    AI_WAIT(NONE_1394_INEXTREMO_YELLOWPFEIFFER, 1053609165);
    AI_PLAYANI(NONE_1394_INEXTREMO_YELLOWPFEIFFER, "T_THREAT_DEATH");
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_03_08");
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_03_09");
    KQ404_INEXTREMOBIGCONCERT_WAIT();
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 92351);
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_03_10");
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_03_11");
    AI_STARTFACEANI(NONE_1393_INEXTREMO_UNICORN, S_SMILE, 1, -(1));
    AI_OUTPUT(NONE_1393_INEXTREMO_UNICORN, HERO, "DIA_KQ404_InExtremoBigConcert_03_12");
    KQ404_INEXTREMOBIGCONCERT_WAIT();
    AI_FUNCTION(NONE_1393_INEXTREMO_UNICORN, 92352);
    AI_WAITTILLEND(HERO, NONE_1393_INEXTREMO_UNICORN);
    AI_TURNTONPC(HERO, VLK_6066_GIRL);
    AI_OUTPUT(HERO, HERO, "DIA_KQ404_InExtremoBigConcert_15_13");
    AI_FUNCTION(HERO, 92353);
}

func void KQ404_INEXTREMOBIGCONCERT_CAMERA_01() {
    WLD_SENDTRIGGER("KQ404_BIGCONCERT_02");
    WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_01");
}

func void KQ404_INEXTREMOBIGCONCERT_CAMERA_02() {
    WLD_SENDTRIGGER("KQ404_BIGCONCERT_03");
    WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_02");
}

func void KQ404_INEXTREMOBIGCONCERT_CAMERA_03() {
    WLD_SENDTRIGGER("KQ404_BIGCONCERT_04");
    WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_03");
    TELEPORTNPCTOWP(54444, "KQ404_CONCERT_HERMAN");
    TELEPORTNPCTOWP(54468, "KQ404_CONCERT_VLKRICH");
}

func void KQ404_INEXTREMOBIGCONCERT_CAMERA_04() {
    WLD_SENDTRIGGER("KQ404_BIGCONCERT_05");
    WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_04");
    TELEPORTNPCTOWP(50092, "HARBOUR_PATH_211");
}

func void KQ404_INEXTREMOBIGCONCERT_CAMERA_05() {
    WLD_SENDTRIGGER("KQ404_BIGCONCERT_06");
    WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_05");
    B_STARTOTHERROUTINE(MARVIN_CUTSCENEHELPER_KQ404, TOT);
    NPC_REFRESH(MARVIN_CUTSCENEHELPER_KQ404);
    TELEPORTNPCTOWP(50092, TOT);
    AI_TELEPORTALWAYS(MARVIN_CUTSCENEHELPER_KQ404, TOT, TRUE);
    B_REMOVENPC(50092);
    TELEPORTNPCTOWP(54464, "KQ404_CONCERT_MAGE_01");
    TELEPORTNPCTOWP(54460, "KQ404_CONCERT_MAGE_02");
}

func void KQ404_INEXTREMOBIGCONCERT_CAMERA_06() {
    WLD_SENDTRIGGER("KQ404_BIGCONCERT_07");
    WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_06");
}

func void KQ404_INEXTREMOBIGCONCERT_CAMERA_07() {
    WLD_SENDTRIGGER("KQ404_BIGCONCERT_08");
    WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_07");
}

func void KQ404_INEXTREMOBIGCONCERT_CAMERA_08() {
    TELEPORTNPCTOWP(1819, "HARBOUR_GUARD_08");
    WLD_SENDTRIGGER("KQ404_BIGCONCERT_09");
    WLD_SENDUNTRIGGER("KQ404_BIGCONCERT_08");
}

func void INEXTREMOBIGCONCERT_TELEPORTEURIC() {
    KQ404_INEXTREMO_BIGCONCERT = 4;
}

