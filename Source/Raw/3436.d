func int B_TEACHMAGICCIRCLE(var C_NPC SLF, var C_NPC OTH, var int CIRCLE) {
    KOSTEN = B_GETLEARNCOSTTALENT(OTH, NPC_TALENT_MAGE, CIRCLE);
    if (((CIRCLE) < (1)) || ((CIRCLE) > (6))) {
        PRINT("*** B³¹d: Z³y parametr ***");
        return FALSE;
    };
    if ((OTH.LP) < (KOSTEN)) {
        PRINTSCREEN(PRINT_NOTENOUGHLP, -(1), -(1), FONT_SCREEN, 2);
        B_SAY(SLF, OTH, "$NOLEARNNOPOINTS");
        return FALSE;
    };
    OTH.LP = (OTH.LP) - (KOSTEN);
    NPC_SETTALENTSKILL(OTH, NPC_TALENT_MAGE, CIRCLE);
    LOG_CREATETOPIC(TOPIC_MAGIC, LOG_NOTE);
    B_LOGENTRY(TOPIC_MAGIC, LOG_MAGIC_CIRCLES);
    if ((CIRCLE) == (1)) {
        PRINTSCREEN(PRINT_LEARNCIRCLE_1, -(1), -(1), FONT_SCREEN, 2);
        return TRUE;
    };
    if ((CIRCLE) == (2)) {
        PRINTSCREEN(PRINT_LEARNCIRCLE_2, -(1), -(1), FONT_SCREEN, 2);
        return TRUE;
    };
    if ((CIRCLE) == (3)) {
        PRINTSCREEN(PRINT_LEARNCIRCLE_3, -(1), -(1), FONT_SCREEN, 2);
        return TRUE;
    };
    if ((CIRCLE) == (4)) {
        PRINTSCREEN(PRINT_LEARNCIRCLE_4, -(1), -(1), FONT_SCREEN, 2);
        return TRUE;
    };
    if ((CIRCLE) == (5)) {
        PRINTSCREEN(PRINT_LEARNCIRCLE_5, -(1), -(1), FONT_SCREEN, 2);
        return TRUE;
    };
    if ((CIRCLE) == (6)) {
        PRINTSCREEN(PRINT_LEARNCIRCLE_6, -(1), -(1), FONT_SCREEN, 2);
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int B_TEACHMAGICCIRCLE.KOSTEN = 0;
