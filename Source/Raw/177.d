func void B_SETATTRIBUTESRNDSKELETON(var C_NPC SLF) {
    if ((RNG_VSKELETONCOUNTER) == (0)) {
        SLF.LEVEL = 10;
    };
    if ((RNG_VSKELETONCOUNTER) == (1)) {
        SLF.LEVEL = 8;
    };
    if ((RNG_VSKELETONCOUNTER) == (2)) {
        SLF.LEVEL = 6;
    };
    if ((RNG_VSKELETONCOUNTER) == (3)) {
        SLF.LEVEL = 4;
    };
    if ((RNG_VSKELETONCOUNTER) == (4)) {
        SLF.LEVEL = 3;
    };
    if (((RNG_VSKELETONCOUNTER) == (5)) || ((RNG_VSKELETONCOUNTER) == (6))) {
        SLF.LEVEL = 2;
    };
    if (((((RNG_VSKELETONCOUNTER) == (7)) || ((RNG_VSKELETONCOUNTER) == (8))) || ((RNG_VSKELETONCOUNTER) == (9))) || ((RNG_VSKELETONCOUNTER) == (10))) {
        SLF.LEVEL = 1;
    };
    SLF.LEVEL = 0;
    if ((RNG_VSKELETONCOUNTER) >= (13)) {
        SLF.ATTRIBUTE[4] = 120;
        SLF.AIVAR[81] = 120;
        SLF.ATTRIBUTE[5] = 120;
        SLF.AIVAR[82] = 120;
        SLF.ATTRIBUTE[1] = 270;
        SLF.ATTRIBUTE[0] = 270;
        SLF.ATTRIBUTE[3] = 0;
        SLF.ATTRIBUTE[2] = 0;
        SLF.PROTECTION[1] = 130;
        SLF.PROTECTION[2] = 150;
        SLF.PROTECTION[6] = 145;
        SLF.PROTECTION[3] = 50;
        SLF.PROTECTION[4] = 55;
        SLF.PROTECTION[5] = 90;
    };
    SLF.ATTRIBUTE[4] = (100) + ((2) * (RNG_VSKELETONCOUNTER));
    SLF.AIVAR[81] = (100) + ((2) * (RNG_VSKELETONCOUNTER));
    SLF.ATTRIBUTE[5] = (120) + ((2) * (RNG_VSKELETONCOUNTER));
    SLF.AIVAR[82] = (120) + ((2) * (RNG_VSKELETONCOUNTER));
    SLF.ATTRIBUTE[1] = (150) + ((5) * (RNG_VSKELETONCOUNTER));
    SLF.ATTRIBUTE[0] = (150) + ((5) * (RNG_VSKELETONCOUNTER));
    SLF.ATTRIBUTE[3] = 0;
    SLF.ATTRIBUTE[2] = 0;
    SLF.PROTECTION[1] = (80) + ((4) * (RNG_VSKELETONCOUNTER));
    SLF.PROTECTION[2] = (115) + ((3) * (RNG_VSKELETONCOUNTER));
    SLF.PROTECTION[6] = (120) + ((2) * (RNG_VSKELETONCOUNTER));
    SLF.PROTECTION[3] = (30) + (RNG_VSKELETONCOUNTER);
    SLF.PROTECTION[4] = (10) + (RNG_VSKELETONCOUNTER);
    SLF.PROTECTION[5] = (5) + ((6) * (RNG_VSKELETONCOUNTER));
}

