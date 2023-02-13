func int C_WANTTOEAT(var C_NPC SLF, var C_NPC OTH) {
    if ((SLF.AIVAR[15]) == (TRUE)) {
        return FALSE;
    };
    if ((SLF.GUILD) == (GIL_SCAVENGER)) {
        if ((OTH.GUILD) < (GIL_SEPERATOR_HUM)) {
            return TRUE;
        };
        if ((OTH.GUILD) > (GIL_SEPERATOR_ORC)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_SHEEP)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_MEATBUG)) {
            return TRUE;
        };
    };
    if ((SLF.GUILD) == (GIL_GIANT_RAT)) {
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
        if ((OTH.GUILD) == (GIL_MEATBUG)) {
            return TRUE;
        };
    };
    if ((SLF.GUILD) == (GIL_GIANT_BUG)) {
        if ((OTH.GUILD) == (GIL_MEATBUG)) {
            return TRUE;
        };
    };
    if ((SLF.GUILD) == (GIL_WARAN)) {
        if ((OTH.GUILD) == (GIL_SCAVENGER)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_HARPY)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_GOBBO)) {
            return TRUE;
        };
    };
    if (((SLF.GUILD) == (GIL_WOLF)) && ((SLF.AIVAR[43]) != (ID_KEILER))) {
        if ((((((((((((((((((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_DETLOW_13))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_DETLOW_14)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_DETLOW_12)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_DETLOW_11)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_DETLOW_08)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_DETLOW_07)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_DETLOW_CUTSCENE_02)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_DETLOW_CUTSCENE_01)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_DETLOW_01)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_DETLOW_02)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_DETLOW_03)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_DETLOW_04)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_DETLOW_05)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_QA202_01)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_QA202_02)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_QA202_03)))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WOLF_QA202_04)))) {
            return FALSE;
        };
        if ((OTH.GUILD) < (GIL_SEPERATOR_HUM)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_SHEEP)) {
            return TRUE;
        };
    };
    if ((SLF.GUILD) == (GIL_SUMMONED_WOLF)) {
        if ((OTH.GUILD) == (GIL_SHEEP)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_GIANT_RAT)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_MOLERAT)) {
            return TRUE;
        };
    };
    if ((SLF.GUILD) == (GIL_MINECRAWLER)) {
        if ((OTH.GUILD) < (GIL_SEPERATOR_HUM)) {
            return TRUE;
        };
        if ((OTH.GUILD) > (GIL_SEPERATOR_ORC)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_MEATBUG)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_GIANT_BUG)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_BLOODFLY)) {
            return TRUE;
        };
    };
    if ((SLF.GUILD) == (GIL_LURKER)) {
        if ((OTH.GUILD) < (GIL_SEPERATOR_HUM)) {
            return TRUE;
        };
        if ((OTH.GUILD) > (GIL_SEPERATOR_ORC)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_GOBBO)) {
            return TRUE;
        };
    };
    if ((SLF.GUILD) == (GIL_ZOMBIE)) {
        if ((OTH.GUILD) < (GIL_SEPERATOR_HUM)) {
            return TRUE;
        };
        if ((OTH.GUILD) > (GIL_SEPERATOR_ORC)) {
            return TRUE;
        };
    };
    if ((SLF.GUILD) == (GIL_SNAPPER)) {
        if ((OTH.GUILD) < (GIL_SEPERATOR_HUM)) {
            return TRUE;
        };
        if ((OTH.GUILD) > (GIL_SEPERATOR_ORC)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_SHEEP)) {
            return TRUE;
        };
    };
    if ((SLF.GUILD) == (GIL_SHADOWBEAST)) {
        if (((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(BEAR_QA202_01))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(BEAR_QM401)))) {
            return FALSE;
        };
        if ((OTH.GUILD) < (GIL_SEPERATOR_HUM)) {
            return TRUE;
        };
        if ((OTH.GUILD) > (GIL_SEPERATOR_ORC)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_SHEEP)) {
            return TRUE;
        };
        if ((OTH.GUILD) == (GIL_SCAVENGER)) {
            return TRUE;
        };
    };
    return FALSE;
}

