func void B_SETATTITUDE(var C_NPC SLF, var int ATT) {
    NPC_SETATTITUDE(SLF, ATT);
    NPC_SETTEMPATTITUDE(SLF, ATT);
}
