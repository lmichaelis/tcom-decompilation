func int COND_SQ217_WATERCONTAINER() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((SQ217_PEARLS) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

