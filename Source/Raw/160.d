func void B_STARTOTHERROUTINE(var C_NPC SLF, var string NEWROUTINE) {
    if (!(HLP_ISVALIDNPC(SLF))) {
        MEM_WARN(CONCATSTRINGS("B_StartOtherRoutine: invalid npc. newRoutine: ", NEWROUTINE));
        return;
    };
    AI_STANDUP(SLF);
    if ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(SLF))) {
        if ((HLP_ISVALIDNPC(SLF)) && (!(NPC_ISDEAD(SLF)))) {
            NPC_EXCHANGEROUTINE(SLF, NEWROUTINE);
            AI_CONTINUEROUTINE(SLF);
        };
    };
    NPC_EXCHANGEROUTINE(SLF, NEWROUTINE);
}

