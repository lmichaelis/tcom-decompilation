func void B_BLESSATTRIBUTE(var C_NPC OTH, var int ATTRIB, var int POINTS) {
    var string CONCATTEXT;
    if ((ATTRIB) == (ATR_STRENGTH)) {
        OTH.ATTRIBUTE[4] = (OTH.ATTRIBUTE[4]) + (POINTS);
        OTH.AIVAR[81] = (OTH.AIVAR[81]) + (POINTS);
        CONCATTEXT = CONCATSTRINGS(PRINT_BLESSSTR, INTTOSTRING(POINTS));
        PRINTSCREEN(CONCATTEXT, -(1), -(1), FONT_SCREEN, 2);
    };
    if ((ATTRIB) == (ATR_DEXTERITY)) {
        OTH.ATTRIBUTE[5] = (OTH.ATTRIBUTE[5]) + (POINTS);
        OTH.AIVAR[82] = (OTH.AIVAR[82]) + (POINTS);
        CONCATTEXT = CONCATSTRINGS(PRINT_BLESSDEX, INTTOSTRING(POINTS));
        PRINTSCREEN(CONCATTEXT, -(1), -(1), FONT_SCREEN, 2);
    };
    if ((ATTRIB) == (ATR_MANA_MAX)) {
        OTH.ATTRIBUTE[3] = (OTH.ATTRIBUTE[3]) + (POINTS);
        OTH.AIVAR[83] = (OTH.AIVAR[83]) + (POINTS);
        OTH.ATTRIBUTE[2] = OTH.ATTRIBUTE[3];
        CONCATTEXT = CONCATSTRINGS(PRINT_BLESSMANA_MAX, INTTOSTRING(POINTS));
        PRINTSCREEN(CONCATTEXT, -(1), -(1), FONT_SCREEN, 2);
    };
    if ((ATTRIB) == (ATR_HITPOINTS_MAX)) {
        OTH.ATTRIBUTE[1] = (OTH.ATTRIBUTE[1]) + (POINTS);
        OTH.ATTRIBUTE[0] = OTH.ATTRIBUTE[1];
        CONCATTEXT = CONCATSTRINGS(PRINT_BLESSHITPOINTS_MAX, INTTOSTRING(POINTS));
        PRINTSCREEN(CONCATTEXT, -(1), -(1), FONT_SCREEN, 2);
    };
    if ((ATTRIB) == (ATR_HITPOINTS)) {
        OTH.ATTRIBUTE[0] = OTH.ATTRIBUTE[1];
        PRINTSCREEN(PRINT_BLESSHITPOINTS, -(1), -(1), FONT_SCREEN, 2);
    };
    if ((ATTRIB) == (ATR_MANA)) {
        OTH.ATTRIBUTE[2] = OTH.ATTRIBUTE[3];
        PRINTSCREEN(PRINT_BLESSMANA, -(1), -(1), FONT_SCREEN, 2);
    };
}

