func void EVENTSMANAGER_SQ118() {
    if ((LOG_GETSTATUS(MIS_SQ118)) != (LOG_SUCCESS)) {
        return;
    };
    if ((((SQ118_EZEKIEL_SEARCHFLORA) == (1)) && ((LOG_GETSTATUS(MIS_SQ121)) != (LOG_RUNNING))) && ((BOUNTY_HYENA_SPAWN) != (1))) {
        if (((SQ121_HELPINGRIORDIAN) == (0)) || ((SQ121_HELPINGRIORDIAN) == (2))) {
            if ((SQ118_EZEKIEL_SEARCHFLORA_DAY) <= ((WLD_GETDAY()) - (1))) {
                PRINTD("Ready for cutscene");
                SQ118_EZEKIEL_SEARCHFLORA = 2;
                SQ118_PREPARENPC();
            };
        };
    };
    if ((SQ118_EZEKIEL_SEARCHFLORA) == (2)) {
        if (((NPC_GETDISTTOWP(HERO, "VILLAGE_CEMETERY_SQ118_EZEKIEL")) <= (1000)) && ((BOUNTY_HYENA_SPAWN) != (1))) {
            if (((SQ121_HELPINGRIORDIAN) == (0)) || ((SQ121_HELPINGRIORDIAN) == (2))) {
                SQ118_EZEKIEL_SEARCHFLORA = 3;
                CUTSCENE_START(92862);
            };
        };
    };
}

