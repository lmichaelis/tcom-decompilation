func void Q501_NOTHINGINTERESTING_S1() {
    var int Q501_COUNTREADEDBOOKS;
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        NOTHINGINTERESTING_S1();
        Q501_COUNTREADEDBOOKS = (Q501_COUNTREADEDBOOKS) + (1);
        if ((MOB_HASITEMS("KM_CHEST_RIEROL", 37513)) == (TRUE)) {
            if ((Q501_COUNTREADEDBOOKS) == (3)) {
                B_LOGENTRY(TOPIC_Q501, LOG_Q501_CANTFINDANYTHING);
            };
        };
    };
}
