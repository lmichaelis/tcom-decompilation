func void EVT_SQ126_FEILWAKEUP() {
    if ((SQ126_FEILWAKEUP) == (FALSE)) {
        SQ126_FEILWAKEUP = TRUE;
        AI_USEMOB(BAU_13770_FEIL, "HAMMOCK", -(1));
        FF_APPLYONCEEXT(0x1678a, 1000, 2);
        MOB_CHANGEFOCUSNAME("SQ126_PUTOUT_04", "MOBNAME_NOTHING");
        WLD_SENDTRIGGER("SQ126_MOVER_WATER");
    };
}

func void EVT_SQ126_PUTOUT() {
    if ((SQ126_FEILWAKEUP) == (FALSE)) {
        SND_PLAY("Forge_Water");
        SND_PLAY("MFX_Waterfist_Collide");
        AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
        EVT_SQ126_FEILWAKEUP();
    };
}

func void SQ126_FEIL_WAKEUP() {
    SQ126_FEIL_WAKEUP_COUNT = (SQ126_FEIL_WAKEUP_COUNT) + (1);
    if ((SQ126_FEIL_WAKEUP_COUNT) == (2)) {
        SQ126_FEIL_WAKEUP_COUNT = 0;
        PRINTD("RTN");
        NPC_EXCHANGEROUTINE(BAU_13770_FEIL, "SQ126_WAKEUP");
        NPC_REFRESH(BAU_13770_FEIL);
    };
}

var int SQ126_FEIL_WAKEUP.SQ126_FEIL_WAKEUP_COUNT = 0;
