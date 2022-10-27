func void EVT_SQ408_CANON_01() {
    if (((SQ408_CANUSECANON) == (1)) && ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO)))) {
        FADESCREENTOBLACKF(2, 0x167c4, 1000);
    };
}

func void EVT_SQ408_CANON_01_FADESCREEN() {
    B_STARTOTHERROUTINE(PIR_1312_LARRY, "AFTERCANON");
    NPC_REFRESH(PIR_1312_LARRY);
    TELEPORTNPCTOWP(0xe586, PIR_1312_LARRY.WP);
    TELEPORTNPCTOWP(0x71b, "PART17_SQ408_HERO");
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    B_STARTOTHERROUTINE(PIR_11125_BERTER, "SQ408_WAIT");
    TELEPORTNPCTOWP(0xe4fb, PIR_11125_BERTER.WP);
    PIR_1329_SAUL.FLAGS = 2;
    SQ408_CANUSECANON = 2;
    FF_APPLYONCEEXTGT(0xf40a, 0, -(1));
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
}

func void EVT_SQ408_CANON_02() {
    FF_APPLYONCEEXT(0xf41a, 250, 14);
}
