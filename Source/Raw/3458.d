func void Q106_SPAWNBODOWIN() {
    PRINTD("Spawn Bodowin");
    FF_APPLYONCEEXTGT(0xf24b, 0, -(1));
    WLD_INSERTNPC(0xd9ed, "PART3_BODOWINHOUSE_PATH03");
}

func void Q106_SPAWNFIRESCAVENGERS() {
    PRINTD("Ścierwojady");
    SND_PLAY("SCA_Warn");
    Q106_FIGHTWITHSCAVENGERS = 1;
    WLD_INSERTNPC(0xc616, "FP_ROAM_BODOWINSCAVENGER_01");
    WLD_INSERTNPC(0xc617, "FP_ROAM_BODOWINSCAVENGER_02");
    WLD_INSERTNPC(0xc618, "FP_ROAM_BODOWINSCAVENGER_03");
}

func void Q106_MAKEBODOWINSCAVENGER() {
    B_SETNPCVISUAL(VLK_2261_BODOWIN, MALE, HUMHEADNOTHING, FACE_N_BODOWIN, 1, 0x8a3f);
    NPC_REMOVEINVITEM(VLK_2261_BODOWIN, 0x8ada);
}

func void Q106_PAYGOLD() {
    if ((BODOWIN_Q106_POTIONPRICE) == (1)) {
    };
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, Q106_JORNPOTION_V1);
}

func void Q106_KURTHOUSE() {
    WLD_SENDTRIGGER("P12_KURT_BURGLAR");
    WLD_SENDTRIGGER("GQ001_DIRT_01");
    WLD_SENDTRIGGER("GQ001_DIRT_02");
    WLD_SENDTRIGGER("GQ001_DIRT_03");
    B_STARTOTHERROUTINE(NONE_1_JORN, TOT);
    B_STARTOTHERROUTINE(BAU_701_KURT, "KurtJornLost");
    B_STARTOTHERROUTINE(MIL_710_FOLKARD, "GQ001Beggining");
    B_STARTOTHERROUTINE(BAU_702_VIKTOR, "GQ001Beggining");
    B_STARTOTHERROUTINE(BAU_11010_FARMER, "GQ001Beggining");
    B_STARTOTHERROUTINE(BAU_11028_FARMER, "GQ001Beggining");
    B_STARTOTHERROUTINE(BAU_11012_FARMER, "GQ001Beggining");
    B_STARTOTHERROUTINE(BAU_714_REMY, "GQ001Beggining");
    B_STARTOTHERROUTINE(BAU_11026_FARMER, "GQ001Beggining");
    B_STARTOTHERROUTINE(BAU_11031_FARMER, "GQ001Beggining");
    if (!(NPC_ISDEAD(NONE_100007_RUPERT))) {
        if ((((SQ103_GOWITHRUPERT) == (1)) && ((LOG_GETSTATUS(MIS_SQ103)) == (LOG_SUCCESS))) || ((SQ103_GOWITHRUPERT) == (0))) {
            B_STARTOTHERROUTINE(NONE_100007_RUPERT, "GQ001Beggining");
        };
    };
    B_STARTOTHERROUTINE(MIL_708_DICKON, START);
}

