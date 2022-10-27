var int Q503_SPAWNZOMBIESCOUNT = 0;
func void Q503_SPAWNZOMBIES() {
    Q503_SPAWNZOMBIESCOUNT = (Q503_SPAWNZOMBIESCOUNT) + (1);
    if ((Q503_SPAWNZOMBIESCOUNT) == (1)) {
        WLD_INSERTNPC(0xc807, "FP_PART5_SPAWNPOINT_18");
        WLD_PLAYEFFECT("spellFX_INCOVATION_VIOLET", ZOMBIE_LEATHER_L_02, ZOMBIE_LEATHER_L_02, 0, 0, 0, FALSE);
        WLD_PLAYEFFECT("FX_EarthQuake", ZOMBIE_LEATHER_L_02, ZOMBIE_LEATHER_L_02, 0, 0, 0, FALSE);
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (2)) {
        WLD_INSERTNPC(0xc3c5, "FP_PART5_SPAWNPOINT_12");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (3)) {
        WLD_INSERTNPC(0xc809, "FP_PART5_SPAWNPOINT_19");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (4)) {
        WLD_INSERTNPC(0xc3c6, "FP_PART5_SPAWNPOINT_20");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (5)) {
        WLD_INSERTNPC(0xc80a, "FP_PART5_SPAWNPOINT_03");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (6)) {
        WLD_INSERTNPC(0xc3c5, "FP_PART5_SPAWNPOINT_04");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (7)) {
        WLD_INSERTNPC(0xc3c6, "FP_PART5_SPAWNPOINT_05");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (8)) {
        WLD_INSERTNPC(0xc80b, "FP_PART5_SPAWNPOINT_06");
        B_LOGENTRY(TOPIC_Q503, LOG_Q503_GATECLOSED);
        Q503_SPAWNZOMBIESCOUNT = 0;
    };
}

func void Q503_SPAWNZOMBIES_WAVE2() {
    Q503_SPAWNZOMBIESCOUNT = (Q503_SPAWNZOMBIESCOUNT) + (1);
    if ((Q503_SPAWNZOMBIESCOUNT) == (1)) {
        WLD_INSERTNPC(0xc80b, "FP_PART5_SPAWNPOINT_07");
        WLD_PLAYEFFECT("spellFX_INCOVATION_VIOLET", ZOMBIE_LEATHER_L_02, ZOMBIE_LEATHER_L_02, 0, 0, 0, FALSE);
        WLD_PLAYEFFECT("FX_EarthQuake", ZOMBIE_LEATHER_L_02, ZOMBIE_LEATHER_L_02, 0, 0, 0, FALSE);
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (2)) {
        WLD_INSERTNPC(0xc3c5, "FP_PART5_SPAWNPOINT_08");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (3)) {
        WLD_INSERTNPC(0xc808, "FP_PART5_SPAWNPOINT_09");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (4)) {
        WLD_INSERTNPC(0xc3c6, "FP_PART5_SPAWNPOINT_10");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (5)) {
        WLD_INSERTNPC(0xc80a, "FP_PART5_SPAWNPOINT_11");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (6)) {
        WLD_INSERTNPC(0xc3c6, "FP_PART5_SPAWNPOINT_12");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (7)) {
        WLD_INSERTNPC(0xc3c6, "FP_PART5_SPAWNPOINT_13");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (8)) {
        WLD_INSERTNPC(0xc80d, "FP_PART5_SPAWNPOINT_14");
        B_LOGENTRY(TOPIC_Q503, LOG_Q503_NEXTWAVE);
        Q503_SPAWNZOMBIESCOUNT = 0;
    };
}

func void Q503_SPAWNZOMBIES_WAVE3() {
    Q503_SPAWNZOMBIESCOUNT = (Q503_SPAWNZOMBIESCOUNT) + (1);
    if ((Q503_SPAWNZOMBIESCOUNT) == (1)) {
        HERO.AIVAR[4] = TRUE;
        WLD_INSERTNPC(0xc80e, "FP_SPAWNPOINT_WALL_01");
        WLD_INSERTNPC(0xc80f, "FP_SPAWNPOINT_WALL_02");
        WLD_INSERTNPC(0xc810, "FP_SPAWNPOINT_WALL_03");
        WLD_INSERTNPC(0xc811, "FP_SPAWNPOINT_WALL_04");
        WLD_INSERTNPC(0xc812, "FP_SPAWNPOINT_WALL_05");
        WLD_INSERTNPC(0xc813, "FP_SPAWNPOINT_WALL_06");
        WLD_INSERTNPC(0xc814, "FP_SPAWNPOINT_WALL_07");
        WLD_INSERTNPC(0xc815, "FP_SPAWNPOINT_WALL_08");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (2)) {
        WLD_INSERTNPC(0xc3c8, "FP_PART5_SPAWNPOINT_16");
        WLD_PLAYEFFECT("FX_EarthQuake", SKELETON_WS_L_IMMORTAL_02, SKELETON_WS_L_IMMORTAL_02, 0, 0, 0, FALSE);
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (3)) {
        WLD_INSERTNPC(0xc3c9, "FP_PART5_SPAWNPOINT_18");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (4)) {
        WLD_INSERTNPC(0xc3ca, "FP_PART5_SPAWNPOINT_19");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (5)) {
        WLD_INSERTNPC(0xc3cc, "FP_PART5_SPAWNPOINT_11");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (6)) {
        WLD_INSERTNPC(0xc3cd, "FP_PART5_SPAWNPOINT_12");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (7)) {
        WLD_INSERTNPC(0xc3cb, "FP_PART5_SPAWNPOINT_13");
    };
    if ((Q503_SPAWNZOMBIESCOUNT) == (8)) {
        HERO.AIVAR[4] = FALSE;
        WLD_INSERTNPC(0xc3ce, "FP_PART5_SPAWNPOINT_14");
        Q503_SPAWNZOMBIESCOUNT = 0;
    };
}

func void Q503_MAKESKELETONSMORTAL() {
    SKELETON_WS_H_IMMORTAL_01.FLAGS = 0;
    SKELETON_WS_L_IMMORTAL_02.FLAGS = 0;
    SKELETON_WS_L_IMMORTAL_03.FLAGS = 0;
    SKELETON_WS_H_IMMORTAL_04.FLAGS = 0;
    SKELETON_WS_H_IMMORTAL_05.FLAGS = 0;
    SKELETON_WS_L_IMMORTAL_06.FLAGS = 0;
    SKELETON_WS_L_IMMORTAL_07.FLAGS = 0;
    SKELETON_WS_L_IMMORTAL_08.FLAGS = 0;
    ZOMBIE_WOLFSDEN_RISE_IMMORTAL_01.FLAGS = 0;
    ZOMBIE_WOLFSDEN_RISE_IMMORTAL_02.FLAGS = 0;
    ZOMBIE_WOLFSDEN_RISE_IMMORTAL_03.FLAGS = 0;
    ZOMBIE_WOLFSDEN_RISE_IMMORTAL_04.FLAGS = 0;
    ZOMBIE_WOLFSDEN_RISE_IMMORTAL_05.FLAGS = 0;
    ZOMBIE_WOLFSDEN_RISE_IMMORTAL_06.FLAGS = 0;
    ZOMBIE_WOLFSDEN_RISE_IMMORTAL_07.FLAGS = 0;
    ZOMBIE_WOLFSDEN_RISE_IMMORTAL_08.FLAGS = 0;
    B_MAGICHURTNPC(HERO, SKELETON_WS_H_IMMORTAL_01, 0x270f);
    B_MAGICHURTNPC(HERO, SKELETON_WS_L_IMMORTAL_02, 0x270f);
    B_MAGICHURTNPC(HERO, SKELETON_WS_L_IMMORTAL_03, 0x270f);
    B_MAGICHURTNPC(HERO, SKELETON_WS_H_IMMORTAL_04, 0x270f);
    B_MAGICHURTNPC(HERO, SKELETON_WS_H_IMMORTAL_05, 0x270f);
    B_MAGICHURTNPC(HERO, SKELETON_WS_L_IMMORTAL_06, 0x270f);
    B_MAGICHURTNPC(HERO, SKELETON_WS_L_IMMORTAL_07, 0x270f);
    B_MAGICHURTNPC(HERO, SKELETON_WS_L_IMMORTAL_08, 0x270f);
    B_MAGICHURTNPC(HERO, ZOMBIE_WOLFSDEN_BOSS_01, 0x270f);
    B_MAGICHURTNPC(HERO, ZOMBIE_WOLFSDEN_BOSS_02, 0x270f);
    B_MAGICHURTNPC(HERO, ZOMBIE_WOLFSDEN_BOSS_03, 0x270f);
    B_MAGICHURTNPC(HERO, ZOMBIE_WOLFSDEN_BOSS_04, 0x270f);
    B_MAGICHURTNPC(HERO, ZOMBIE_WOLFSDEN_BOSS_05, 0x270f);
    B_MAGICHURTNPC(HERO, ZOMBIE_WOLFSDEN_RISE_IMMORTAL_01, 0x270f);
    B_MAGICHURTNPC(HERO, ZOMBIE_WOLFSDEN_RISE_IMMORTAL_02, 0x270f);
    B_MAGICHURTNPC(HERO, ZOMBIE_WOLFSDEN_RISE_IMMORTAL_03, 0x270f);
    B_MAGICHURTNPC(HERO, ZOMBIE_WOLFSDEN_RISE_IMMORTAL_04, 0x270f);
    B_MAGICHURTNPC(HERO, ZOMBIE_WOLFSDEN_RISE_IMMORTAL_05, 0x270f);
    B_MAGICHURTNPC(HERO, ZOMBIE_WOLFSDEN_RISE_IMMORTAL_06, 0x270f);
    B_MAGICHURTNPC(HERO, ZOMBIE_WOLFSDEN_RISE_IMMORTAL_07, 0x270f);
    B_MAGICHURTNPC(HERO, ZOMBIE_WOLFSDEN_RISE_IMMORTAL_08, 0x270f);
    B_STARTOTHERROUTINE(NONE_202_KESSEL, "Q503TIRED");
    NPC_REFRESH(NONE_202_KESSEL);
    TELEPORTNPCTOWP(0xdd70, "PART5_VOLFZACKE_KESSEL_TIRED");
    Q503_KESSEL_RTNCHECK = 6;
    B_STARTOTHERROUTINE(KDW_203_RIORDIAN, "Q503TIRED");
    NPC_REFRESH(KDW_203_RIORDIAN);
    TELEPORTNPCTOWP(0xdd28, "PART5_VOLFZACKE_RIORDIAN_TIRED");
}

func void Q503_SHOWKEYS() {
    if ((NPC_HASITEMS(OTHER, 0x92a6)) >= (1)) {
        Q503_KEYCOUNT = (Q503_KEYCOUNT) + (1);
        B_GIVEINVITEMS(OTHER, SELF, 0x92a6, 1);
    };
    if ((NPC_HASITEMS(OTHER, 0x92a7)) >= (1)) {
        Q503_KEYCOUNT = (Q503_KEYCOUNT) + (1);
        B_GIVEINVITEMS(OTHER, SELF, 0x92a7, 1);
    };
}

func void Q503_SHOWKEYS_BACK() {
    if ((NPC_HASITEMS(SELF, 0x92a6)) >= (1)) {
        B_GIVEINVITEMS(SELF, OTHER, 0x92a6, 1);
    };
    if ((NPC_HASITEMS(SELF, 0x92a7)) >= (1)) {
        B_GIVEINVITEMS(SELF, OTHER, 0x92a7, 1);
    };
}

func void Q503_GIVEKEYS() {
    if ((NPC_HASITEMS(OTHER, 0x92a6)) >= (1)) {
        Q503_KEYCOUNT = (Q503_KEYCOUNT) + (1);
        B_GIVEINVITEMS(OTHER, SELF, 0x92a6, 1);
        NPC_REMOVEINVITEMS(SELF, 0x92a6, 1);
    };
    if ((NPC_HASITEMS(OTHER, 0x92a7)) >= (1)) {
        Q503_KEYCOUNT = (Q503_KEYCOUNT) + (1);
        B_GIVEINVITEMS(OTHER, SELF, 0x92a7, 1);
        NPC_REMOVEINVITEMS(SELF, 0x92a7, 1);
    };
    if ((NPC_HASITEMS(OTHER, 0x92a8)) >= (1)) {
        Q503_KEYCOUNT = (Q503_KEYCOUNT) + (1);
        B_GIVEINVITEMS(OTHER, SELF, 0x92a8, 1);
        NPC_REMOVEINVITEMS(SELF, 0x92a8, 1);
    };
}

func void Q503_REMOVEALLKEYS() {
    Q503_BLOCKCORPSEKEY = TRUE;
    NPC_REMOVEINVITEMS(VOLFZACKEMAGE_BOSS, 0x92a6, 1);
}

var int Q503_BOSSFIGHT_TELEPORT_COUNT = 0;
func void Q503_TELEPORTMAGE() {
    Q503_BOSSFIGHT_TELEPORT_COUNT = 0;
    RND = HLP_RANDOM(3);
    if ((RND) == (0)) {
        TELEPORTNPCTOWP(0xc6b8, "PART5_VOLFZACKE_MAGE_01");
    };
    if ((RND) == (1)) {
        TELEPORTNPCTOWP(0xc6b8, "PART5_VOLFZACKE_MAGE_02");
    };
    if ((RND) == (2)) {
        TELEPORTNPCTOWP(0xc6b8, "PART5_VOLFZACKE_MAGE_03");
    };
    WLD_PLAYEFFECT("spellFX_Teleport_RING", VOLFZACKEMAGE_BOSS, VOLFZACKEMAGE_BOSS, 0, 0, 0, FALSE);
}

var int Q503_TELEPORTMAGE.RND = 0;
func void Q503_BOSSFIGHT_TELEPORT_APPLY() {
    if ((Q503_GOTOVOLFZACKE) == (5)) {
        PRINTD("KONIEC TELEPORTOWANIA SI�");
        FF_REMOVE(0xf7d4);
    };
    Q503_BOSSFIGHT_TELEPORT_COUNT = (Q503_BOSSFIGHT_TELEPORT_COUNT) + (1);
    if ((Q503_BOSSFIGHT_TELEPORT_COUNT) == (10)) {
        Q503_BOSSFIGHT_TELEPORT_COUNT = 0;
        RND = HLP_RANDOM(3);
        if ((RND) == (0)) {
            TELEPORTNPCTOWP(0xc6b8, "PART5_VOLFZACKE_MAGE_01");
        } else if ((RND) == (1)) {
            TELEPORTNPCTOWP(0xc6b8, "PART5_VOLFZACKE_MAGE_02");
        } else if ((RND) == (2)) {
            TELEPORTNPCTOWP(0xc6b8, "PART5_VOLFZACKE_MAGE_03");
        };
        WLD_PLAYEFFECT("spellFX_Teleport_RING", VOLFZACKEMAGE_BOSS, VOLFZACKEMAGE_BOSS, 0, 0, 0, FALSE);
    };
}

var int Q503_BOSSFIGHT_TELEPORT_APPLY.RND = 0;
var int Q503_BOSSFIGHT_BATTLEFIELD_EFFECTISON_FLY = 0;
var int Q503_BOSSFIGHT_BATTLEFIELD_EFFECTISON_FIRE = 0;
var int Q503_BOSSFIGHT_BATTLEFIELD_EFFECTISON_MAGIC = 0;
func void Q503_BOSSFIGHT_RANDOMIZEEFFECT() {
    RND = HLP_RANDOM(5);
    if ((RND) == (0)) {
        WLD_SENDTRIGGER("Q503_BOSSFIGHT_FLY");
        WLD_SENDTRIGGER("Q503_BOSSFIGHT_FLY_LIGHT");
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FLY_01", FALSE, FALSE, TRUE, TRUE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FLY_02", FALSE, FALSE, TRUE, TRUE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FLY_03", FALSE, FALSE, TRUE, TRUE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FLY_04", FALSE, FALSE, TRUE, TRUE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FLY_05", FALSE, FALSE, TRUE, TRUE);
        Q503_BOSSFIGHT_BATTLEFIELD_EFFECTISON_FLY = TRUE;
        WLD_PLAYEFFECT("spellFX_INCOVATION_WHITE_NOLIGHT", VOLFZACKEMAGE_BOSS, VOLFZACKEMAGE_BOSS, 0, 0, 0, FALSE);
        PRINTD("Pole bitwy - FLY");
    };
    if ((RND) == (1)) {
        WLD_SENDTRIGGER("Q503_BOSSFIGHT_FIRE");
        WLD_SENDTRIGGER("Q503_BOSSFIGHT_FIRE_LIGHT");
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FIRE_01", FALSE, FALSE, TRUE, TRUE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FIRE_02", FALSE, FALSE, TRUE, TRUE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FIRE_03", FALSE, FALSE, TRUE, TRUE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FIRE_04", FALSE, FALSE, TRUE, TRUE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FIRE_05", FALSE, FALSE, TRUE, TRUE);
        Q503_BOSSFIGHT_BATTLEFIELD_EFFECTISON_FIRE = TRUE;
        WLD_PLAYEFFECT("spellFX_INCOVATION_RED_NOLIGHT", VOLFZACKEMAGE_BOSS, VOLFZACKEMAGE_BOSS, 0, 0, 0, FALSE);
        PRINTD("Pole bitwy - FIRE");
    };
    if ((RND) == (2)) {
        WLD_SENDTRIGGER("Q503_BOSSFIGHT_LIGHTING");
        WLD_SENDTRIGGER("Q503_BOSSFIGHT_LIGHTING_LIGHT");
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_LIGHTING_01", FALSE, FALSE, TRUE, TRUE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_LIGHTING_02", FALSE, FALSE, TRUE, TRUE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_LIGHTING_03", FALSE, FALSE, TRUE, TRUE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_LIGHTING_04", FALSE, FALSE, TRUE, TRUE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_LIGHTING_05", FALSE, FALSE, TRUE, TRUE);
        Q503_BOSSFIGHT_BATTLEFIELD_EFFECTISON_MAGIC = TRUE;
        WLD_PLAYEFFECT("spellFX_INCOVATION_BLUE_NOLIGHT", VOLFZACKEMAGE_BOSS, VOLFZACKEMAGE_BOSS, 0, 0, 0, FALSE);
        PRINTD("Pole bitwy - MAGIC");
    };
    PRINTD("Pole bitwy - NIC");
}

var int Q503_BOSSFIGHT_RANDOMIZEEFFECT.RND = 0;
func void Q503_BOSSFIGHT_HIDEEFFECT() {
    PRINTD("CHOWAM EFEKT");
    if ((Q503_BOSSFIGHT_BATTLEFIELD_EFFECTISON_FLY) == (TRUE)) {
        WLD_SENDTRIGGER("Q503_BOSSFIGHT_FLY");
        WLD_SENDTRIGGER("Q503_BOSSFIGHT_FLY_LIGHT");
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FLY_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FLY_02", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FLY_03", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FLY_04", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FLY_05", FALSE, FALSE, FALSE, FALSE);
        Q503_BOSSFIGHT_BATTLEFIELD_EFFECTISON_FLY = FALSE;
    };
    if ((Q503_BOSSFIGHT_BATTLEFIELD_EFFECTISON_FIRE) == (TRUE)) {
        WLD_SENDTRIGGER("Q503_BOSSFIGHT_FIRE");
        WLD_SENDTRIGGER("Q503_BOSSFIGHT_FIRE_LIGHT");
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FIRE_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FIRE_02", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FIRE_03", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FIRE_04", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_FIRE_05", FALSE, FALSE, FALSE, FALSE);
        Q503_BOSSFIGHT_BATTLEFIELD_EFFECTISON_FIRE = FALSE;
    };
    if ((Q503_BOSSFIGHT_BATTLEFIELD_EFFECTISON_MAGIC) == (TRUE)) {
        WLD_SENDTRIGGER("Q503_BOSSFIGHT_LIGHTING");
        WLD_SENDTRIGGER("Q503_BOSSFIGHT_LIGHTING_LIGHT");
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_LIGHTING_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_LIGHTING_02", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_LIGHTING_03", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_LIGHTING_04", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("VOLFZACKMAGEBOSS_LIGHTING_05", FALSE, FALSE, FALSE, FALSE);
        Q503_BOSSFIGHT_BATTLEFIELD_EFFECTISON_MAGIC = FALSE;
    };
}

func void Q503_BOSSFIGHT_BATTLEFIELD_APPLY() {
    if ((Q503_GOTOVOLFZACKE) == (5)) {
        PRINTD("KONIEC BATTLEFIELDA");
        Q503_BOSSFIGHT_HIDEEFFECT();
        FF_REMOVE(0xf7dc);
    };
    Q503_BOSSFIGHT_BATTLEFIELD_COUNT = (Q503_BOSSFIGHT_BATTLEFIELD_COUNT) + (1);
    if ((Q503_BOSSFIGHT_BATTLEFIELD_COUNT) == (5)) {
        Q503_BOSSFIGHT_HIDEEFFECT();
    };
    if ((Q503_BOSSFIGHT_BATTLEFIELD_COUNT) == (6)) {
        Q503_BOSSFIGHT_BATTLEFIELD_COUNT = 0;
        Q503_BOSSFIGHT_RANDOMIZEEFFECT();
    };
}

var int Q503_BOSSFIGHT_BATTLEFIELD_APPLY.Q503_BOSSFIGHT_BATTLEFIELD_COUNT = 0;
func void Q503_WALL_APPLY() {
    if ((Q503_WALL_COUNT) == (0)) {
        PRINTD("Rozpoczynam - Q503_WALL_APPLY");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("Q503_MOVER_WALL");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("Q503_MOVER_WALL", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("Q503_MOVER_WALL");
        Q503_WALL_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - Q503_WALL_APPLY");
        CHANGEVOBCOLLISION("Q503_MOVER_WALL", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf7de);
        Q503_WALL_COUNT = 0;
    };
}

var int Q503_WALL_APPLY.Q503_WALL_COUNT = 0;
instance Q503_WALL_APPLY.MOVER1(ZCMOVER)
var int Q503_WALL_APPLY.MOVPTR1 = 0;