func void B_SETATTRIBUTESTOLEVEL(var C_NPC SLF, var int LVL) {
    NPC_SETTALENTSKILL(SLF, NPC_TALENT_MAGE, 6);
    SLF.ATTRIBUTE[3] = 1000;
    SLF.AIVAR[83] = 1000;
    SLF.ATTRIBUTE[2] = 1000;
    SLF.LEVEL = LVL;
    if ((LVL) == (0)) {
        SLF.ATTRIBUTE[1] = 5;
        SLF.ATTRIBUTE[0] = 5;
        SLF.ATTRIBUTE[4] = 5;
        SLF.AIVAR[81] = 5;
        SLF.ATTRIBUTE[5] = 5;
        SLF.AIVAR[82] = 5;
    };
    SLF.ATTRIBUTE[4] = (4) * (LVL);
    SLF.AIVAR[81] = (4) * (LVL);
    SLF.ATTRIBUTE[5] = (4) * (LVL);
    SLF.AIVAR[82] = (4) * (LVL);
    SLF.ATTRIBUTE[1] = (14) * (LVL);
    SLF.ATTRIBUTE[0] = (14) * (LVL);
    SLF.EXP = ((500) * (((SLF.LEVEL) + (1)) / (2))) * ((SLF.LEVEL) + (1));
    SLF.EXP_NEXT = ((500) * (((SLF.LEVEL) + (2)) / (2))) * ((SLF.LEVEL) + (1));
}

