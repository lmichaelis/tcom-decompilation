func int C_NPCISUNDEAD(var C_NPC SLF) {
    if ((((((((((SLF.GUILD) == (GIL_GOBBO_SKELETON)) || ((SLF.GUILD) == (GIL_SUMMONED_GOBBO_SKELETON))) || ((SLF.GUILD) == (GIL_SKELETON))) || ((SLF.GUILD) == (GIL_SUMMONED_SKELETON))) || ((SLF.GUILD) == (GIL_SKELETON_MAGE))) || ((SLF.GUILD) == (GIL_ZOMBIE))) || ((SLF.GUILD) == (GIL_SHADOWBEAST_SKELETON))) || ((SLF.GUILD) == (GIL_UNDEADORC))) || ((SLF.AIVAR[43]) == (ID_DRAGON_UNDEAD))) {
        return TRUE;
    };
    return FALSE;
}
