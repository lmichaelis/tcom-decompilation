func int COND_BEGGER() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) == (FALSE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

