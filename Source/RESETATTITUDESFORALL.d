func void RESETATTITUDESFORALL(var int NODE) {
    var C_NPC NPC;
    var ZCLISTSORT L;
    L = _^(NODE);
    if (L.DATA) {
        PRINTD("temp att reset");
        NPC = _^(L.DATA);
        if (((RESETATTLOCATION) == (LOC_WOLFSLAIR)) || ((RESETATTLOCATION) == (LOC_ALL))) {
            if (C_NPCBELONGSTOWOLFSLAIR(NPC)) {
                if ((WLD_GETGUILDATTITUDE(HERO.GUILD, NPC.GUILD)) != (ATT_HOSTILE)) {
                    if ((NPC_GETATTITUDE(NPC, HERO)) == (ATT_HOSTILE)) {
                        NPC_SETTEMPATTITUDE(NPC, WLD_GETGUILDATTITUDE(NPC.GUILD, HERO.GUILD));
                        NPC_SETATTITUDE(NPC, WLD_GETGUILDATTITUDE(NPC.GUILD, HERO.GUILD));
                        PRINTD(NPC.NAME[0]);
                    };
                };
            };
        };
        if (((RESETATTLOCATION) == (LOC_CITY)) || ((RESETATTLOCATION) == (LOC_ALL))) {
            if (C_NPCBELONGSTOCITY(NPC)) {
                if ((WLD_GETGUILDATTITUDE(HERO.GUILD, NPC.GUILD)) != (ATT_HOSTILE)) {
                    if ((NPC_GETATTITUDE(NPC, HERO)) == (ATT_HOSTILE)) {
                        NPC_SETTEMPATTITUDE(NPC, WLD_GETGUILDATTITUDE(NPC.GUILD, HERO.GUILD));
                        NPC_SETATTITUDE(NPC, WLD_GETGUILDATTITUDE(NPC.GUILD, HERO.GUILD));
                        PRINTD(NPC.NAME[0]);
                    };
                };
            };
        };
        if (((RESETATTLOCATION) == (LOC_MONASTERY)) || ((RESETATTLOCATION) == (LOC_ALL))) {
            if (C_NPCBELONGSTOMONASTERY(NPC)) {
                if ((WLD_GETGUILDATTITUDE(HERO.GUILD, NPC.GUILD)) != (ATT_HOSTILE)) {
                    if ((NPC_GETATTITUDE(NPC, HERO)) == (ATT_HOSTILE)) {
                        NPC_SETTEMPATTITUDE(NPC, WLD_GETGUILDATTITUDE(NPC.GUILD, HERO.GUILD));
                        NPC_SETATTITUDE(NPC, WLD_GETGUILDATTITUDE(NPC.GUILD, HERO.GUILD));
                        PRINTD(NPC.NAME[0]);
                    };
                };
            };
        };
        if (((RESETATTLOCATION) == (LOC_FARMS)) || ((RESETATTLOCATION) == (LOC_ALL))) {
            if (C_NPCBELONGSTOFARMS(NPC)) {
                if ((WLD_GETGUILDATTITUDE(HERO.GUILD, NPC.GUILD)) != (ATT_HOSTILE)) {
                    if ((NPC_GETATTITUDE(NPC, HERO)) == (ATT_HOSTILE)) {
                        NPC_SETTEMPATTITUDE(NPC, WLD_GETGUILDATTITUDE(NPC.GUILD, HERO.GUILD));
                        NPC_SETATTITUDE(NPC, WLD_GETGUILDATTITUDE(NPC.GUILD, HERO.GUILD));
                        PRINTD(NPC.NAME[0]);
                    };
                };
            };
        };
    };
    if (!(L.NEXT)) {
        LIST_DESTROYS(NODE);
        RESETATTLOCATION = 0;
    };
}

