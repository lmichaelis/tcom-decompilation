const int RESETATTLOCATION = 0;
func void RESETATTITUDESFORALL(var int NODE) {
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

instance RESETATTITUDESFORALL.L(ZCLISTSORT)
instance RESETATTITUDESFORALL.NPC(C_NPC)
func void B_GRANTABSOLUTION(var int LOCATION) {
    if (((LOCATION) == (LOC_WOLFSLAIR)) || ((LOCATION) == (LOC_ALL))) {
        ABSOLUTIONLEVEL_WOLFSLAIR = (ABSOLUTIONLEVEL_WOLFSLAIR) + (1);
        PETZCOUNTER_WOLFSLAIR_MURDER = 0;
        PETZCOUNTER_WOLFSLAIR_THEFT = 0;
        PETZCOUNTER_WOLFSLAIR_ATTACK = 0;
        PETZCOUNTER_WOLFSLAIR_SHEEPKILLER = 0;
    };
    if (((LOCATION) == (LOC_CITY)) || ((LOCATION) == (LOC_ALL))) {
        ABSOLUTIONLEVEL_CITY = (ABSOLUTIONLEVEL_CITY) + (1);
        PETZCOUNTER_CITY_MURDER = 0;
        PETZCOUNTER_CITY_THEFT = 0;
        PETZCOUNTER_CITY_ATTACK = 0;
        PETZCOUNTER_CITY_SHEEPKILLER = 0;
    };
    if (((LOCATION) == (LOC_MONASTERY)) || ((LOCATION) == (LOC_ALL))) {
        ABSOLUTIONLEVEL_MONASTERY = (ABSOLUTIONLEVEL_MONASTERY) + (1);
        PETZCOUNTER_MONASTERY_MURDER = 0;
        PETZCOUNTER_MONASTERY_THEFT = 0;
        PETZCOUNTER_MONASTERY_ATTACK = 0;
        PETZCOUNTER_MONASTERY_SHEEPKILLER = 0;
    };
    if (((LOCATION) == (LOC_FARMS)) || ((LOCATION) == (LOC_ALL))) {
        ABSOLUTIONLEVEL_FARMS = (ABSOLUTIONLEVEL_FARMS) + (1);
        PETZCOUNTER_FARMS_MURDER = 0;
        PETZCOUNTER_FARMS_THEFT = 0;
        PETZCOUNTER_FARMS_ATTACK = 0;
        PETZCOUNTER_FARMS_SHEEPKILLER = 0;
    };
    RESETATTLOCATION = LOCATION;
    LIST_FORFS(MEM_WORLD.VOBLIST_NPCS, 0xa256);
}

