func void EVENTSMANAGER_SQ221() {
    if ((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) {
        if ((SQ221_GOTALLPACKET_LOGENTRY) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 37079)) == (4)) {
                SQ221_GOTALLPACKET_LOGENTRY = 1;
                B_LOGENTRY(TOPIC_SQ221, LOG_SQ221_MAIK_FOUNDALLPACKET);
            };
        };
        if ((SQ221_FARMERS_FIGHT) == (1)) {
            if (NPC_ISINSTATE(HERO, 61603)) {
                SQ221_FARMERS_FIGHT = 2;
                BAU_11016_FARMER.AIVAR[96] = 2;
                BAU_715_HEREFORD.AIVAR[96] = 3;
            } else if ((NPC_ISINSTATE(BAU_11016_FARMER, 61603)) && (NPC_ISINSTATE(BAU_715_HEREFORD, 61603))) {
                SQ221_FARMERS_FIGHT = 3;
                BAU_11016_FARMER.AIVAR[96] = 2;
                BAU_715_HEREFORD.AIVAR[96] = 3;
            };
        };
        if ((SQ221_MAIK_WORK) == (1)) {
            if ((SQ221_ROCKS_COUNT) == (5)) {
                SQ221_MAIK_WORK = 2;
                PRINTD("Koniec pracy");
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ221)) == (LOG_SUCCESS)) {
        if ((SPAWNFASTTRAVELPART13) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART13_FASTTRAVEL_GUY")) >= (10000)) {
                PRINTD("Odblokowany fast travel w parcie 13");
                WLD_SENDTRIGGER("KM_PART13_FASTTRAVEL_BOAT");
                SPAWNFASTTRAVELPART13 = TRUE;
                WLD_INSERTNPC(57820, "PART13_FASTTRAVEL_GUY");
                if (HLP_ISVALIDNPC(NONE_11059_MURPHY)) {
                    if (!(NPC_ISDEAD(NONE_11059_MURPHY))) {
                        B_REMOVENPC(57873);
                        PRINTD("Murpy znikn¹³");
                    };
                };
            };
        };
    };
}

