func void EVENT_CH2_FELLER() {
    FF_APPLYONCEEXTGT(0xf9fd, 0, -(1));
}

func void EVENT_CH2_FELLER_APPLY() {
    if ((EVENT_CH2_FELLER_COUNT) == (0)) {
        PRINTD("Rozpoczynam - Event_CH2_Feller_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("CORPSE_MOVER_ARAXOS_BODOWIN");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("CORPSEPLUNDER_BANDIT_BODOWIN", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("CORPSE_MOVER_ARAXOS_BODOWIN");
        EVENT_CH2_FELLER_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skoñczy³em - Event_CH2_Feller_Apply");
        CHANGEVOBCOLLISION("CORPSEPLUNDER_BANDIT_BODOWIN", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf9fd);
        EVENT_CH2_FELLER_COUNT = 0;
    };
}

var int EVENT_CH2_FELLER_APPLY.EVENT_CH2_FELLER_COUNT = 0;
instance EVENT_CH2_FELLER_APPLY.MOVER1(ZCMOVER)
var int EVENT_CH2_FELLER_APPLY.MOVPTR1 = 0;
func void FELLER_CLEARCORPSE() {
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        if (((NPC_ISDEAD(BDT_2263_FELLER)) && (NPC_ISDEAD(BDT_2262_HARGAR))) && ((NPC_GETDISTTOWP(HERO, RNG_TRAPFELLER_WAYPOINT)) >= (0x3a98))) {
            FF_REMOVE(0xfa01);
            EVENT_CH2_FELLER();
        } else {
            PRINTD("Zabij dwójke i oddal siê na 15000 jednostek, a usunê zw³oki");
        } else {
            /* set_instance(0) */;
        };
    };
    if (((CURRENTLEVEL) == (ARCHOLOS_ENDGAME_ZEN)) || ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN))) {
        PRINTD("I tak nie zobaczysz efektów");
        FF_REMOVE(0xfa01);
    };
    PRINTD("Mogê funkcjê wykonaæ tylko w zenie Archolos! - Feller_ClearCorpse");
}

