func int COND_SQ417_LAMP() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((SQ417_PATROLTIME) == (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_SQ417_DOOR() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((SQ417_ARETHEPLAN_EVENTS) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

