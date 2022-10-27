func int COND_KQ405_CHECKCORPSE() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((KQ405_FOUNDBODY) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

