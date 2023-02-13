func int COND_QM401_BOOKS() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((QM401_CANUSEBOOKS) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_QM401_FARN() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && (NPC_KNOWSINFO(HERO, 67569))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

