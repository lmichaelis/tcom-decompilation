func void B_SETATTRIBUTESTOCHAPTER(var C_NPC SLF, var int KAP) {
    NPC_SETTALENTSKILL(SLF, NPC_TALENT_MAGE, 6);
    if ((KAP) == (0)) {
        SLF.LEVEL = 3;
        SLF.ATTRIBUTE[4] = 10;
        SLF.AIVAR[81] = 10;
        SLF.ATTRIBUTE[5] = 10;
        SLF.AIVAR[82] = 10;
        SLF.ATTRIBUTE[3] = 1000;
        SLF.AIVAR[83] = 1000;
        SLF.ATTRIBUTE[2] = 1000;
        SLF.ATTRIBUTE[1] = 40;
        SLF.ATTRIBUTE[0] = 40;
    };
    if ((KAP) == (1)) {
        SLF.LEVEL = 10;
        SLF.ATTRIBUTE[4] = 50;
        SLF.AIVAR[81] = 50;
        SLF.ATTRIBUTE[5] = 50;
        SLF.AIVAR[82] = 50;
        SLF.ATTRIBUTE[3] = 1000;
        SLF.AIVAR[83] = 1000;
        SLF.ATTRIBUTE[2] = 1000;
        SLF.ATTRIBUTE[1] = 160;
        SLF.ATTRIBUTE[0] = 160;
    };
    if ((KAP) == (2)) {
        SLF.LEVEL = 20;
        SLF.ATTRIBUTE[4] = 100;
        SLF.AIVAR[81] = 100;
        SLF.ATTRIBUTE[5] = 100;
        SLF.AIVAR[82] = 100;
        SLF.ATTRIBUTE[3] = 1000;
        SLF.AIVAR[83] = 1000;
        SLF.ATTRIBUTE[2] = 1000;
        SLF.ATTRIBUTE[1] = 280;
        SLF.ATTRIBUTE[0] = 280;
    };
    if ((KAP) == (3)) {
        SLF.LEVEL = 30;
        SLF.ATTRIBUTE[4] = 125;
        SLF.AIVAR[81] = 125;
        SLF.ATTRIBUTE[5] = 125;
        SLF.AIVAR[82] = 125;
        SLF.ATTRIBUTE[3] = 1000;
        SLF.AIVAR[83] = 1000;
        SLF.ATTRIBUTE[2] = 1000;
        SLF.ATTRIBUTE[1] = 400;
        SLF.ATTRIBUTE[0] = 400;
    };
    if ((KAP) == (4)) {
        SLF.LEVEL = 40;
        SLF.ATTRIBUTE[4] = 150;
        SLF.AIVAR[81] = 150;
        SLF.ATTRIBUTE[5] = 150;
        SLF.AIVAR[82] = 150;
        SLF.ATTRIBUTE[3] = 1000;
        SLF.ATTRIBUTE[2] = 1000;
        SLF.AIVAR[83] = 1000;
        SLF.ATTRIBUTE[1] = 520;
        SLF.ATTRIBUTE[0] = 520;
    };
    if ((KAP) == (5)) {
        SLF.LEVEL = 50;
        SLF.ATTRIBUTE[4] = 175;
        SLF.AIVAR[81] = 175;
        SLF.ATTRIBUTE[5] = 175;
        SLF.AIVAR[82] = 175;
        SLF.ATTRIBUTE[3] = 1000;
        SLF.AIVAR[83] = 1000;
        SLF.ATTRIBUTE[2] = 1000;
        SLF.ATTRIBUTE[1] = 640;
        SLF.ATTRIBUTE[0] = 640;
    };
    if ((KAP) >= (6)) {
        SLF.LEVEL = 60;
        SLF.ATTRIBUTE[4] = 200;
        SLF.AIVAR[81] = 200;
        SLF.ATTRIBUTE[5] = 200;
        SLF.AIVAR[82] = 200;
        SLF.ATTRIBUTE[3] = 1000;
        SLF.AIVAR[83] = 1000;
        SLF.ATTRIBUTE[2] = 1000;
        SLF.ATTRIBUTE[1] = 760;
        SLF.ATTRIBUTE[0] = 760;
    };
    if ((KAP) >= (7)) {
        SLF.LEVEL = 20;
        SLF.ATTRIBUTE[4] = 80;
        SLF.AIVAR[81] = 80;
        SLF.ATTRIBUTE[5] = 90;
        SLF.AIVAR[82] = 90;
        SLF.ATTRIBUTE[3] = 1000;
        SLF.AIVAR[83] = 1000;
        SLF.ATTRIBUTE[2] = 1000;
        SLF.ATTRIBUTE[1] = 5000;
        SLF.ATTRIBUTE[0] = 5000;
    };
    SLF.EXP = ((500) * (((SLF.LEVEL) + (1)) / (2))) * ((SLF.LEVEL) + (1));
    SLF.EXP_NEXT = ((500) * (((SLF.LEVEL) + (2)) / (2))) * ((SLF.LEVEL) + (1));
}

