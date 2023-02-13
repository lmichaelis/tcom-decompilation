instance SQ416_RAMSEYHOUSEMEETINGCUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(92989);
}

func void SQ416_RAMSEYHOUSEMEETINGCUTSCENE_START() {
    WLD_SENDTRIGGER("SQ416_RAMSEYHOUSE_01");
    NPC_CLEARAIQUEUE(NONE_500_RAMSEY);
    NONE_500_RAMSEY.AIVAR[92] = TRUE;
    TELEPORTNPCTOWP(53754, NONE_500_RAMSEY.WP);
    TELEPORTNPCTOWP(53778, VLK_3015_DETLOW.WP);
    TELEPORTNPCTOWP(55777, SLD_11050_GERKE.WP);
    TELEPORTNPCTOWP(53448, VLK_6389_NIRKA.WP);
    TELEPORTNPCTOWP(52497, VLK_3025_ALLAN.WP);
    TELEPORTNPCTOWP(52059, SLD_13491_RUDI.WP);
    TELEPORTNPCTOWP(1819, "PARTM5_RAMSEY_07");
    B_TURNTONPC(NONE_500_RAMSEY, HERO);
    B_TURNTONPC(HERO, NONE_500_RAMSEY);
    AI_LOOKATNPC(HERO, NONE_500_RAMSEY);
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Cutscene_03_01");
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Cutscene_03_02");
    AI_FUNCTION(NONE_500_RAMSEY, 92991);
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Cutscene_03_03");
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Cutscene_03_04");
    AI_FUNCTION(NONE_500_RAMSEY, 92992);
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Cutscene_03_05");
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Cutscene_03_06");
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Cutscene_03_07");
    AI_FUNCTION(NONE_500_RAMSEY, 92990);
}

func void SQ416_RAMSEYHOUSEMEETINGCUTSCENE_END() {
    FF_APPLYONCEEXT(63550, 75, 4);
}

func void SQ416_RAMSEYHOUSEMEETINGCUTSCENE_CAMERA_01() {
    WLD_SENDTRIGGER("SQ416_RAMSEYHOUSE_02");
    WLD_SENDUNTRIGGER("SQ416_RAMSEYHOUSE_01");
}

func void SQ416_RAMSEYHOUSEMEETINGCUTSCENE_CAMERA_02() {
    WLD_SENDTRIGGER("SQ416_RAMSEYHOUSE_03");
    WLD_SENDUNTRIGGER("SQ416_RAMSEYHOUSE_02");
}
