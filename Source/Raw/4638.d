instance SQ416_FINISHQUEST(CUTSCENE) {
    ONSTART = FUNCTION(0x16b32);
}

func void SQ416_FINISHQUEST_START() {
    WLD_SENDTRIGGER("SQ416_RAMSEYPARTY_01");
    NPC_CLEARAIQUEUE(NONE_500_RAMSEY);
    NONE_500_RAMSEY.AIVAR[92] = TRUE;
    TELEPORTNPCTOWP(0xd1fa, NONE_500_RAMSEY.WP);
    TELEPORTNPCTOWP(0xd212, VLK_3015_DETLOW.WP);
    TELEPORTNPCTOWP(0xd0af, VLK_3024_ERNESTO.WP);
    TELEPORTNPCTOWP(0xe09d, BAU_700_ALBYN.WP);
    TELEPORTNPCTOWP(0xd22c, VLK_6388_MORRIS.WP);
    TELEPORTNPCTOWP(0xe0db, BAU_706_LOKVAR.WP);
    TELEPORTNPCTOWP(0xcd22, VLK_6128_LEON.WP);
    TELEPORTNPCTOWP(0xe3ee, NONE_15_ULRYK.WP);
    TELEPORTNPCTOWP(0x71b, "PART12_RAMSEYHOUSE_36");
    B_TURNTONPC(NONE_500_RAMSEY, HERO);
    B_TURNTONPC(HERO, NONE_500_RAMSEY);
    AI_LOOKATNPC(HERO, NONE_500_RAMSEY);
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Finish_03_01");
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Finish_03_02");
    AI_FUNCTION(NONE_500_RAMSEY, 0x16b34);
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Finish_03_03");
    AI_FUNCTION(NONE_500_RAMSEY, 0xf856);
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Finish_03_04");
    AI_FUNCTION(NONE_500_RAMSEY, 0x16b35);
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Finish_03_05");
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Finish_03_06");
    AI_OUTPUT(NONE_500_RAMSEY, HERO, "DIA_Ramsey_SQ416_Finish_03_07");
    AI_STOPLOOKAT(NONE_500_RAMSEY);
    CREATEINVITEM(NONE_500_RAMSEY, 0x8e17);
    AI_USEITEM(NONE_500_RAMSEY, 0x8e17);
    AI_FUNCTION(NONE_500_RAMSEY, 0x16b33);
}

func void SQ416_FINISHQUEST_END() {
    FF_APPLYONCEEXT(0xf854, 75, 4);
}

func void SQ416_FINISHQUEST_CAMERA_01() {
    WLD_SENDTRIGGER("SQ416_RAMSEYPARTY_02");
    WLD_SENDUNTRIGGER("SQ416_RAMSEYPARTY_01");
}

func void SQ416_FINISHQUEST_CAMERA_02() {
    WLD_SENDTRIGGER("SQ416_RAMSEYPARTY_03");
    WLD_SENDUNTRIGGER("SQ416_RAMSEYPARTY_02");
}

