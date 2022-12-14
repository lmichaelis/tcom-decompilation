func int B_TEACHPLAYERTALENTTAKEANIMALTROPHY(var C_NPC SLF, var C_NPC OTH, var int TROPHY) {
    KOSTEN = B_GETLEARNCOSTTALENT(OTH, NPC_TALENT_TAKEANIMALTROPHY, TROPHY);
    if ((OTH.LP) < (KOSTEN)) {
        PRINTSCREEN(PRINT_NOTENOUGHLEARNPOINTS, -(1), -(1), FONT_SCREENSMALL, 2);
        B_SAY(SLF, OTH, "$NOLEARNNOPOINTS");
        return FALSE;
    };
    OTH.LP = (OTH.LP) - (KOSTEN);
    LOG_CREATETOPIC(TOPIC_TALENTANIMALTROPHY, LOG_NOTE);
    B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_START);
    if ((TROPHY) == (TROPHY_TEETH)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[0] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_TEETH);
    };
    if ((TROPHY) == (TROPHY_CLAWS)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[1] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_CLAWS);
    };
    if ((TROPHY) == (TROPHY_FUR)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[2] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_FUR);
    };
    if ((TROPHY) == (TROPHY_REPTILESKIN)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[13] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_REPTILESKIN);
    };
    if ((TROPHY) == (TROPHY_FATS)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[15] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_FATS);
    };
    if ((TROPHY) == (TROPHY_SHELLS)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[17] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_SHELLS);
    };
    if ((TROPHY) == (TROPHY_HEART)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[3] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_HEART);
    };
    if ((TROPHY) == (TROPHY_SHADOWHORN)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[4] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_SHADOWHORN);
    };
    if ((TROPHY) == (TROPHY_FIRETONGUE)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[5] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_FIRETONGUE);
    };
    if ((TROPHY) == (TROPHY_BFWING)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[6] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_BFWING);
    };
    if ((TROPHY) == (TROPHY_BFSTING)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[7] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_BFSTING);
    };
    if ((TROPHY) == (TROPHY_MANDIBLES)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[8] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_MANDIBLES);
    };
    if ((TROPHY) == (TROPHY_CRAWLERPLATE)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[9] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_CRAWLERPLATE);
    };
    if ((TROPHY) == (TROPHY_DRGSNAPPERHORN)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[10] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_DRGSNAPPERHORN);
    };
    if ((TROPHY) == (TROPHY_SEEDS)) {
        PLAYER_TALENT_TAKEANIMALTROPHY[14] = TRUE;
        B_LOGENTRY(TOPIC_TALENTANIMALTROPHY, LOG_TALENTANIMALTROPHY_SEEDS);
    };
    NPC_SETTALENTSKILL(OTH, NPC_TALENT_TAKEANIMALTROPHY, 1);
    return TRUE;
}

var int B_TEACHPLAYERTALENTTAKEANIMALTROPHY.KOSTEN = 0;
