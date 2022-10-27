func int COND_SQ116_KITCHEN() {
    if ((NPC_KNOWSINFO(HERO, 0xfdd4)) && ((SQ116_GUMBERTWAY_BLOCK) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_SQ116_PANTRY() {
    if ((NPC_KNOWSINFO(HERO, 0xfdda)) && ((SQ116_GUMBERTWAY_BLOCK) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

