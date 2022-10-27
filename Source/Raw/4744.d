func void EVENTSMANAGER_RINGS() {
    if ((NPC_HASITEMS(HERO, 0x8950)) >= (1)) {
        if ((CUSTOAMULETPROTECTION) == (TRUE)) {
            if ((((HERO.ATTRIBUTE[0]) <= ((HERO.ATTRIBUTE[1]) / (10))) && (!(NPC_ISDEAD(HERO)))) && (!(NPC_ISINSTATE(HERO, 0xf0a3)))) {
                HERO.ATTRIBUTE[0] = HERO.ATTRIBUTE[1];
                CUSTOAMULETPROTECTION = FALSE;
                HERO.FLAGS = 0;
                PRINTSCREENS(PRINT_CUSTOAMULETDESTROYED, -(1), -(1), FONT_SCREENSMALL, 5);
                NPC_REMOVEINVITEMS(HERO, 0x8950, 1);
                CREATEINVITEMS(HERO, 0x8953, 1);
                SND_PLAY3D(SELF, "PickAxeBroke");
            };
        };
    };
    if ((NPC_HASITEMS(HERO, 0x947f)) >= (1)) {
        if ((ITRI_FIST_01_STR_READY) == (TRUE)) {
            if ((((((NPC_HASEQUIPPEDMELEEWEAPON(HERO)) == (TRUE)) || ((NPC_HASREADIEDMELEEWEAPON(HERO)) == (TRUE))) || ((NPC_HASEQUIPPEDRANGEDWEAPON(HERO)) == (TRUE))) || ((NPC_HASREADIEDRANGEDWEAPON(HERO)) == (TRUE))) || (((NPC_HASEQUIPPEDRANGEDWEAPON(HERO)) == (TRUE)) && ((NPC_HASEQUIPPEDMELEEWEAPON(HERO)) == (TRUE)))) {
                PRINTSCREENS(PRINT_BOXERRINGFAILP1, -(1), -(1), FONT_SCREENSMALL, 5);
                PRINTSCREENS(PRINT_BOXERRINGFAILP2, -(1), -(1), FONT_SCREENSMALL, 6);
                ITRI_FIST_01_STR_READY = 2;
                NPC_REMOVEINVITEMS(HERO, 0x947f, 1);
                CREATEINVITEMS(HERO, 0x947f, 1);
            };
        };
    };
    if ((SCAV_SEEDS_RANDOMIZER) == (1)) {
        PRINTD(WORLD_ARCHOLOS);
        if ((((((NPC_HASEQUIPPEDMELEEWEAPON(HERO)) == (TRUE)) || ((NPC_HASREADIEDMELEEWEAPON(HERO)) == (TRUE))) || ((NPC_HASEQUIPPEDRANGEDWEAPON(HERO)) == (TRUE))) || ((NPC_HASREADIEDRANGEDWEAPON(HERO)) == (TRUE))) || (((NPC_HASEQUIPPEDRANGEDWEAPON(HERO)) == (TRUE)) && ((NPC_HASEQUIPPEDMELEEWEAPON(HERO)) == (TRUE)))) {
            PRINTD(WORLD_HAVEN);
            SCAV_SEEDS_RANDOMIZER = 2;
        };
    };
    if ((SCAV_SEEDS_RANDOMIZER) == (2)) {
        PRINTD(WORLD_VALERIO);
        AI_REMOVEWEAPON(HERO);
        AI_UNEQUIPWEAPONS(HERO);
        CANTWEARPEACEKEEPER();
    };
}

