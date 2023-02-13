func void EVENTSMANAGER_SQ415() {
    if ((LOG_GETSTATUS(MIS_SQ415)) == (LOG_RUNNING)) {
        if (NPC_KNOWSINFO(HERO, 82320)) {
            if ((SQ415_GOTSWORD_LOGENTRY) == (FALSE)) {
                if ((NPC_HASITEMS(HERO, 39534)) >= (1)) {
                    SQ415_GOTSWORD_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_SQ415, LOG_SQ415_FOUNDDEVIRSWORD);
                };
            };
        };
        if ((SQ415_PREPAREFIGHT) == (1)) {
            if ((SQ415_PREPAREFIGHT_DAY) <= ((WLD_GETDAY()) - (1))) {
                if (((((LOG_GETSTATUS(MIS_Q402)) == (LOG_SUCCESS)) && ((Q402_GRONCUTSCENESTATUS) == (0))) || (((Q402_HEROISINMINE) == (TRUE)) && ((Q402_GRONCUTSCENESTATUS) == (0)))) || ((Q402_GRONCUTSCENESTATUS) == (2))) {
                    if (((NPC_GETDISTTOWP(HERO, "PART16_CUTSCENE_BOLT_HERO")) >= (3000)) && ((NPC_GETDISTTOWP(DJG_10011_GRON, "PART16_CUTSCENE_BOLT_HERO")) >= (3000))) {
                        if ((!(NPC_ISINSTATE(DJG_13341_DEVIR, 61599))) && (!(NPC_ISINSTATE(DJG_13342_KYLID, 61599)))) {
                            SQ415_PREPAREFIGHT = 2;
                            PRINTD("O bogowie, walka!");
                            SQ415_PREPAREFIGHT_SCRIPT();
                        };
                    };
                };
            };
        };
    };
}

