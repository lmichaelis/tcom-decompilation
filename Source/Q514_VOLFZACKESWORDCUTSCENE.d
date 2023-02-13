instance Q514_VOLFZACKESWORDCUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(92693);
}

func void Q514_VOLFZACKESWORDCUTSCENE_WAIT() {
    AI_WAITTILLEND(HERO, NONE_202_KESSEL_VZ);
    AI_WAITTILLEND(HERO, MIL_63710_DUSTER_VZ);
    AI_WAITTILLEND(NONE_202_KESSEL_VZ, HERO);
    AI_WAITTILLEND(NONE_202_KESSEL_VZ, MIL_63710_DUSTER_VZ);
    AI_WAITTILLEND(MIL_63710_DUSTER_VZ, NONE_202_KESSEL_VZ);
    AI_WAITTILLEND(MIL_63710_DUSTER_VZ, HERO);
}

func void Q514_VOLFZACKESWORDCUTSCENE_START() {
    WLD_SENDTRIGGER("VZ_SWORD_01");
    TELEPORTNPCTOWP(1819, "VOLFZACK_SWORD_KESSEL");
    B_STARTOTHERROUTINE(MIL_63710_DUSTER_VZ, "SWORDCUTSCENE");
    NPC_REFRESH(MIL_63710_DUSTER_VZ);
    TELEPORTNPCTOWP(59184, MIL_63710_DUSTER_VZ.WP);
    TELEPORTNPCTOWP(59184, "VOLFZACK_SWORD_DACK");
    TELEPORTNPCTOWP(59259, "VOLFZACK_SWORD_KESSEL");
    MDL_APPLYOVERLAYMDS(NONE_202_KESSEL_VZ, "HumanS_PalaPray2.mds");
    MDL_REMOVEOVERLAYMDS(NONE_202_KESSEL_VZ, HUMANSFLEEMDS);
    NONE_202_KESSEL_VZ.AIVAR[92] = TRUE;
    AI_SETWALKMODE(NONE_202_KESSEL_VZ, NPC_WALK);
    AI_GOTOWP(NONE_202_KESSEL_VZ, "VOLFZACK_SWORD_05");
    Q514_VOLFZACKESWORDCUTSCENE_WAIT();
    AI_TURNTONPC(HERO, NONE_202_KESSEL_VZ);
    AI_TURNTONPC(MIL_63710_DUSTER_VZ, NONE_202_KESSEL_VZ);
    AI_PLAYANI(NONE_202_KESSEL_VZ, "T_STAND_2_PRAY");
    AI_OUTPUT(NONE_202_KESSEL_VZ, HERO, "DIA_Kessel_Q514_Sword_03_06");
    AI_OUTPUT(NONE_202_KESSEL_VZ, HERO, "DIA_Kessel_Q514_Sword_03_07");
    AI_PLAYANI(NONE_202_KESSEL_VZ, "T_PRAY_2_STAND");
    AI_SETWALKMODE(NONE_202_KESSEL_VZ, NPC_WALK);
    AI_GOTOWP(NONE_202_KESSEL_VZ, "VOLFZACK_SWORD_07");
    AI_FUNCTION(NONE_202_KESSEL_VZ, 92694);
    Q514_VOLFZACKESWORDCUTSCENE_WAIT();
    CREATEINVITEM(NONE_202_KESSEL_VZ, 35390);
    AI_EQUIPARMOR(NONE_202_KESSEL_VZ, 35390);
    AI_PLAYANI(NONE_202_KESSEL_VZ, "T_SWORDKESSEL");
    AI_WAIT(HERO, 1089051034);
    AI_WAIT(MIL_63710_DUSTER_VZ, 1089051034);
    AI_PLAYANI(HERO, "T_EXPLOSION_SCARED_HERO");
    AI_STANDUPQUICK(MIL_63710_DUSTER_VZ);
    AI_PLAYANI(MIL_63710_DUSTER_VZ, "T_EXPLOSION_SCARED_DUSTER");
    AI_TURNTONPC(HERO, NONE_202_KESSEL_VZ);
    AI_TURNTONPC(MIL_63710_DUSTER_VZ, NONE_202_KESSEL_VZ);
    AI_WAIT(NONE_202_KESSEL_VZ, 1077936128);
    Q514_VOLFZACKESWORDCUTSCENE_WAIT();
    AI_FUNCTION(HERO, 92698);
    AI_FUNCTION(HERO, 92699);
    AI_WAIT(HERO, 1045220557);
    AI_FUNCTION(HERO, 92697);
}

func void Q514_VOLFZACKESWORDCUTSCENE_CAMERA_01() {
    WLD_SENDTRIGGER("VZ_SWORD_02");
    WLD_SENDUNTRIGGER("VZ_SWORD_01");
    WLD_SENDTRIGGER("VZ_SWORD");
    TELEPORTNPCTOWP(59259, "VOLFZACK_SWORD_07");
    FF_APPLYONCEEXT(92695, 1000, 10);
}

func void Q514_VOLFZACKESWORDCUTSCENE_APPLY() {
    var int Q514_VOLFZACKESWORDCUTSCENE_APPLY_COUNT;
    Q514_VOLFZACKESWORDCUTSCENE_APPLY_COUNT = (Q514_VOLFZACKESWORDCUTSCENE_APPLY_COUNT) + (1);
    if ((Q514_VOLFZACKESWORDCUTSCENE_APPLY_COUNT) == (6)) {
        WLD_SENDTRIGGER("VZ_SWORD_03");
        WLD_SENDUNTRIGGER("VZ_SWORD_02");
    };
    if ((Q514_VOLFZACKESWORDCUTSCENE_APPLY_COUNT) == (7)) {
        WLD_PLAYEFFECT("FX_IceWave", NONE_202_KESSEL_VZ, NONE_202_KESSEL_VZ, 0, 0, 0, FALSE);
        WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
    };
}

func void Q514_VOLFZACKESWORDCUTSCENE_END() {
    Q514_SWORD_CUTSCENE = 3;
    WLD_SENDUNTRIGGER("VZ_SWORD_03");
    HERO.AIVAR[4] = FALSE;
    WLD_INSERTITEM(39466, "FP_VZ_SWORD");
}

func void Q514_VOLFZACKESWORDCUTSCENE_KESSEL_REMOVE() {
    B_REMOVENPC(59259);
    HERO.AIVAR[4] = FALSE;
}

func void Q514_VOLFZACKESWORDCUTSCENE_KESSEL_SPAWN() {
    WLD_INSERTNPC(59259, "VOLFZACK_SWORD_01");
    NONE_202_KESSEL_VZ.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(NONE_202_KESSEL_VZ, "DEPRESSION");
    NPC_REFRESH(NONE_202_KESSEL_VZ);
    TELEPORTNPCTOWP(59259, NONE_202_KESSEL_VZ.WP);
    AI_PLAYANI(NONE_202_KESSEL_VZ, "T_FORGETIT");
    HERO.AIVAR[4] = FALSE;
}

