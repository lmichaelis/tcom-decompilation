func void SQ408_HIDECANONV1_START() {
    var ZCMOVER MOVER2;
    var int MOVPTR2;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int SQ408_PREPARESCENE_COLLISION;
    if ((SQ408_PREPARESCENE_COLLISION) == (0)) {
        PRINTD("Rozpoczynam - SQ408_HideCanonV1_Start");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("MOVER_SQ408_CANON_V1");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("MOVER_SQ408_CANON_V2");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        CHANGEVOBCOLLISION("SQ408_CANON_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ408_CANON_02", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("MOVER_SQ408_CANON_V1");
        WLD_SENDTRIGGER("MOVER_SQ408_CANON_V2");
        SQ408_PREPARESCENE_COLLISION = 1;
    };
    if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - SQ408_HideCanonV1_Start");
        CHANGEVOBCOLLISION("SQ408_CANON_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ408_CANON_02", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62474);
        SQ408_PREPARESCENE_COLLISION = 0;
    };
}

func void SQ408_CANONFIRE_COLLISION_SATRT() {
    var int MOVPTR4;
    var ZCMOVER MOVER2;
    var ZCMOVER MOVER4;
    var int MOVPTR2;
    var ZCMOVER MOVER3;
    var int MOVPTR3;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int SQ408_CANONFIRE_COLLISION_COUNT;
    if ((SQ408_CANONFIRE_COLLISION_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ408_CanonFire_Collision_Satrt");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ408_SAULHOUSE_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("SQ408_SAULHOUSE_02");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        MOVPTR3 = MEM_SEARCHVOBBYNAME("MOVER_SQ408_CANON_V2");
        MOVER3 = MEM_PTRTOINST(MOVPTR3);
        MOVPTR4 = MEM_SEARCHVOBBYNAME("MOVER_SQ408_CANON_V3");
        MOVER4 = MEM_PTRTOINST(MOVPTR4);
        CHANGEVOBCOLLISION("SQ408_SAULCHEST", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ408_SAULBED_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ408_SAULCUPBOARD_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ408_SAULCUPBOARD_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ408_DESTROYEDTABLE", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ408_DEADSAUL", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ408_CANON_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ408_CANON_03", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("SQ408_SAULHOUSE_01");
        WLD_SENDTRIGGER("SQ408_SAULHOUSE_02");
        WLD_SENDTRIGGER("MOVER_SQ408_CANON_V2");
        WLD_SENDTRIGGER("MOVER_SQ408_CANON_V3");
        SQ408_CANONFIRE_COLLISION_COUNT = 1;
    };
    if (((((((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - SQ408_CanonFire_Collision_Satrt");
        CHANGEVOBCOLLISION("SQ408_SAULCHEST", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ408_SAULBED_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ408_SAULCUPBOARD_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ408_SAULCUPBOARD_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ408_DESTROYEDTABLE", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ408_DEADSAUL", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ408_CANON_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ408_CANON_03", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62480);
        SQ408_CANONFIRE_COLLISION_COUNT = 0;
    };
}

func void SQ408_CANONFIRE_START() {
    var int SQ408_CANONFIRE_COUNT;
    SQ408_CANONFIRE_COUNT = (SQ408_CANONFIRE_COUNT) + (1);
    if ((SQ408_CANONFIRE_COUNT) == (1)) {
        PRINTD("1");
        HERO.FLAGS = 2;
        NPC_REMOVEINVITEMS(HERO, 34742, 1);
        WLD_SENDTRIGGER("SQ408_LIGHT");
        AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    };
    if ((SQ408_CANONFIRE_COUNT) == (2)) {
        TORCH_UNEQUIP();
        WLD_SENDTRIGGER("SQ408_DAMAGE");
        FF_APPLYONCEEXTGT(62480, 0, -(1));
    };
    if ((SQ408_CANONFIRE_COUNT) == (3)) {
        PRINTD("3");
        WLD_SENDTRIGGER("SQ408_DAMAGE");
        WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
        B_REMOVENPC(58818);
        SND_PLAY("Ravens_Earthquake4");
        SND_PLAY("EXPLOSION01");
    };
    if ((SQ408_CANONFIRE_COUNT) == (5)) {
        WLD_SENDTRIGGER("SQ408_DAMAGE");
    };
    if ((SQ408_CANONFIRE_COUNT) == (14)) {
        PRINTD("10");
        WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
        HERO.FLAGS = 0;
        SQ408_CANONFIRE_COUNT = 0;
        SQ408_CANUSECANON = 4;
    };
}

func void SQ408_SPAWNRODRIGO() {
    B_STARTOTHERROUTINE(PIR_1306_RODRIGO, "SQ408_WAIT");
    NPC_REFRESH(PIR_1306_RODRIGO);
    TELEPORTNPCTOWP(58677, PIR_1306_RODRIGO.WP);
}

func void SQ408_CLEANSAUL_START() {
    var ZCMOVER MOVER2;
    var int MOVPTR2;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int SQ408_CLEANSAUL;
    if ((SQ408_CLEANSAUL) == (0)) {
        PRINTD("Rozpoczynam - SQ408_CleanSaul_Start");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ408_SAULHOUSE_02");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("MOVER_SQ408_CANON_V3");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        CHANGEVOBCOLLISION("SQ408_SAULCUPBOARD_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ408_DESTROYEDTABLE", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ408_DEADSAUL", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ408_CANON_03", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ408_BED_DESTOYED", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("SQ408_SAULHOUSE_02");
        WLD_SENDTRIGGER("MOVER_SQ408_CANON_V3");
        SQ408_CLEANSAUL = 1;
    };
    if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - SQ408_CleanSaul_Start");
        CHANGEVOBCOLLISION("SQ408_SAULCUPBOARD_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ408_DESTROYEDTABLE", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ408_DEADSAUL", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ408_CANON_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ408_BED_DESTOYED", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62493);
        SQ408_CLEANSAUL = 0;
    };
}
