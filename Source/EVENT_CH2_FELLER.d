func void EVENT_CH2_FELLER() {
    FF_APPLYONCEEXTGT(63997, 0, -(1));
}

func void EVENT_CH2_FELLER_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int EVENT_CH2_FELLER_COUNT;
    if ((EVENT_CH2_FELLER_COUNT) == (0)) {
        PRINTD("Rozpoczynam - Event_CH2_Feller_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("CORPSE_MOVER_ARAXOS_BODOWIN");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("CORPSEPLUNDER_BANDIT_BODOWIN", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("CORPSE_MOVER_ARAXOS_BODOWIN");
        EVENT_CH2_FELLER_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - Event_CH2_Feller_Apply");
        CHANGEVOBCOLLISION("CORPSEPLUNDER_BANDIT_BODOWIN", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(63997);
        EVENT_CH2_FELLER_COUNT = 0;
    };
}

func void FELLER_CLEARCORPSE() {
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        if (((NPC_ISDEAD(BDT_2263_FELLER)) && (NPC_ISDEAD(BDT_2262_HARGAR))) && ((NPC_GETDISTTOWP(HERO, RNG_TRAPFELLER_WAYPOINT)) >= (15000))) {
            FF_REMOVE(64001);
            EVENT_CH2_FELLER();
        } else {
            PRINTD("Zabij dw�jke i oddal si� na 15000 jednostek, a usun� zw�oki");
        };
    };
    if (((CURRENTLEVEL) == (ARCHOLOS_ENDGAME_ZEN)) || ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN))) {
        PRINTD("I tak nie zobaczysz efekt�w");
        FF_REMOVE(64001);
    };
    PRINTD("Mog� funkcj� wykona� tylko w zenie Archolos! - Feller_ClearCorpse");
}

