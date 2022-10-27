func int COND_KQ407_LEVER_01() {
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(MIL_13643_OLIVER))) {
        if (NPC_KNOWSINFO(HERO, 0x1016b)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

