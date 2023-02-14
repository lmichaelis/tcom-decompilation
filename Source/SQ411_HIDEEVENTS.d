func void SQ411_HIDEEVENTS() {
    NPC_EXCHANGEROUTINE(VLK_6454_DANIS, START);
    B_STARTOTHERROUTINE(VLK_12289_WORKER, START);
    NPC_REFRESH(VLK_12289_WORKER);
}

func int C_SQ411_GOTRICHVLKARMOR(var C_NPC NPC) {
    if (((((((NPC_HASITEMS(NPC, 35528)) > (0)) || ((NPC_HASITEMS(NPC, 35529)) > (0))) || ((NPC_HASITEMS(NPC, 35530)) > (0))) || ((NPC_HASITEMS(NPC, 35531)) > (0))) || ((NPC_HASITEMS(NPC, 35532)) > (0))) || ((NPC_HASITEMS(NPC, 35533)) > (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void SQ411_GIVEKAZEEMARMORANDGOLD() {
    if ((NPC_HASITEMS(OTHER, 35528)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 35528, 1);
        AI_EQUIPARMOR(SELF, 35528);
    };
    if ((NPC_HASITEMS(OTHER, 35529)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 35529, 1);
        AI_EQUIPARMOR(SELF, 35529);
    };
    if ((NPC_HASITEMS(OTHER, 35530)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 35530, 1);
        AI_EQUIPARMOR(SELF, 35530);
    };
    if ((NPC_HASITEMS(OTHER, 35531)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 35531, 1);
        AI_EQUIPARMOR(SELF, 35531);
    };
    if ((NPC_HASITEMS(OTHER, 35532)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 35532, 1);
        AI_EQUIPARMOR(SELF, 35532);
    };
    if ((NPC_HASITEMS(OTHER, 35533)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 35533, 1);
        AI_EQUIPARMOR(SELF, 35533);
    };
    B_GIVEINVITEMS(OTHER, SELF, 34203, SQ411_KAZEEM_NEEDEDGOLD);
}

func void SQ411_KAZZEM_AUCTION() {
    SQ411_KAZEEMWILLHELP = 2;
    SQ411_KAZEEMNEGOCIATION = 1;
    SQ411_KAZEEMNEGOCIATION_DAY = WLD_GETDAY();
    SQ411_TIMELIMIT = 3;
    B_STARTOTHERROUTINE(VLK_6454_DANIS, "SQ411_SMALLTALK");
    NPC_REFRESH(VLK_6454_DANIS);
    NPC_EXCHANGEROUTINE(NONE_100012_KAZEEM_CHAPTER4, "SQ411_SMALLTALK");
    B_STARTOTHERROUTINE(VLK_12289_WORKER, START);
    NPC_REFRESH(VLK_12289_WORKER);
}

func void SQ411_PREPARENEWHOME() {
    FF_APPLYONCEEXTGT(62509, 0, -(1));
    NONE_100012_KAZEEM_CHAPTER4.FLAGS = 2;
    CREATEINVITEMS(NONE_100012_KAZEEM_CHAPTER4, 36893, 1);
    B_STARTOTHERROUTINE(NONE_100012_KAZEEM_CHAPTER4, "SQ411_NEWHOME");
    NPC_REFRESH(NONE_100012_KAZEEM_CHAPTER4);
    B_STARTOTHERROUTINE(VLK_6454_DANIS, START);
    NPC_REFRESH(VLK_6454_DANIS);
}

func void SQ411_CHANGEDOOR() {
    var int MOVPTR2;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var ZCMOVER MOVER2;
    var int SQ411_CHANGEDOOR_COUNT;
    if ((SQ411_CHANGEDOOR_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ411_ChangeDoor");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ411_MOVER_DOOR");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("SQ411_MOVER_DOOR_REAL");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        CHANGEVOBCOLLISION("SQ411_DOOR_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ411_DOOR_02", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("SQ411_MOVER_DOOR");
        WLD_SENDTRIGGER("SQ411_MOVER_DOOR_REAL");
        SQ411_CHANGEDOOR_COUNT = 1;
    };
    if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ411_ChangeDoor");
        CHANGEVOBCOLLISION("SQ411_DOOR_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ411_DOOR_02", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62509);
        SQ411_CHANGEDOOR_COUNT = 0;
    };
}

