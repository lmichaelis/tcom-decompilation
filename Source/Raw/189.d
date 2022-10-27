func int B_TEACHATTRIBUTEPOINTS(var C_NPC SLF, var C_NPC OTH, var int ATTRIB, var int POINTS, var int TEACHERMAX) {
    KOSTEN = B_GETLEARNCOSTATTRIBUTE(OTH, ATTRIB, POINTS);
    if ((((ATTRIB) != (ATR_STRENGTH)) && ((ATTRIB) != (ATR_DEXTERITY))) && ((ATTRIB) != (ATR_MANA_MAX))) {
        PRINT("*** ERROR: Wrong Parameter ***");
        return FALSE;
    };
    if ((ATTRIB) == (ATR_STRENGTH)) {
        REALATTRIBUTE = OTH.AIVAR[81];
    };
    if ((ATTRIB) == (ATR_DEXTERITY)) {
        REALATTRIBUTE = OTH.AIVAR[82];
    };
    if ((ATTRIB) == (ATR_MANA_MAX)) {
        REALATTRIBUTE = OTH.AIVAR[83];
    };
    if ((REALATTRIBUTE) >= (TEACHERMAX)) {
        CONCATTEXT = CONCATSTRINGS(PRINT_NOLEARNOVERPERSONALMAX, INTTOSTRING(TEACHERMAX));
        PRINTSCREEN(CONCATTEXT, -(1), -(1), FONT_SCREEN, 2);
        B_SAY(SLF, OTH, "$NOLEARNYOUREBETTER");
        return FALSE;
    };
    if (((REALATTRIBUTE) + (POINTS)) > (TEACHERMAX)) {
        CONCATTEXT = CONCATSTRINGS(PRINT_NOLEARNOVERPERSONALMAX, INTTOSTRING(TEACHERMAX));
        PRINTSCREEN(CONCATTEXT, -(1), -(1), FONT_SCREEN, 2);
        B_SAY(SLF, OTH, "$NOLEARNOVERPERSONALMAX");
        return FALSE;
    };
    if ((OTH.LP) < (KOSTEN)) {
        PRINTSCREEN(PRINT_NOTENOUGHLP, -(1), -(1), FONT_SCREEN, 2);
        B_SAY(SLF, OTH, "$NOLEARNNOPOINTS");
        return FALSE;
    };
    TELEMETRY_PLAYERTEACHATTRIBUTE(SLF, ATTRIB, POINTS);
    OTH.LP = (OTH.LP) - (KOSTEN);
    PLAYER_REAL_LEARNING = TRUE;
    B_RAISEATTRIBUTE(OTH, ATTRIB, POINTS);
    PLAYER_REAL_LEARNING = FALSE;
    return TRUE;
}

var string B_TEACHATTRIBUTEPOINTS.CONCATTEXT = "";
var int B_TEACHATTRIBUTEPOINTS.KOSTEN = 0;
var int B_TEACHATTRIBUTEPOINTS.REALATTRIBUTE = 0;
