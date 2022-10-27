func int C_PREDATORFOUNDPREY(var C_NPC SLF, var C_NPC OTH) {
    if (((SLF.GUILD) == (GIL_WOLF)) && ((SLF.AIVAR[43]) != (ID_KEILER))) {
        if ((OTH.GUILD) == (GIL_SHEEP)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_GIANT_RAT)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_MOLERAT)) {
            return TRUE;
        };
        if (((OTH.GUILD) == (GIL_SCAVENGER)) && ((OTH.AIVAR[43]) != (ID_ORCBITER))) {
            return TRUE;
        };
    };
    if ((SLF.GUILD) == (GIL_LURKER)) {
        if ((OTH.GUILD) == (GIL_GOBBO)) {
            return TRUE;
        };
    };
    if ((SLF.GUILD) == (GIL_SNAPPER)) {
        if ((OTH.GUILD) < (GIL_SEPERATOR_HUM)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_GOBBO)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_SHEEP)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_GIANT_RAT)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_MOLERAT)) {
            return TRUE;
        };
        if (((OTH.GUILD) == (GIL_SCAVENGER)) && ((OTH.AIVAR[43]) != (ID_ORCBITER))) {
            return TRUE;
        };
    };
    if ((SLF.GUILD) == (GIL_SHADOWBEAST)) {
        if ((OTH.GUILD) < (GIL_SEPERATOR_HUM)) {
            return TRUE;
        };
        if ((OTH.GUILD) > (GIL_SEPERATOR_ORC)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_SHEEP)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_GIANT_RAT)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_MOLERAT)) {
            return TRUE;
        };
        if (((OTH.GUILD) == (GIL_SCAVENGER)) && ((OTH.AIVAR[43]) != (ID_ORCBITER))) {
            return TRUE;
        };
    };
    return FALSE;
}

