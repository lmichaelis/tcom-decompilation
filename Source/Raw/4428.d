func void KM_CTHULHUTEMPLE_OPEN_MAINGATE() {
    GAMESERVICES_UNLOCKACHIEVEMENT(ACH_37);
    WLD_PLAYEFFECT("spellFX_INCOVATION_WHITE", HERO, HERO, 0, 0, 0, FALSE);
    WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
    B_GIVEPLAYERXP(XP_EVENT_CTHULUTEMPLE);
}

func void EVT_SWAMTEMPLE_SPAWNGUARDIANS_R() {
    if ((SWAMTEMPLE_SPAWNGUARDIANS_R_CHECK) == (FALSE)) {
        SWAMTEMPLE_SPAWNGUARDIANS_R_CHECK = TRUE;
        WLD_PLAYEFFECT("spellFX_INCOVATION_WHITE", HERO, HERO, 0, 0, 0, FALSE);
        WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
        CHANGEVOBCOLLISION("TEMPLE_GUARDIAN_04", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("TEMPLE_GUARDIAN_05", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("SWAMPTEMPLE_GUARDIAN_R", FALSE, FALSE, FALSE, FALSE);
        WLD_INSERTNPC(0xe470, "PART17_TEMPLE_GUARDIAN_04");
        WLD_INSERTNPC(0xe472, "PART17_TEMPLE_GUARDIAN_05");
    };
}

var int EVT_SWAMTEMPLE_SPAWNGUARDIANS_R.SWAMTEMPLE_SPAWNGUARDIANS_R_CHECK = 0;
func void EVT_SWAMTEMPLE_SPAWNGUARDIANS_L() {
    if ((SWAMTEMPLE_SPAWNGUARDIANS_L_CHECK) == (FALSE)) {
        SWAMTEMPLE_SPAWNGUARDIANS_L_CHECK = TRUE;
        WLD_PLAYEFFECT("spellFX_INCOVATION_WHITE", HERO, HERO, 0, 0, 0, FALSE);
        WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
        CHANGEVOBCOLLISION("TEMPLE_GUARDIAN_06", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("TEMPLE_GUARDIAN_07", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("SWAMPTEMPLE_GUARDIAN_L", FALSE, FALSE, FALSE, FALSE);
        WLD_INSERTNPC(0xe474, "PART17_TEMPLE_GUARDIAN_06");
        WLD_INSERTNPC(0xe476, "PART17_TEMPLE_GUARDIAN_07");
    };
}

var int EVT_SWAMTEMPLE_SPAWNGUARDIANS_L.SWAMTEMPLE_SPAWNGUARDIANS_L_CHECK = 0;
func void SWAMTEMPLE_SPAWNGUARDIANS() {
    WLD_PLAYEFFECT("spellFX_INCOVATION_WHITE", HERO, HERO, 0, 0, 0, FALSE);
    WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
    CHANGEVOBCOLLISION("TEMPLE_GUARDIAN_01", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("TEMPLE_GUARDIAN_02", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("TEMPLE_GUARDIAN_03", FALSE, FALSE, FALSE, FALSE);
    WLD_INSERTNPC(0xe46a, "PART17_TEMPLE_GUARDIAN_01");
    WLD_INSERTNPC(0xe46c, "PART17_TEMPLE_GUARDIAN_02");
    WLD_INSERTNPC(0xe46e, "PART17_TEMPLE_GUARDIAN_03");
}

var int SWAMPTEMPLE_BLOCKGATE = 0;
func void EVT_SWAMP_GATE_R() {
    if ((SWAMPTEMPLE_BLOCKGATE) == (FALSE)) {
        WLD_SENDTRIGGER("SWAMP_GATE_RIGHT");
        SWAMPTEMPLE_BLOCKGATE = TRUE;
        SWAMTEMPLE_SPAWNGUARDIANS();
    };
    Q514_VOLFZACKEOPENFIRSTGATE_NOTHING_EFFECT();
}

func void EVT_SWAMP_GATE_L() {
    if ((SWAMPTEMPLE_BLOCKGATE) == (FALSE)) {
        WLD_SENDTRIGGER("SWAMP_GATE_L");
        SWAMPTEMPLE_BLOCKGATE = TRUE;
        SWAMTEMPLE_SPAWNGUARDIANS();
    };
    Q514_VOLFZACKEOPENFIRSTGATE_NOTHING_EFFECT();
}

