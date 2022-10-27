func void EVENTSMANAGER_SQ309() {
    if ((LOG_GETSTATUS(MIS_SQ309)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ309_SPAWNMURES) == (FALSE)) {
        if (((SQ309_INFORMATIONABOUTSUES) == (TRUE)) && (NPC_KNOWSINFO(HERO, 0x12d2a))) {
            WLD_SENDTRIGGER("SQ309_KNIFE");
            PRINTD("Ten Moras jest zbyt potê¿ny.");
            SQ309_SPAWNMURES = TRUE;
            WLD_INSERTNPC(0xd77d, "SLUMS_PATH_65");
        };
    };
    if ((SQ309_MARVINSAWDOCUMENTABOUTMAILOR) == (TRUE)) {
        if ((NPC_KNOWSINFO(HERO, 0x1280d)) && ((SQ309_LOGENTRYABOUTDIMA) == (FALSE))) {
            B_LOGENTRY(TOPIC_SQ309, LOG_SQ309_DOCUMENTABOUTMAILOR);
            SQ309_LOGENTRYABOUTDIMA = TRUE;
        };
    };
    if ((SQ309_SEARCHINGFORSUESHOUSE) == (TRUE)) {
        if ((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_64")) <= (500)) {
            if ((SQ309_INFORMATIONABOUTSUES) == (FALSE)) {
                B_LOGENTRY(TOPIC_SQ309, LOG_SQ309_GOLDENINNOSTRADERS);
                SQ309_SEARCHINGFORSUESHOUSE = FALSE;
            };
        };
    };
    if ((SQ309_PROOFPOINTS_BLUEPRINT) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 0x91a4)) >= (1)) {
            SQ309_PROOFPOINTS = (SQ309_PROOFPOINTS) + (1);
            SQ309_PROOFPOINTS_BLUEPRINT = TRUE;
            PRINTD("Marvin ma plany, +1 pkt do dowodów");
        };
    };
    if ((SQ309_PROOFPOINTS_INNOSFIGURE) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 0x91a3)) >= (1)) {
            SQ309_PROOFPOINTS = (SQ309_PROOFPOINTS) + (1);
            SQ309_PROOFPOINTS_INNOSFIGURE = TRUE;
            PRINTD("Marvin ma figurke, +1 pkt do dowodów");
        };
    };
    if ((SQ309_PROOFLOGENTRY) == (FALSE)) {
        if ((SQ309_PROOFPOINTS) >= (2)) {
            PRINTD("Marvin ma wystarczaj¹co dowodów!");
            B_LOGENTRY(TOPIC_SQ309, LOG_SQ309_HIGHPROOFPOINTS);
            SQ309_PROOFLOGENTRY = TRUE;
            SQ309_CHAIRWORKINNOS_DONE = 3;
        };
    };
}

