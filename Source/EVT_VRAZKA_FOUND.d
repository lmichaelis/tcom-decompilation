func void EVT_VRAZKA_FOUND() {
    if ((MARVIN_FOUNDVRAZKA) == (0)) {
        MARVIN_FOUNDVRAZKA = 1;
        AI_OUTPUT(HERO, HERO, "DIA_Marvin_FoundVrazka_15_01");
        WLD_INSERTNPC(50105, "FP_ROAM_PART6_191");
    };
}

var int PART3_TRAVELER_01_REMOVE;
func void EVT_PART3_TRAVELER_01() {
    var int NPCPTR;
    var C_NPC NPC;
    var int PART3_TRAVELER_CHECKED;
    if ((PART3_TRAVELER_CHECKED) == (FALSE)) {
        PART3_TRAVELER_CHECKED = TRUE;
        PART3_TRAVELER_01_REMOVE = TRUE;
        NPC = HLP_GETNPC(1819);
        NPCPTR = _@(91956);
        FF_APPLYEXTDATAGT(91962, 75, -(1), NPCPTR);
    };
}

func void EVT_PART3_TRAVELER_01_REMOVECORPSE() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int PART3_TRAVELER_01_REMOVECORPSE_COUNT;
    if ((PART3_TRAVELER_01_REMOVECORPSE_COUNT) == (0)) {
        PRINTD("Rozpoczynam - EVT_PART3_TRAVELER_01_RemoveCorpse");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("PART3_MOVER_TRAVELER_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("PART3_TRAVELER_01", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("PART3_MOVER_TRAVELER_01");
        PART3_TRAVELER_01_REMOVECORPSE_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skoñczy³em - EVT_PART3_TRAVELER_01_RemoveCorpse");
        CHANGEVOBCOLLISION("PART3_TRAVELER_01", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(91958);
        PART3_TRAVELER_01_REMOVECORPSE_COUNT = 0;
    };
}

func void EVT_PART3_TRAVELER_01_APPLY() {
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        if ((NPC_GETDISTTOWP(HERO, "PART3_PATHTRAVELER_01")) >= (5000)) {
            if ((PART3_TRAVELER_01_REMOVE) == (TRUE)) {
                PART3_TRAVELER_01_REMOVE = 2;
                PRINTD("Remove podró¿nik");
                FF_REMOVE(91962);
                FF_APPLYONCEEXTGT(91958, 0, -(1));
            };
        } else {
            PRINTD("Oddal siê to usunê cia³o");
        };
    };
    if (((CURRENTLEVEL) == (ARCHOLOS_ENDGAME_ZEN)) || ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN))) {
        PRINTD("I tak nie zobaczysz efektów");
        FF_REMOVE(91962);
    };
    PRINTD("Mogê funkcjê wykonaæ tylko w zenie Archolos! - EVT_PART3_TRAVELER_01_APPLY");
}

var int PART12_CORPSE_REMOVE;
func void EVT_PART12_CORPSE_REMOVECORPSE() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int PART12_CORPSE_REMOVE_COUNT;
    if ((PART12_CORPSE_REMOVE_COUNT) == (0)) {
        PRINTD("Rozpoczynam - EVT_PART12_CORPSE_RemoveCorpse");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("PART12_MOVER_CORPSE_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("PART12_CORPSE_01", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("PART12_MOVER_CORPSE_01");
        PART12_CORPSE_REMOVE_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skoñczy³em - EVT_PART12_CORPSE_RemoveCorpse");
        CHANGEVOBCOLLISION("PART12_CORPSE_01", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(91964);
        PART12_CORPSE_REMOVE_COUNT = 0;
    };
}

func void EVT_PART12_CORPSE_REMOVE_APPLY() {
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        if ((NPC_GETDISTTOWP(HERO, "PART12_MOB_61")) >= (5000)) {
            if ((PART12_CORPSE_REMOVE) == (0)) {
                PART12_CORPSE_REMOVE = 1;
                PRINTD("Remove hunter");
                FF_REMOVE(91968);
                FF_APPLYONCEEXTGT(91964, 0, -(1));
            };
        } else {
            PRINTD("Oddal siê to usunê cia³o");
        };
    };
    if (((CURRENTLEVEL) == (ARCHOLOS_ENDGAME_ZEN)) || ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN))) {
        PRINTD("I tak nie zobaczysz efektów");
        FF_REMOVE(91968);
    };
    PRINTD("Mogê funkcjê wykonaæ tylko w zenie Archolos! - EVT_PART12_CORPSE_Remove_APPLY");
}

func void EVT_PART12_CORPSE() {
    var C_NPC NPC;
    var int NPCPTR;
    var int EVT_PART12_CORPSE_CHECKED;
    if ((EVT_PART12_CORPSE_CHECKED) == (FALSE)) {
        EVT_PART12_CORPSE_CHECKED = TRUE;
        NPC = HLP_GETNPC(1819);
        NPCPTR = _@(91971);
        FF_APPLYEXTDATAGT(91968, 75, -(1), NPCPTR);
    };
}

var int ROYALGUARD_REMOVE;
func void EVT_ROYALGUARD_CORPSE() {
    var int NPCPTR;
    var C_NPC NPC;
    var int EVT_ROYALGUARD_CORPSE_CHECKED;
    if ((EVT_ROYALGUARD_CORPSE_CHECKED) == (FALSE)) {
        EVT_ROYALGUARD_CORPSE_CHECKED = TRUE;
        NPC = HLP_GETNPC(1819);
        NPCPTR = _@(91976);
        FF_APPLYEXTDATAGT(91978, 75, -(1), NPCPTR);
    };
}

func void EVT_ROYALGUARD_CORPSE_REMOVE_APPLY() {
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        if ((NPC_GETDISTTOWP(HERO, "PART5_MOB_89")) >= (5000)) {
            if ((ROYALGUARD_REMOVE) == (0)) {
                ROYALGUARD_REMOVE = 1;
                PRINTD("Remove Royal Guard");
                FF_REMOVE(91978);
                FF_APPLYONCEEXTGT(91979, 0, -(1));
            };
        } else {
            PRINTD("Oddal siê to usunê cia³o");
        };
    };
    if (((CURRENTLEVEL) == (ARCHOLOS_ENDGAME_ZEN)) || ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN))) {
        PRINTD("I tak nie zobaczysz efektów");
        FF_REMOVE(91978);
    };
    PRINTD("Mogê funkcjê wykonaæ tylko w zenie Archolos! - EVT_ROYALGUARD_CORPSE_Remove_APPLY");
}

func void ROYALGUARD_CORPSE_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int ROYALGUARD_CORPSE_APPLY_COUNT;
    if ((ROYALGUARD_CORPSE_APPLY_COUNT) == (0)) {
        PRINTD("Rozpoczynam - ROYALGUARD_CORPSE_APPLY");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("CORPSE_MOVER_ROYALGUARD");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("CORPSE_ROYALGUARD", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("CORPSE_MOVER_ROYALGUARD");
        ROYALGUARD_CORPSE_APPLY_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skoñczy³em - ROYALGUARD_CORPSE_APPLY");
        CHANGEVOBCOLLISION("CORPSE_ROYALGUARD", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(91979);
        ROYALGUARD_CORPSE_APPLY_COUNT = 0;
    };
}

var int NOVIZESILBACH_REMOVE;
func void EVT_SILBACH_NOVIZE() {
    var int NPCPTR;
    var C_NPC NPC;
    var int EVT_NOVIZESILBACH_CORPSE_CHECKED;
    if ((EVT_NOVIZESILBACH_CORPSE_CHECKED) == (FALSE)) {
        EVT_NOVIZESILBACH_CORPSE_CHECKED = TRUE;
        NPC = HLP_GETNPC(1819);
        NPCPTR = _@(91986);
        FF_APPLYEXTDATAGT(91988, 75, -(1), NPCPTR);
    };
}

func void EVT_NOVIZESILBACH_CORPSE_REMOVE_APPLY() {
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        if ((NPC_GETDISTTOWP(HERO, "PART12_MOB_101")) >= (5000)) {
            if ((NOVIZESILBACH_REMOVE) == (0)) {
                NOVIZESILBACH_REMOVE = 1;
                PRINTD("Remove Novize Silbach");
                FF_REMOVE(91988);
                FF_APPLYONCEEXTGT(91989, 0, -(1));
            };
        } else {
            PRINTD("Oddal siê to usunê cia³o");
        };
    };
    if (((CURRENTLEVEL) == (ARCHOLOS_ENDGAME_ZEN)) || ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN))) {
        PRINTD("I tak nie zobaczysz efektów");
        FF_REMOVE(91988);
    };
    PRINTD("Mogê funkcjê wykonaæ tylko w zenie Archolos! - EVT_NovizeSilbach_CORPSE_Remove_APPLY");
}

func void NOVIZESILBACH_CORPSE_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int NOVIZESILBACH_CORPSE_APPLY_COUNT;
    if ((NOVIZESILBACH_CORPSE_APPLY_COUNT) == (0)) {
        PRINTD("Rozpoczynam - NovizeSilbach_CORPSE_APPLY");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SILBACH_MOVER_NOVIZE");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("SILBACH_NOVIZE", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("SILBACH_MOVER_NOVIZE");
        NOVIZESILBACH_CORPSE_APPLY_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skoñczy³em - NovizeSilbach_CORPSE_APPLY");
        CHANGEVOBCOLLISION("SILBACH_NOVIZE", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(91989);
        NOVIZESILBACH_CORPSE_APPLY_COUNT = 0;
    };
}

