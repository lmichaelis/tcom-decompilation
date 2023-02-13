func void Q207_PREPARESCENE() {
    FF_APPLYONCEEXTGT(62275, 0, -(1));
    B_STARTOTHERROUTINE(BAU_726_RIK, "FARM");
    B_STARTOTHERROUTINE(BAU_2310_FARMER, TOT);
    B_STARTOTHERROUTINE(BAU_900_GASPAR, START);
    B_STARTOTHERROUTINE(BAU_2272_FARMER, START);
    REMOVEHODINSERTORC();
    WLD_INSERTITEM(37147, "FP_PART15_WITHOUTTRACE_WINECHEST_01");
    WLD_INSERTITEM(37147, "FP_PART15_WITHOUTTRACE_WINECHEST_02");
}

func void Q207_CHESTSMOVER() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int Q207_CHESTSMOVER_COLLISION;
    if ((Q207_CHESTSMOVER_COLLISION) == (0)) {
        PRINTD("Rozpoczynam - Q207_ChestsMover");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KM_VINEYARD_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("WITHOUTRACE_VINEYARD_CHEST_01", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KM_VINEYARD_01");
        Q207_CHESTSMOVER_COLLISION = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - Q207_ChestsMover");
        CHANGEVOBCOLLISION("WITHOUTRACE_VINEYARD_CHEST_01", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62275);
        Q207_CHESTSMOVER_COLLISION = 0;
    };
}

func int C_Q207_GOTSOBER(var C_NPC NPC) {
    if ((((NPC_HASITEMS(NPC, 36389)) >= (1)) || ((NPC_HASITEMS(NPC, 33982)) >= (1))) || ((NPC_HASITEMS(NPC, 33990)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void Q207_SPAWNGOBBO() {
    PRINTD("Gobliny + bandyci stworzone!");
    WLD_INSERTNPC(50491, "FP_ROAM_PART15_220");
    WLD_INSERTNPC(50491, "FP_ROAM_PART15_245");
    WLD_INSERTNPC(50491, "FP_ROAM_PART15_246");
    WLD_INSERTNPC(50171, "FP_ROAM_PART15_248");
    WLD_INSERTNPC(50171, "FP_ROAM_PART15_247");
    WLD_INSERTNPC(58036, "PART15_PATH_226");
    WLD_INSERTNPC(57947, "PART15_PATH_227");
    WLD_INSERTNPC(57956, "PART15_PATH_228");
}

func void Q207_TELEPORTBANDITS() {
    PRINTD("Bandyci tepnieci!");
    B_STARTOTHERROUTINE(BDT_6288_MYRMIDON, START);
    TELEPORTNPCTOWP(58036, BDT_6288_MYRMIDON.WP);
    B_STARTOTHERROUTINE(BDT_6289_VILLAN, START);
    TELEPORTNPCTOWP(57947, BDT_6289_VILLAN.WP);
    B_STARTOTHERROUTINE(BDT_6290_BANDIT, START);
    TELEPORTNPCTOWP(57956, BDT_6290_BANDIT.WP);
}

func void Q207_MOVEBANDITS() {
    PRINTD("Bandyci ruszyli!");
    B_STARTOTHERROUTINE(BDT_6288_MYRMIDON, CUTSCENERTN);
    B_STARTOTHERROUTINE(BDT_6289_VILLAN, CUTSCENERTN);
    B_STARTOTHERROUTINE(BDT_6290_BANDIT, CUTSCENERTN);
}

func void Q207_REMOVEMONSTERS() {
    if ((NPC_ISDEAD(GOBBO_Q207_01)) == (FALSE)) {
        B_REMOVENPC(50494);
    };
    if ((NPC_ISDEAD(GOBBO_Q207_02)) == (FALSE)) {
        B_REMOVENPC(50495);
    };
    if ((NPC_ISDEAD(GOBBO_Q207_03)) == (FALSE)) {
        B_REMOVENPC(50496);
    };
    if ((NPC_ISDEAD(GOBBO_Q207_04)) == (FALSE)) {
        B_REMOVENPC(50497);
    };
    if ((NPC_ISDEAD(GOBBO_Q207_05)) == (FALSE)) {
        B_REMOVENPC(50498);
    };
    if ((NPC_ISDEAD(BEAR_Q207)) == (FALSE)) {
        B_REMOVENPC(50320);
    };
    if ((NPC_ISDEAD(WOLF_Q207_01)) == (FALSE)) {
        B_REMOVENPC(51103);
    };
    if ((NPC_ISDEAD(WOLF_Q207_02)) == (FALSE)) {
        B_REMOVENPC(51104);
    };
}

