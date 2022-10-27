func void QM301_COUNTSHOOTS_A() {
    QM301_COUNTSHOOTS = (QM301_COUNTSHOOTS) + (1);
    B_GIVEPLAYERXP(XP_QM301_TARGETSHOOT);
    if ((QM301_COUNTSHOOTS) == (3)) {
        B_LOGENTRY(TOPIC_QM301, LOG_QM301_TARGET_SUCCESS_V1);
    };
}

func void QM301_COUNTSHOOTS_B() {
    QM301_COUNTNEXTSHOOTS = (QM301_COUNTNEXTSHOOTS) + (1);
    B_GIVEPLAYERXP(XP_QM301_TARGETSHOOT);
    if ((QM301_COUNTNEXTSHOOTS) == (3)) {
        B_LOGENTRY(TOPIC_QM301, LOG_QM301_TARGET_SUCCESS_V2);
    };
}

func void EVT_QM301_SHOOTTARGET_01_A() {
    MOB_CHANGEFOCUSNAME("QM301_TARGET_NAME_01_A", "MOBNAME_NOTHING");
    WLD_SENDTRIGGER("QM301_MOVER_SHOOTTARGER_01_A");
    QM301_COUNTSHOOTS_A();
}

func void EVT_QM301_SHOOTTARGET_02_A() {
    MOB_CHANGEFOCUSNAME("QM301_TARGET_NAME_02_A", "MOBNAME_NOTHING");
    WLD_SENDTRIGGER("QM301_MOVER_SHOOTTARGER_02_A");
    QM301_COUNTSHOOTS_A();
}

func void EVT_QM301_SHOOTTARGET_03_A() {
    MOB_CHANGEFOCUSNAME("QM301_TARGET_NAME_03_A", "MOBNAME_NOTHING");
    WLD_SENDTRIGGER("QM301_MOVER_SHOOTTARGER_03_A");
    QM301_COUNTSHOOTS_A();
}

func void EVT_QM301_SHOOTTARGET_01_B() {
    MOB_CHANGEFOCUSNAME("QM301_TARGET_NAME_01_B", "MOBNAME_NOTHING");
    WLD_SENDTRIGGER("QM301_MOVER_SHOOTTARGER_01_B");
    QM301_COUNTSHOOTS_B();
}

func void EVT_QM301_SHOOTTARGET_02_B() {
    MOB_CHANGEFOCUSNAME("QM301_TARGET_NAME_02_B", "MOBNAME_NOTHING");
    WLD_SENDTRIGGER("QM301_MOVER_SHOOTTARGER_02_B");
    QM301_COUNTSHOOTS_B();
}

func void EVT_QM301_SHOOTTARGET_03_B() {
    MOB_CHANGEFOCUSNAME("QM301_TARGET_NAME_03_B", "MOBNAME_NOTHING");
    WLD_SENDTRIGGER("QM301_MOVER_SHOOTTARGER_03_B");
    QM301_COUNTSHOOTS_B();
}

