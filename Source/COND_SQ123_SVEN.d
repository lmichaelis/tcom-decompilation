func int COND_SQ123_SVEN() {
    if ((((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((SQ123_CANDESTROYSVENBOAT) == (TRUE))) && ((SQ123_DESTROYEDBOAT) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_SQ123_HAROLD() {
    if ((((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((SQ123_CANDESTROYHAROLDBOAT) == (TRUE))) && ((SQ123_DESTROYEDBOAT) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

