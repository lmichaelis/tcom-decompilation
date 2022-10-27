func int COND_Q402_DOOR() {
    if (NPC_KNOWSINFO(HERO, 0x13e78)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

