var int INEXTREMO_CANPLAYCONCERT = 0;
func void KQ404_SPAWNNPC() {
    INEXTREMO_CANPLAYCONCERT = TRUE;
    PRINTD("InExtremo przyby�o!");
    if (HLP_ISVALIDNPC(VLK_6012_WORKER)) {
        B_STARTOTHERROUTINE(VLK_6012_WORKER, "KQ404_CONCERT");
    };
    if (HLP_ISVALIDNPC(VLK_6014_GIRL)) {
        B_STARTOTHERROUTINE(VLK_6014_GIRL, "KQ404_CONCERT");
    };
    if (HLP_ISVALIDNPC(VLK_6082_GUY)) {
        B_STARTOTHERROUTINE(VLK_6082_GUY, "KQ404_CONCERT");
    };
    if (HLP_ISVALIDNPC(VLK_6009_GIRL)) {
        B_STARTOTHERROUTINE(VLK_6009_GIRL, "KQ404_CONCERT");
    };
    if (HLP_ISVALIDNPC(VLK_6008_GUY)) {
        B_STARTOTHERROUTINE(VLK_6008_GUY, "KQ404_CONCERT");
    };
    if (HLP_ISVALIDNPC(VLK_13380_GIRL)) {
        B_STARTOTHERROUTINE(VLK_13380_GIRL, "KQ404_CONCERT");
    };
    if (HLP_ISVALIDNPC(VLK_6084_GUY)) {
        B_STARTOTHERROUTINE(VLK_6084_GUY, "KQ404_CONCERT");
    };
    if (HLP_ISVALIDNPC(VLK_13374_GIRL)) {
        B_STARTOTHERROUTINE(VLK_13374_GIRL, "KQ404_CONCERT");
    };
    if (HLP_ISVALIDNPC(VLK_13375_GIRL)) {
        B_STARTOTHERROUTINE(VLK_13375_GIRL, "KQ404_CONCERT");
    };
    if (HLP_ISVALIDNPC(VLK_6066_GIRL)) {
        B_STARTOTHERROUTINE(VLK_6066_GIRL, "KQ404_CONCERT");
    };
    if (HLP_ISVALIDNPC(MIL_13381_EURIC)) {
        B_STARTOTHERROUTINE(MIL_13381_EURIC, "KQ404_CONCERT");
    };
    if (HLP_ISVALIDNPC(MIL_13382_HUXLAY)) {
        B_STARTOTHERROUTINE(MIL_13382_HUXLAY, "KQ404_CONCERT");
    };
    if (HLP_ISVALIDNPC(MIL_4011_HARBGUARD)) {
        B_STARTOTHERROUTINE(MIL_4011_HARBGUARD, "KQ404_CONCERT");
    };
    if (HLP_ISVALIDNPC(MIL_4005_HARBGUARD)) {
        B_STARTOTHERROUTINE(MIL_4005_HARBGUARD, "KQ404_CONCERT");
    };
    if (HLP_ISVALIDNPC(NONE_13861_SOUTHERNER)) {
        B_STARTOTHERROUTINE(NONE_13861_SOUTHERNER, "KQ404");
    };
    if (HLP_ISVALIDNPC(NONE_13862_SOUTHERNER)) {
        B_STARTOTHERROUTINE(NONE_13862_SOUTHERNER, "KQ404");
    };
    if (NPC_ISDEAD(BDT_9200_BANDIT)) {
        B_REMOVENPC(0xd649);
    };
    if (NPC_ISDEAD(BDT_9201_BANDIT)) {
        B_REMOVENPC(0xd64d);
    };
    if (NPC_ISDEAD(BDT_9202_BANDIT)) {
        B_REMOVENPC(0xd651);
    };
    WLD_INSERTNPC(0xd4ac, "KQ404_CONCERT_DRPYMONTE");
    WLD_INSERTNPC(0xd4b0, "KQ404_CONCERT_THEFLAIL");
    WLD_INSERTNPC(0xd4b4, "KQ404_CONCERT_THOMASTHEFORGER");
    WLD_INSERTNPC(0xd4b8, "KQ404_CONCERT_UNICORN");
    WLD_INSERTNPC(0xd4bc, "KQ404_CONCERT_YELLOWPFEIFFER");
    WLD_INSERTNPC(0xd4c0, "KQ404_CONCERT_LUTTER");
    WLD_INSERTNPC(0xd4c4, "KQ404_CONCERT_FLEX");
}

func void UNICORN_KQ404_CONCERT_TELEPORTNPC() {
    TELEPORTNPCTOWP(0x71b, "KQ404_VIEWER_HERO");
    TELEPORTNPCTOWP(0xd4b8, NONE_1393_INEXTREMO_UNICORN.WP);
}

func void UNICORN_KQ404_CONCERT_CAMERA_START() {
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("KQ404_CONCERT_01");
    TELEPORTNPCTOWP(0x71b, "KQ404_VIEWER_HERO");
    TELEPORTNPCTOWP(0xd4ac, NONE_1390_INEXTREMO_DRPYMONTE.WP);
    TELEPORTNPCTOWP(0xd4b0, NONE_1391_INEXTREMO_THEFLAIL.WP);
    TELEPORTNPCTOWP(0xd4b4, NONE_1392_INEXTREMO_THOMASTHEFORGER.WP);
    TELEPORTNPCTOWP(0xd4b8, NONE_1393_INEXTREMO_UNICORN.WP);
    TELEPORTNPCTOWP(0xd4bc, NONE_1394_INEXTREMO_YELLOWPFEIFFER.WP);
    TELEPORTNPCTOWP(0xd4c0, NONE_1395_INEXTREMO_LUTTER.WP);
    TELEPORTNPCTOWP(0xd4c4, NONE_1396_INEXTREMO_FLEX.WP);
    AI_REMOVEWEAPON(HERO);
}

func void UNICORN_KQ404_CONCERT_CAMERA_01() {
    WLD_SENDTRIGGER("KQ404_CONCERT_03");
    WLD_SENDUNTRIGGER("KQ404_CONCERT_02");
}

func void UNICORN_KQ404_CONCERT_CAMERA_02() {
    WLD_SENDTRIGGER("KQ404_CONCERT_04");
    WLD_SENDUNTRIGGER("KQ404_CONCERT_03");
}

func void UNICORN_KQ404_CONCERT_CAMERA_03() {
    WLD_SENDTRIGGER("KQ404_CONCERT_06");
    WLD_SENDUNTRIGGER("KQ404_CONCERT_04");
}

func void UNICORN_KQ404_CONCERT_CAMERA_04() {
    WLD_SENDTRIGGER("KQ404_CONCERT_05");
    WLD_SENDUNTRIGGER("KQ404_CONCERT_06");
}

func void UNICORN_KQ404_CONCERT_CAMERA_05() {
    WLD_SENDTRIGGER("KQ404_CONCERT_07");
    WLD_SENDUNTRIGGER("KQ404_CONCERT_06");
}

func void UNICORN_KQ404_CONCERT_CAMERA_06() {
    WLD_SENDTRIGGER("KQ404_CONCERT_08");
    WLD_SENDUNTRIGGER("KQ404_CONCERT_07");
}

func void UNICORN_KQ404_CONCERT_CAMERA_07() {
    WLD_SENDTRIGGER("KQ404_CONCERT_09");
    WLD_SENDUNTRIGGER("KQ404_CONCERT_08");
}

func void UNICORN_KQ404_CONCERT_CAMERA_08() {
    WLD_SENDTRIGGER("KQ404_CONCERT_02");
    WLD_SENDUNTRIGGER("KQ404_CONCERT_01");
    UNICORN_KQ404_CONCERT_TELEPORTNPC();
}

func void UNICORN_KQ404_CONCERT_CAMERA_FINISH() {
    HERO.AIVAR[4] = TRUE;
    FADESCREENTOBLACKF(1, 0xf18a, 1000);
}

func void UNICORN_KQ404_CONCERT_CAMERA_FINISH_FADESCREEN() {
    FF_APPLYONCEEXT(0xf18b, 75, 4);
}

func void UNICORN_KQ404_CONCERT_FINISHDIALOGUE() {
    UNICORN_KQ404_CONCERT_COUNT = (UNICORN_KQ404_CONCERT_COUNT) + (1);
    if ((UNICORN_KQ404_CONCERT_COUNT) == (4)) {
        HERO.AIVAR[4] = FALSE;
        FADESCREENFROMBLACK(1);
        WLD_SENDUNTRIGGER("KQ404_CONCERT_01");
        WLD_SENDUNTRIGGER("KQ404_CONCERT_02");
        WLD_SENDUNTRIGGER("KQ404_CONCERT_03");
        WLD_SENDUNTRIGGER("KQ404_CONCERT_04");
        WLD_SENDUNTRIGGER("KQ404_CONCERT_05");
        WLD_SENDUNTRIGGER("KQ404_CONCERT_06");
        WLD_SENDUNTRIGGER("KQ404_CONCERT_07");
        WLD_SENDUNTRIGGER("KQ404_CONCERT_08");
        WLD_SENDUNTRIGGER("KQ404_CONCERT_09");
        DIACAM_ENABLE();
        WLD_SETTIME(9, 0);
        if ((KQ404_INEXTREMO_BAITED) == (TRUE)) {
            B_STARTOTHERROUTINE(MIL_13381_EURIC, "KQ404_CONCERT");
            NPC_REFRESH(MIL_13381_EURIC);
            TELEPORTNPCTOWP(0xd1ca, MIL_13381_EURIC.WP);
        };
    };
}

var int UNICORN_KQ404_CONCERT_FINISHDIALOGUE.UNICORN_KQ404_CONCERT_COUNT = 0;
func void KQ404_VLADANCUTSCENE_APPLY() {
    KQ404_VLADANCUTSCENE_COUNT = (KQ404_VLADANCUTSCENE_COUNT) + (1);
    if ((KQ404_VLADANCUTSCENE_COUNT) == (4)) {
        CUTSCENE_START(0x168ce);
    };
}

var int KQ404_VLADANCUTSCENE_APPLY.KQ404_VLADANCUTSCENE_COUNT = 0;
func void KQ404_TORTURE_PREPARENPC() {
    INEXTREMO_CANPLAYCONCERT = FALSE;
    WLD_INSERTNPC(0xd4c8, "HARBOUR_DARKSECRETS_FLEX");
    NONE_1396_INEXTREMO_FLEX_SACK.AIVAR[4] = TRUE;
    B_REMOVENPC(0xd4c4);
    B_STARTOTHERROUTINE(NONE_1390_INEXTREMO_DRPYMONTE, "KQ404_TORTURE");
    B_STARTOTHERROUTINE(NONE_1391_INEXTREMO_THEFLAIL, "KQ404_TORTURE");
    B_STARTOTHERROUTINE(NONE_1392_INEXTREMO_THOMASTHEFORGER, "KQ404_TORTURE");
    B_STARTOTHERROUTINE(NONE_1393_INEXTREMO_UNICORN, "KQ404_TORTURE");
    B_STARTOTHERROUTINE(NONE_1394_INEXTREMO_YELLOWPFEIFFER, "KQ404_TORTURE");
    B_STARTOTHERROUTINE(NONE_1395_INEXTREMO_LUTTER, "KQ404_TORTURE");
    B_STARTOTHERROUTINE(MIL_13382_HUXLAY, "KQ404_BROTHEL");
    NPC_REFRESH(MIL_13382_HUXLAY);
    TELEPORTNPCTOWP(0xd1d7, MIL_13382_HUXLAY.WP);
    if (HLP_ISVALIDNPC(VLK_6012_WORKER)) {
        B_STARTOTHERROUTINE(VLK_6012_WORKER, START);
    };
    if (HLP_ISVALIDNPC(VLK_6014_GIRL)) {
        B_STARTOTHERROUTINE(VLK_6014_GIRL, START);
    };
    if (HLP_ISVALIDNPC(VLK_6082_GUY)) {
        B_STARTOTHERROUTINE(VLK_6082_GUY, START);
    };
    if (HLP_ISVALIDNPC(VLK_6009_GIRL)) {
        if ((LOG_GETSTATUS(MIS_CQ004)) == (LOG_SUCCESS)) {
            B_STARTOTHERROUTINE(VLK_6009_GIRL, "TAVERN");
        } else {
            B_STARTOTHERROUTINE(VLK_6009_GIRL, START);
        };
    };
    if (HLP_ISVALIDNPC(VLK_6008_GUY)) {
        B_STARTOTHERROUTINE(VLK_6008_GUY, START);
    };
    if (HLP_ISVALIDNPC(VLK_13380_GIRL)) {
        B_STARTOTHERROUTINE(VLK_13380_GIRL, START);
    };
    if (HLP_ISVALIDNPC(VLK_6084_GUY)) {
        B_STARTOTHERROUTINE(VLK_6084_GUY, START);
    };
    if (HLP_ISVALIDNPC(VLK_13374_GIRL)) {
        B_STARTOTHERROUTINE(VLK_13374_GIRL, START);
    };
    if (HLP_ISVALIDNPC(VLK_13375_GIRL)) {
        B_STARTOTHERROUTINE(VLK_13375_GIRL, START);
    };
    if (HLP_ISVALIDNPC(VLK_6066_GIRL)) {
        B_STARTOTHERROUTINE(VLK_6066_GIRL, START);
    };
}

func void KQ404_VLADAN_ENABLECAMERA_APPLY() {
    KQ404_VLADAN_ENABLECAMERA_COUNT = (KQ404_VLADAN_ENABLECAMERA_COUNT) + (1);
    if ((KQ404_VLADAN_ENABLECAMERA_COUNT) == (4)) {
        KQ404_VLADANCUTSCENEENABLE = 4;
        WLD_SENDUNTRIGGER("KM_BROTHEL_SECRET_01");
        WLD_SENDUNTRIGGER("KM_BROTHEL_SECRET_02");
        WLD_SENDUNTRIGGER("KM_BROTHEL_SECRET_03");
        DIACAM_ENABLE();
        KQ404_TORTURE_PREPARENPC();
    };
}

var int KQ404_VLADAN_ENABLECAMERA_APPLY.KQ404_VLADAN_ENABLECAMERA_COUNT = 0;
func void KQ404_TORTURE_FLEXSTATS() {
    NONE_1396_INEXTREMO_FLEX_SACK.FLAGS = NPC_FLAG_IMPORTANT;
    NONE_1396_INEXTREMO_FLEX.AIVAR[15] = FALSE;
    if ((KQ404_FLEXATTACK) == (0)) {
        KQ404_FLEXATTACK = 1;
        NONE_1396_INEXTREMO_FLEX_SACK.AIVAR[96] = 1;
        NONE_1396_INEXTREMO_FLEX_SACK.ATTRIBUTE[0] = 5;
        NONE_1396_INEXTREMO_FLEX_SACK.ATTRIBUTE[1] = 5;
    };
    KQ404_FLEXATTACK = 1;
    NONE_1396_INEXTREMO_FLEX_SACK.AIVAR[96] = 1;
    NONE_1396_INEXTREMO_FLEX_SACK.ATTRIBUTE[0] = 45;
    NONE_1396_INEXTREMO_FLEX_SACK.ATTRIBUTE[1] = 45;
}

func void KQ404_TORTURE_FLEXSTATS_BLOCK() {
    NONE_1396_INEXTREMO_FLEX_SACK.FLAGS = 2;
    NONE_1396_INEXTREMO_FLEX_SACK.AIVAR[96] = 0;
    KQ404_FLEXATTACK = 0;
}

func void KQ404_TORTURE_HUXLAYATTACK() {
    PRINTD("Huxlay atakuje");
    AI_UNEQUIPWEAPONS(MIL_13382_HUXLAY);
    NPC_REMOVEINVITEMS(MIL_13382_HUXLAY, 0x8651, 1);
    MIL_13382_HUXLAY.FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    NPC_REMOVEINVITEMS(MIL_13382_HUXLAY, 0x84e5, 1);
    NPC_EXCHANGEROUTINE(MIL_13382_HUXLAY, "KQ404_TORTURE");
}

func void KQ404_TORTURE_ENABLEPLAYER() {
    HERO.AIVAR[4] = TRUE;
    FF_APPLYONCEEXT(0xf196, 75, 4);
}

func void KQ404_TORTURE_ENABLEPLAYER_APPLY() {
    KQ404_TORTURE_ENABLEPLAYER_COUNT = (KQ404_TORTURE_ENABLEPLAYER_COUNT) + (1);
    if ((KQ404_TORTURE_ENABLEPLAYER_COUNT) == (4)) {
        PRINTD("Gracz wolny");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_01");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_02");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_03");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_04");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_05");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_06");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_07");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_08");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_09");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_10");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_11");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_12");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_13");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_14");
        WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_15");
        DIACAM_ENABLE();
        KQ404_TORTURE_ENABLEPLAYER_COUNT = 0;
        if (((NPC_KNOWSINFO(HERO, 0x100d9)) && (NPC_KNOWSINFO(HERO, 0x100d4))) && (NPC_KNOWSINFO(HERO, 0x100de))) {
            if ((KQ404_FINISHWAY) == (0)) {
                B_STARTOTHERROUTINE(MIL_13382_HUXLAY, "KQ404_TORTURE_WAIT");
                NPC_REFRESH(MIL_13382_HUXLAY);
            };
        };
    };
}

var int KQ404_TORTURE_ENABLEPLAYER_APPLY.KQ404_TORTURE_ENABLEPLAYER_COUNT = 0;
func void DIA_HUXLAY_KQ404_BEATHIM_CAMERA_01() {
    WLD_SENDTRIGGER("KQ404_HUXLAYCUTSCENE_03");
    WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_01");
}

func void DIA_HUXLAY_KQ404_BEATHIM_CAMERA_02() {
    WLD_SENDTRIGGER("KQ404_HUXLAYCUTSCENE_02");
    WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_03");
}

func void DIA_HUXLAY_KQ404_AFTERBEATUP_CAMERA_01() {
    DIACAM_DISABLE();
    TELEPORTNPCTOWP(0x71b, "HARBOUR_DARKSECRETS_45");
    TELEPORTNPCTOWP(0xd1d7, MIL_13382_HUXLAY.WP);
    TELEPORTNPCTOWP(0xd4c8, NONE_1396_INEXTREMO_FLEX_SACK.WP);
    WLD_SENDTRIGGER("KQ404_HUXLAYCUTSCENE_04");
    WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_03");
}

func void DIA_HUXLAY_KQ404_AFTERBEATUP_CAMERA_02() {
    WLD_SENDTRIGGER("KQ404_HUXLAYCUTSCENE_05");
    WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_04");
}

func void DIA_HUXLAY_KQ404_AFTERBEATUP_CAMERA_03() {
    WLD_SENDTRIGGER("KQ404_HUXLAYCUTSCENE_06");
    WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_05");
}

func void DIA_HUXLAY_KQ404_HAVEMERCY_CAMERA_01() {
    DIACAM_DISABLE();
    TELEPORTNPCTOWP(0x71b, "HARBOUR_DARKSECRETS_45");
    TELEPORTNPCTOWP(0xd1d7, NONE_1396_INEXTREMO_FLEX_SACK.WP);
    TELEPORTNPCTOWP(0xd4c8, MIL_13382_HUXLAY.WP);
    WLD_SENDTRIGGER("KQ404_HUXLAYCUTSCENE_07");
    WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_06");
}

func void DIA_HUXLAY_KQ404_HAVEMERCY_CAMERA_02() {
    WLD_SENDTRIGGER("KQ404_HUXLAYCUTSCENE_08");
    WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_07");
}

func void DIA_HUXLAY_KQ404_HAVEMERCY_CAMERA_03() {
    WLD_SENDTRIGGER("KQ404_HUXLAYCUTSCENE_09");
    WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_08");
}

func void DIA_HUXLAY_KQ404_HAVEMERCY_CAMERA_04() {
    TELEPORTNPCTOWP(0xd1d7, "HARBOUR_DARKSECRETS_HUXLAY_02");
    WLD_SENDTRIGGER("KQ404_HUXLAYCUTSCENE_10");
    WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_09");
}

func void DIA_HUXLAY_KQ404_HAVEMERCY_CAMERA_05() {
    WLD_SENDTRIGGER("KQ404_HUXLAYCUTSCENE_11");
    WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_10");
}

func void DIA_HUXLAY_KQ404_HAVEMERCY_CAMERA_06() {
    WLD_SENDTRIGGER("KQ404_HUXLAYCUTSCENE_12");
    WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_11");
}

func void DIA_HUXLAY_KQ404_FINISH_CAMERA_01() {
    DIACAM_DISABLE();
    TELEPORTNPCTOWP(0x71b, "HARBOUR_DARKSECRETS_45");
    TELEPORTNPCTOWP(0xd1d7, MIL_13382_HUXLAY.WP);
    TELEPORTNPCTOWP(0xd4c8, NONE_1396_INEXTREMO_FLEX_SACK.WP);
    WLD_SENDTRIGGER("KQ404_HUXLAYCUTSCENE_13");
    WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_12");
}

func void DIA_HUXLAY_KQ404_FINISH_CAMERA_02() {
    WLD_SENDTRIGGER("KQ404_HUXLAYCUTSCENE_14");
    WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_13");
}

func void DIA_HUXLAY_KQ404_FINISH_CAMERA_03() {
    WLD_SENDTRIGGER("KQ404_HUXLAYCUTSCENE_15");
    WLD_SENDUNTRIGGER("KQ404_HUXLAYCUTSCENE_14");
}

func void KQ404_HUXLAY_COMEBACK() {
    PRINTD("Huxlay wraca");
    B_STARTOTHERROUTINE(MIL_13382_HUXLAY, "KQ404_BROTHEL");
    NPC_REFRESH(MIL_13382_HUXLAY);
}

func int C_KQ404_GOTUNICORNSTUFF(var C_NPC NPC) {
    if (((NPC_HASITEMS(NPC, 0x91d4)) >= (2)) && ((NPC_HASITEMS(NPC, 0x8b1f)) > (0))) {
        if ((((((((((((((((((NPC_HASITEMS(NPC, 0x8472)) > (0)) || ((NPC_HASITEMS(NPC, 0x8af3)) > (0))) || ((NPC_HASITEMS(NPC, 0x8af4)) > (0))) || ((NPC_HASITEMS(NPC, 0x8473)) > (0))) || ((NPC_HASITEMS(NPC, 0x8afa)) > (0))) || ((NPC_HASITEMS(NPC, 0x8afb)) > (0))) || ((NPC_HASITEMS(NPC, 0x8afc)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a42)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a43)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a44)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a45)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a52)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a53)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a54)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a55)) > (0))) || ((NPC_HASITEMS(NPC, 0x8485)) > (0))) || ((NPC_HASITEMS(NPC, 0x8afd)) > (0))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func int C_KQ404_WORKERARMOR(var C_NPC NPC) {
    if ((((((((((((((((((NPC_HASITEMS(NPC, 0x8472)) > (0)) || ((NPC_HASITEMS(NPC, 0x8af3)) > (0))) || ((NPC_HASITEMS(NPC, 0x8af4)) > (0))) || ((NPC_HASITEMS(NPC, 0x8473)) > (0))) || ((NPC_HASITEMS(NPC, 0x8afa)) > (0))) || ((NPC_HASITEMS(NPC, 0x8afb)) > (0))) || ((NPC_HASITEMS(NPC, 0x8afc)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a42)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a43)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a44)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a45)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a52)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a53)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a54)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a55)) > (0))) || ((NPC_HASITEMS(NPC, 0x8485)) > (0))) || ((NPC_HASITEMS(NPC, 0x8afd)) > (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void KQ404_UNICORNLIST_GIVEITEMS() {
    B_GIVEPLAYERXP(XP_KQ404_UNICORN_GOTSTUFF);
    if ((NPC_HASITEMS(OTHER, 0x8ac8)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8ac8, 1);
        KQ404_UNICORN_RICHVLKARMOR_WHATKIND = 1;
    };
    if ((NPC_HASITEMS(OTHER, 0x8ac9)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8ac9, 1);
        KQ404_UNICORN_RICHVLKARMOR_WHATKIND = 2;
    };
    if ((NPC_HASITEMS(OTHER, 0x8aca)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8aca, 1);
        KQ404_UNICORN_RICHVLKARMOR_WHATKIND = 3;
    };
    if ((NPC_HASITEMS(OTHER, 0x8acb)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8acb, 1);
        KQ404_UNICORN_RICHVLKARMOR_WHATKIND = 4;
    };
    if ((NPC_HASITEMS(OTHER, 0x8acc)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8acc, 1);
        KQ404_UNICORN_RICHVLKARMOR_WHATKIND = 5;
    };
    if ((NPC_HASITEMS(OTHER, 0x8acd)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8acd, 1);
        KQ404_UNICORN_RICHVLKARMOR_WHATKIND = 6;
    };
    if ((NPC_HASITEMS(OTHER, 0x8472)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8472, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 1;
    };
    if ((NPC_HASITEMS(OTHER, 0x8473)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8473, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 2;
    };
    if ((NPC_HASITEMS(OTHER, 0x8afd)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8afd, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 3;
    };
    if ((NPC_HASITEMS(OTHER, 0x8af3)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8af3, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 4;
    };
    if ((NPC_HASITEMS(OTHER, 0x8af4)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8af4, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 5;
    };
    if ((NPC_HASITEMS(OTHER, 0x8afa)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8afa, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 6;
    };
    if ((NPC_HASITEMS(OTHER, 0x8afb)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8afb, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 7;
    };
    if ((NPC_HASITEMS(OTHER, 0x8afc)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8afc, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 8;
    };
    if ((NPC_HASITEMS(OTHER, 0x8a42)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8a42, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 9;
    };
    if ((NPC_HASITEMS(OTHER, 0x8a43)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8a43, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 10;
    };
    if ((NPC_HASITEMS(OTHER, 0x8a44)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8a44, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 11;
    };
    if ((NPC_HASITEMS(OTHER, 0x8a45)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8a45, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 12;
    };
    if ((NPC_HASITEMS(OTHER, 0x8a52)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8a52, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 13;
    };
    if ((NPC_HASITEMS(OTHER, 0x8a53)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8a53, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 14;
    };
    if ((NPC_HASITEMS(OTHER, 0x8a54)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8a54, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 15;
    };
    if ((NPC_HASITEMS(OTHER, 0x8a55)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8a55, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 16;
    };
    if ((NPC_HASITEMS(OTHER, 0x8485)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8485, 1);
        KQ404_UNICORN_WORKERARMOR_WHATKIND = 17;
    };
    B_GIVEINVITEMS(OTHER, SELF, 0x91d4, 2);
}

func void KQ404_INEXTREMO_BIGCONCERT_PREPARENPC() {
    KQ404_INEXTREMO_BIGCONCERT = 1;
    B_STARTOTHERROUTINE(MIL_13382_HUXLAY, TOT);
    TELEPORTNPCTOWP(0xd1d7, MIL_13382_HUXLAY.WP);
}

func void KQ404_INEXTREMO_BIGCONCERT_FADESCREEN() {
    FF_APPLYONCEEXT(0xf1ae, 75, 4);
}

func void KQ404_INEXTREMO_BIGCONCERT_APPLY() {
    KQ404_INEXTREMO_BIGCONCERT_COUNT = (KQ404_INEXTREMO_BIGCONCERT_COUNT) + (1);
    if ((KQ404_INEXTREMO_BIGCONCERT_COUNT) == (2)) {
        WLD_INSERTNPC(0xd1d4, TOT);
    };
    if ((KQ404_INEXTREMO_BIGCONCERT_COUNT) == (3)) {
        TELEPORTNPCTOWP(0xd1ca, TOT);
    };
    if ((KQ404_INEXTREMO_BIGCONCERT_COUNT) == (4)) {
        CUTSCENE_START(0x168b5);
    };
}

var int KQ404_INEXTREMO_BIGCONCERT_APPLY.KQ404_INEXTREMO_BIGCONCERT_COUNT = 0;
func void KQ404_INEXTREMO_BIGCONCERT_EURIC_APPLY() {
    KQ404_INEXTREMO_BIGCONCERT_EURIC_COUNT = (KQ404_INEXTREMO_BIGCONCERT_EURIC_COUNT) + (1);
    if ((KQ404_INEXTREMO_BIGCONCERT_EURIC_COUNT) == (4)) {
        CUTSCENE_START(0x168c2);
    };
}

var int KQ404_INEXTREMO_BIGCONCERT_EURIC_APPLY.KQ404_INEXTREMO_BIGCONCERT_EURIC_COUNT = 0;
func void KQ404_INEXTREMOBIGCONCERT_EQUIPARMOR_01() {
    PRINTD("Armor");
    NPC_CLEARAIQUEUE(NONE_1390_INEXTREMO_DRPYMONTE);
    NPC_CLEARAIQUEUE(NONE_1396_INEXTREMO_FLEX);
    NPC_CLEARAIQUEUE(NONE_1395_INEXTREMO_LUTTER);
    NPC_CLEARAIQUEUE(NONE_1394_INEXTREMO_YELLOWPFEIFFER);
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (1)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8472, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8472);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (2)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8473, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8473);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (3)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8afd, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8afd);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (4)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8af3, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8af3);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (5)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8af4, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8af4);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (6)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8afa, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8afa);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (7)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8afb, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8afb);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (8)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8afc, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8afc);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (9)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a42, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a42);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (10)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a43, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a43);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (11)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a44, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a44);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (12)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a45, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a45);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (13)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a52, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a52);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (14)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a53, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a53);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (15)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a54, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a54);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (16)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a55, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8a55);
    };
    if ((KQ404_UNICORN_WORKERARMOR_WHATKIND) == (17)) {
        CREATEINVITEMS(NONE_1390_INEXTREMO_DRPYMONTE, 0x8485, 1);
        AI_EQUIPARMOR(NONE_1390_INEXTREMO_DRPYMONTE, 0x8485);
    };
    AI_PLAYANI(NONE_1390_INEXTREMO_DRPYMONTE, R_LEGSHAKE);
    if ((KQ404_UNICORN_RICHVLKARMOR_WHATKIND) == (1)) {
        CREATEINVITEMS(NONE_1396_INEXTREMO_FLEX, 0x8ac8, 1);
        AI_EQUIPARMOR(NONE_1396_INEXTREMO_FLEX, 0x8ac8);
    };
    if ((KQ404_UNICORN_RICHVLKARMOR_WHATKIND) == (2)) {
        CREATEINVITEMS(NONE_1396_INEXTREMO_FLEX, 0x8ac9, 1);
        AI_EQUIPARMOR(NONE_1396_INEXTREMO_FLEX, 0x8ac9);
    };
    if ((KQ404_UNICORN_RICHVLKARMOR_WHATKIND) == (3)) {
        CREATEINVITEMS(NONE_1396_INEXTREMO_FLEX, 0x8aca, 1);
        AI_EQUIPARMOR(NONE_1396_INEXTREMO_FLEX, 0x8aca);
    };
    if ((KQ404_UNICORN_RICHVLKARMOR_WHATKIND) == (4)) {
        CREATEINVITEMS(NONE_1396_INEXTREMO_FLEX, 0x8acb, 1);
        AI_EQUIPARMOR(NONE_1396_INEXTREMO_FLEX, 0x8acb);
    };
    if ((KQ404_UNICORN_RICHVLKARMOR_WHATKIND) == (5)) {
        CREATEINVITEMS(NONE_1396_INEXTREMO_FLEX, 0x8acc, 1);
        AI_EQUIPARMOR(NONE_1396_INEXTREMO_FLEX, 0x8acc);
    };
    if ((KQ404_UNICORN_RICHVLKARMOR_WHATKIND) == (6)) {
        CREATEINVITEMS(NONE_1396_INEXTREMO_FLEX, 0x8acd, 1);
        AI_EQUIPARMOR(NONE_1396_INEXTREMO_FLEX, 0x8acd);
    };
    AI_PLAYANI(NONE_1396_INEXTREMO_FLEX, R_SCRATCHRSHOULDER);
    CREATEINVITEMS(NONE_1395_INEXTREMO_LUTTER, 0x847c, 1);
    AI_EQUIPARMOR(NONE_1395_INEXTREMO_LUTTER, 0x847c);
    AI_PLAYANI(NONE_1395_INEXTREMO_LUTTER, T_PLUNDER);
    CREATEINVITEMS(NONE_1394_INEXTREMO_YELLOWPFEIFFER, 0x847c, 1);
    AI_EQUIPARMOR(NONE_1394_INEXTREMO_YELLOWPFEIFFER, 0x847c);
    AI_PLAYANI(NONE_1394_INEXTREMO_YELLOWPFEIFFER, R_SCRATCHLSHOULDER);
}

func void KQ404_CITIZENGOHOME() {
    if (HLP_ISVALIDNPC(VLK_6012_WORKER)) {
        AI_WAIT(VLK_6012_WORKER, 0x3dcccccd);
        B_STARTOTHERROUTINE(VLK_6012_WORKER, START);
    };
    if (HLP_ISVALIDNPC(VLK_6014_GIRL)) {
        B_STARTOTHERROUTINE(VLK_6014_GIRL, START);
    };
    if (HLP_ISVALIDNPC(VLK_6082_GUY)) {
        AI_WAIT(VLK_6082_GUY, 0x3e4ccccd);
        B_STARTOTHERROUTINE(VLK_6082_GUY, START);
    };
    if ((LOG_GETSTATUS(MIS_KQ403)) == (LOG_SUCCESS)) {
        AI_WAIT(VLK_6009_GIRL, 0x3e99999a);
        B_STARTOTHERROUTINE(VLK_6009_GIRL, "TAVERN");
    };
    AI_WAIT(VLK_6009_GIRL, 0x3e99999a);
    B_STARTOTHERROUTINE(VLK_6009_GIRL, TOT);
    if (HLP_ISVALIDNPC(VLK_6008_GUY)) {
        AI_WAIT(VLK_6008_GUY, 0x3dcccccd);
        B_STARTOTHERROUTINE(VLK_6008_GUY, START);
    };
    if (HLP_ISVALIDNPC(VLK_13380_GIRL)) {
        AI_WAIT(VLK_13380_GIRL, 0x3ecccccd);
        B_STARTOTHERROUTINE(VLK_13380_GIRL, START);
    };
    if (HLP_ISVALIDNPC(VLK_6084_GUY)) {
        B_STARTOTHERROUTINE(VLK_6084_GUY, START);
    };
    if (HLP_ISVALIDNPC(VLK_13374_GIRL)) {
        AI_WAIT(VLK_13374_GIRL, 0x3e4ccccd);
        B_STARTOTHERROUTINE(VLK_13374_GIRL, START);
    };
    if (HLP_ISVALIDNPC(VLK_13375_GIRL)) {
        AI_WAIT(VLK_13375_GIRL, 0x3f000000);
        B_STARTOTHERROUTINE(VLK_13375_GIRL, START);
    };
    if (HLP_ISVALIDNPC(VLK_6066_GIRL)) {
        AI_WAIT(VLK_6066_GIRL, 0x3dcccccd);
        B_STARTOTHERROUTINE(VLK_6066_GIRL, START);
    };
    if (HLP_ISVALIDNPC(NONE_13861_SOUTHERNER)) {
        B_STARTOTHERROUTINE(NONE_13861_SOUTHERNER, START);
    };
    if (HLP_ISVALIDNPC(NONE_13862_SOUTHERNER)) {
        B_STARTOTHERROUTINE(NONE_13862_SOUTHERNER, START);
    };
}

func void KQ404_REMOVENPC() {
    KQ404_CITIZENGOHOME();
    if (HLP_ISVALIDNPC(MIL_13381_EURIC)) {
        B_REMOVENPC(0xd1d4);
    };
    if (HLP_ISVALIDNPC(MIL_13381_EURIC)) {
        B_STARTOTHERROUTINE(MIL_13381_EURIC, START);
    };
    if (HLP_ISVALIDNPC(MIL_13382_HUXLAY)) {
        B_STARTOTHERROUTINE(MIL_13382_HUXLAY, "KQ406_HARBOUR");
    };
    if (HLP_ISVALIDNPC(MIL_4011_HARBGUARD)) {
        B_STARTOTHERROUTINE(MIL_4011_HARBGUARD, START);
    };
    if (HLP_ISVALIDNPC(MIL_4005_HARBGUARD)) {
        B_STARTOTHERROUTINE(MIL_4005_HARBGUARD, START);
    };
    B_REMOVENPC(0xd4ac);
    B_REMOVENPC(0xd4b0);
    B_REMOVENPC(0xd4b4);
    B_REMOVENPC(0xd4b8);
    B_REMOVENPC(0xd4bc);
    B_REMOVENPC(0xd4c0);
    B_REMOVENPC(0xd4c4);
}

func void KQ404_FINISHQUEST() {
    LOG_SETSTATUS(_@(MIS_KQ404), TOPIC_KQ404, LOG_SUCCESS);
    if ((KQ404_FINISHWAY) == (1)) {
        B_GIVEPLAYERXP(XP_KQ404_FINISH);
        if ((KQ404_GUARDARMOR_WHO) == (1)) {
            NPC_REMOVEINVITEM(MIL_13490_RICHARD, 0x8adb);
            NPC_CHANGEARMOR(MIL_13490_RICHARD, 0x8b1f);
        } else if ((KQ404_GUARDARMOR_WHO) == (2)) {
            NPC_REMOVEINVITEM(MIL_13381_EURIC, 0x8b1e);
            NPC_CHANGEARMOR(MIL_13381_EURIC, 0x8b1f);
        } else if ((KQ404_GUARDARMOR_WHO) == (3)) {
            KQ404_LUTZ_BLOCKVOLFZACKQUESTION = FALSE;
        };
    };
    B_GIVEPLAYERXP((XP_KQ404_FINISH) / (2));
    AI_LOGENTRY(TOPIC_KQ401, LOG_KQ401_AFTER_KQ404);
    KQ404_REMOVENPC();
}
