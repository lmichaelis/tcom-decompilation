instance SQ311_DOORCLOSED(CUTSCENE) {
    ONSTART = FUNCTION(92927);
}

func void SQ311_DOORCLOSED_WAIT() {
    AI_WAITTILLEND(MIL_11130_LEWKO, HERO);
    AI_WAITTILLEND(HERO, MIL_11130_LEWKO);
}

func void SQ311_DOORCLOSED_START() {
    B_STARTOTHERROUTINE(MIL_11131_ELWART, "SQ311_MALENDEAD");
    NPC_REFRESH(MIL_11131_ELWART);
    TELEPORTNPCTOWP(57209, MIL_11131_ELWART.WP);
    WLD_SENDTRIGGER("SQ311_DOORCLOSED_01");
    TELEPORTNPCTOWP(57204, "PART10_HOUSE2_04");
    TELEPORTNPCTOWP(1819, "PART10_HOUSE2_SQ311_HERO");
    NPC_CLEARAIQUEUE(MIL_11130_LEWKO);
    MIL_11130_LEWKO.AIVAR[92] = TRUE;
    AI_TURNTONPC(HERO, NOV_205_NOVIZE);
    AI_TURNTONPC(MIL_11130_LEWKO, HERO);
    SQ311_DOORCLOSED_WAIT();
    AI_FUNCTION(HERO, 92930);
    AI_PLAYANI(HERO, "T_EXPLOSION_SCARED_HERO");
    AI_WAIT(MIL_11130_LEWKO, 1073741824);
    AI_FUNCTION(MIL_11130_LEWKO, 92928);
    AI_WAIT(MIL_11130_LEWKO, 1075838976);
    AI_FUNCTION(MIL_11130_LEWKO, 92929);
    AI_WAIT(MIL_11130_LEWKO, 1065353216);
    AI_DRAWWEAPON(MIL_11130_LEWKO);
    AI_WAIT(MIL_11130_LEWKO, 1056964608);
    SQ311_DOORCLOSED_WAIT();
    AI_FUNCTION(MIL_11130_LEWKO, 92935);
}

func void SQ311_DOORCLOSED_CAMERA_01() {
    WLD_SENDTRIGGER("SQ311_DOORCLOSED_02");
    WLD_SENDUNTRIGGER("SQ311_DOORCLOSED_01");
}

func void SQ311_DOORCLOSED_CAMERA_02() {
    WLD_SENDTRIGGER("SQ311_DOORCLOSED_03");
    WLD_SENDUNTRIGGER("SQ311_DOORCLOSED_02");
}

func void SQ311_DOORCLOSED_EVENT() {
    SND_PLAY("DOOR_SLAM");
    CHANGEVOBCOLLISION("SQ311_LEWKODOOR_01", FALSE, FALSE, FALSE, FALSE);
    FF_APPLYONCEEXTGT(92931, 0, -(1));
}

func void SQ311_DOORCLOSED_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int SQ311_DOORCLOSED_COLLISION;
    if ((SQ311_DOORCLOSED_COLLISION) == (0)) {
        PRINTD("Rozpoczynam - SQ311_DoorClosed_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ311_MOVER_LEWKODOOR");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("SQ311_LEWKODOOR_02", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("SQ311_MOVER_LEWKODOOR");
        SQ311_DOORCLOSED_COLLISION = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ311_DoorClosed_Apply");
        CHANGEVOBCOLLISION("SQ311_LEWKODOOR_02", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(92931);
        SQ311_DOORCLOSED_COLLISION = 0;
    };
}

func void SQ311_DOORCLOSED_FINISH() {
    HERO.AIVAR[4] = TRUE;
    FF_APPLYONCEEXT(92936, 75, 4);
}

func void SQ311_DOORCLOSED_FINISH_APPLY() {
    var int SQ311_DOORCLOSED_FINISH_COUNT;
    SQ311_DOORCLOSED_FINISH_COUNT = (SQ311_DOORCLOSED_FINISH_COUNT) + (1);
    if ((SQ311_DOORCLOSED_FINISH_COUNT) == (4)) {
        CREATEINVITEMS(MIL_11130_LEWKO, 36910, 1);
        WLD_SENDUNTRIGGER("SQ311_DOORCLOSED_01");
        WLD_SENDUNTRIGGER("SQ311_DOORCLOSED_02");
        WLD_SENDUNTRIGGER("SQ311_DOORCLOSED_03");
        HERO.AIVAR[4] = FALSE;
        SQ311_FIGHTWITHLEWKO = 1;
        MIL_11130_LEWKO.FLAGS = 0;
        MIL_11130_LEWKO.GUILD = GIL_BDT;
        NPC_SETTRUEGUILD(MIL_11130_LEWKO, GIL_BDT);
        MIL_11131_ELWART.FLAGS = 0;
        MIL_11131_ELWART.GUILD = GIL_BDT;
        NPC_SETTRUEGUILD(MIL_11131_ELWART, GIL_BDT);
        B_IMMEDIATEATTACKPLAYER(MIL_11130_LEWKO, AR_KILL);
    };
}

