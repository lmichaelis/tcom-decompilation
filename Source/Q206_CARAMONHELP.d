instance Q206_CARAMONHELP(CUTSCENE) {
    ONSTART = FUNCTION(92434);
}

func void Q206_CARAMONHELP_WAIT() {
    AI_WAITTILLEND(NONE_7004_PABLO, NONE_13518_THUG);
    AI_WAITTILLEND(NONE_7004_PABLO, NONE_13519_THUG);
    AI_WAITTILLEND(NONE_7004_PABLO, HERO);
    AI_WAITTILLEND(NONE_13518_THUG, NONE_7004_PABLO);
    AI_WAITTILLEND(NONE_13518_THUG, NONE_13519_THUG);
    AI_WAITTILLEND(NONE_13518_THUG, HERO);
    AI_WAITTILLEND(NONE_13519_THUG, NONE_13518_THUG);
    AI_WAITTILLEND(NONE_13519_THUG, NONE_7004_PABLO);
    AI_WAITTILLEND(NONE_13519_THUG, HERO);
    AI_WAITTILLEND(HERO, NONE_13518_THUG);
    AI_WAITTILLEND(HERO, NONE_13519_THUG);
    AI_WAITTILLEND(HERO, NONE_7004_PABLO);
}

func void Q206_CARAMONHELP_START() {
    MUSIC_OVERRIDETRACK(21950);
    WLD_SENDTRIGGER("Q206_BEACHFIGHT_01");
    NPC_CLEARAIQUEUE(NONE_7004_PABLO);
    NONE_7004_PABLO.AIVAR[92] = TRUE;
    TELEPORTNPCTOWP(53989, NONE_6281_THUG.WP);
    TELEPORTNPCTOWP(53918, NONE_13518_THUG.WP);
    TELEPORTNPCTOWP(53921, NONE_13519_THUG.WP);
    TELEPORTNPCTOWP(53924, NONE_13520_THUG.WP);
    TELEPORTNPCTOWP(53927, NONE_13521_THUG.WP);
    TELEPORTNPCTOWP(51996, SLD_1009_CARAMON.WP);
    TELEPORTNPCTOWP(55615, NONE_7004_PABLO.WP);
    TELEPORTNPCTOWP(1819, "PARTM6_Q206_BEACH_HERO");
    B_TURNTONPC(NONE_6281_THUG, NONE_7004_PABLO);
    B_TURNTONPC(NONE_13518_THUG, NONE_7004_PABLO);
    B_TURNTONPC(NONE_13519_THUG, NONE_7004_PABLO);
    B_TURNTONPC(NONE_13520_THUG, HERO);
    B_TURNTONPC(NONE_13521_THUG, HERO);
    B_TURNTONPC(HERO, NONE_13518_THUG);
    B_TURNTONPC(NONE_7004_PABLO, NONE_13518_THUG);
    Q206_CARAMONHELP_WAIT();
    AI_OUTPUT(NONE_13518_THUG, HERO, "DIA_Thug_Q206_BeachFight_03_01");
    AI_OUTPUT(NONE_13518_THUG, HERO, "DIA_Thug_Q206_BeachFight_03_02");
    Q206_CARAMONHELP_WAIT();
    AI_FUNCTION(NONE_13518_THUG, 92436);
    AI_PLAYANI(NONE_6281_THUG, "T_THREAT_DEATH");
    AI_OUTPUT(NONE_13518_THUG, HERO, "DIA_Thug_Q206_Cutscene_03_03");
    Q206_CARAMONHELP_WAIT();
    AI_FUNCTION(NONE_13518_THUG, 92437);
    AI_PLAYANI(NONE_7004_PABLO, T_NO);
    AI_OUTPUT(NONE_7004_PABLO, HERO, "DIA_Pablo_Q206_Cutscene_03_04");
    Q206_CARAMONHELP_WAIT();
    AI_FUNCTION(NONE_7004_PABLO, 92435);
}

func void Q206_CARAMONHELP_END() {
    MUSIC_DISABLEOVERRIDE();
    FF_APPLYONCEEXT(61058, 75, 4);
}

func void Q206_CARAMONHELP_CAMERA_01() {
    WLD_SENDTRIGGER("Q206_BEACHFIGHT_02");
    WLD_SENDUNTRIGGER("Q206_BEACHFIGHT_01");
}

func void Q206_CARAMONHELP_CAMERA_02() {
    WLD_SENDTRIGGER("Q206_BEACHFIGHT_03");
    WLD_SENDUNTRIGGER("Q206_BEACHFIGHT_02");
}
