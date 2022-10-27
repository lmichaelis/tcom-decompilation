func int COND_SQ125_HELPKYLE() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((SQ125_HELPINGKYLE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

