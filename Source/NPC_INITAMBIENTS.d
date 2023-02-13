func void NPC_INITAMBIENTS(var C_NPC NPC, var int MAXAMBIENTS) {
    NPC.AIVAR[91] = (NPC.AIVAR[91]) + (1);
    if ((NPC.AIVAR[91]) > (MAXAMBIENTS)) {
        NPC.AIVAR[91] = 1;
    };
}

