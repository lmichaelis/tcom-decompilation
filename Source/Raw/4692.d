func void EVENTSMANAGER_Q204() {
    if ((LOG_GETSTATUS(MIS_Q204)) != (LOG_RUNNING)) {
        return;
    };
    if (Q204_ADELARDTELEPORT) {
        return;
    };
    if (((NPC_KNOWSINFO(HERO, 0x111ca)) && ((Q204_TALKWITHARAXOS) == (TRUE))) && ((NPC_GETDISTTONPC(HERO, SLD_1000_ADELARD)) >= (850))) {
        Q204_ADELARDTELEPORT = TRUE;
        AI_TURNTONPC(HERO, SLD_1000_ADELARD);
        AI_OUTPUT(SLD_1000_ADELARD, HERO, "DIA_Adelard_ComeBack_03_01");
        AI_WAITTILLEND(HERO, SLD_1000_ADELARD);
        AI_FUNCTION(HERO, 0x16f62);
    };
}

func void Q204_COMEBACKTOADELARD() {
    FADESCREENTOBLACKF(1, 0x16f63, 1000);
}

func void Q204_COMEBACKTOADELARD_FADESCREEN() {
    TELEPORTNPCTOWP(0x71b, "PARTM1_JOINARAXOS_HERO_02");
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
    Q204_ADELARDTELEPORT = FALSE;
}

