func void EVENTSMANAGER_SQ210() {
    if ((LOG_GETSTATUS(MIS_SQ210)) == (LOG_SUCCESS)) {
        return;
    };
    if (SQ210_FASTTRAVEL) {
        return;
    };
    if ((NPC_ISDEAD(YLURKER_PART6_01)) && (NPC_ISDEAD(YLURKER_PART6_02))) {
        if ((NPC_GETDISTTOWP(HERO, "PART6_FASTTRAVEL_FISHERMAN")) >= (0x3a98)) {
            SQ210_FASTTRAVEL = TRUE;
            WLD_SENDTRIGGER("KM_FASTTRAVEL_BOAT_PART6");
            WLD_INSERTNPC(0xdb69, "PART6_FASTTRAVEL_FISHERMAN");
        };
    };
}

