func void QM305_SEWERS_SPAWNGAMAL() {
    QM305_GAMALINSEWERS = 2;
    QM305_GAMALINARCHOLOS = 1;
    WLD_INSERTNPC(0xe672, "S1_QM305_SPAWNGAMAL");
    FF_APPLYONCEEXTGT(0xf82f, 0, -(1));
    WLD_INSERTNPC(0xc57d, "FP_ROAM_S1_02");
    WLD_INSERTNPC(0xc46f, "S1_PATH_48");
    WLD_INSERTNPC(0xc46f, "S1_PATH_51");
    WLD_INSERTNPC(0xc57d, "S1_PATH_56");
    WLD_INSERTNPC(0xc46f, "S1_PATH_25");
    WLD_INSERTNPC(0xc46f, "S1_PATH_33");
    WLD_INSERTNPC(0xc57d, "S1_PATH_38");
}

func void QM305_SEWERS_SPAWNGAMAL_APPLY() {
    if ((QM305_SEWERS_SPAWNGAMAL_COUNT) == (0)) {
        PRINTD("Rozpoczynam - QM305_SEWERS_SPAWNGAMAL_APPLY");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("QM305_MOVER_WOLFSSON_CORPSE");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("QM305_WOLFSSON_CORPSE", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("QM305_MOVER_WOLFSSON_CORPSE");
        QM305_SEWERS_SPAWNGAMAL_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - QM305_SEWERS_SPAWNGAMAL_APPLY");
        CHANGEVOBCOLLISION("QM305_WOLFSSON_CORPSE", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf82f);
        QM305_SEWERS_SPAWNGAMAL_COUNT = 0;
    };
}

var int QM305_SEWERS_SPAWNGAMAL_APPLY.QM305_SEWERS_SPAWNGAMAL_COUNT = 0;
instance QM305_SEWERS_SPAWNGAMAL_APPLY.MOVER1(ZCMOVER)
var int QM305_SEWERS_SPAWNGAMAL_APPLY.MOVPTR1 = 0;
func void QM305_SEWERS_REMOVEGAMAL() {
    QM305_GAMALINSEWERS = 5;
    B_REMOVENPC(0xe672);
}
