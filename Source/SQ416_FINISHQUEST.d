instance SQ416_FINISHQUEST(CUTSCENE) {
    ONSTART = FUNCTION(92978);
}

func void SQ416_FINISHQUEST_START() {
    WLD_SENDTRIGGER("SQ416_RAMSEYPARTY_01");
    NPC_CLEARAIQUEUE(NONE_500_RAMSEY);
    NONE_500_RAMSEY.AIVAR[92] = TRUE;
    TELEPORTNPCTOWP(53754, NONE_500_RAMSEY.WP);
    TELEPORTNPCTOWP(53778, VLK_3015_DETLOW.WP);
    TELEPORTNPCTOWP(53423, VLK_3024_ERNESTO.WP);
    TELEPORTNPCTOWP(57501, BAU_700_ALBYN.WP);
    TELEPORTNPCTOWP(53804, VLK_6388_MORRIS.WP);
    TELEPORTNPCTOWP(57563, BAU_706_LOKVAR.WP);
    TELEPORTNPCTOWP(52514, VLK_6128_LEON.WP);
    TELEPORTNPCTOWP(58350, NONE_15_ULRYK.WP);
    TELEPORTNPCTOWP(1819, "PART12_RAMSEYHOUSE_36");
    B_TURNTONPC(NONE_500_RAMSEY, HERO);
    B_TURNTONPC(HERO, NONE_500_RAMSEY);
    AI_LOOKATNPC(HERO, NONE_500_RAMSEY);
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Finish_03_01");
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Finish_03_02");
    AI_FUNCTION(NONE_500_RAMSEY, 92980);
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Finish_03_03");
    AI_FUNCTION(NONE_500_RAMSEY, 63574);
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Finish_03_04");
    AI_FUNCTION(NONE_500_RAMSEY, 92981);
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Finish_03_05");
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Finish_03_06");
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Finish_03_07");
    AI_STOPLOOKAT(NONE_500_RAMSEY);
    CREATEINVITEM(NONE_500_RAMSEY, 36375);
    AI_USEITEM(NONE_500_RAMSEY, 36375);
    AI_FUNCTION(NONE_500_RAMSEY, 92979);
}

func void SQ416_FINISHQUEST_END() {
    FF_APPLYONCEEXT(63572, 75, 4);
}

func void SQ416_FINISHQUEST_CAMERA_01() {
    WLD_SENDTRIGGER("SQ416_RAMSEYPARTY_02");
    WLD_SENDUNTRIGGER("SQ416_RAMSEYPARTY_01");
}

func void SQ416_FINISHQUEST_CAMERA_02() {
    WLD_SENDTRIGGER("SQ416_RAMSEYPARTY_03");
    WLD_SENDUNTRIGGER("SQ416_RAMSEYPARTY_02");
}

