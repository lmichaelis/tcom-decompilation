func void EVT_SQ117_FALL() {
    if ((RESERVED_VAR_INT_03) == (0)) {
        RESERVED_VAR_INT_03 = 1;
        if ((NPC_ISDEAD(SNAPPER_SQ117_01)) == (FALSE)) {
            B_GIVEPLAYERXP((SNAPPER.LEVEL) * (10));
        };
        if ((NPC_ISDEAD(SNAPPER_SQ117_02)) == (FALSE)) {
            B_GIVEPLAYERXP((SNAPPER.LEVEL) * (10));
        };
        if ((NPC_ISDEAD(SNAPPER_SQ117_03)) == (FALSE)) {
            B_GIVEPLAYERXP((SNAPPER.LEVEL) * (10));
        };
        WLD_SENDTRIGGER("MOVER_SQ117_SMALLROCK");
        WLD_SENDTRIGGER("MOVER_SQ117_BIGROCK");
        WLD_SENDTRIGGER("MOVER_SQ117_TARGETNAME");
        FF_APPLYONCEEXT(0xf36a, 400, 6);
        SND_PLAY("ROCKS_FALL_02");
    };
}

