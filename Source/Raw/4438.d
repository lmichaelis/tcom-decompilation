func void EVT_PQ110_BANDITSCRIPT() {
    if (WLD_ISTIME(20, 0, 4, 0)) {
        if ((PQ110_SPAWNTHIEF) == (FALSE)) {
            PQ110_SPAWNTHIEF = TRUE;
            WLD_SENDTRIGGER("PQ110_MOVER_BANDITSCRIPT");
            B_STARTOTHERROUTINE(NONE_14000_THIEF, "PQ110");
            NPC_REFRESH(NONE_14000_THIEF);
            TELEPORTNPCTOWP(0xccf4, NONE_14000_THIEF.WP);
        };
    };
}
