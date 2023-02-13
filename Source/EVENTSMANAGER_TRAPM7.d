func void EVENTSMANAGER_TRAPM7() {
    if (((M7_TRAP_ACTIVATED) == (FALSE)) && ((TRAP26_SPAWNED) == (FALSE))) {
        if ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_M7TRAP_WAYPOINT)) <= (RNG_RADIUS_VERYCLOSE)) {
                M7_TRAP_ACTIVATED = TRUE;
                WLD_INSERTNPC(55358, "SLUMS_PATH_39");
                WLD_INSERTNPC(55360, "SLUMS_PATH_39");
                if (((SLUMSGUARDIAN_NEWTRAPS) == (TRUE)) || ((SLUMSGUARDIAN_PROTECTIONPAID) == (FALSE))) {
                    WLD_INSERTNPC(55362, "SLUMS_PATH_39");
                };
                PRINTD("Jakieœ œwiry chc¹ zat³uc Marvina!");
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

