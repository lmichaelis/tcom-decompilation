func void SQ213_PREPAREBLANKET() {
    FF_APPLYONCEEXTGT(62542, 0, -(1));
}

func void SQ213_PREPAREBLANKET_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int CHANGEBLANKETCOLLISION;
    if ((CHANGEBLANKETCOLLISION) == (0)) {
        PRINTD("Rozpoczynam - SQ213_PrepareBlanket_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KM_MYRTANA_MOVER_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("KM_SQ213_BLANKET", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KM_MYRTANA_MOVER_01");
        CHANGEBLANKETCOLLISION = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ213_PrepareBlanket_Apply");
        CHANGEVOBCOLLISION("KM_SQ213_BLANKET", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62542);
        CHANGEBLANKETCOLLISION = 0;
    };
}

func void SQ213_PREPAREBASKET_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int CHANGEBASKETCOLLISION;
    if ((CHANGEBASKETCOLLISION) == (0)) {
        PRINTD("Rozpoczynam - SQ213_PrepareBasket_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KM_MYRTANA_MOVER_02");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("KM_SQ213_BASKET", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KM_MYRTANA_MOVER_02");
        CHANGEBASKETCOLLISION = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ213_PrepareBasket_Apply");
        CHANGEVOBCOLLISION("KM_SQ213_BASKET", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62546);
        CHANGEBASKETCOLLISION = 0;
    };
}

func void SQ213_SONGCUTSCENE_KARINVERSION_PREPARE() {
    var int SQ213_SONGCUTSCENE_KARINVERSION_COUNT;
    SQ213_SONGCUTSCENE_KARINVERSION_COUNT = (SQ213_SONGCUTSCENE_KARINVERSION_COUNT) + (1);
    if ((SQ213_SONGCUTSCENE_KARINVERSION_COUNT) == (4)) {
        CUTSCENE_START(92894);
    };
}

func void MIST_FINISHQUEST() {
    FADESCREENTOBLACKF(3, 62553, 1000);
}

func void MIST_FINISHQUEST_FADESCREEN() {
    WLD_SETTIME(5, 0);
    TELEPORTNPCTOWP(52420, "PART9_CUTSCENE_LUTZ_03");
    TELEPORTNPCTOWP(57542, "PART9_CUTSCENE_MARTHA_03");
    TELEPORTNPCTOWP(55903, "PART9_CUTSCENE_KARIN");
    TELEPORTNPCTOWP(1819, "PART9_CUTSCENE_HERO_02");
    HERO.AIVAR[96] = 5;
    B_STARTOTHERROUTINE(MIL_6318_LUTZ, "TREE");
    B_STARTOTHERROUTINE(BAU_703_MARTHA, "TREE");
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
}

func int SQ213_SNAPPERSAREDEAD() {
    if (NPC_ISDEAD(SNAPPER_SQ213_BIG)) {
        if ((((NPC_ISDEAD(SNAPPER_SQ213_01)) && (NPC_ISDEAD(SNAPPER_E_01))) && (NPC_ISDEAD(SNAPPER_SQ213_02))) && (NPC_ISDEAD(SNAPPER_E_02))) {
            return TRUE;
        };
        return FALSE;
    };
    return FALSE;
}

func void MIST_CORPSEMOVER_START() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int CHANGEFARMER01CORPSECOLLISION;
    if ((CHANGEFARMER01CORPSECOLLISION) == (0)) {
        PRINTD("Rozpoczynam - Mist_CorpseMover_Start");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KM_SQ213_CORPSE_MOVER");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("KM_SQ213_FARMERBODY", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KM_SQ213_BLOOD_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KM_SQ213_BLOOD_02", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KM_SQ213_CORPSE_MOVER");
        CHANGEFARMER01CORPSECOLLISION = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - Mist_CorpseMover_Start");
        CHANGEVOBCOLLISION("KM_SQ213_FARMERBODY", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KM_SQ213_BLOOD_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KM_SQ213_BLOOD_02", TRUE, TRUE, TRUE, TRUE);
        if ((SQ213_SPAWNRAZORS) == (FALSE)) {
            SQ213_SPAWNRAZORS = TRUE;
            if (NPC_ISDEAD(SNAPPER_E_01)) {
                WLD_INSERTNPC(50899, "FP_ROAM_PART9_13");
            };
            if (NPC_ISDEAD(SNAPPER_E_02)) {
                WLD_INSERTNPC(50900, "FP_ROAM_PART9_17");
            };
            WLD_INSERTNPC(50901, "FP_ROAM_PART9_BIGSNAPPER");
        };
        FF_REMOVE(62555);
        CHANGEFARMER01CORPSECOLLISION = 0;
    };
}

func void SQ213_TELEPORTTOMARTHA() {
    FADESCREENTOBLACKF(1, 62560, 1000);
}

func void SQ213_TELEPORTTOMARTHA_FADESCREEN() {
    HERO.AIVAR[4] = FALSE;
    TELEPORTNPCTOWP(1819, "VILLAGE_PLACE_15");
    AI_TURNTONPC(HERO, BAU_703_MARTHA);
    FADESCREENFROMBLACK(1);
}

