func void QM202_PREPARENPC() {
    PRINTD("Spawn");
    B_STARTOTHERROUTINE(VLK_6421_CITIZEN, "QM202_INN");
    TELEPORTNPCTOWP(53350, VLK_6421_CITIZEN.WP);
    B_STARTOTHERROUTINE(VLK_6420_CITIZEN, "QM202_INN");
    TELEPORTNPCTOWP(53345, VLK_6420_CITIZEN.WP);
    B_STARTOTHERROUTINE(VLK_6419_CITIZEN, "QM202_INN");
    TELEPORTNPCTOWP(53340, VLK_6419_CITIZEN.WP);
    WLD_INSERTNPC(53390, "PARTM4_TAVERN_STAND_01");
    WLD_INSERTNPC(53393, "PARTM4_TAVERN_STAND_01");
    WLD_INSERTNPC(53396, "PARTM4_TAVERN_STAND_01");
}

func void QM202_LEAVEINN_APPLY() {
    var int QM202_LEAVEINN_COUNT;
    QM202_LEAVEINN_COUNT = (QM202_LEAVEINN_COUNT) + (1);
    if ((QM202_LEAVEINN_COUNT) == (1)) {
        B_STARTOTHERROUTINE(VLK_13510_TESPI, "QM202_FOLLOW");
        NPC_REFRESH(VLK_13510_TESPI);
        TELEPORTNPCTOWP(53396, VLK_13510_TESPI.WP);
    };
    if ((QM202_LEAVEINN_COUNT) == (2)) {
        B_SAY(VLK_13510_TESPI, HERO, "$Tespi_QM202_WAIT");
    };
    if ((QM202_LEAVEINN_COUNT) == (3)) {
        B_STARTOTHERROUTINE(MIL_4017_ARWID, "QM202_WAIT");
        QM202_ARWID_RTNCHECK = 5;
        NPC_REFRESH(MIL_4017_ARWID);
        QM202_LEAVEINN_COUNT = 0;
    };
}

func void QM202_TESPI_CHANGERTN() {
    if ((QM202_HELPTESPI) == (1)) {
        NPC_EXCHANGEROUTINE(VLK_13510_TESPI, "QM202_FIELD");
        NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM202_FIELD");
        QM202_ARWID_RTNCHECK = 6;
    };
    QM202_ARWIDTOOKTAV = TRUE;
    NPC_EXCHANGEROUTINE(VLK_13510_TESPI, START);
    NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM202_GUIDE");
    QM202_ARWID_RTNCHECK = 1;
    NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM202_FINISH");
    QM202_OKTAV_RTNCHECK = 1;
}

func void QM202_SPAWNGIANTBUG() {
    PRINTD("Spawn");
    WLD_INSERTNPC(50443, "FP_ROAM_PART2_78");
    WLD_INSERTNPC(50444, "FP_ROAM_PART2_79");
    WLD_INSERTNPC(50445, "FP_ROAM_PART2_80");
    WLD_INSERTNPC(50446, "FP_ROAM_PART3_153");
    WLD_INSERTNPC(50447, "FP_ROAM_PART3_155");
}

func void QM202_FIGHTWITHBIGBUG() {
    NPC_EXCHANGEROUTINE(VLK_13510_TESPI, "QM202_WAIT");
    B_STARTOTHERROUTINE(MIL_4017_ARWID, "QM202_FIELD_FIGHT");
    QM202_ARWID_RTNCHECK = 7;
    NPC_REFRESH(MIL_4017_ARWID);
}

func void QM202_REMOVENPC() {
    B_REMOVENPC(53390);
    B_REMOVENPC(53393);
    B_REMOVENPC(53396);
    if ((LOG_GETSTATUS(MIS_Q311)) == (LOG_RUNNING)) {
        B_STARTOTHERROUTINE(VLK_6421_CITIZEN, CUTSCENERTN);
    };
    if ((LOG_GETSTATUS(MIS_QA302)) == (LOG_RUNNING)) {
        B_STARTOTHERROUTINE(VLK_6421_CITIZEN, "QA302_GERSTAND_INN");
    };
    B_STARTOTHERROUTINE(VLK_6421_CITIZEN, START);
    if ((LOG_GETSTATUS(MIS_Q311)) == (LOG_RUNNING)) {
        B_STARTOTHERROUTINE(VLK_6420_CITIZEN, CUTSCENERTN);
    };
    B_STARTOTHERROUTINE(VLK_6420_CITIZEN, START);
    if ((LOG_GETSTATUS(MIS_Q311)) == (LOG_RUNNING)) {
        B_STARTOTHERROUTINE(VLK_6419_CITIZEN, CUTSCENERTN);
    };
    B_STARTOTHERROUTINE(VLK_6419_CITIZEN, START);
}

