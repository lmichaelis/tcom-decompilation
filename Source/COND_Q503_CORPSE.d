func int COND_Q503_CORPSE() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((Q503_BLOCKCORPSEKEY) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

