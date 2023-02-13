func int COND_SQ116_KITCHEN() {
    if ((NPC_KNOWSINFO(HERO, 64980)) && ((SQ116_GUMBERTWAY_BLOCK) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_SQ116_PANTRY() {
    if ((NPC_KNOWSINFO(HERO, 64986)) && ((SQ116_GUMBERTWAY_BLOCK) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

