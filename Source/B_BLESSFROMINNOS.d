func void B_BLESSFROMINNOS() {
    RND_NOSCARYEVENTS = TRUE;
    if ((PART11_TELEPORTSPOOKYWOMAN) == (0)) {
        if ((BOUNTY_MADCUTTER_SPAWN) != (1)) {
            if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
                PRINTD("Baba leci do TOT");
                NPC_CLEARAIQUEUE(NONE_11295_SPOOKYWOMAN);
                B_STARTOTHERROUTINE(NONE_11295_SPOOKYWOMAN, TOT);
                TELEPORTNPCTOWP(57252, NONE_11295_SPOOKYWOMAN.WP);
            } else if (((EVENT_TELEPORTSPOOKYWOMANONZENLOAD) == (0)) || ((EVENT_TELEPORTSPOOKYWOMANONZENLOAD) == (2))) {
                PRINTD("Jak wejdziesz do zena - usunê babê");
                EVENT_TELEPORTSPOOKYWOMANONZENLOAD = 1;
            };
        };
    };
    if ((RNG_SEVENT01_SPAWNED) == (TRUE)) {
        if (((CURRENTLEVEL) == (ARCHOLOS_SEWERS_ZEN)) && (!(NPC_ISDEAD(NONE_13688_EYELESSHOBO)))) {
            PRINTD("bezdomny leci do TOT");
            NPC_CLEARAIQUEUE(NONE_13688_EYELESSHOBO);
            B_STARTOTHERROUTINE(NONE_13688_EYELESSHOBO, TOT);
            TELEPORTNPCTOWP(59022, NONE_13688_EYELESSHOBO.WP);
        } else if (((EVENT_TELEPORTSPOOKYHOMELESSONZENLOAD) == (0)) || ((EVENT_TELEPORTSPOOKYHOMELESSONZENLOAD) == (2))) {
            PRINTD("Jak wejdziesz do zena - usunê bezdomnego");
            EVENT_TELEPORTSPOOKYHOMELESSONZENLOAD = 1;
        };
    };
}

func void B_BLESSFROMINNOSISNOLONGER() {
    RND_NOSCARYEVENTS = FALSE;
    if ((PART11_TELEPORTSPOOKYWOMAN) == (0)) {
        if ((BOUNTY_MADCUTTER_SPAWN) != (1)) {
            if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
                PRINTD("Baba wraca do domu");
                NPC_CLEARAIQUEUE(NONE_11295_SPOOKYWOMAN);
                B_STARTOTHERROUTINE(NONE_11295_SPOOKYWOMAN, START);
                TELEPORTNPCTOWP(57252, NONE_11295_SPOOKYWOMAN.WP);
                EVENT_TELEPORTSPOOKYWOMANONZENLOAD = 0;
            } else if ((EVENT_TELEPORTSPOOKYWOMANONZENLOAD) == (0)) {
                PRINTD("Jak wejdziesz do zena - przywrócê babê");
                EVENT_TELEPORTSPOOKYWOMANONZENLOAD = 2;
            } else {
                EVENT_TELEPORTSPOOKYWOMANONZENLOAD = 0;
            };
        };
    };
    if ((RNG_SEVENT01_SPAWNED) == (TRUE)) {
        if (((CURRENTLEVEL) == (ARCHOLOS_SEWERS_ZEN)) && (!(NPC_ISDEAD(NONE_13688_EYELESSHOBO)))) {
            PRINTD("Bezdomny wraca do domu");
            NPC_CLEARAIQUEUE(NONE_13688_EYELESSHOBO);
            B_STARTOTHERROUTINE(NONE_13688_EYELESSHOBO, START);
            TELEPORTNPCTOWP(59022, NONE_13688_EYELESSHOBO.WP);
            EVENT_TELEPORTSPOOKYHOMELESSONZENLOAD = 0;
        } else if ((EVENT_TELEPORTSPOOKYHOMELESSONZENLOAD) == (0)) {
            PRINTD("Jak wejdziesz do zena - przywrócê bzdomnego");
            EVENT_TELEPORTSPOOKYHOMELESSONZENLOAD = 2;
        } else {
            EVENT_TELEPORTSPOOKYHOMELESSONZENLOAD = 0;
        };
    };
}

