func int B_GIVEINVITEMS(var C_NPC GIVER, var C_NPC TAKER, var int ITEMINSTANCE, var int AMOUNT) {
    if (NPC_ISPLAYER(GIVER)) {
        if ((AMOUNT) > (NPC_HASITEMS(GIVER, ITEMINSTANCE))) {
            return FALSE;
        };
    };
    if ((AMOUNT) == (0)) {
        return TRUE;
    };
    NPC_REMOVEINVITEMS(GIVER, ITEMINSTANCE, AMOUNT);
    CREATEINVITEMS(TAKER, ITEMINSTANCE, AMOUNT);
    ITEMNAME = ITEM.NAME;
    if (NPC_ISPLAYER(GIVER)) {
        if ((ITEMINSTANCE) == (0x859b)) {
            CONCATTEXT = CONCATSTRINGS(INTTOSTRING(AMOUNT), PRINT_GOLDGEGEBEN);
            AI_PRINTSCREENS(GIVER, CONCATTEXT, -(1), YPOS_GOLDGIVEN, FONT_SCREENSMALL, 2);
        } else if ((AMOUNT) == (1)) {
            CONCATTEXT = CONCATSTRINGS(ITEMNAME, PRINT_ADDON_GEGEBEN);
            AI_PRINTSCREENS(GIVER, CONCATTEXT, -(1), YPOS_ITEMGIVEN, FONT_SCREENSMALL, 2);
        } else {
            CONCATTEXT = CONCATSTRINGS(INTTOSTRING(AMOUNT), PRINT_ITEMSGEGEBEN);
            CONCATTEXT = CONCATSTRINGS(CONCATTEXT, " (");
            CONCATTEXT = CONCATSTRINGS(CONCATTEXT, ITEMNAME);
            CONCATTEXT = CONCATSTRINGS(CONCATTEXT, ")");
            AI_PRINTSCREENS(GIVER, CONCATTEXT, -(1), YPOS_ITEMGIVEN, FONT_SCREENSMALL, 2);
        } else {
            /* set_instance(0) */;
        };
    };
    if (NPC_ISPLAYER(TAKER)) {
        if ((ITEMINSTANCE) == (0x859b)) {
            CONCATTEXT = CONCATSTRINGS(INTTOSTRING(AMOUNT), PRINT_GOLDERHALTEN);
            AI_PRINTSCREENS(GIVER, CONCATTEXT, -(1), YPOS_GOLDTAKEN, FONT_SCREENSMALL, 2);
        } else if ((AMOUNT) == (1)) {
            CONCATTEXT = CONCATSTRINGS(ITEMNAME, PRINT_ADDON_ERHALTEN);
            AI_PRINTSCREENS(GIVER, CONCATTEXT, -(1), YPOS_ITEMTAKEN, FONT_SCREENSMALL, 2);
        } else {
            CONCATTEXT = CONCATSTRINGS(INTTOSTRING(AMOUNT), PRINT_ITEMSERHALTEN);
            CONCATTEXT = CONCATSTRINGS(CONCATTEXT, " (");
            CONCATTEXT = CONCATSTRINGS(CONCATTEXT, ITEMNAME);
            CONCATTEXT = CONCATSTRINGS(CONCATTEXT, ")");
            AI_PRINTSCREENS(GIVER, CONCATTEXT, -(1), YPOS_ITEMTAKEN, FONT_SCREENSMALL, 2);
        };
    };
    if ((ITEMINSTANCE) == (0x859b)) {
        AI_SND_PLAY(TAKER, GELDBEUTEL);
    };
    return TRUE;
}

var string B_GIVEINVITEMS.CONCATTEXT = "";
var string B_GIVEINVITEMS.ITEMNAME = "";