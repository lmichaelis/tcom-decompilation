func void EVENTSMANAGER_KQ405_SEWERS() {
    if (((LOG_GETSTATUS(MIS_KQ405)) != (LOG_RUNNING)) || ((CURRENTLEVEL) != (ARCHOLOS_SEWERS_ZEN))) {
        return;
    };
    if ((KQ405_FIGHTWITHGILESSTATUS) == (1)) {
        if ((NPC_HASITEMS(HERO, 37446)) >= (1)) {
            KQ405_FIGHTWITHGILESSTATUS = 2;
            B_LOGENTRY(TOPIC_KQ405, LOG_KQ405_GILAS_GOTFIGURE_V2);
        };
    };
}

