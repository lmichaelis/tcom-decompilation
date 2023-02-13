func int COND_Q402_DOOR() {
    if (NPC_KNOWSINFO(HERO, 81528)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

