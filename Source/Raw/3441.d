func int B_TEACHTHIEFTALENT(var C_NPC SLF, var C_NPC OTH, var int TALENT, var int LEVEL) {
    KOSTEN = B_GETLEARNCOSTTALENT(OTH, TALENT, LEVEL);
    if (((((TALENT) != (NPC_TALENT_PICKLOCK)) && ((TALENT) != (NPC_TALENT_SNEAK))) && ((TALENT) != (NPC_TALENT_ACROBAT))) && ((TALENT) != (NPC_TALENT_PICKPOCKET))) {
        PRINT("*** ERROR: Wrong Parameter ***");
        return FALSE;
    };
    if ((OTH.LP) < (KOSTEN)) {
        PRINTSCREEN(PRINT_NOTENOUGHLEARNPOINTS, -(1), -(1), FONT_SCREENSMALL, 2);
        B_SAY(SLF, OTH, "$NOLEARNNOPOINTS");
        return FALSE;
    };
    OTH.LP = (OTH.LP) - (KOSTEN);
    if ((TALENT) == (NPC_TALENT_PICKLOCK)) {
        NPC_SETTALENTSKILL(OTH, NPC_TALENT_PICKLOCK, LEVEL);
        PRINTSCREEN(PRINT_LEARNPICKLOCK, -(1), -(1), FONT_SCREEN, 2);
        return TRUE;
    };
    if ((TALENT) == (NPC_TALENT_SNEAK)) {
        NPC_SETTALENTSKILL(OTH, NPC_TALENT_SNEAK, LEVEL);
        return TRUE;
    };
    if ((TALENT) == (NPC_TALENT_ACROBAT)) {
        NPC_SETTALENTSKILL(OTH, NPC_TALENT_ACROBAT, LEVEL);
        PRINTSCREEN(PRINT_LEARNACROBAT, -(1), -(1), FONT_SCREEN, 2);
        return TRUE;
    };
    if ((TALENT) == (NPC_TALENT_PICKPOCKET)) {
        NPC_SETTALENTSKILL(OTH, NPC_TALENT_PICKPOCKET, LEVEL);
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int B_TEACHTHIEFTALENT.KOSTEN = 0;
