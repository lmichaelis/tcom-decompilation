func int COND_SEWERS_ALCHEMY() {
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(NONE_13677_BALUEN))) {
        if ((QM203_OPENSEWERSGATE) == (2)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

