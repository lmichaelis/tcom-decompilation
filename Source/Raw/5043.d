func void EVENTSMANAGER_TRAP62_FIGHTISOVER() {
    if ((PARTM4_FIGHTISOVER) == (FALSE)) {
        if (HLP_ISVALIDNPC(NONE_11245_REFUGEE)) {
            if (NPC_ISDEAD(NONE_11245_REFUGEE)) {
                NPC_EXCHANGEROUTINE(SLD_11244_ARAXOS, TOT);
                PARTM4_FIGHTISOVER = TRUE;
            };
        };
    };
}

