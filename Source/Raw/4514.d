func int COND_QA305_OLAFDOOR() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((LOG_GETSTATUS(MIS_QA305)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_QA305_USEBARREL() {
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) {
        if (NPC_KNOWSINFO(HERO, 0x114b5)) {
            return TRUE;
        };
    };
    return TRUE;
}

