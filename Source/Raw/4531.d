func int COND_SQ419_PUSHCART() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((SQ419_CANPUSHCART) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

