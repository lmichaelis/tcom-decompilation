func int COND_SQ505_BARREL() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((SQ505_YOUNGVOLKERGUARD_FIGHT) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_SQ505_LOKVARCHEST() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && (NPC_KNOWSINFO(HERO, 88470))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

