func void B_RAISEREALATTRIBUTELEARNCOUNTER(var C_NPC OTH, var int ATTRIB, var int POINTS) {
    if ((ATTRIB) == (ATR_STRENGTH)) {
        OTH.AIVAR[81] = (OTH.AIVAR[81]) + (POINTS);
    };
    if ((ATTRIB) == (ATR_DEXTERITY)) {
        OTH.AIVAR[82] = (OTH.AIVAR[82]) + (POINTS);
    };
    if ((ATTRIB) == (ATR_MANA_MAX)) {
        OTH.AIVAR[83] = (OTH.AIVAR[83]) + (POINTS);
    };
}

