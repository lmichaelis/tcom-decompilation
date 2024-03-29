instance Q514_VOLFZACKETREASURYFINISHCUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(92706);
}

func void Q514_VOLFZACKETREASURYFINISHCUTSCENE_START() {
    TELEPORTNPCTOWP(59259, "VOLFZACK_SWORD_05");
    WLD_SENDTRIGGER("VZ_TREASURY_CAMERA_07");
    AI_SETWALKMODE(HERO, NPC_RUN);
    AI_GOTOWP(HERO, "VOLFZACK_SWORD_HERO_01");
    AI_FUNCTION(HERO, 92707);
    AI_PLAYANI(HERO, "T_STAND_2_BREATH");
    AI_WAIT(HERO, 1067030938);
    AI_PLAYANI(HERO, "T_BREATH_2_STAND");
    AI_WAIT(HERO, 1045220557);
    AI_TURNAWAY(HERO, NONE_202_KESSEL_VZ);
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_MARKUSGONE_15_01");
    AI_FUNCTION(HERO, 92708);
    AI_PLAYANI(HERO, "T_FORGETIT");
}

func void Q514_VOLFZACKETREASURYFINISHCUTSCENE_GATE() {
    WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
    SND_PLAY("MFX_EarthQuake");
    WLD_SENDTRIGGER("VZ_TREASURY_FINALDOOR");
}

func void Q514_VOLFZACKETREASURYFINISHCUTSCENE_END() {
    if ((NPC_ISDEAD(NONE_11037_MARKUS_VZ)) == (FALSE)) {
        B_KILLNPC(59206);
    };
    SND_PLAY("FIG_SwordFinal");
    SND_PLAY("SVM_1_DEAD");
    TELEPORTNPCTOWP(59259, NONE_202_KESSEL_VZ.WP);
    WLD_SENDUNTRIGGER("VZ_TREASURY_CAMERA_07");
    NPC_CLEARAIQUEUE(HERO);
    AI_PLAYANI(HERO, "T_BREATH_2_STAND");
    HERO.AIVAR[4] = FALSE;
}

