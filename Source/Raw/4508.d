func int COND_STANBODY() {
    if ((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_RODRIGOCHEST() {
    if (NPC_KNOWSINFO(HERO, 0x1489d)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

