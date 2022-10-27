func void EVENTSMANAGER_Q303() {
    if (((LOG_GETSTATUS(MIS_Q303)) != (LOG_RUNNING)) || ((Q303_FIGHTWITHFOX) == (2))) {
        return;
    };
    if ((Q303_FIGHTWITHFOX) == (1)) {
        if (((NPC_ISINSTATE(PIR_1325_FOX, 0xf0a3)) && ((NPC_HASITEMS(HERO, 0x9236)) > (0))) && ((NPC_HASITEMS(HERO, 0x9234)) > (0))) {
            PRINTD("Wstaje");
            NPC_SETATTITUDE(PIR_1325_FOX, ATT_NEUTRAL);
            NPC_SETTEMPATTITUDE(PIR_1325_FOX, ATT_NEUTRAL);
            PIR_1325_FOX.AIVAR[1] = CRIME_NONE;
            PIR_1325_FOX.AIVAR[0] = FIGHT_NONE;
            MDL_STARTFACEANI(PIR_1325_FOX, S_NEUTRAL, 0x3f800000, -1082130432);
            PIR_1325_FOX.AIVAR[96] = 1;
            if ((PIR_1325_FOX.ATTRIBUTE[0]) != (PIR_1325_FOX.ATTRIBUTE[1])) {
                PIR_1325_FOX.ATTRIBUTE[0] = PIR_1325_FOX.ATTRIBUTE[1];
            };
            Q303_FIGHTWITHFOX = 2;
        };
    };
}

