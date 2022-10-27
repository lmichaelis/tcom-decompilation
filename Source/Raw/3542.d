func void QM302_PREPAREDOCAN() {
    B_STARTOTHERROUTINE(SLD_1018_DOCAN, "QM302_WAIT");
    NPC_REFRESH(SLD_1018_DOCAN);
    TELEPORTNPCTOWP(0xcb52, SLD_1018_DOCAN.WP);
    if (HLP_ISVALIDNPC(VLK_6082_GUY)) {
        B_STARTOTHERROUTINE(VLK_6082_GUY, "QM302_WAIT");
        NPC_REFRESH(VLK_6082_GUY);
        TELEPORTNPCTOWP(0xd446, VLK_6082_GUY.WP);
    };
}

func void QM302_CHANGEDOCANRTN() {
    NPC_EXCHANGEROUTINE(SLD_1018_DOCAN, START);
    if (HLP_ISVALIDNPC(VLK_6082_GUY)) {
        B_STARTOTHERROUTINE(VLK_6082_GUY, START);
        NPC_REFRESH(VLK_6082_GUY);
        TELEPORTNPCTOWP(0xd446, VLK_6082_GUY.WP);
    };
}

var int MARVIN_QM302_CURRENTMANA = 0;
var int MARVIN_QM302_CURRENTMAXMANA = 0;
func void QM302_LOCKINVENTORY() {
    PRINTD("Block inventory");
    CLOSEINVENTORY();
    PLAYERLOCKINVENTORY = TRUE;
    MARVIN_QM302_CURRENTMANA = HERO.ATTRIBUTE[2];
    MARVIN_QM302_CURRENTMAXMANA = HERO.ATTRIBUTE[3];
    HERO.ATTRIBUTE[2] = 2;
    HERO.ATTRIBUTE[3] = 2;
    EQUIPWEAPON(HERO, 0x916a);
}

func void QM302_UNLOCKINVENTORY() {
    PRINTD("Unlock inventory");
    PLAYERLOCKINVENTORY = FALSE;
    HERO.ATTRIBUTE[2] = MARVIN_QM302_CURRENTMANA;
    HERO.ATTRIBUTE[3] = MARVIN_QM302_CURRENTMAXMANA;
    HERO.ATTRIBUTE[2] = HERO.ATTRIBUTE[3];
}

func void QM302_PREPAREDOCANCROSSBOW() {
    if ((NPC_HASITEMS(SLD_1018_DOCAN, 0x916b)) == (0)) {
        CREATEINVITEMS(SLD_1018_DOCAN, 0x916b, 1);
    };
    CREATEINVITEMS(SLD_1018_DOCAN, 0x8650, 10);
    AI_EQUIPBESTRANGEDWEAPON(SLD_1018_DOCAN);
}

func void QM302_SPAWNBOARS() {
    WLD_INSERTNPC(0xc40a, "PART4_PATH_53");
    WLD_INSERTNPC(0xc40b, "PART4_PATH_53");
    WLD_INSERTNPC(0xc40c, "PART4_PATH_54");
    WLD_INSERTNPC(0xc40d, "PART4_PATH_54");
}

func void QM302_REMOVEBOARS() {
    if (HLP_ISVALIDNPC(KEILER_QM302_03)) {
        if ((NPC_ISDEAD(KEILER_QM302_03)) == (FALSE)) {
            B_REMOVENPC(0xc40a);
        };
    };
    if (HLP_ISVALIDNPC(KEILER_QM302_04)) {
        if ((NPC_ISDEAD(KEILER_QM302_04)) == (FALSE)) {
            B_REMOVENPC(0xc40b);
        };
    };
    if (HLP_ISVALIDNPC(KEILER_QM302_05)) {
        if ((NPC_ISDEAD(KEILER_QM302_05)) == (FALSE)) {
            B_REMOVENPC(0xc40c);
        };
    };
    if (HLP_ISVALIDNPC(KEILER_QM302_06)) {
        if ((NPC_ISDEAD(KEILER_QM302_06)) == (FALSE)) {
            B_REMOVENPC(0xc40d);
        };
    };
}

func void QM302_TELEPORTBANDITS_TOT() {
    if (HLP_ISVALIDNPC(BDT_11308_BANDIT)) {
        if ((NPC_ISDEAD(BDT_11308_BANDIT)) == (FALSE)) {
            B_STARTOTHERROUTINE(BDT_11308_BANDIT, TOT);
            NPC_REFRESH(BDT_11308_BANDIT);
            TELEPORTNPCTOWP(0xda1f, BDT_11308_BANDIT.WP);
        };
    };
    if (HLP_ISVALIDNPC(BDT_11304_BANDIT)) {
        if ((NPC_ISDEAD(BDT_11304_BANDIT)) == (FALSE)) {
            B_STARTOTHERROUTINE(BDT_11304_BANDIT, TOT);
            NPC_REFRESH(BDT_11304_BANDIT);
            TELEPORTNPCTOWP(0xda17, BDT_11304_BANDIT.WP);
        };
    };
    if (HLP_ISVALIDNPC(BDT_11305_BANDIT)) {
        if ((NPC_ISDEAD(BDT_11305_BANDIT)) == (FALSE)) {
            B_STARTOTHERROUTINE(BDT_11305_BANDIT, TOT);
            NPC_REFRESH(BDT_11305_BANDIT);
            TELEPORTNPCTOWP(0xda1a, BDT_11305_BANDIT.WP);
        };
    };
    if (HLP_ISVALIDNPC(BDT_11298_BANDIT)) {
        if ((NPC_ISDEAD(BDT_11298_BANDIT)) == (FALSE)) {
            B_STARTOTHERROUTINE(BDT_11298_BANDIT, TOT);
            NPC_REFRESH(BDT_11298_BANDIT);
            TELEPORTNPCTOWP(0xda14, BDT_11298_BANDIT.WP);
        };
    };
    if (HLP_ISVALIDNPC(BDT_11294_LEADER)) {
        if ((NPC_ISDEAD(BDT_11294_LEADER)) == (FALSE)) {
            B_STARTOTHERROUTINE(BDT_11294_LEADER, TOT);
            NPC_REFRESH(BDT_11294_LEADER);
            TELEPORTNPCTOWP(0xda0e, BDT_11294_LEADER.WP);
        };
    };
    if (HLP_ISVALIDNPC(BDT_11296_BANDIT)) {
        if ((NPC_ISDEAD(BDT_11296_BANDIT)) == (FALSE)) {
            B_STARTOTHERROUTINE(BDT_11296_BANDIT, TOT);
            NPC_REFRESH(BDT_11296_BANDIT);
            TELEPORTNPCTOWP(0xda11, BDT_11296_BANDIT.WP);
        };
    };
}

func void QM302_TELEPORTBANDITS_START() {
    if (HLP_ISVALIDNPC(BDT_11308_BANDIT)) {
        if ((NPC_ISDEAD(BDT_11308_BANDIT)) == (FALSE)) {
            B_STARTOTHERROUTINE(BDT_11308_BANDIT, START);
            NPC_REFRESH(BDT_11308_BANDIT);
            TELEPORTNPCTOWP(0xda1f, BDT_11308_BANDIT.WP);
        };
    };
    if (HLP_ISVALIDNPC(BDT_11304_BANDIT)) {
        if ((NPC_ISDEAD(BDT_11304_BANDIT)) == (FALSE)) {
            B_STARTOTHERROUTINE(BDT_11304_BANDIT, START);
            NPC_REFRESH(BDT_11304_BANDIT);
            TELEPORTNPCTOWP(0xda17, BDT_11304_BANDIT.WP);
        };
    };
    if (HLP_ISVALIDNPC(BDT_11305_BANDIT)) {
        if ((NPC_ISDEAD(BDT_11305_BANDIT)) == (FALSE)) {
            B_STARTOTHERROUTINE(BDT_11305_BANDIT, START);
            NPC_REFRESH(BDT_11305_BANDIT);
            TELEPORTNPCTOWP(0xda1a, BDT_11305_BANDIT.WP);
        };
    };
    if (HLP_ISVALIDNPC(BDT_11298_BANDIT)) {
        if ((NPC_ISDEAD(BDT_11298_BANDIT)) == (FALSE)) {
            B_STARTOTHERROUTINE(BDT_11298_BANDIT, START);
            NPC_REFRESH(BDT_11298_BANDIT);
            TELEPORTNPCTOWP(0xda14, BDT_11298_BANDIT.WP);
        };
    };
    if (HLP_ISVALIDNPC(BDT_11294_LEADER)) {
        if ((NPC_ISDEAD(BDT_11294_LEADER)) == (FALSE)) {
            B_STARTOTHERROUTINE(BDT_11294_LEADER, START);
            NPC_REFRESH(BDT_11294_LEADER);
            TELEPORTNPCTOWP(0xda0e, BDT_11294_LEADER.WP);
        };
    };
    if (HLP_ISVALIDNPC(BDT_11296_BANDIT)) {
        if ((NPC_ISDEAD(BDT_11296_BANDIT)) == (FALSE)) {
            B_STARTOTHERROUTINE(BDT_11296_BANDIT, START);
            NPC_REFRESH(BDT_11296_BANDIT);
            TELEPORTNPCTOWP(0xda11, BDT_11296_BANDIT.WP);
        };
    };
}

var int QM302_REMOVEMOLERAT = 0;
var int QM302_REMOVEWOLF = 0;
var int QM302_REMOVEKEILER = 0;
var int QM302_REMOVERAT = 0;
func void QM302_REMOVEMONSTERS() {
    if (HLP_ISVALIDNPC(MOLERAT_QM302_01)) {
        if ((NPC_ISDEAD(MOLERAT_QM302_01)) == (FALSE)) {
            B_REMOVENPC(0xc5ee);
            QM302_REMOVEMOLERAT = (QM302_REMOVEMOLERAT) + (1);
        };
    };
    if (HLP_ISVALIDNPC(MOLERAT_QM302_02)) {
        if ((NPC_ISDEAD(MOLERAT_QM302_02)) == (FALSE)) {
            B_REMOVENPC(0xc5ef);
            QM302_REMOVEMOLERAT = (QM302_REMOVEMOLERAT) + (1);
        };
    };
    if (HLP_ISVALIDNPC(MOLERAT_QM302_03)) {
        if ((NPC_ISDEAD(MOLERAT_QM302_03)) == (FALSE)) {
            B_REMOVENPC(0xc5f0);
            QM302_REMOVEMOLERAT = (QM302_REMOVEMOLERAT) + (1);
        };
    };
    if (HLP_ISVALIDNPC(WOLF_QM302_01)) {
        if ((NPC_ISDEAD(WOLF_QM302_01)) == (FALSE)) {
            B_REMOVENPC(0xc79c);
            QM302_REMOVEWOLF = (QM302_REMOVEWOLF) + (1);
        };
    };
    if (HLP_ISVALIDNPC(WOLF_QM302_02)) {
        if ((NPC_ISDEAD(WOLF_QM302_02)) == (FALSE)) {
            B_REMOVENPC(0xc79d);
            QM302_REMOVEWOLF = (QM302_REMOVEWOLF) + (1);
        };
    };
    if (HLP_ISVALIDNPC(WOLF_QM302_03)) {
        if ((NPC_ISDEAD(WOLF_QM302_03)) == (FALSE)) {
            B_REMOVENPC(0xc79e);
            QM302_REMOVEWOLF = (QM302_REMOVEWOLF) + (1);
        };
    };
    if (HLP_ISVALIDNPC(GIANT_RAT_QM302_01)) {
        if ((NPC_ISDEAD(GIANT_RAT_QM302_01)) == (FALSE)) {
            B_REMOVENPC(0xc52d);
            QM302_REMOVERAT = (QM302_REMOVERAT) + (1);
        };
    };
    if (HLP_ISVALIDNPC(KEILER_QM302_01)) {
        if ((NPC_ISDEAD(KEILER_QM302_01)) == (FALSE)) {
            B_REMOVENPC(0xc408);
            QM302_REMOVEKEILER = (QM302_REMOVEKEILER) + (1);
        };
    };
    if (HLP_ISVALIDNPC(KEILER_QM302_02)) {
        if ((NPC_ISDEAD(KEILER_QM302_02)) == (FALSE)) {
            B_REMOVENPC(0xc409);
            QM302_REMOVEKEILER = (QM302_REMOVEKEILER) + (1);
        };
    };
}

func void QM302_BRINGBACKMONSTERS() {
    if ((QM302_REMOVEKEILER) == (1)) {
        WLD_INSERTNPC(0xc406, "PART4_MOB_96");
    };
    if ((QM302_REMOVEKEILER) == (2)) {
        WLD_INSERTNPC(0xc406, "PART4_MOB_96");
    };
    if ((QM302_REMOVERAT) == (1)) {
        WLD_INSERTNPC(0xc522, "PART4_MOB_98");
    };
    if ((QM302_REMOVEWOLF) == (1)) {
        WLD_INSERTNPC(0xc77e, "PART4_MOB_07");
    };
    if ((QM302_REMOVEWOLF) == (2)) {
        WLD_INSERTNPC(0xc77e, "PART4_MOB_08");
    };
    if ((QM302_REMOVEWOLF) == (3)) {
        WLD_INSERTNPC(0xc77e, "PART4_MOB_07");
    };
    if ((QM302_REMOVEMOLERAT) == (1)) {
        WLD_INSERTNPC(0xc5e6, "PART4_MOB_93");
    };
    if ((QM302_REMOVEMOLERAT) == (2)) {
        WLD_INSERTNPC(0xc5e6, "PART4_MOB_94");
    };
    if ((QM302_REMOVEMOLERAT) == (3)) {
        WLD_INSERTNPC(0xc5e6, "PART4_MOB_95");
    };
}

func void QM302_PREPARECUTSCENE() {
    FF_APPLYONCEEXT(0xf811, 75, 4);
    B_STARTOTHERROUTINE(SLD_1018_DOCAN, "QM302_RENEGADES_CUTSCENE");
    NPC_REFRESH(SLD_1018_DOCAN);
}

func void QM302_PREPARECUTSCENE_APPLY() {
    QM302_PREPARECUTSCENE_COUNT = (QM302_PREPARECUTSCENE_COUNT) + (1);
    if ((QM302_PREPARECUTSCENE_COUNT) == (4)) {
        QM302_PREPARECUTSCENE_COUNT = 0;
        CUTSCENE_START(0x16aa2);
    };
}

var int QM302_PREPARECUTSCENE_APPLY.QM302_PREPARECUTSCENE_COUNT = 0;
func void QM302_RESPAWNRENEGADES() {
    QM302_RENEGADESEVENT = 1;
    if ((NPC_ISDEAD(MIL_6270_JERRAN)) == (FALSE)) {
        B_STARTOTHERROUTINE(MIL_6270_JERRAN, "QM302_FIGHT");
        NPC_REFRESH(MIL_6270_JERRAN);
        TELEPORTNPCTOWP(0xdbd1, MIL_6270_JERRAN.WP);
    };
    WLD_INSERTNPC(0xdb9c, "PART4_RENEGADE_02");
    if ((NPC_ISDEAD(MIL_6271_RENEGADE)) == (FALSE)) {
        B_STARTOTHERROUTINE(MIL_6271_RENEGADE, "QM302_FIGHT");
        NPC_REFRESH(MIL_6271_RENEGADE);
        TELEPORTNPCTOWP(0xdba9, MIL_6271_RENEGADE.WP);
    };
    WLD_INSERTNPC(0xdb9e, "PART4_RENEGADE_01");
    WLD_INSERTNPC(0xdb9a, "PART4_PATH_62");
}

func void QM302_RENEGADESATTACK_REFRESH() {
    NPC_CLEARAIQUEUE(MIL_11272_LEADER);
    if (HLP_ISVALIDNPC(MIL_6270_JERRAN)) {
        NPC_CLEARAIQUEUE(MIL_6270_JERRAN);
    };
    NPC_CLEARAIQUEUE(MIL_11275_RENEGADE);
    if (HLP_ISVALIDNPC(MIL_6271_RENEGADE)) {
        NPC_CLEARAIQUEUE(MIL_6271_RENEGADE);
    };
    NPC_CLEARAIQUEUE(MIL_11276_RENEGADE);
}

func void QM302_RENEGADESATTACK() {
    if (HLP_ISVALIDNPC(MIL_6270_JERRAN)) {
        MIL_6270_JERRAN.AIVAR[61] = FALSE;
        MIL_6270_JERRAN.FLAGS = 0;
    };
    MIL_11275_RENEGADE.AIVAR[61] = FALSE;
    MIL_11275_RENEGADE.FLAGS = 0;
    if (HLP_ISVALIDNPC(MIL_6271_RENEGADE)) {
        MIL_6271_RENEGADE.AIVAR[61] = FALSE;
        MIL_6271_RENEGADE.FLAGS = 0;
    };
    MIL_11276_RENEGADE.AIVAR[61] = FALSE;
    MIL_11276_RENEGADE.FLAGS = 0;
    MIL_11272_LEADER.AIVAR[61] = FALSE;
    MIL_11272_LEADER.FLAGS = 0;
}

func void QM302_RENEGADES_END() {
    FF_APPLYONCEEXT(0xf817, 75, 4);
}

func void QM302_RENEGADES_END_APPLY() {
    QM302_RENEGADES_END_COUNT = (QM302_RENEGADES_END_COUNT) + (1);
    if ((QM302_RENEGADES_END_COUNT) == (4)) {
        QM302_RENEGADES_END_COUNT = 0;
        WLD_SENDUNTRIGGER("QM302_RENEGADES_01");
        WLD_SENDUNTRIGGER("QM302_RENEGADES_02");
        WLD_SENDUNTRIGGER("QM302_RENEGADES_03");
        DIACAM_ENABLE();
        MIL_11272_LEADER.AIVAR[92] = FALSE;
        SLD_1018_DOCAN.AIVAR[92] = FALSE;
        HERO.AIVAR[4] = FALSE;
        QM302_RENEGADESATTACK();
    };
}

var int QM302_RENEGADES_END_APPLY.QM302_RENEGADES_END_COUNT = 0;
func void QM302_PREPAREDETLOW() {
    B_STARTOTHERROUTINE(VLK_3015_DETLOW, "QM302_SEARCH");
    QM302_DETLOW_RTNCHECK = 1;
    NPC_REFRESH(VLK_3015_DETLOW);
    TELEPORTNPCTOWP(0xd212, VLK_3015_DETLOW.WP);
}

func void QM302_PREPAREDETLOWTRAINING() {
    NPC_EXCHANGEROUTINE(NONE_2009_LENNART, "QM302_LORENZO");
    B_STARTOTHERROUTINE(VLK_3015_DETLOW, "QM302_TRAINING");
    QM302_DETLOW_RTNCHECK = 3;
    NPC_REFRESH(VLK_3015_DETLOW);
    TELEPORTNPCTOWP(0xd212, VLK_3015_DETLOW.WP);
    WLD_INSERTNPC(0xcdd7, "PARTM3_CROSSBOW_SHOOT_01");
    WLD_INSERTNPC(0xcdda, "PARTM3_CROSSBOW_SHOOT_02");
}

func void QM302_FINISHTRAINING() {
    B_REMOVENPC(0xcdd7);
    B_REMOVENPC(0xcdda);
    B_STARTOTHERROUTINE(NONE_2009_LENNART, START);
    NPC_REFRESH(NONE_2009_LENNART);
    TELEPORTNPCTOWP(0xcf09, NONE_2009_LENNART.WP);
    RESTOREROUTINE_DETLOW();
}

func void QM302_FAILEDQUEST() {
    if (((KAPITEL) != (5)) && ((LOG_GETSTATUS(MIS_Q308)) != (LOG_RUNNING))) {
        B_STARTOTHERROUTINE(VLK_2261_BODOWIN, START);
        NPC_REFRESH(VLK_2261_BODOWIN);
    };
    if (HLP_ISVALIDNPC(MIL_11286_MILITIA)) {
        if (NPC_ISDEAD(MIL_11286_MILITIA)) {
            B_REMOVENPC(0xcdd7);
        };
    };
    if (HLP_ISVALIDNPC(MIL_11287_MILITIA)) {
        if (NPC_ISDEAD(MIL_11287_MILITIA)) {
            B_REMOVENPC(0xcdda);
        };
    };
    if (HLP_ISVALIDNPC(MIL_6270_JERRAN)) {
        if (NPC_ISDEAD(MIL_6270_JERRAN)) {
            B_REMOVENPC(0xdbd1);
        };
    };
    if (HLP_ISVALIDNPC(MIL_6271_RENEGADE)) {
        if (NPC_ISDEAD(MIL_6271_RENEGADE)) {
            B_REMOVENPC(0xdba9);
        };
    };
    if (HLP_ISVALIDNPC(MIL_11275_RENEGADE)) {
        if (NPC_ISDEAD(MIL_11275_RENEGADE)) {
            B_REMOVENPC(0xdb9c);
        };
    };
    if (HLP_ISVALIDNPC(MIL_11276_RENEGADE)) {
        if (NPC_ISDEAD(MIL_11276_RENEGADE)) {
            B_REMOVENPC(0xdb9e);
        };
    };
    if (HLP_ISVALIDNPC(MIL_11272_LEADER)) {
        if (NPC_ISDEAD(MIL_11272_LEADER)) {
            B_REMOVENPC(0xdb9a);
        };
    };
    RESTOREROUTINE_DETLOW();
    QM302_CHANGEDOCANRTN();
}

