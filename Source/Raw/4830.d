func void EVENTSMANAGER_FAQ003_AFTERMATCH() {
    if (((RND_PROVOCATION_FAQ003_CH2) == (1)) && (NPC_KNOWSINFO(HERO, 0x12223))) {
        if ((NPC_ISINSTATE(VLK_3019_ARNOLD, 0xf0a3)) && ((PROVOCATION_FAQ003_ARNOLD) == (FALSE))) {
            B_GIVEPLAYERXP(XP_EVENT_PROBLEMATICTHREE);
            PRINTD("EXP za Arnolda");
            PROVOCATION_FAQ003_ARNOLD = TRUE;
        };
        if ((NPC_ISINSTATE(VLK_3020_TOM, 0xf0a3)) && ((PROVOCATION_FAQ003_TOM) == (FALSE))) {
            B_GIVEPLAYERXP(XP_EVENT_PROBLEMATICTHREE);
            PRINTD("EXP za Toma");
            PROVOCATION_FAQ003_TOM = TRUE;
        };
        if ((NPC_ISINSTATE(VLK_3021_MIKKEL, 0xf0a3)) && ((PROVOCATION_FAQ003_MIKKEL) == (FALSE))) {
            B_GIVEPLAYERXP(XP_EVENT_PROBLEMATICTHREE);
            PRINTD("EXP za Mikkela");
            PROVOCATION_FAQ003_MIKKEL = TRUE;
        };
        if (NPC_ISINSTATE(HERO, 0xf0a3)) {
            PRINTD("I g�wno dostaniesz");
            PROVOCATION_FAQ003_TOM = TRUE;
            PROVOCATION_FAQ003_ARNOLD = TRUE;
            PROVOCATION_FAQ003_MIKKEL = TRUE;
        };
    };
}
