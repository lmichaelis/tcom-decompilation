func void KQ407_PREPARENPCINMEDIC() {
    PRINTD("Ranni u medyka");
    KQ407_FARMERSATMEDIC = TRUE;
    B_STARTOTHERROUTINE(BAU_6342_KYLE, "KQ407_MEDIC");
    NPC_REFRESH(BAU_6342_KYLE);
    TELEPORTNPCTOWP(0xdb76, BAU_6342_KYLE.WP);
    MDL_APPLYOVERLAYMDS(BAU_6342_KYLE, "HumanS_Wounded.mds");
    B_STARTOTHERROUTINE(SLD_6344_WILLEM, "KQ407_MEDIC");
    NPC_REFRESH(SLD_6344_WILLEM);
    TELEPORTNPCTOWP(0xdb94, SLD_6344_WILLEM.WP);
    B_STARTOTHERROUTINE(BAU_6345_BERMAR, "KQ407_MEDIC");
    NPC_REFRESH(BAU_6345_BERMAR);
    TELEPORTNPCTOWP(0xdb8a, BAU_6345_BERMAR.WP);
    NPC_CHANGEARMOR(BAU_6345_BERMAR, 0x8474);
    NPC_REMOVEINVITEMS(BAU_6345_BERMAR, 0x8473, NPC_HASITEMS(BAU_6345_BERMAR, 0x8473));
    B_STARTOTHERROUTINE(MIL_13381_EURIC, "KQ407_MEDIC");
    NPC_REFRESH(MIL_13381_EURIC);
    TELEPORTNPCTOWP(0xd1ca, MIL_13381_EURIC.WP);
    WLD_INSERTNPC(0xd1eb, "PARTM3_MEDIC_STAND_01");
    WLD_INSERTNPC(0xeba1, "PARTM3_PRISON_KQ407_ORC");
}

func void KQ407_PREPARENPCINKALEB() {
    NPC_EXCHANGEROUTINE(NONE_11068_GRAYSON, "KQ407_KALEB");
    NONE_11068_GRAYSON.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(MIL_13382_HUXLAY, "KQ407_KALEB_WAIT");
    NPC_REFRESH(MIL_13382_HUXLAY);
    MIL_13382_HUXLAY.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(SLD_1000_ADELARD, "KQ407_KALEB");
    NPC_REFRESH(SLD_1000_ADELARD);
    TELEPORTNPCTOWP(0xcb0a, SLD_1000_ADELARD.WP);
    KQ407_ADELARD_RTNCHECK = 1;
    SLD_1000_ADELARD.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(SLD_1017_GAROS, "KQ407_KALEB");
    NPC_REFRESH(SLD_1017_GAROS);
    TELEPORTNPCTOWP(0xcb49, SLD_1017_GAROS.WP);
    KQ407_GAROS_RTNCHECK = 1;
    SLD_1017_GAROS.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(MIL_4001_OKTAV, "KQ407_KALEB");
    NPC_REFRESH(MIL_4001_OKTAV);
    KQ407_OKTAV_RTNCHECK = 1;
    TELEPORTNPCTOWP(0xce55, MIL_4001_OKTAV.WP);
    MIL_4001_OKTAV.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(MIL_4016_WEGAR, "KQ407_KALEB");
    NPC_REFRESH(MIL_4016_WEGAR);
    TELEPORTNPCTOWP(0xce6f, MIL_4016_WEGAR.WP);
    KQ407_WEIGAR_RTNCHECK = 1;
    MIL_4016_WEGAR.AIVAR[15] = TRUE;
}

func void KQ407_CAPTUREDORCCUTSCENE_PREPARE() {
    RESERVED_VAR_INT_13 = TRUE;
    FF_APPLYONCEEXT(0xf14e, 75, 4);
}

func void KQ407_CAPTUREDORCCUTSCENE_APPLY() {
    KQ407_CAPTUREDORCCUTSCENE_COUNT = (KQ407_CAPTUREDORCCUTSCENE_COUNT) + (1);
    if ((KQ407_CAPTUREDORCCUTSCENE_COUNT) == (4)) {
        CUTSCENE_START(0x168db);
    };
}

var int KQ407_CAPTUREDORCCUTSCENE_APPLY.KQ407_CAPTUREDORCCUTSCENE_COUNT = 0;
func void KQ407_CAPTUREDORC_REMOVECROSSBOW() {
    PRINTD("Usuwam kusz�");
    NPC_REMOVEINVITEMS(HERO, 0x8cf6, 1);
    HERO.AIVAR[4] = FALSE;
}

func void KQ407_CAPTUREDORC_END_APPLY() {
    KQ407_CAPTUREDORC_END_COUNT = (KQ407_CAPTUREDORC_END_COUNT) + (1);
    if ((KQ407_CAPTUREDORC_END_COUNT) == (4)) {
        RESERVED_VAR_INT_13 = FALSE;
        KQ407_AFTERORCCUTSCENE = TRUE;
        MDL_REMOVEOVERLAYMDS(HERO, "Humans_Crossbow_Dialogue.MDS");
        WLD_SENDUNTRIGGER("KQ407_CAPTUREDORC_01");
        WLD_SENDUNTRIGGER("KQ407_CAPTUREDORC_02");
        WLD_SENDUNTRIGGER("KQ407_CAPTUREDORC_03");
        WLD_SENDUNTRIGGER("KQ407_CAPTUREDORC_04");
        WLD_SENDUNTRIGGER("KQ407_CAPTUREDORC_05");
        WLD_SENDUNTRIGGER("KQ407_CAPTUREDORC_06");
        WLD_SENDUNTRIGGER("KQ407_CAPTUREDORC_07");
        MIL_13643_OLIVER.AIVAR[92] = FALSE;
        NONE_13654_CAPTUREDORC.AIVAR[92] = FALSE;
        AI_STOPLOOKAT(HERO);
        HERO.AIVAR[4] = FALSE;
        B_LOGENTRY(TOPIC_KQ407, LOG_KQ407_AFTERORCCUTSCENE);
        AI_OUTPUT(HERO, HERO, "DIA_Marvin_KQ407_Cutscene_15_20");
        AI_FUNCTION(HERO, 0xf150);
    };
}

var int KQ407_CAPTUREDORC_END_APPLY.KQ407_CAPTUREDORC_END_COUNT = 0;
func void KQ407_GARYSONCUTSCENE_PREPARE() {
    FF_APPLYONCEEXT(0xf154, 75, 4);
}

func void KQ407_GARYSONCUTSCENE_APPLY() {
    KQ407_GARYSONCUTSCENE_COUNT = (KQ407_GARYSONCUTSCENE_COUNT) + (1);
    if ((KQ407_GARYSONCUTSCENE_COUNT) == (4)) {
        CUTSCENE_START(0x168e9);
    };
}

var int KQ407_GARYSONCUTSCENE_APPLY.KQ407_GARYSONCUTSCENE_COUNT = 0;
func void KQ407_GARYSONCUTSCENEEND_APPLY() {
    KQ407_GARYSONCUTSCENEEND_COUNT = (KQ407_GARYSONCUTSCENEEND_COUNT) + (1);
    if ((KQ407_GARYSONCUTSCENEEND_COUNT) == (4)) {
        KQ407_GRAYSONPLANCUTSCENE = 3;
        WLD_SENDUNTRIGGER("KQ407_GRAYSON_01");
        WLD_SENDUNTRIGGER("KQ407_GRAYSON_02");
        WLD_SENDUNTRIGGER("KQ407_GRAYSON_03");
        WLD_SENDUNTRIGGER("KQ407_GRAYSON_04");
        WLD_SENDUNTRIGGER("KQ407_GRAYSON_05");
        WLD_SENDUNTRIGGER("KQ407_GRAYSON_06");
        WLD_SENDUNTRIGGER("KQ407_GRAYSON_07");
        WLD_SENDUNTRIGGER("KQ407_GRAYSON_08");
        WLD_SENDUNTRIGGER("KQ407_GRAYSON_09");
        WLD_SENDUNTRIGGER("KQ407_GRAYSON_10");
        WLD_SENDUNTRIGGER("KQ407_GRAYSON_11");
        WLD_SENDUNTRIGGER("KQ407_GRAYSON_12");
        WLD_SENDUNTRIGGER("KQ407_GRAYSON_13");
        NONE_11068_GRAYSON.AIVAR[92] = FALSE;
        HERO.AIVAR[4] = FALSE;
        B_LOGENTRY(TOPIC_KQ407, LOG_KQ407_GRAYSON_NEXTMOVE);
        B_STARTOTHERROUTINE(NONE_11068_GRAYSON, "KQ407_SMALLTALK");
        NPC_REFRESH(NONE_11068_GRAYSON);
        B_STARTOTHERROUTINE(VLK_6388_MORRIS, "KQ407_SMALLTALK");
        NPC_REFRESH(VLK_6388_MORRIS);
        MUSIC_DISABLEOVERRIDE();
        ORCCAMP_CHAPTER5_PART1();
        ORCCAMP_CHAPTER5_PART1_SPAWNNPC();
    };
}

var int KQ407_GARYSONCUTSCENEEND_APPLY.KQ407_GARYSONCUTSCENEEND_COUNT = 0;
func void KQ407_ORCCAMP_PART13_SPAWNNPC() {
    WLD_INSERTNPC(0xeb6b, "PART13_KQ407_ORC_LEADER");
    WLD_INSERTNPC(0xeb77, "FP_CAMPFIRE_ORCCAMP_PART13_02");
    WLD_INSERTNPC(0xeb87, "FP_ROAM_ORCCAMP_PART13_02");
    WLD_INSERTNPC(0xeb87, "FP_ROAM_ORCCAMP_PART13_13");
    WLD_INSERTNPC(0xeb76, "FP_ROAM_ORCCAMP_PART13_07");
    WLD_INSERTNPC(0xeb87, "FP_ROAM_ORCCAMP_PART13_04");
    WLD_INSERTNPC(0xeb87, "FP_ROAM_ORCCAMP_PART13_11");
    WLD_INSERTNPC(0xeb87, "FP_ROAM_ORCCAMP_PART13_24");
    WLD_INSERTNPC(0xeb87, "FP_ROAM_ORCCAMP_PART13_09");
    WLD_INSERTNPC(0xeb7e, "FP_CAMPFIRE_ORCCAMP_PART13_03");
    WLD_INSERTNPC(0xeb87, "FP_ROAM_ORCCAMP_PART13_16");
    WLD_INSERTNPC(0xeb87, "FP_ROAM_ORCCAMP_PART13_15");
    WLD_INSERTNPC(0xeb8d, "FP_ROAM_ORCCAMP_PART13_17");
    WLD_INSERTNPC(0xeb8d, "FP_ROAM_ORCCAMP_PART13_18");
    WLD_INSERTNPC(0xeb8d, "FP_ROAM_ORCCAMP_PART13_19");
    WLD_INSERTNPC(0xeb8d, "FP_ROAM_ORCCAMP_PART13_21");
    if ((NPC_ISDEAD(BDT_9007_BANDIT)) == (FALSE)) {
        B_REMOVENPC(0xe1e4);
    };
    if ((NPC_ISDEAD(BDT_9008_BANDIT)) == (FALSE)) {
        B_REMOVENPC(0xe1e6);
    };
}

func void KQ407_ORCCAMP_PART13_PREPAREWEIGAR() {
    KQ407_BLOCK_WEIGARQUEST = TRUE;
    B_STARTOTHERROUTINE(MIL_4016_WEGAR, "KQ407_ORCFIGHT_WAIT");
    KQ407_WEIGAR_RTNCHECK = 2;
    NPC_REFRESH(MIL_4016_WEGAR);
    WLD_INSERTNPC(0xeb1e, "PART13_KQ407_MILITIA_02");
    WLD_INSERTNPC(0xeb23, "PART13_KQ407_MILITIA_03");
    if ((NPC_ISDEAD(BDT_13459_MANHUNTER)) == (FALSE)) {
        B_REMOVENPC(0xe1f6);
    };
    if ((NPC_ISDEAD(BDT_13461_MANHUNTER)) == (FALSE)) {
        B_REMOVENPC(0xe1fc);
    };
    if ((NPC_ISDEAD(BDT_13460_HUNTINGDOG)) == (FALSE)) {
        B_REMOVENPC(0xe1f9);
    };
    if ((NPC_ISDEAD(BDT_13462_HUNTINGDOG)) == (FALSE)) {
        B_REMOVENPC(0xe1ff);
    };
}

func void KQ407_ORCCAMP_PART13_PREPARE() {
    KQ407_ORCCAMP_PART13_SPAWNNPC();
    KQ407_ORCCAMP_PART13_PREPAREWEIGAR();
    FF_APPLYONCEEXTGT(0xf15b, 0, -(1));
}

func void KQ407_ORCCAMP_PART13_APPLY() {
    if ((KQ407_ORCCAMP_PART13_COUNT) == (0)) {
        PRINTD("Rozpoczynam - KQ407_OrcCamp_Part13_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KQ407_MOVER_ORCCAMP_P13");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_03", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_04", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_05", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_06", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_07", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_08", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_09", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_10", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_11", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_12", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KQ407_MOVER_ORCCAMP_P13");
        KQ407_ORCCAMP_PART13_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - KQ407_OrcCamp_Part13_Apply");
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_04", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_05", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_06", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_07", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_08", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_09", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_10", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_11", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ407_VOB_ORCCAMP_P13_12", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf15b);
        KQ407_ORCCAMP_PART13_COUNT = 0;
    };
}

var int KQ407_ORCCAMP_PART13_APPLY.KQ407_ORCCAMP_PART13_COUNT = 0;
instance KQ407_ORCCAMP_PART13_APPLY.MOVER1(ZCMOVER)
var int KQ407_ORCCAMP_PART13_APPLY.MOVPTR1 = 0;
func void KQ407_ORCCAMP_PART17_SPAWNNPC() {
    WLD_INSERTNPC(0xeb87, "FP_ROAM_ORCCAMP_PART17_08");
    WLD_INSERTNPC(0xeb87, "FP_ROAM_ORCCAMP_PART17_13");
    WLD_INSERTNPC(0xeb7e, "FP_CAMPFIRE_ORCCAMP_PART17_04");
    WLD_INSERTNPC(0xeb87, "FP_ROAM_ORCCAMP_PART17_08");
    WLD_INSERTNPC(0xeb6c, "FP_CAMPFIRE_ORCCAMP_PART17_05");
}

func void KQ407_ORCCAMP_PART17_PREPAREADELARD() {
    B_STARTOTHERROUTINE(SLD_1000_ADELARD, "KQ407_ORCFIGHT_WAIT");
    KQ407_ADELARD_RTNCHECK = 2;
    NPC_REFRESH(SLD_1000_ADELARD);
    WLD_INSERTNPC(0xeb53, "PART17_KQ407_ADELARD_STAND_02");
    WLD_INSERTNPC(0xeb57, "PART17_KQ407_ADELARD_STAND_03");
}

func void KQ407_ORCCAMP_PART17_PREPARE() {
    KQ407_ORCCAMP_PART17_SPAWNNPC();
    KQ407_ORCCAMP_PART17_PREPAREADELARD();
}

func void KQ407_ORCCAMP_PART6_SPAWNNPC() {
    WLD_INSERTNPC(0xeb6d, "FP_CAMPFIRE_PART6_FARM_ORC_11");
    WLD_INSERTNPC(0xeb77, "FP_CAMPFIRE_PART6_FARM_ORC_10");
    WLD_INSERTNPC(0xeb77, "FP_CAMPFIRE_PART6_FARM_ORC_09");
}

func void KQ407_ORCCAMP_PART6_PREPAREEURIC() {
    NPC_EXCHANGEROUTINE(MIL_13381_EURIC, "KQ407_ORCFIGHT_WAIT");
    B_STARTOTHERROUTINE(MIL_13382_HUXLAY, "KQ407_ORCFIGHT_WAIT");
    NPC_REFRESH(MIL_13382_HUXLAY);
    WLD_INSERTNPC(0xeb30, "PART4_KQ407_EURIC_STAND_02");
    WLD_INSERTNPC(0xeb34, "PART4_KQ407_EURIC_STAND_03");
    WLD_INSERTNPC(0xeb38, "PART4_KQ407_EURIC_STAND_04");
    WLD_INSERTNPC(0xeb3c, "PART4_KQ407_EURIC_STAND_05");
}

func void KQ407_ORCCAMP_PART6_PREPARE() {
    KQ407_ORCCAMP_PART6_SPAWNNPC();
    KQ407_ORCCAMP_PART6_PREPAREEURIC();
}

func void KQ407_ORCCAMP_PART1_SPAWNNPC() {
    WLD_INSERTNPC(0xeb6e, "FP_CAMPFIRE_PART1_ORCCAMP_01");
    WLD_INSERTNPC(0xeb87, "FP_ROAM_PART1_ORCCAMP_04");
    WLD_INSERTNPC(0xeb87, "FP_ROAM_PART1_ORCCAMP_05");
}

func void KQ407_ORCCAMP_PART1_PREPAREGAROS() {
    NPC_EXCHANGEROUTINE(SLD_1017_GAROS, "KQ407_ORCFIGHT_WAIT");
    KQ407_GAROS_RTNCHECK = 2;
    WLD_INSERTNPC(0xeb5b, "PART1_KQ407_GAROS_STAND_02");
    WLD_INSERTNPC(0xeb5f, "PART1_KQ407_GAROS_STAND_03");
    if (HLP_ISVALIDNPC(NONE_2281_FISHERMAN)) {
        if ((NPC_ISDEAD(NONE_2281_FISHERMAN)) == (FALSE)) {
            B_REMOVENPC(0xd8d0);
        };
    };
    if (HLP_ISVALIDNPC(NONE_2280_FISHERMAN)) {
        if ((NPC_ISDEAD(NONE_2280_FISHERMAN)) == (FALSE)) {
            B_REMOVENPC(0xd8cd);
        };
    };
    if (HLP_ISVALIDNPC(NONE_2279_FISHERMAN)) {
        if ((NPC_ISDEAD(NONE_2279_FISHERMAN)) == (FALSE)) {
            B_REMOVENPC(0xd8ca);
        };
    };
    if (HLP_ISVALIDNPC(NONE_13522_FISHERMAN)) {
        if ((NPC_ISDEAD(NONE_13522_FISHERMAN)) == (FALSE)) {
            B_REMOVENPC(0xd920);
        };
    };
    if (HLP_ISVALIDNPC(BAU_6373_DUNCAN)) {
        if ((NPC_ISDEAD(BAU_6373_DUNCAN)) == (FALSE)) {
            B_REMOVENPC(0xd8eb);
        };
    };
    if (HLP_ISVALIDNPC(NONE_14176_SETTLER)) {
        if ((NPC_ISDEAD(NONE_14176_SETTLER)) == (FALSE)) {
            B_REMOVENPC(0xd8c1);
        };
    };
    if (HLP_ISVALIDNPC(NONE_14177_SETTLER)) {
        if ((NPC_ISDEAD(NONE_14177_SETTLER)) == (FALSE)) {
            B_REMOVENPC(0xd8c4);
        };
    };
    if (HLP_ISVALIDNPC(NONE_14178_SETTLER)) {
        if ((NPC_ISDEAD(NONE_14178_SETTLER)) == (FALSE)) {
            B_REMOVENPC(0xd8c7);
        };
    };
}

func void KQ407_ORCCAMP_PART1_PREPARE() {
    KQ407_ORCCAMP_PART1_SPAWNNPC();
    KQ407_ORCCAMP_PART1_PREPAREGAROS();
}

func void KQ407_ORCCAMP_PART15_SPAWNNPC() {
    WLD_INSERTNPC(0xeb6f, "FP_CAMPFIRE_ORCCAMP_PART15_01");
    WLD_INSERTNPC(0xeb7e, "FP_CAMPFIRE_ORCCAMP_PART15_02");
    WLD_INSERTNPC(0xeb7e, "FP_CAMPFIRE_ORCCAMP_PART15_04");
    WLD_INSERTNPC(0xeb77, "FP_CAMPFIRE_ORCCAMP_PART15_03");
    WLD_INSERTNPC(0xeb8d, "FP_ROAM_ORCCAMP_PART15_01");
    WLD_INSERTNPC(0xeb8d, "FP_ROAM_ORCCAMP_PART15_02");
    WLD_INSERTNPC(0xeb8d, "FP_ROAM_ORCCAMP_PART15_03");
    WLD_INSERTNPC(0xeb8d, "FP_ROAM_ORCCAMP_PART15_04");
    WLD_INSERTNPC(0xeb87, "FP_ROAM_ORCCAMP_PART15_05");
    WLD_INSERTNPC(0xeb87, "FP_ROAM_ORCCAMP_PART15_06");
    if ((NPC_ISDEAD(BLACK_RAT_PART15_01)) == (FALSE)) {
        B_REMOVENPC(0xc531);
    };
    if ((NPC_ISDEAD(BLACK_RAT_PART15_02)) == (FALSE)) {
        B_REMOVENPC(0xc532);
    };
    if ((NPC_ISDEAD(BLACK_RAT_PART15_03)) == (FALSE)) {
        B_REMOVENPC(0xc533);
    };
}

func void KQ407_ORCCAMP_PART15_PREPAREOKTAV() {
    B_STARTOTHERROUTINE(MIL_4001_OKTAV, "KQ407_ORCFIGHT_WAIT");
    KQ407_OKTAV_RTNCHECK = 2;
    NPC_REFRESH(MIL_4001_OKTAV);
    WLD_INSERTNPC(0xeb28, "PART17_KQ407_OKTAV_STAND_02");
    WLD_INSERTNPC(0xeb2c, "PART17_KQ407_OKTAV_STAND_03");
}

func void KQ407_ORCCAMP_PART15_PREPARE() {
    KQ407_ORCCAMP_PART15_SPAWNNPC();
    KQ407_ORCCAMP_PART15_PREPAREOKTAV();
    FF_APPLYONCEEXTGT(0xf16b, 0, -(1));
}

func void KQ407_ORCCAMP_PART15_APPLY() {
    if ((KQ407_ORCCAMP_PART15_COUNT) == (0)) {
        PRINTD("Rozpoczynam - KQ407_OrcCamp_Part15_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("P15_MOVER_ORCCAMP_CAVE");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("P15_ORCCAMP_CAVE_VOB_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("P15_ORCCAMP_CAVE_VOB_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("P15_ORCCAMP_CAVE_VOB_03", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("P15_ORCCAMP_CAVE_VOB_04", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("P15_MOVER_ORCCAMP_CAVE");
        KQ407_ORCCAMP_PART15_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - KQ407_OrcCamp_Part15_Apply");
        CHANGEVOBCOLLISION("P15_ORCCAMP_CAVE_VOB_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("P15_ORCCAMP_CAVE_VOB_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("P15_ORCCAMP_CAVE_VOB_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("P15_ORCCAMP_CAVE_VOB_04", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf16b);
        KQ407_ORCCAMP_PART15_COUNT = 0;
    };
}

var int KQ407_ORCCAMP_PART15_APPLY.KQ407_ORCCAMP_PART15_COUNT = 0;
instance KQ407_ORCCAMP_PART15_APPLY.MOVER1(ZCMOVER)
var int KQ407_ORCCAMP_PART15_APPLY.MOVPTR1 = 0;
func void KQ407_WEIGAR_ATTACKORCS() {
    MDL_REMOVEOVERLAYMDS(MIL_13659_MILITIA, "Humans_CrossbowIdle.mds");
    MDL_REMOVEOVERLAYMDS(MIL_13660_MILITIA, "Humans_CrossbowIdle.mds");
    MDL_REMOVEOVERLAYMDS(MIL_4016_WEGAR, "Humans_CrossbowIdle.mds");
    B_STARTOTHERROUTINE(MIL_13659_MILITIA, "KQ407_ORCFIGHT");
    NPC_REFRESH(MIL_13659_MILITIA);
    MIL_13659_MILITIA.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(MIL_13660_MILITIA, "KQ407_ORCFIGHT");
    NPC_REFRESH(MIL_13660_MILITIA);
    MIL_13660_MILITIA.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(MIL_4016_WEGAR, "KQ407_ORCFIGHT");
    KQ407_WEIGAR_RTNCHECK = 3;
    MIL_4016_WEGAR.AIVAR[15] = TRUE;
}

func void KQ407_WEIGAR_ATTACKORCS_TELEPORT() {
    KQ407_CHANGEWEIGARRTN = 1;
    FADESCREENTOBLACKF(1, 0xf171, 1000);
}

func void KQ407_WEIGAR_ATTACKORCS_TELEPORT_FADESCREEN() {
    MDL_REMOVEOVERLAYMDS(MIL_13659_MILITIA, "Humans_CrossbowIdle.mds");
    MDL_REMOVEOVERLAYMDS(MIL_13660_MILITIA, "Humans_CrossbowIdle.mds");
    MDL_REMOVEOVERLAYMDS(MIL_4016_WEGAR, "Humans_CrossbowIdle.mds");
    B_STARTOTHERROUTINE(MIL_13659_MILITIA, "KQ407_ORCFIGHT_TELEPORT");
    NPC_REFRESH(MIL_13659_MILITIA);
    MIL_13659_MILITIA.AIVAR[15] = TRUE;
    TELEPORTNPCTOWP(0xeb1e, MIL_13659_MILITIA.WP);
    B_STARTOTHERROUTINE(MIL_13660_MILITIA, "KQ407_ORCFIGHT_TELEPORT");
    NPC_REFRESH(MIL_13660_MILITIA);
    MIL_13660_MILITIA.AIVAR[15] = TRUE;
    TELEPORTNPCTOWP(0xeb23, MIL_13660_MILITIA.WP);
    B_STARTOTHERROUTINE(MIL_4016_WEGAR, "KQ407_ORCFIGHT_TELEPORT");
    KQ407_WEIGAR_RTNCHECK = 4;
    NPC_REFRESH(MIL_4016_WEGAR);
    MIL_4016_WEGAR.AIVAR[15] = TRUE;
    TELEPORTNPCTOWP(0xce6f, MIL_4016_WEGAR.WP);
    TELEPORTNPCTOWP(0x71b, "PART13_PATH2_11");
    FADESCREENFROMBLACK(1);
    HERO.AIVAR[4] = FALSE;
}

func void KQ407_WEIGAR_AFTERORCS() {
    B_STARTOTHERROUTINE(MIL_13659_MILITIA, TOT);
    NPC_REFRESH(MIL_13659_MILITIA);
    MIL_13659_MILITIA.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(MIL_13660_MILITIA, TOT);
    NPC_REFRESH(MIL_13660_MILITIA);
    MIL_13660_MILITIA.AIVAR[15] = FALSE;
    NPC_EXCHANGEROUTINE(MIL_4016_WEGAR, "MASTERCROSSBOW");
    MIL_4016_WEGAR.AIVAR[15] = FALSE;
}

func void KQ407_ADELARD_ATTACKORCS() {
    B_STARTOTHERROUTINE(SLD_13657_ARAXOS, "KQ407_ORCFIGHT");
    NPC_REFRESH(SLD_13657_ARAXOS);
    SLD_13657_ARAXOS.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(SLD_13658_ARAXOS, "KQ407_ORCFIGHT");
    NPC_REFRESH(SLD_13658_ARAXOS);
    SLD_13658_ARAXOS.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "KQ407_ORCFIGHT");
    KQ407_ADELARD_RTNCHECK = 3;
    SLD_1000_ADELARD.AIVAR[15] = TRUE;
}

func void KQ407_ADELARD_AFTERORCS() {
    B_STARTOTHERROUTINE(SLD_13657_ARAXOS, TOT);
    NPC_REFRESH(SLD_13657_ARAXOS);
    SLD_13657_ARAXOS.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(SLD_13658_ARAXOS, TOT);
    NPC_REFRESH(SLD_13658_ARAXOS);
    SLD_13658_ARAXOS.AIVAR[15] = FALSE;
    NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, START);
    SLD_1000_ADELARD.AIVAR[15] = FALSE;
}

func void KQ407_OKTAV_ATTACKORCS() {
    B_STARTOTHERROUTINE(MIL_13664_MILITIA, "KQ407_ORCFIGHT");
    NPC_REFRESH(MIL_13664_MILITIA);
    MIL_13664_MILITIA.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(MIL_13663_MILITIA, "KQ407_ORCFIGHT");
    NPC_REFRESH(MIL_13663_MILITIA);
    MIL_13663_MILITIA.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "KQ407_ORCFIGHT");
    KQ407_OKTAV_RTNCHECK = 3;
    MIL_4001_OKTAV.AIVAR[15] = TRUE;
}

func void KQ407_OKTAV_AFTERORCS() {
    B_STARTOTHERROUTINE(MIL_13664_MILITIA, TOT);
    NPC_REFRESH(MIL_13664_MILITIA);
    MIL_13664_MILITIA.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(MIL_13664_MILITIA, TOT);
    NPC_REFRESH(MIL_13664_MILITIA);
    MIL_13664_MILITIA.AIVAR[15] = FALSE;
    NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, START);
    MIL_4001_OKTAV.AIVAR[15] = FALSE;
}

func void KQ407_GAROS_ATTACKORCS() {
    SLD_1017_GAROS.AIVAR[15] = TRUE;
    SLD_13661_ARAXOS.AIVAR[15] = TRUE;
    SLD_13662_ARAXOS.AIVAR[15] = TRUE;
    FADESCREENTOBLACKF(1, 0xf178, 1000);
}

func void KQ407_GAROS_ATTACKORCS_FADESCREEN() {
    KQ407_FIGHTLIGHTHOUSE = 1;
    TELEPORTNPCTOWP(0x71b, "PART1_FISHER_BEACH_HERO_02");
    B_STARTOTHERROUTINE(SLD_1017_GAROS, "KQ407_ORCFIGHT");
    KQ407_GAROS_RTNCHECK = 3;
    NPC_REFRESH(SLD_1017_GAROS);
    TELEPORTNPCTOWP(0xcb49, SLD_1017_GAROS.WP);
    B_STARTOTHERROUTINE(SLD_13661_ARAXOS, "KQ407_ORCFIGHT");
    NPC_REFRESH(SLD_13661_ARAXOS);
    TELEPORTNPCTOWP(0xeb5b, SLD_13661_ARAXOS.WP);
    B_STARTOTHERROUTINE(SLD_13662_ARAXOS, "KQ407_ORCFIGHT");
    NPC_REFRESH(SLD_13662_ARAXOS);
    TELEPORTNPCTOWP(0xeb5f, SLD_13662_ARAXOS.WP);
    KQ407_PART1_BOATSTATUS = 1;
    WLD_SENDTRIGGER("PART1_FASTTRAVEL_BOAT_01");
    WLD_SENDTRIGGER("PART1_FASTTRAVEL_BOAT_02");
    HERO.AIVAR[4] = FALSE;
    WLD_SETTIME(23, 20);
    FADESCREENFROMBLACK(1);
}

func void KQ407_GAROS_AFTERFIGHT() {
    FADESCREENTOBLACKF(1, 0xf17a, 1000);
}

func void KQ407_GAROS_AFTERFIGHT_FADESCREEN() {
    TELEPORTNPCTOWP(0x71b, "PART1_FISHER_BEACH_HERO");
    KQ407_PART1_BOATSTATUS = 2;
    WLD_SENDTRIGGER("PART1_FASTTRAVEL_BOAT_01");
    WLD_SENDTRIGGER("PART1_FASTTRAVEL_BOAT_02");
    HERO.AIVAR[4] = FALSE;
    B_PASSTIME(1);
    FADESCREENFROMBLACK(1);
}

func void KQ407_EURIC_ATTACKORCS() {
    B_STARTOTHERROUTINE(MIL_13665_GUARDSMAN, "KQ407_ORCFIGHT");
    NPC_REFRESH(MIL_13665_GUARDSMAN);
    MIL_13665_GUARDSMAN.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(MIL_13666_GUARDSMAN, "KQ407_ORCFIGHT");
    NPC_REFRESH(MIL_13666_GUARDSMAN);
    MIL_13666_GUARDSMAN.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(MIL_13667_GUARDSMAN, "KQ407_ORCFIGHT");
    NPC_REFRESH(MIL_13667_GUARDSMAN);
    MIL_13667_GUARDSMAN.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(MIL_13668_GUARDSMAN, "KQ407_ORCFIGHT");
    NPC_REFRESH(MIL_13668_GUARDSMAN);
    MIL_13668_GUARDSMAN.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(MIL_13382_HUXLAY, "KQ407_ORCFIGHT");
    NPC_REFRESH(MIL_13382_HUXLAY);
    MIL_13382_HUXLAY.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(MIL_13381_EURIC, "KQ407_ORCFIGHT");
    MIL_13381_EURIC.AIVAR[15] = TRUE;
}

func void KQ407_EURIC_AFTERORCS() {
    B_STARTOTHERROUTINE(MIL_13665_GUARDSMAN, TOT);
    NPC_REFRESH(MIL_13665_GUARDSMAN);
    MIL_13665_GUARDSMAN.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(MIL_13666_GUARDSMAN, TOT);
    NPC_REFRESH(MIL_13666_GUARDSMAN);
    MIL_13666_GUARDSMAN.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(MIL_13667_GUARDSMAN, TOT);
    NPC_REFRESH(MIL_13667_GUARDSMAN);
    MIL_13667_GUARDSMAN.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(MIL_13668_GUARDSMAN, TOT);
    NPC_REFRESH(MIL_13668_GUARDSMAN);
    MIL_13668_GUARDSMAN.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(MIL_13382_HUXLAY, "KQ407_KALEB");
    NPC_REFRESH(MIL_13382_HUXLAY);
    MIL_13382_HUXLAY.AIVAR[15] = FALSE;
    NPC_EXCHANGEROUTINE(MIL_13381_EURIC, "KALEBHOUSE");
    MIL_13381_EURIC.AIVAR[15] = FALSE;
}

