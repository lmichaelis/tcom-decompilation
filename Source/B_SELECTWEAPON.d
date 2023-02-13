func void B_SELECTWEAPON(var C_NPC SLF, var C_NPC OTH) {
    if (((C_BODYSTATECONTAINS(SLF, BS_FALL)) || (C_BODYSTATECONTAINS(SLF, BS_SWIM))) || (C_BODYSTATECONTAINS(SLF, BS_DIVE))) {
        return;
    };
    if (B_SELECTSPELL(SLF, OTH)) {
        return;
    };
    if (NPC_ISINFIGHTMODE(SLF, FMODE_MAGIC)) {
        if (!(NPC_ISINFIGHTMODE(SLF, FMODE_NONE))) {
            AI_REMOVEWEAPON(SLF);
        };
        AI_READYMELEEWEAPON(SLF);
        return;
    };
    if (NPC_ISINFIGHTMODE(SLF, FMODE_FAR)) {
        if (((NPC_GETDISTTONPC(SLF, OTH)) > (FIGHT_DIST_RANGED_INNER)) || (!(NPC_HASEQUIPPEDMELEEWEAPON(SLF)))) {
            return;
        };
    };
    if (NPC_ISINFIGHTMODE(SLF, FMODE_MELEE)) {
        if (((NPC_GETDISTTONPC(SLF, OTH)) <= (FIGHT_DIST_RANGED_OUTER)) || (!(NPC_HASEQUIPPEDRANGEDWEAPON(SLF)))) {
            return;
        };
    };
    if ((NPC_HASEQUIPPEDMELEEWEAPON(SLF)) && ((NPC_GETDISTTONPC(SLF, OTH)) <= (FIGHT_DIST_RANGED_OUTER))) {
        if (!(NPC_ISINFIGHTMODE(SLF, FMODE_NONE))) {
            AI_REMOVEWEAPON(SLF);
        };
        AI_READYMELEEWEAPON(SLF);
        return;
    };
    if (((NPC_HASEQUIPPEDRANGEDWEAPON(SLF)) && ((NPC_GETDISTTONPC(SLF, OTH)) > (FIGHT_DIST_RANGED_INNER))) && (C_NPCHASATTACKREASONTOKILL(SLF))) {
        if (!(NPC_ISINFIGHTMODE(SLF, FMODE_NONE))) {
            AI_REMOVEWEAPON(SLF);
        };
        AI_READYRANGEDWEAPON(SLF);
        return;
    };
    if (NPC_ISINFIGHTMODE(SLF, FMODE_NONE)) {
        if (NPC_HASEQUIPPEDMELEEWEAPON(SLF)) {
            AI_READYMELEEWEAPON(SLF);
            return;
        };
        if (NPC_HASEQUIPPEDRANGEDWEAPON(SLF)) {
            AI_READYRANGEDWEAPON(SLF);
            return;
        };
        AI_READYMELEEWEAPON(SLF);
        return;
    };
}

