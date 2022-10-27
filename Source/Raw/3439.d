func void B_TEACHPLAYERTALENTACHEMY_POTIONS(var int TIER) {
    LOG_CREATETOPIC(TOPIC_TALENTALCHEMY, LOG_NOTE);
    B_LOGENTRY(TOPIC_TALENTALCHEMY, LOG_TALENTALCHEMY);
    if ((TIER) == (1)) {
        PLAYER_TALENT_ALCHEMY[0] = TRUE;
        LOG = BUILDRECIPELOG(0x889f);
        B_LOGENTRY(TOPIC_TALENTALCHEMY, LOG);
        PLAYER_TALENT_ALCHEMY[3] = TRUE;
        LOG = BUILDRECIPELOG(0x88af);
        B_LOGENTRY(TOPIC_TALENTALCHEMY, LOG);
    };
    if ((TIER) == (2)) {
        PLAYER_TALENT_ALCHEMY[1] = TRUE;
        LOG = BUILDRECIPELOG(0x88b3);
        B_LOGENTRY(TOPIC_TALENTALCHEMY, LOG);
        PLAYER_TALENT_ALCHEMY[4] = TRUE;
        LOG = BUILDRECIPELOG(0x88a3);
        B_LOGENTRY(TOPIC_TALENTALCHEMY, LOG);
    };
    if ((TIER) == (3)) {
        PLAYER_TALENT_ALCHEMY[2] = TRUE;
        LOG = BUILDRECIPELOG(0x88a7);
        B_LOGENTRY(TOPIC_TALENTALCHEMY, LOG);
        PLAYER_TALENT_ALCHEMY[5] = TRUE;
        LOG = BUILDRECIPELOG(0x88b7);
        B_LOGENTRY(TOPIC_TALENTALCHEMY, LOG);
        PLAYER_TALENT_ALCHEMY[14] = TRUE;
        LOG = BUILDRECIPELOG(0x88ab);
        B_LOGENTRY(TOPIC_TALENTALCHEMY, LOG);
        PLAYER_TALENT_ALCHEMY[13] = TRUE;
        LOG = BUILDRECIPELOG(0x88bb);
        B_LOGENTRY(TOPIC_TALENTALCHEMY, LOG);
    };
}

var string B_TEACHPLAYERTALENTACHEMY_POTIONS.LOG = "";
func int B_TEACHPLAYERTALENTALCHEMY(var C_NPC SLF, var C_NPC OTH, var int TIER) {
    KOSTEN = B_GETLEARNCOSTTALENT(OTH, NPC_TALENT_ALCHEMY, TIER);
    if ((OTH.LP) < (KOSTEN)) {
        PRINTSCREEN(PRINT_NOTENOUGHLEARNPOINTS, -(1), -(1), FONT_SCREENSMALL, 2);
        B_SAY(SLF, OTH, "$NOLEARNNOPOINTS");
        return FALSE;
    };
    OTH.LP = (OTH.LP) - (KOSTEN);
    B_TEACHPLAYERTALENTACHEMY_POTIONS(TIER);
    PRINTSCREEN(PRINT_LEARNALCHEMY, -(1), -(1), FONT_SCREEN, 2);
    NPC_SETTALENTSKILL(OTH, NPC_TALENT_ALCHEMY, TIER);
    return TRUE;
}

var int B_TEACHPLAYERTALENTALCHEMY.KOSTEN = 0;
