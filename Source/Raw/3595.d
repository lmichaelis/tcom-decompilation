func void B_WATERCIRCLECHECK(var string THEME) {
    if ((WATERCIRCLE_UNEQUIP) == (FALSE)) {
        if (((((((((STR_STARTSWITH(THEME, "HAR_")) || (STR_STARTSWITH(THEME, "VIL_"))) || (STR_STARTSWITH(THEME, "WLF_"))) || (STR_STARTSWITH(THEME, "INX_"))) || (STR_STARTSWITH(THEME, "CIT_"))) || (STR_STARTSWITH(THEME, "CRH_"))) || (STR_STARTSWITH(THEME, "CMD_"))) || (STR_STARTSWITH(THEME, "VIN_"))) || (STR_STARTSWITH(THEME, "VAL_"))) {
            ITM = NPC_GETEQUIPPEDARMOR(HERO);
            if (((NPC_HASEQUIPPEDARMOR(HERO)) == (TRUE)) && ((HLP_ISITEM(ITM, 0x8a3c)) == (TRUE))) {
                WATERCIRCLE_UNEQUIP = TRUE;
                AI_UNEQUIPARMOR(HERO);
                PRINTSCREENS(PRINT_WATERCIRCLE_ARMOR_WARNING, -(1), -(1), FONT_SCREEN, 5);
            };
        };
    };
    if ((((((((((STR_STARTSWITH(THEME, "HAR_")) == (FALSE)) && ((STR_STARTSWITH(THEME, "VIL_")) == (FALSE))) && ((STR_STARTSWITH(THEME, "WLF_")) == (FALSE))) && ((STR_STARTSWITH(THEME, "INX_")) == (FALSE))) && ((STR_STARTSWITH(THEME, "CIT_")) == (FALSE))) && ((STR_STARTSWITH(THEME, "CRH_")) == (FALSE))) && ((STR_STARTSWITH(THEME, "CMD_")) == (FALSE))) && ((STR_STARTSWITH(THEME, "VIN_")) == (FALSE))) && ((STR_STARTSWITH(THEME, "VAL_")) == (FALSE))) {
        WATERCIRCLE_UNEQUIP = FALSE;
        PRINTSCREENS(PRINT_WATERCIRCLE_ARMOR_CANEQUIP, -(1), -(1), FONT_SCREEN, 5);
    };
}

instance B_WATERCIRCLECHECK.ITM(C_ITEM)