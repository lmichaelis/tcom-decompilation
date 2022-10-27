func void EVENTSMANAGER_QA202() {
    if ((LOG_GETSTATUS(MIS_QA202)) != (LOG_RUNNING)) {
        return;
    };
    if ((QA202_EVENTS) == (1)) {
        if ((NPC_GETDISTTOWP(VLK_6407_RAMHA, "PART7_AQ202_RAMHA_PLANT")) <= (300)) {
            PRINTD("Pierwszy event, �cierod�ejdy!");
            QA202_EVENTS = 2;
            B_STARTOTHERROUTINE(SCAVENGER_QA202_01, "TELEPORT");
            TELEPORTNPCTOWP(0xc619, SCAVENGER_QA202_01.WP);
            B_STARTOTHERROUTINE(SCAVENGER_QA202_02, "TELEPORT");
            TELEPORTNPCTOWP(0xc61c, SCAVENGER_QA202_02.WP);
            B_STARTOTHERROUTINE(SCAVENGER_QA202_03, "TELEPORT");
            TELEPORTNPCTOWP(0xc61f, SCAVENGER_QA202_03.WP);
        };
    };
    if ((QA202_EVENTS) == (2)) {
        if (((NPC_ISDEAD(SCAVENGER_QA202_01)) && (NPC_ISDEAD(SCAVENGER_QA202_02))) && (NPC_ISDEAD(SCAVENGER_QA202_03))) {
            QA202_EVENTS = 3;
            FF_APPLYONCEEXT(0x1700d, 1000, 7);
        };
    };
    if ((QA202_EVENTS) == (3)) {
        if ((((NPC_ISDEAD(WOLF_QA202_01)) && (NPC_ISDEAD(WOLF_QA202_02))) && (NPC_ISDEAD(WOLF_QA202_03))) && (NPC_ISDEAD(WOLF_QA202_04))) {
            QA202_EVENTS = 4;
            FF_APPLYONCEEXT(0x1700f, 1000, 7);
        };
    };
    if ((QA202_EVENTS) == (4)) {
        if ((NPC_ISDEAD(BEAR_QA202_01)) && ((NPC_ISINSTATE(VLK_6407_RAMHA, 0xf09f)) == (FALSE))) {
            QA202_EVENTS = 5;
            PRINTD("Walka sko�czona!");
            B_STARTOTHERROUTINE(VLK_6407_RAMHA, "QA202_GOTPLANT");
            NPC_REFRESH(VLK_6407_RAMHA);
            VLK_6407_RAMHA.FLAGS = NPC_FLAG_IMPORTANT;
            VLK_6407_RAMHA.NPCTYPE = NPCTYPE_MAIN;
            if ((VLK_6407_RAMHA.ATTRIBUTE[0]) != (VLK_6407_RAMHA.ATTRIBUTE[1])) {
                VLK_6407_RAMHA.ATTRIBUTE[0] = VLK_6407_RAMHA.ATTRIBUTE[1];
            };
        };
    };
    if ((QA202_READYFORCUTSCENE) == (1)) {
        QA202_READYFORCUTSCENE = 2;
        FF_APPLYONCEEXT(0x17011, 500, 2);
    };
    if ((QA202_READYFORCUTSCENE) == (3)) {
        if (((NPC_GETDISTTOWP(VLK_6284_FIGARO, "PART7_CUTSCENE_QA202_HERO")) <= (750)) && ((NPC_GETDISTTOWP(HERO, "PART7_CUTSCENE_QA202_HERO")) <= (750))) {
            QA202_READYFORCUTSCENE = 4;
            FF_APPLYONCEEXT(0x17013, 500, 2);
        };
    };
    if ((QA202_RAMHAWAKEUPREADY) == (TRUE)) {
        if ((((QA202_RAMHAWAKEUPREADY_DAY) <= ((WLD_GETDAY()) - (1))) && ((NPC_ISINSTATE(VLK_6407_RAMHA, 0xf09f)) == (FALSE))) && ((NPC_ISINSTATE(VLK_6284_FIGARO, 0xf09f)) == (FALSE))) {
            QA202_RAMHAWAKEUPREADY = 2;
            QA202_RAMHAAFTERPLANT = 2;
            QA202_READYFORCUTSCENE = 5;
            PRINTD("Ramha wsta�a, wracaj do miasta!");
            B_STARTOTHERROUTINE(VLK_6407_RAMHA, START);
            NPC_REFRESH(VLK_6407_RAMHA);
            VLK_6407_RAMHA.AIVAR[15] = FALSE;
            B_STARTOTHERROUTINE(VLK_6284_FIGARO, START);
            NPC_REFRESH(VLK_6284_FIGARO);
            VLK_6284_FIGARO.AIVAR[15] = FALSE;
            B_LOGENTRY(TOPIC_QA202, LOG_QA202_RAMHA_TIMELEFT);
        };
    };
}

func void QA202_LITTLEHEALFORRAMHA() {
    if ((VLK_6407_RAMHA.ATTRIBUTE[0]) != (VLK_6407_RAMHA.ATTRIBUTE[1])) {
        PRINTD("Lekkie uzdrowienie Ramhy");
        VLK_6407_RAMHA.ATTRIBUTE[0] = (VLK_6407_RAMHA.ATTRIBUTE[0]) + ((VLK_6407_RAMHA.ATTRIBUTE[0]) / (5));
    };
}

func void QA202_EVENT_WOLVES() {
    QA202_WOLVESCOUNT = (QA202_WOLVESCOUNT) + (1);
    if ((QA202_WOLVESCOUNT) == (7)) {
        PRINTD("Drugi event, wilki!");
        B_STARTOTHERROUTINE(WOLF_QA202_01, "TELEPORT");
        TELEPORTNPCTOWP(0xc790, WOLF_QA202_01.WP);
        B_STARTOTHERROUTINE(WOLF_QA202_02, "TELEPORT");
        TELEPORTNPCTOWP(0xc793, WOLF_QA202_02.WP);
        B_STARTOTHERROUTINE(WOLF_QA202_03, "TELEPORT");
        TELEPORTNPCTOWP(0xc796, WOLF_QA202_03.WP);
        B_STARTOTHERROUTINE(WOLF_QA202_04, "TELEPORT");
        TELEPORTNPCTOWP(0xc799, WOLF_QA202_04.WP);
        QA202_LITTLEHEALFORRAMHA();
    };
}

var int QA202_EVENT_WOLVES.QA202_WOLVESCOUNT = 0;
func void QA202_EVENT_BEAR() {
    QA202_BEARCOUNT = (QA202_BEARCOUNT) + (1);
    if ((QA202_BEARCOUNT) == (7)) {
        PRINTD("Trzeci event, nied�wied�!");
        B_STARTOTHERROUTINE(BEAR_QA202_01, "TELEPORT");
        TELEPORTNPCTOWP(0xc488, "PART7_MOB_16");
        QA202_LITTLEHEALFORRAMHA();
    };
}

var int QA202_EVENT_BEAR.QA202_BEARCOUNT = 0;
func void QA202_STARTCUTSCENE_SLEEPRAMHA() {
    QA202_SLEEPRAMHA = (QA202_SLEEPRAMHA) + (1);
    if ((QA202_SLEEPRAMHA) == (2)) {
        CUTSCENE_START(0x16a5b);
    };
}

var int QA202_STARTCUTSCENE_SLEEPRAMHA.QA202_SLEEPRAMHA = 0;
func void QA202_STARTCUTSCENE_WAKEUPRAMHA() {
    QA202_WAKEUPRAMHA = (QA202_WAKEUPRAMHA) + (1);
    if ((QA202_WAKEUPRAMHA) == (2)) {
        CUTSCENE_START(0x16a5e);
    };
}

var int QA202_STARTCUTSCENE_WAKEUPRAMHA.QA202_WAKEUPRAMHA = 0;