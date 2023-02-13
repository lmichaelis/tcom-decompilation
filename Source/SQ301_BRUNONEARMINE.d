var int SQ301_BRUNONEARMINE;
var int SQ301_ARAXOSNEARMINE;
var int SQ301_WORKER01NEARMINE;
var int SQ301_WORKER02NEARMINE;
var int SQ301_BRUNOISDEAD;
func void EVENTSMANAGER_SQ301() {
    if ((LOG_GETSTATUS(MIS_SQ301)) == (LOG_RUNNING)) {
        if ((SQ301_BRUNOISDEAD) == (FALSE)) {
            if (((SQ301_ROCKSREMOVED) == (FALSE)) && (NPC_ISDEAD(VLK_6355_BRUNO))) {
                SQ301_BRUNOISDEAD = TRUE;
                B_LOGENTRY(TOPIC_SQ301, LOG_SQ301_FAILEDQUEST);
                LOG_SETSTATUS(_@(MIS_SQ301), TOPIC_SQ301, LOG_FAILED);
                NPC_REFRESH(SLD_6356_ARAXOS);
                NPC_REFRESH(VLK_6357_NIVEL);
                NPC_REFRESH(VLK_6358_MIROH);
                B_IMMEDIATEATTACKPLAYER(SLD_6356_ARAXOS, 1819);
                B_IMMEDIATEATTACKPLAYER(VLK_6357_NIVEL, 1819);
                B_IMMEDIATEATTACKPLAYER(VLK_6358_MIROH, 1819);
            };
        };
        if ((SQ301_ROCKSREMOVED) == (FALSE)) {
            if ((SQ301_ARAXOSNEARMINE) == (FALSE)) {
                if (((NPC_GETDISTTOWP(SLD_6356_ARAXOS, "PART3_PATH_133")) <= (750)) && ((NPC_ISINSTATE(SLD_6356_ARAXOS, 61599)) == (FALSE))) {
                    PRINTD("Araxos zmieni³ rutynê!");
                    B_STARTOTHERROUTINE(SLD_6356_ARAXOS, "WAITMINE");
                    NPC_REFRESH(SLD_6356_ARAXOS);
                    SQ301_ARAXOSNEARMINE = TRUE;
                };
            };
            if ((SQ301_WORKER01NEARMINE) == (FALSE)) {
                if (((NPC_GETDISTTOWP(VLK_6357_NIVEL, "PART3_PATH_133")) <= (750)) && ((NPC_ISINSTATE(VLK_6357_NIVEL, 61599)) == (FALSE))) {
                    PRINTD("Robotnik 01 zmieni³ rutynê!");
                    B_STARTOTHERROUTINE(VLK_6357_NIVEL, "WAITMINE");
                    NPC_REFRESH(VLK_6357_NIVEL);
                    SQ301_WORKER01NEARMINE = TRUE;
                };
            };
            if ((SQ301_WORKER02NEARMINE) == (FALSE)) {
                if (((NPC_GETDISTTOWP(VLK_6358_MIROH, "PART3_PATH_133")) <= (750)) && ((NPC_ISINSTATE(VLK_6358_MIROH, 61599)) == (FALSE))) {
                    PRINTD("Robotnik 02 zmieni³ rutynê!");
                    B_STARTOTHERROUTINE(VLK_6358_MIROH, "WAITMINE");
                    NPC_REFRESH(VLK_6358_MIROH);
                    SQ301_WORKER02NEARMINE = TRUE;
                };
            };
            if ((SQ301_BRUNONEARMINE) == (FALSE)) {
                if ((NPC_GETDISTTOWP(VLK_6355_BRUNO, "PART3_PATH_133")) <= (750)) {
                    SQ301_BRUNONEARMINE = TRUE;
                    SQ301_WENTTOMINE = 2;
                    PRINTD("Bruno znalaz³ kopalniê!");
                };
            };
        };
        if ((SQ301_ARENAFIGHTHERO) == (1)) {
            if ((NPC_ISINSTATE(VLK_6355_BRUNO, 61603)) && (NPC_ISINSTATE(SLD_6356_ARAXOS, 61603))) {
                HERO.AIVAR[95] = FALSE;
                HERO.AIVAR[94] = FALSE;
                VLK_6355_BRUNO.AIVAR[94] = FALSE;
                SLD_6356_ARAXOS.AIVAR[94] = FALSE;
                VLK_6355_BRUNO.AIVAR[96] = 5;
                SLD_6356_ARAXOS.AIVAR[96] = 5;
                SQ301_ARENAFIGHTHERO = 3;
                PRINTD("Wygraliœmy!");
                VLK_6355_BRUNO.AIVAR[45] = AF_NONE;
                VLK_6355_BRUNO.AIVAR[64] = TRUE;
            } else if (NPC_ISINSTATE(HERO, 61603)) {
                B_STARTOTHERROUTINE(VLK_6355_BRUNO, "FOLLOWHERO");
                HERO.AIVAR[95] = FALSE;
                HERO.AIVAR[94] = FALSE;
                VLK_6355_BRUNO.AIVAR[94] = FALSE;
                SLD_6356_ARAXOS.AIVAR[94] = FALSE;
                VLK_6355_BRUNO.AIVAR[96] = 30;
                SLD_6356_ARAXOS.AIVAR[96] = 30;
                SQ301_ARENAFIGHTHERO = 2;
                PRINTD("Przegraliœmy!");
                VLK_6355_BRUNO.AIVAR[45] = AF_NONE;
                VLK_6355_BRUNO.AIVAR[64] = TRUE;
            };
        };
        if ((SQ301_FINALFIGHT) == (1)) {
            if ((((NPC_ISDEAD(VLK_6355_BRUNO)) && (NPC_ISDEAD(SLD_6356_ARAXOS))) && (NPC_ISDEAD(NONE_6361_THUG))) && (NPC_ISDEAD(NONE_6362_THUG))) {
                SQ301_FINALFIGHT = 2;
                if ((NPC_ISDEAD(VLK_6358_MIROH)) && (NPC_ISDEAD(VLK_6357_NIVEL))) {
                    B_LOGENTRY(TOPIC_SQ301, LOG_SQ301_FINISHQUEST1);
                    SQ301_FINISHQUEST();
                    SQ301_SPAWNNEWMONSTERS = 1;
                    SQ301_SPAWNNEWMONSTERS = WLD_GETDAY();
                    LOG_SETSTATUS(_@(MIS_SQ301), TOPIC_SQ301, LOG_SUCCESS);
                } else {
                    B_LOGENTRY(TOPIC_SQ301, LOG_SQ301_FINISHQUEST2);
                    SQ301_NIVELTALK = TRUE;
                    SQ301_MIROHTALK = TRUE;
                };
                B_STARTOTHERROUTINE(VLK_6358_MIROH, "AFTERFIGHT");
                NPC_REFRESH(VLK_6358_MIROH);
                B_STARTOTHERROUTINE(VLK_6357_NIVEL, "AFTERFIGHT");
                NPC_REFRESH(VLK_6357_NIVEL);
                NPC_REFRESH(NONE_6359_WORKER);
                NPC_REFRESH(NONE_6360_WORKER);
                VLK_6357_NIVEL.AIVAR[15] = FALSE;
                VLK_6358_MIROH.AIVAR[15] = FALSE;
                NONE_6359_WORKER.AIVAR[15] = FALSE;
                NONE_6360_WORKER.AIVAR[15] = FALSE;
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ301)) == (LOG_SUCCESS)) {
        if ((SQ301_SPAWNNEWMONSTERS) == (1)) {
            if ((SQ301_SPAWNNEWMONSTERS_DAY) <= ((WLD_GETDAY()) - (1))) {
                if ((((NPC_GETDISTTOWP(HERO, "PART3_MOB_73")) >= (5000)) && ((NPC_GETDISTTOWP(HERO, "PART3_MOB_15")) >= (5000))) && ((NPC_GETDISTTOWP(HERO, "PART3_MOB_85")) >= (5000))) {
                    SQ301_SPAWNNEWMONSTERS = 2;
                    WLD_INSERTNPC(50171, "PART3_MOB_73");
                    WLD_INSERTNPC(50171, "PART3_MOB_75");
                    WLD_INSERTNPC(50171, "PART3_MOB_74");
                    WLD_INSERTNPC(50140, "FP_ROAM_PART3_80");
                    WLD_INSERTNPC(50140, "FP_ROAM_PART3_117");
                    WLD_INSERTNPC(50140, "FP_ROAM_PART3_88");
                    WLD_INSERTNPC(50140, "FP_ROAM_PART3_86");
                    WLD_INSERTNPC(50331, "FP_ROAM_PART3_110");
                    WLD_INSERTNPC(50331, "FP_ROAM_PART3_113");
                    WLD_INSERTNPC(50182, "FP_ROAM_PART3_125");
                    WLD_INSERTNPC(50182, "FP_ROAM_PART3_124");
                    WLD_INSERTNPC(50182, "FP_ROAM_PART3_122");
                };
            };
        };
    };
}

