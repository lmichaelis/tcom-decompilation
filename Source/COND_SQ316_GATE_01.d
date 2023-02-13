func int COND_SQ316_GATE_01() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((SQ316_CANUSELEVER) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

