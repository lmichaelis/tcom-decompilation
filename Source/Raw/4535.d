func int COND_VINEYARDLIAM() {
    if (NPC_ISPLAYER(HERO)) {
        if ((SQ213_VINECOLLECT) == (TRUE)) {
            PRINTD("Hero mo¿e pracowaæ przy winnicy!");
            return TRUE;
        };
    };
    return TRUE;
}

func int COND_SQ225_CHEST() {
    if ((SQ225_ANDERASWAY_AGREED) == (1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

