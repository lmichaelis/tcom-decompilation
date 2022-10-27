func int B_TEACHFIGHTTALENTPERCENT(var C_NPC SLF, var C_NPC OTH, var int TALENT, var int PERCENT, var int TEACHERMAX) {
    KOSTEN = B_GETLEARNCOSTTALENT(OTH, TALENT, PERCENT);
    if (((((TALENT) != (NPC_TALENT_1H)) && ((TALENT) != (NPC_TALENT_2H))) && ((TALENT) != (NPC_TALENT_BOW))) && ((TALENT) != (NPC_TALENT_CROSSBOW))) {
        PRINT("*** ERROR: Wrong Parameter ***");
        return FALSE;
    };
    if ((TALENT) == (NPC_TALENT_1H)) {
        REALHITCHANCE = OTH.AIVAR[84];
    };
    if ((TALENT) == (NPC_TALENT_2H)) {
        REALHITCHANCE = OTH.AIVAR[85];
    };
    if ((TALENT) == (NPC_TALENT_BOW)) {
        REALHITCHANCE = OTH.AIVAR[86];
    };
    if ((TALENT) == (NPC_TALENT_CROSSBOW)) {
        REALHITCHANCE = OTH.AIVAR[87];
    };
    if ((REALHITCHANCE) >= (TEACHERMAX)) {
        CONCATTEXT = CONCATSTRINGS(PRINT_NOLEARNOVERPERSONALMAX, INTTOSTRING(TEACHERMAX));
        PRINTSCREEN(CONCATTEXT, -(1), -(1), FONT_SCREEN, 2);
        B_SAY(SLF, OTH, "$NOLEARNYOUREBETTER");
        return FALSE;
    };
    if (((REALHITCHANCE) + (PERCENT)) > (TEACHERMAX)) {
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
    OTH.LP = (OTH.LP) - (KOSTEN);
    TELEMETRY_PLAYERTEACHFIGHT(SLF, TALENT, PERCENT);
    PLAYER_REAL_LEARNING = TRUE;
    if ((TALENT) == (NPC_TALENT_1H)) {
        B_RAISEFIGHTTALENT(OTH, NPC_TALENT_1H, PERCENT);
        if ((OTH.AIVAR[84]) >= ((OTH.AIVAR[85]) + (30))) {
            B_RAISEFIGHTTALENT(OTH, NPC_TALENT_2H, PERCENT);
        } else {
            PLAYER_REAL_LEARNING = FALSE;
        } else {
            return TRUE;
        };
    };
    if ((TALENT) == (NPC_TALENT_2H)) {
        B_RAISEFIGHTTALENT(OTH, NPC_TALENT_2H, PERCENT);
        if ((OTH.AIVAR[85]) >= ((OTH.AIVAR[84]) + (30))) {
            B_RAISEFIGHTTALENT(OTH, NPC_TALENT_1H, PERCENT);
        } else {
            PLAYER_REAL_LEARNING = FALSE;
        } else {
            return TRUE;
        };
    };
    if ((TALENT) == (NPC_TALENT_BOW)) {
        B_RAISEFIGHTTALENT(OTH, NPC_TALENT_BOW, PERCENT);
        if ((OTH.AIVAR[86]) >= ((OTH.AIVAR[87]) + (30))) {
            B_RAISEFIGHTTALENT(OTH, NPC_TALENT_CROSSBOW, PERCENT);
        } else {
            PLAYER_REAL_LEARNING = FALSE;
        } else {
            return TRUE;
        };
    };
    if ((TALENT) == (NPC_TALENT_CROSSBOW)) {
        B_RAISEFIGHTTALENT(OTH, NPC_TALENT_CROSSBOW, PERCENT);
        if ((OTH.AIVAR[87]) >= ((OTH.AIVAR[86]) + (30))) {
            B_RAISEFIGHTTALENT(OTH, NPC_TALENT_BOW, PERCENT);
        } else {
            PLAYER_REAL_LEARNING = FALSE;
        } else {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var string B_TEACHFIGHTTALENTPERCENT.CONCATTEXT = "";
var int B_TEACHFIGHTTALENTPERCENT.KOSTEN = 0;
var int B_TEACHFIGHTTALENTPERCENT.REALHITCHANCE = 0;
