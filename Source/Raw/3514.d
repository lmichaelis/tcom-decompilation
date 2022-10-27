func void FMQ002_GIVERODERICHSWORD() {
    if ((NPC_HASITEMS(OTHER, 0x9a4a)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x9a4a, 1);
        FMQ002_RODERICHSWORD = 1;
    };
    if (((NPC_HASITEMS(OTHER, 0x9a4b)) >= (1)) || ((NPC_HASITEMS(OTHER, 0x9a4c)) >= (1))) {
        if ((FMQ002_SWDTIER2_GOT) == (FALSE)) {
        } else {
            FMQ002_RODERICHSWORD = 2;
        } else {
            /* set_instance(0) */;
        };
    };
    if ((NPC_HASITEMS(OTHER, 0x9a4d)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x9a4d, 1);
        FMQ002_RODERICHSWORD = 3;
    };
}

func void FMQ002_GIVESWORDBACK() {
    if ((FMQ002_RODERICHSWORD) == (1)) {
    };
    if ((FMQ002_RODERICHSWORD) == (2)) {
        if ((FMQ002_SWDTIER2_GOT) == (FALSE)) {
        } else {
            /* set_instance(0) */;
        };
    };
    if ((FMQ002_RODERICHSWORD) == (3)) {
        B_GIVEINVITEMS(SELF, OTHER, 0x9a4d, 1);
    };
}

func void FMQ002_RESTARTNPC() {
    if (NPC_KNOWSINFO(OTHER, 0x10489)) {
        NPC_EXCHANGEROUTINE(MIL_4017_ARWID, START);
        NPC_EXCHANGEROUTINE(VLK_6111_CITYTRADE05, START);
        CREATEINVITEMS(MIL_4017_ARWID, 0x851c, 1);
        AI_EQUIPBESTMELEEWEAPON(MIL_4017_ARWID);
    };
    if (NPC_KNOWSINFO(OTHER, 0x10f37)) {
        NPC_EXCHANGEROUTINE(NONE_881_ODGAR, START);
    };
}

func void FMQ002_FINISHQUEST() {
    LOG_SETSTATUS(_@(MIS_FMQ002), TOPIC_FMQ002, LOG_SUCCESS);
    if ((FMQ002_RODERICHSWORD) == (1)) {
        B_GIVEPLAYERXP(XP_FMQ002_FINISH);
    };
    if ((FMQ002_RODERICHSWORD) == (2)) {
        B_GIVEPLAYERXP((XP_FMQ002_FINISH) * (2));
    };
    if ((FMQ002_RODERICHSWORD) == (3)) {
        B_GIVEPLAYERXP((XP_FMQ002_FINISH) * (3));
    };
}

