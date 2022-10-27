func int C_NPCISMONSTERMAGE(var C_NPC SLF) {
    if ((((((SLF.GUILD) == (GIL_SKELETON_MAGE)) || ((SLF.GUILD) == (GIL_FIREGOLEM))) || ((SLF.GUILD) == (GIL_ICEGOLEM))) || ((SLF.GUILD) == (GIL_DRAGON))) || ((SLF.GUILD) == (GIL_MINECRAWLER))) {
        return TRUE;
    };
    return FALSE;
}

