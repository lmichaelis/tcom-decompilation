func int B_TEACHPLAYERTALENTSMITH(var C_NPC SLF, var C_NPC OTH, var int TIER) {
    KOSTEN = B_GETLEARNCOSTTALENT(OTH, NPC_TALENT_SMITH, TIER);
    if ((OTH.LP) < (KOSTEN)) {
        PRINTSCREEN(PRINT_NOTENOUGHLEARNPOINTS, -(1), -(1), FONT_SCREENSMALL, 2);
        B_SAY(SLF, OTH, "$NOLEARNNOPOINTS");
        return FALSE;
    };
    OTH.LP = (OTH.LP) - (KOSTEN);
    LOG_CREATETOPIC(TOPIC_TALENTSMITH, LOG_NOTE);
    if ((TIER) == (1)) {
        B_LOGENTRY(TOPIC_TALENTSMITH, TOPIC_TS_TIER01);
    };
    if ((TIER) == (2)) {
        B_LOGENTRY(TOPIC_TALENTSMITH, TOPIC_TS_TIER02);
    };
    if ((TIER) == (3)) {
        B_LOGENTRY(TOPIC_TALENTSMITH, TOPIC_TS_TIER03);
    };
    PRINTSCREEN(PRINT_LEARNSMITH, -(1), -(1), FONT_SCREEN, 2);
    NPC_SETTALENTSKILL(OTH, NPC_TALENT_SMITH, TIER);
    return TRUE;
}

var int B_TEACHPLAYERTALENTSMITH.KOSTEN = 0;
