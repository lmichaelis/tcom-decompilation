instance Q514_VOLFZACKEBRIDGECUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(0x16a02);
}

func void Q514_VOLFZACKEBRIDGECUTSCENE_WAIT() {
    AI_WAITTILLEND(HERO, KDW_203_RIORDIAN_VZ);
    AI_WAITTILLEND(HERO, NONE_202_KESSEL_VZ);
    AI_WAITTILLEND(KDW_203_RIORDIAN_VZ, HERO);
    AI_WAITTILLEND(KDW_203_RIORDIAN_VZ, NONE_202_KESSEL_VZ);
    AI_WAITTILLEND(NONE_202_KESSEL_VZ, HERO);
    AI_WAITTILLEND(NONE_202_KESSEL_VZ, KDW_203_RIORDIAN_VZ);
}

func void Q514_VOLFZACKEBRIDGECUTSCENE_START() {
    WLD_SENDTRIGGER("VZ_BRIDGE_CAMERA_01");
    Q514_PREPARECAMP_BEFOREBRIDGE();
    TELEPORTNPCTOWP(0x71b, "VOLFZACK_BRIDGE_CUTSCENE_HERO");
    TELEPORTNPCTOWP(0xe77b, "VOLFZACK_BRIDGE_CUTSCENE_KESSEL");
    TELEPORTNPCTOWP(0xe700, "VOLFZACK_11");
    AI_TURNTONPC(HERO, KDW_203_RIORDIAN_VZ);
    AI_TURNTONPC(NONE_202_KESSEL_VZ, KDW_203_RIORDIAN_VZ);
    AI_TURNTONPC(KDW_203_RIORDIAN_VZ, HERO);
    AI_PLAYANI(NONE_202_KESSEL_VZ, "T_COMEOVERHERE");
    AI_FUNCTION(NONE_202_KESSEL_VZ, 0x16a03);
    Q514_VOLFZACKEBRIDGECUTSCENE_WAIT();
    AI_SETWALKMODE(NONE_202_KESSEL_VZ, NPC_WALK);
    AI_SETWALKMODE(KDW_203_RIORDIAN_VZ, NPC_WALK);
    AI_TURNTONPC(NONE_202_KESSEL_VZ, HERO);
    AI_FUNCTION(HERO, 0x16a0c);
    AI_WAIT(NONE_202_KESSEL_VZ, 0x40400000);
    AI_PLAYANI(NONE_202_KESSEL_VZ, R_LEGSHAKE);
    AI_FUNCTION(NONE_202_KESSEL_VZ, 0x16a07);
    AI_WAIT(NONE_202_KESSEL_VZ, 0x3f800000);
    AI_PLAYANI(NONE_202_KESSEL_VZ, "R_STRETCH_RANDOM_01");
    AI_WAIT(NONE_202_KESSEL_VZ, 0x40000000);
    AI_TURNAWAY(NONE_202_KESSEL_VZ, KDW_203_RIORDIAN_VZ);
    AI_FUNCTION(NONE_202_KESSEL_VZ, 0x16a08);
    AI_WAIT(NONE_202_KESSEL_VZ, 0x40000000);
    AI_FUNCTION(NONE_202_KESSEL_VZ, 0x16a09);
    Q514_VOLFZACKEBRIDGECUTSCENE_WAIT();
    AI_WAIT(HERO, 0x3f99999a);
    AI_WAIT(KDW_203_RIORDIAN_VZ, 0x3fd9999a);
    AI_PLAYANI(HERO, T_SEARCH);
    AI_PLAYANI(KDW_203_RIORDIAN_VZ, T_SEARCH);
}

func void Q514_VOLFZACKEBRIDGECUTSCENE_FADE_V1() {
    FADESCREENTOBLACKF(2, 0x16a05, 1000);
}

func void Q514_VOLFZACKEBRIDGECUTSCENE_FADE_V2() {
    FADESCREENTOBLACKF(2, 0x16a06, 1000);
}

func void Q514_VOLFZACKEBRIDGECUTSCENE_FADE_V1_AFTER() {
    WLD_SENDTRIGGER("VZ_BRIDGE_CAMERA_02");
    WLD_SENDUNTRIGGER("VZ_BRIDGE_CAMERA_01");
    B_STARTOTHERROUTINE(KDW_203_RIORDIAN_VZ, "BRIDGECUTSCENE");
    TELEPORTNPCTOWP(0xe700, KDW_203_RIORDIAN_VZ.WP);
    NPC_CLEARAIQUEUE(KDW_203_RIORDIAN_VZ);
    TELEPORTNPCTOWP(0xe77b, "VOLFZACK_BRIDGE_CUTSCENE_KESSEL_02");
    Q514_TELEPORTFRIENDS_CUTSCENE();
    Q514_FAKECAMP();
    FADESCREENFROMBLACK(3);
}

func void Q514_VOLFZACKEBRIDGECUTSCENE_FADE_V2_AFTER() {
    Q514_VOLFZACKEBRIDGE_CUTSCENE = 2;
    WLD_SENDUNTRIGGER("VZ_BRIDGE_CAMERA_05_C");
    WLD_SENDTRIGGER("Q514_MOVER_ALPHA_NOBRIDGE");
    WLD_SENDTRIGGER("Q514_MOVER_ALPHA_BRIDGE");
    Q514_TELEPORTFRIENDS();
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
}

func void Q514_VOLFZACKEBRIDGECUTSCENE_CHANGECAMERA_01() {
    WLD_SENDTRIGGER("VZ_BRIDGE_CAMERA_03");
    WLD_SENDUNTRIGGER("VZ_BRIDGE_CAMERA_02");
}

func void Q514_VOLFZACKEBRIDGECUTSCENE_CHANGECAMERA_02() {
    WLD_SENDTRIGGER("VZ_BRIDGE_CAMERA_04");
    WLD_SENDUNTRIGGER("VZ_BRIDGE_CAMERA_03");
}

func void Q514_VOLFZACKEBRIDGECUTSCENE_ACTIVATESTONE() {
    FF_APPLYONCEEXT(0x16a0a, 600, 9);
}

func void Q514_VOLFZACKEBRIDGECUTSCENE_MOVER() {
    Q514_VOLFZACKEBRIDGECUTSCENECOUNT = (Q514_VOLFZACKEBRIDGECUTSCENECOUNT) + (1);
    if ((Q514_VOLFZACKEBRIDGECUTSCENECOUNT) == (1)) {
        WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
        SND_PLAY("MFX_EarthQuake");
    };
    if ((Q514_VOLFZACKEBRIDGECUTSCENECOUNT) == (3)) {
        WLD_SENDTRIGGER("VOLFZACKE_BRIDGE_STONE");
    };
    if ((Q514_VOLFZACKEBRIDGECUTSCENECOUNT) == (5)) {
        WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
        WLD_PLAYEFFECT("FX_DUST", NONE_13795_DISMAS_VZ, NONE_13795_DISMAS_VZ, 0, 0, 0, FALSE);
        WLD_PLAYEFFECT("FX_DUST", NONE_10039_WORKER_VZ, NONE_10039_WORKER_VZ, 0, 0, 0, FALSE);
        WLD_SENDTRIGGER("VZ_BRIDGE_CAMERA_05_C");
        WLD_SENDUNTRIGGER("VZ_BRIDGE_CAMERA_04");
        WLD_SENDTRIGGER("VOLFZACKE_BRIDGE_01");
        WLD_SENDTRIGGER("VOLFZACKE_BRIDGE_02");
        WLD_SENDTRIGGER("VOLFZACKE_BRIDGE_03");
        SND_PLAY("ROCKS_FALL_BIG_01");
        SND_PLAY("ROCKS_FALL_01");
        SND_PLAY("ROCKS_FALL_02");
        SND_PLAY("SVM_2_DEAD");
        TELEPORTNPCTOWP(0xe746, "VOLFZACK_15");
        TELEPORTNPCTOWP(0xe730, "VOLFZACK_15");
        TELEPORTNPCTOWP(0xe7d0, "VOLFZACK_15");
    };
    if ((Q514_VOLFZACKEBRIDGECUTSCENECOUNT) == (6)) {
        AI_REMOVEWEAPON(MIL_63710_DUSTER_VZ);
        AI_REMOVEWEAPON(NONE_11037_MARKUS_VZ);
        AI_REMOVEWEAPON(SLD_13784_VARIN_VZ);
        B_MAGICHURTNPC(MIL_63710_DUSTER_VZ, NONE_13795_DISMAS_VZ, 0x270f);
        B_MAGICHURTNPC(MIL_63710_DUSTER_VZ, NONE_10039_WORKER_VZ, 0x270f);
        SND_PLAY("SVM_3_DEAD");
    };
    if ((Q514_VOLFZACKEBRIDGECUTSCENECOUNT) == (7)) {
        AI_FUNCTION(NONE_202_KESSEL_VZ, 0x16a04);
    };
}

var int Q514_VOLFZACKEBRIDGECUTSCENE_MOVER.Q514_VOLFZACKEBRIDGECUTSCENECOUNT = 0;
func void Q514_VOLFZACKEBRIDGECUTSCENE_EQUIPNPC() {
    PRINTD("MDS");
    CREATEINVITEMS(NONE_13795_DISMAS_VZ, 0x8cf4, 1);
    MDL_APPLYOVERLAYMDS(NONE_13795_DISMAS_VZ, "HUMANS_BARREL.mds");
    CREATEINVITEMS(NONE_10039_WORKER_VZ, 0x8cf4, 1);
    MDL_APPLYOVERLAYMDS(NONE_10039_WORKER_VZ, "HUMANS_BARREL.mds");
    CREATEINVITEMS(NONE_11037_MARKUS_VZ, 0x8cf4, 1);
    MDL_APPLYOVERLAYMDS(NONE_11037_MARKUS_VZ, "HUMANS_BARREL.mds");
    CREATEINVITEMS(MIL_63710_DUSTER_VZ, 0x8cf4, 1);
    MDL_APPLYOVERLAYMDS(MIL_63710_DUSTER_VZ, "HUMANS_BARREL.mds");
    CREATEINVITEMS(SLD_13784_VARIN_VZ, 0x8cf4, 1);
    MDL_APPLYOVERLAYMDS(SLD_13784_VARIN_VZ, "HUMANS_BARREL.mds");
}
