func void EVENTSMANAGER_RND_TROLLTRAP() {
    if ((PART15_SPAWN_TROLL) == (FALSE)) {
        if ((NPC_ISDEAD(KM_YTROLL_01)) && (NPC_ISDEAD(KM_YTROLL_02))) {
            PART15_SPAWN_TROLL = 1;
            WLD_INSERTNPC(0xc74f, "PART15_MOB_242");
        };
    };
    if ((PART15_SPAWN_TROLL) == (1)) {
        if ((NPC_GETDISTTONPC(HERO, KM_TROLLSPRINT)) <= (RNG_RADIUS_VERYCLOSE2)) {
            PART15_SPAWN_TROLL = 2;
            PART15_SPAWN_TROLL_DAY = WLD_GETDAY();
            AI_OUTPUT(HERO, HERO, "DIA_MARVIN_TROLL_15_01");
        };
    };
    if ((PART15_SPAWN_TROLL) == (2)) {
        if ((KAPITEL) >= (4)) {
            if ((PART15_SPAWN_TROLL_DAY) <= ((WLD_GETDAY()) - (1))) {
                if ((NPC_GETDISTTOWP(HERO, "PART15_MOB_238")) >= (0x1388)) {
                    PART15_SPAWN_TROLL = 3;
                    WLD_INSERTNPC(0xe27f, "PART15_MOB_242");
                    WLD_INSERTNPC(0xe281, "PART15_MOB_242");
                };
            };
        };
    };
}

var int EVENTSMANAGER_RND_TROLLTRAP.PART15_SPAWN_TROLL = 0;
var int EVENTSMANAGER_RND_TROLLTRAP.PART15_SPAWN_TROLL_DAY = 0;
