func void EVT_SQ217_PEARLS() {
    if ((SQ217_PEARLS) == (1)) {
        SQ217_PEARLS = 2;
        MOB_CHANGEFOCUSNAME("SQ217_PEARLS_WATERCONTAINER", "MOBNAME_NOTHING");
        B_STARTOTHERROUTINE(KDW_6438_KOBUS, START);
        NPC_REFRESH(KDW_6438_KOBUS);
        FF_APPLYONCEEXT(0x16798, 1000, 10);
    };
}

func void SQ217_PEARLS_APPLY() {
    SQ217_PEARLS_COUNT = (SQ217_PEARLS_COUNT) + (1);
    if ((SQ217_PEARLS_COUNT) == (10)) {
        SQ217_PEARLS = 3;
        NPC_EXCHANGEROUTINE(SELF, "SQ217_WAIT");
    };
}

var int SQ217_PEARLS_APPLY.SQ217_PEARLS_COUNT = 0;