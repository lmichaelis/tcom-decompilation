func void B_CREATEAMMO(var C_NPC SLF) {
    if (NPC_ISINFIGHTMODE(SLF, FMODE_FAR)) {
        RANGEDWEAPON = NPC_GETREADIEDWEAPON(SLF);
    };
    if (NPC_HASEQUIPPEDRANGEDWEAPON(SLF)) {
        RANGEDWEAPON = NPC_GETEQUIPPEDRANGEDWEAPON(SLF);
    };
}

instance B_CREATEAMMO.RANGEDWEAPON(C_ITEM)