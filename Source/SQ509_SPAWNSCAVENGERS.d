func void SQ509_SPAWNSCAVENGERS() {
    SQ509_SPAWNEVENTS = 1;
    WLD_INSERTNPC(50728, "FP_ROAM_PART3_157");
    WLD_INSERTNPC(50729, "FP_ROAM_PART3_158");
    WLD_INSERTNPC(50730, "FP_ROAM_PART3_159");
    WLD_INSERTNPC(50731, "FP_ROAM_PART9_118");
    WLD_INSERTNPC(50732, "FP_ROAM_PART9_119");
    WLD_INSERTNPC(50733, "FP_ROAM_PART9_120");
    WLD_INSERTNPC(50734, "FP_ROAM_PART9_121");
    WLD_INSERTNPC(50735, "FP_ROAM_PART9_122");
    WLD_INSERTNPC(50736, "FP_ROAM_PART9_123");
    WLD_INSERTNPC(50737, "FP_ROAM_PART3_160");
    WLD_INSERTNPC(50738, "FP_ROAM_PART3_161");
    WLD_INSERTNPC(50739, "FP_ROAM_PART3_162");
    WLD_INSERTNPC(50740, "FP_ROAM_PART3_163");
    WLD_INSERTNPC(50741, "FP_ROAM_PART3_164");
    WLD_INSERTITEM(37477, "FP_ROAM_BODOWINSCAVENGER_01");
    WLD_INSERTITEM(37477, "FP_ROAM_BODOWINSCAVENGER_02");
    WLD_INSERTITEM(37477, "FP_ROAM_BODOWINSCAVENGER_03");
    WLD_INSERTITEM(37481, "FP_SQ509_POTION_01");
    WLD_INSERTITEM(37483, "FP_SQ509_POTION_02");
    WLD_INSERTITEM(37489, "FP_SQ509_POTION_03");
    MOB_CREATEITEMS("BODOWIN_SHELF_01", 37491, 1);
    MOB_CREATEITEMS("BODOWIN_SHELF_02", 37494, 1);
    MOB_CREATEITEMS("BODOWIN_SHELF_03", 37498, 1);
}

func void SQ509_PREPARESCENE() {
    B_STARTOTHERROUTINE(NONE_6262_CARDEN, "SQ509_SMALLTALK");
    NPC_REFRESH(NONE_6262_CARDEN);
    TELEPORTNPCTOWP(57698, NONE_6262_CARDEN.WP);
    B_STARTOTHERROUTINE(KDW_303_RIEROL, "SQ509_SMALLTALK");
    NPC_REFRESH(KDW_303_RIEROL);
    TELEPORTNPCTOWP(56650, KDW_303_RIEROL.WP);
    B_STARTOTHERROUTINE(VLK_2261_BODOWIN, TOT);
    NPC_REFRESH(VLK_2261_BODOWIN);
    TELEPORTNPCTOWP(55789, VLK_2261_BODOWIN.WP);
    FF_APPLYONCEEXTGT(47034, 0, -(1));
}

func void SQ509_PREPARESCAVENGERS() {
    SQ509_SPAWNSCAVENGERS();
    FF_APPLYONCEEXTGT(47042, 0, -(1));
}

func void SQ509_PREPARESCENE_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int SQ509_PREPARESCENE_COUNT;
    if ((SQ509_PREPARESCENE_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ509_PrepareScene_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ509_MOVER_DEADSCAVENGERS");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("SQ509_CART", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ509_SCAVENGERCORPSE_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ509_SCAVENGERCORPSE_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ509_SCAVENGERCORPSE_03", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ509_SCAVENGERCORPSE_04", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("SQ509_MOVER_DEADSCAVENGERS");
        SQ509_PREPARESCENE_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ509_PrepareScene_Apply");
        CHANGEVOBCOLLISION("SQ509_CART", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ509_SCAVENGERCORPSE_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ509_SCAVENGERCORPSE_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ509_SCAVENGERCORPSE_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ509_SCAVENGERCORPSE_04", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(47034);
        SQ509_PREPARESCENE_COUNT = 0;
    };
}

func int SQ509_SCAVENGERSAREDEAD_CITY() {
    if (((NPC_ISDEAD(SCAVENGER_SQ509_CITY_01)) && (NPC_ISDEAD(SCAVENGER_SQ509_CITY_02))) && (NPC_ISDEAD(SCAVENGER_SQ509_CITY_03))) {
        return TRUE;
    };
    return FALSE;
}

func int SQ509_SCAVENGERSAREDEAD_VILLAGE() {
    if (((NPC_ISDEAD(SCAVENGER_SQ509_VILLAGE_01)) && (NPC_ISDEAD(SCAVENGER_SQ509_VILLAGE_02))) && (NPC_ISDEAD(SCAVENGER_SQ509_VILLAGE_03))) {
        return TRUE;
    };
    return FALSE;
}

func int SQ509_SCAVENGERSAREDEAD_VINEYARD() {
    if (((NPC_ISDEAD(SCAVENGER_SQ509_VINEYARD_01)) && (NPC_ISDEAD(SCAVENGER_SQ509_VINEYARD_02))) && (NPC_ISDEAD(SCAVENGER_SQ509_VINEYARD_03))) {
        return TRUE;
    };
    return FALSE;
}

func int SQ509_SCAVENGERSAREDEAD_BODOWIN() {
    if (((((NPC_ISDEAD(SCAVENGER_SQ509_BODOWIN_01)) && (NPC_ISDEAD(SCAVENGER_SQ509_BODOWIN_02))) && (NPC_ISDEAD(SCAVENGER_SQ509_BODOWIN_03))) && (NPC_ISDEAD(SCAVENGER_SQ509_BODOWIN_04))) && (NPC_ISDEAD(SCAVENGER_SQ509_BODOWIN_05))) {
        return TRUE;
    };
    return FALSE;
}

func void SQ509_PREPARESCAVENGERS_APPLY() {
    var ZCMOVER MOVER8;
    var int SQ509_PREPARESCAVENGERS_COUNT;
    var int MOVPTR3;
    var ZCMOVER MOVER3;
    var int MOVPTR7;
    var ZCMOVER MOVER5;
    var int MOVPTR8;
    var ZCMOVER MOVER7;
    var ZCMOVER MOVER1;
    var int MOVPTR2;
    var ZCMOVER MOVER4;
    var int MOVPTR1;
    var int MOVPTR4;
    var int MOVPTR6;
    var int MOVPTR5;
    var ZCMOVER MOVER2;
    var ZCMOVER MOVER6;
    if ((SQ509_PREPARESCAVENGERS_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ509_PrepareScavengers_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ509_MOVER_BURDNEDTRAVELER");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("KM_BODOWIN_DOOR_MOVER_01");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        MOVPTR3 = MEM_SEARCHVOBBYNAME("KM_BODOWIN_DOOR_MOVER_03");
        MOVER3 = MEM_PTRTOINST(MOVPTR3);
        MOVPTR4 = MEM_SEARCHVOBBYNAME("SQ509_MOVER_SCAVENGER");
        MOVER4 = MEM_PTRTOINST(MOVPTR4);
        MOVPTR5 = MEM_SEARCHVOBBYNAME("SQ509_MOVER_BOOKSTANDS_01");
        MOVER5 = MEM_PTRTOINST(MOVPTR5);
        MOVPTR6 = MEM_SEARCHVOBBYNAME("SQ509_MOVER_BOOKSTANDS_02");
        MOVER6 = MEM_PTRTOINST(MOVPTR6);
        MOVPTR7 = MEM_SEARCHVOBBYNAME("SQ509_MOVER_LEACORPSE");
        MOVER7 = MEM_PTRTOINST(MOVPTR7);
        MOVPTR8 = MEM_SEARCHVOBBYNAME("SQ509_MOVER_FARMERCORPSE");
        MOVER8 = MEM_PTRTOINST(MOVPTR8);
        CHANGEVOBCOLLISION("SQ509_BURDNEDTRAVELER", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ509_DEADSCAVENGER_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ509_DEADSCAVENGER_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KM_BODOWINDOOR_PERMOPEN", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KM_BODOWINDOOR_LOCKPICK", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ509_SCAVENGER_BODOWINHOUSE", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ509_BOOKSTANDS_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ509_BOOKSTANDS_02", FALSE, FALSE, FALSE, TRUE);
        if ((LOG_GETSTATUS(MIS_Q107)) == (LOG_SUCCESS)) {
            CHANGEVOBCOLLISION("SQ509_LEACORPSE", FALSE, FALSE, FALSE, TRUE);
        } else {
            CHANGEVOBCOLLISION("SQ509_FARMERCORPSE", FALSE, FALSE, FALSE, TRUE);
        };
        WLD_SENDTRIGGER("SQ509_MOVER_BURDNEDTRAVELER");
        WLD_SENDTRIGGER("KM_BODOWIN_DOOR_MOVER_01");
        WLD_SENDTRIGGER("KM_BODOWIN_DOOR_MOVER_03");
        WLD_SENDTRIGGER("SQ509_MOVER_SCAVENGER");
        WLD_SENDTRIGGER("SQ509_MOVER_BOOKSTANDS_01");
        WLD_SENDTRIGGER("SQ509_MOVER_BOOKSTANDS_02");
        if ((LOG_GETSTATUS(MIS_Q107)) == (LOG_SUCCESS)) {
            WLD_SENDTRIGGER("SQ509_MOVER_LEACORPSE");
        } else {
            WLD_SENDTRIGGER("SQ509_MOVER_FARMERCORPSE");
        };
        SQ509_PREPARESCAVENGERS_COUNT = 1;
    };
    if (((((((((((((((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER5.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER5.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER6.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER6.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER7.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER7.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER8.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER8.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ509_PrepareScavengers_Apply");
        CHANGEVOBCOLLISION("SQ509_BURDNEDTRAVELER", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ509_DEADSCAVENGER_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ509_DEADSCAVENGER_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KM_BODOWINDOOR_PERMOPEN", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KM_BODOWINDOOR_LOCKPICK", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ509_SCAVENGER_BODOWINHOUSE", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ509_BOOKSTANDS_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ509_BOOKSTANDS_02", TRUE, TRUE, TRUE, TRUE);
        if ((LOG_GETSTATUS(MIS_Q107)) == (LOG_SUCCESS)) {
            CHANGEVOBCOLLISION("SQ509_LEACORPSE", TRUE, TRUE, TRUE, TRUE);
        } else {
            CHANGEVOBCOLLISION("SQ509_FARMERCORPSE", TRUE, TRUE, TRUE, TRUE);
        };
        FF_REMOVE(47042);
        SQ509_PREPARESCAVENGERS_COUNT = 0;
    };
}

func void SQ509_PREPAREBODOWIN() {
    B_STARTOTHERROUTINE(VLK_2261_BODOWIN, "SQ509_WAIT");
    NPC_REFRESH(VLK_2261_BODOWIN);
    TELEPORTNPCTOWP(55789, VLK_2261_BODOWIN.WP);
    WLD_SENDTRIGGER("SQ509_MOVER_TRIGGERBOX");
}

func void SQ509_BODOWINPOWERTIMER() {
    var int SQ509_BODOWINPOWERTIMER_COUNT;
    SQ509_BODOWINPOWERTIMER_COUNT = (SQ509_BODOWINPOWERTIMER_COUNT) + (1);
    if ((SQ509_BODOWINPOWERTIMER_COUNT) == (15)) {
        SQ509_POTIONINUSE = 2;
        B_SETATTRIBUTESTOLEVEL(VLK_2261_BODOWIN, 45);
        B_LOGENTRY(TOPIC_SQ509, LOG_SQ509_CANFIGHTAGAIN);
    };
}

func void BODOWIN_SQ509_GIVEREWARD() {
    SELF.FLAGS = 2;
    B_GIVEINVITEMS(SELF, OTHER, 34375, 1);
}

func void SQ509_FINISHQUEST() {
    SQ509_FINISHQUESTSTATUS = 1;
    B_STARTOTHERROUTINE(NONE_6262_CARDEN, "MONASTERY");
    NPC_REFRESH(NONE_6262_CARDEN);
    NPC_EXCHANGEROUTINE(KDW_303_RIEROL, START);
    FF_APPLYONCEEXTGT(47042, 0, -(1));
    if (HLP_ISVALIDNPC(VLK_2261_BODOWIN)) {
        B_REMOVENPC(55789);
    };
    HERO.AIVAR[4] = FALSE;
}

