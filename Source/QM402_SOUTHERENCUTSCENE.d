instance QM402_SOUTHERENCUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(92847);
}

func void QM402_SOUTHERENCUTSCENE_WAIT() {
    AI_WAITTILLEND(HERO, MIL_4016_WEGAR);
    AI_WAITTILLEND(HERO, NONE_13611_SOUTHERNER);
    AI_WAITTILLEND(HERO, NONE_13608_SOUTHERNER);
    AI_WAITTILLEND(MIL_4016_WEGAR, HERO);
    AI_WAITTILLEND(MIL_4016_WEGAR, NONE_13611_SOUTHERNER);
    AI_WAITTILLEND(MIL_4016_WEGAR, NONE_13608_SOUTHERNER);
    AI_WAITTILLEND(NONE_13611_SOUTHERNER, MIL_4016_WEGAR);
    AI_WAITTILLEND(NONE_13611_SOUTHERNER, HERO);
    AI_WAITTILLEND(NONE_13611_SOUTHERNER, NONE_13608_SOUTHERNER);
    AI_WAITTILLEND(NONE_13608_SOUTHERNER, MIL_4016_WEGAR);
    AI_WAITTILLEND(NONE_13608_SOUTHERNER, HERO);
    AI_WAITTILLEND(NONE_13608_SOUTHERNER, NONE_13611_SOUTHERNER);
}

func void QM402_SOUTHERENCUTSCENE_START() {
    QM402_SOUTHERENCUTSCENEENABLE = 2;
    WLD_SENDTRIGGER("QM402_SOUTHERNER_02");
    TELEPORTNPCTOWP(1819, "PARTM3_QM402_HERO_02");
    TELEPORTNPCTOWP(52847, "PARTM3_QM402_WEIGAR_01");
    TELEPORTNPCTOWP(53047, NONE_13606_SOUTHERNER.WP);
    TELEPORTNPCTOWP(53049, NONE_13607_SOUTHERNER.WP);
    TELEPORTNPCTOWP(53051, NONE_13608_SOUTHERNER.WP);
    TELEPORTNPCTOWP(53053, NONE_13609_SOUTHERNER.WP);
    TELEPORTNPCTOWP(53055, NONE_13610_SOUTHERNER.WP);
    TELEPORTNPCTOWP(53057, NONE_13611_SOUTHERNER.WP);
    AI_TURNTONPC(MIL_4016_WEGAR, NONE_13611_SOUTHERNER);
    AI_TURNTONPC(HERO, NONE_13611_SOUTHERNER);
    AI_TURNAWAY(NONE_13611_SOUTHERNER, MIL_4016_WEGAR);
    NPC_CLEARAIQUEUE(MIL_4016_WEGAR);
    NPC_CLEARAIQUEUE(NONE_13611_SOUTHERNER);
    QM402_SOUTHERENCUTSCENE_WAIT();
    AI_OUTPUT(NONE_13611_SOUTHERNER, HERO, "DIA_Southerner_QM402_BarrackCutscene_03_01");
    QM402_SOUTHERENCUTSCENE_WAIT();
    AI_FUNCTION(NONE_13611_SOUTHERNER, 92849);
    AI_OUTPUT(NONE_13611_SOUTHERNER, HERO, "DIA_Southerner_QM402_BarrackCutscene_03_02");
    AI_PLAYANI(NONE_13608_SOUTHERNER, "R_STRETCH_RANDOM_02");
    QM402_SOUTHERENCUTSCENE_WAIT();
    AI_FUNCTION(NONE_13611_SOUTHERNER, 92850);
    AI_TURNTONPC(HERO, NONE_13611_SOUTHERNER);
    AI_TURNTONPC(MIL_4016_WEGAR, NONE_13611_SOUTHERNER);
    AI_OUTPUT(MIL_4016_WEGAR, HERO, "DIA_Wegar_QM402_BarrackCutscene_03_03");
    QM402_SOUTHERENCUTSCENE_WAIT();
    AI_FUNCTION(HERO, 92848);
}

func void QM402_SOUTHERENCUTSCENE_END() {
    FF_APPLYONCEEXT(62871, 75, 4);
}

func void QM402_SOUTHERENCUTSCENE_CAMERA_01() {
    TELEPORTNPCTOWP(1819, "PARTM3_PATH_71");
    WLD_SENDTRIGGER("QM402_SOUTHERNER_01");
    WLD_SENDUNTRIGGER("QM402_SOUTHERNER_02");
}

func void QM402_SOUTHERENCUTSCENE_CAMERA_02() {
    TELEPORTNPCTOWP(1819, "PARTM3_QM402_HERO_01");
    WLD_SENDTRIGGER("QM402_SOUTHERNER_03");
    WLD_SENDUNTRIGGER("QM402_SOUTHERNER_01");
}

