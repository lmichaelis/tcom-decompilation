func void G_CANNOTUSE(var int BISPLAYER, var int NATTRIBUTE, var int NVALUE) {
    if (((NATTRIBUTE) == (ATR_MANA_MAX)) && ((NVALUE) == (0xa2c2a))) {
    };
    if ((NATTRIBUTE) == (ATR_HITPOINTS)) {
        STRATTRIBUTEMISSING = PRINT_HITPOINTS_MISSING;
        NATTRIBUTEVALUE = SELF.ATTRIBUTE[0];
    };
    if ((NATTRIBUTE) == (ATR_HITPOINTS_MAX)) {
        STRATTRIBUTEMISSING = PRINT_HITPOINTS_MAX_MISSING;
        NATTRIBUTEVALUE = SELF.ATTRIBUTE[1];
    };
    if ((NATTRIBUTE) == (ATR_MANA)) {
        STRATTRIBUTEMISSING = PRINT_MANA_MISSING;
        NATTRIBUTEVALUE = SELF.ATTRIBUTE[2];
    };
    if ((NATTRIBUTE) == (ATR_MANA_MAX)) {
        STRATTRIBUTEMISSING = PRINT_MANA_MAX_MISSING;
        NATTRIBUTEVALUE = SELF.ATTRIBUTE[3];
    };
    if ((NATTRIBUTE) == (ATR_STRENGTH)) {
        STRATTRIBUTEMISSING = PRINT_STRENGTH_MISSING;
        NATTRIBUTEVALUE = SELF.ATTRIBUTE[4];
    };
    if ((NATTRIBUTE) == (ATR_DEXTERITY)) {
        STRATTRIBUTEMISSING = PRINT_DEXTERITY_MISSING;
        NATTRIBUTEVALUE = SELF.ATTRIBUTE[5];
    };
    STRATTRIBUTEMISSING = "";
    NATTRIBUTEVALUE = 0;
    NDIFFERENCE = (NVALUE) - (NATTRIBUTEVALUE);
    STRDIFFERENCE = INTTOSTRING(NDIFFERENCE);
    STRMESSAGE = STRDIFFERENCE;
    STRMESSAGE = CONCATSTRINGS(STRMESSAGE, " ");
    STRMESSAGE = CONCATSTRINGS(STRMESSAGE, STRATTRIBUTEMISSING);
    if ((BISPLAYER) && ((ISINCAMERA) == (FALSE))) {
        PRINT(STRMESSAGE);
    };
}

var string G_CANNOTUSE.STRMESSAGE = "";
var string G_CANNOTUSE.STRATTRIBUTEMISSING = "";
var int G_CANNOTUSE.NATTRIBUTEVALUE = 0;
var int G_CANNOTUSE.NDIFFERENCE = 0;
var string G_CANNOTUSE.STRDIFFERENCE = "";
