func int C_NPCISBOTHEREDBYWEAPON(var C_NPC SLF, var C_NPC OTH) {
    if ((SLF.AIVAR[15]) == (TRUE)) {
        return FALSE;
    };
    if ((NPC_ISPLAYER(OTHER)) && ((OTHER.AIVAR[95]) == (TRUE))) {
        return FALSE;
    };
    if (((SLF.NPCTYPE) == (NPCTYPE_FRIEND)) && (NPC_ISPLAYER(OTHER))) {
        return FALSE;
    };
    if ((C_NPCISTOUGHGUY(SLF)) && (NPC_ISINFIGHTMODE(OTH, FMODE_MELEE))) {
        return FALSE;
    };
    if ((NPC_GETATTITUDE(SLF, OTH)) == (ATT_FRIENDLY)) {
        return FALSE;
    };
    if (C_NPCISGATEGUARD(SLF)) {
        return FALSE;
    };
    if (NPC_ISINFIGHTMODE(OTH, FMODE_FIST)) {
        return FALSE;
    };
    if ((NPC_ISINFIGHTMODE(OTH, FMODE_MAGIC)) && ((NPC_GETACTIVESPELLCAT(OTH)) != (SPELL_BAD))) {
        return FALSE;
    };
    if (((SLF.GUILD) == (GIL_DMT)) || ((SLF.GUILD) == (GIL_ORC))) {
        return FALSE;
    };
    return TRUE;
}

