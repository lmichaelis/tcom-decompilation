func void B_PLAYERFINDITEM(var int ITM, var int AMOUNT) {
    if (NPC_ISPLAYER(SELF)) {
        CREATEINVITEMS(SELF, ITM, AMOUNT);
        ITEMNAME = ITEM.NAME;
        if ((ITM) == (0x859b)) {
            CONCATTEXT = CONCATSTRINGS(INTTOSTRING(AMOUNT), PRINT_GOLDERHALTEN);
            PRINTS(CONCATTEXT);
            SND_PLAY(GELDBEUTEL);
        } else if ((AMOUNT) == (1)) {
            CONCATTEXT = CONCATSTRINGS(ITEMNAME, PRINT_ADDON_ERHALTEN);
            PRINTS(CONCATTEXT);
        } else {
            CONCATTEXT = CONCATSTRINGS(INTTOSTRING(AMOUNT), PRINT_ITEMSERHALTEN);
            CONCATTEXT = CONCATSTRINGS(CONCATTEXT, " (");
            CONCATTEXT = CONCATSTRINGS(CONCATTEXT, ITEMNAME);
            CONCATTEXT = CONCATSTRINGS(CONCATTEXT, ")");
            PRINTS(CONCATTEXT);
        };
    };
}

var string B_PLAYERFINDITEM.CONCATTEXT = "";
var string B_PLAYERFINDITEM.ITEMNAME = "";