func void EVENTSMANAGER_SQ402() {
    if ((LOG_GETSTATUS(MIS_SQ402)) == (LOG_RUNNING)) {
        if ((SQ402_NELSON_READYFORHUNT) == (4)) {
            if (((SQ402_NELSON_TALKWITHGASTON_DAY) <= ((WLD_GETDAY()) - (2))) && ((NPC_ISINSTATE(BAU_10029_GASTON, 0xf09f)) == (FALSE))) {
                PRINTD("Gaston polecia³ do klasztoru, mo¿na skoñczyæ questa");
                SQ402_NELSON_READYFORHUNT = 5;
                B_REMOVENPC(0xe36e);
                WLD_INSERTNPC(0xe377, "PART8_MONASTERY_47");
                B_STARTOTHERROUTINE(BAU_10029_GASTON, START);
                NPC_REFRESH(BAU_10029_GASTON);
            };
        };
        if (((SQ402_NELSON_READYFORHUNT) == (2)) || ((SQ402_NELSON_READYFORHUNT) == (6))) {
            if (NPC_ISDEAD(BAU_10028_NELSON)) {
                SQ402_NELSON_READYFORHUNT = 8;
                B_LOGENTRY(TOPIC_SQ402, LOG_SQ402_FAILED_V2);
                LOG_SETSTATUS(_@(MIS_SQ402), TOPIC_SQ402, LOG_FAILED);
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ402)) == (LOG_FAILED)) {
        if ((SQ402_NELSON_READYFORHUNT) == (9)) {
            if (((NPC_GETDISTTOWP(BAU_10028_NELSON, "PART16_STAND_01")) <= (0x7d0)) && ((NPC_ISINSTATE(BAU_10028_NELSON, 0xf09f)) == (FALSE))) {
                SQ402_NELSON_READYFORHUNT = 10;
                B_STARTOTHERROUTINE(BAU_10028_NELSON, START);
                NPC_REFRESH(BAU_10028_NELSON);
            };
        };
    };
}

