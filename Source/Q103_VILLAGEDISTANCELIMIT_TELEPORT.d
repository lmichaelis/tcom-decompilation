func void Q103_VILLAGEDISTANCELIMIT_TELEPORT() {
    Q103_VILLAGEDISTANCEWARN = 0;
    AI_TELEPORT(HERO, "VILLAGE_PATH_37");
    FADESCREENFROMBLACK(1);
}

func void Q103_PREPARENPC_JORNWAY() {
    B_STARTOTHERROUTINE(NONE_1_JORN, "Guide05");
    NPC_REFRESH(NONE_1_JORN);
}

func void Q103_PREPARENPC_FABIOWAY() {
    B_STARTOTHERROUTINE(BAU_703_MARTHA, "StartJorn");
    NPC_REFRESH(BAU_703_MARTHA);
    TELEPORTNPCTOWP(57542, BAU_703_MARTHA.WP);
    B_STARTOTHERROUTINE(BAU_702_VIKTOR, "MarthaTrialog");
    NPC_REFRESH(BAU_702_VIKTOR);
    TELEPORTNPCTOWP(57528, BAU_702_VIKTOR.WP);
}

func void Q103_GIVEKEY() {
    CREATEINVITEMS(SELF, 36895, 1);
    B_GIVEINVITEMS(SELF, OTHER, 36895, 1);
}

func void Q103_CHANGEAIVARS() {
    if (Q101_TIMOSURVIVE) {
        NONE_6_TIMO.AIVAR[15] = FALSE;
    };
    if (Q101_LEASURVIVE) {
        NONE_100009_LEA.AIVAR[15] = FALSE;
    };
    if ((Q102_EZEKIELSURVIVED) == (1)) {
        NONE_3_EZEKIEL.AIVAR[15] = FALSE;
    };
    NONE_1_JORN.AIVAR[15] = FALSE;
    NONE_5_FABIO.AIVAR[15] = FALSE;
    NONE_100007_RUPERT.AIVAR[15] = FALSE;
    NONE_100012_KAZEEM.AIVAR[15] = FALSE;
    NONE_100011_MAIWEN.AIVAR[15] = FALSE;
    NONE_100010_DARRYL.AIVAR[15] = FALSE;
    NONE_100008_ANA.AIVAR[15] = FALSE;
}

