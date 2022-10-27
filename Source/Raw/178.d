func void B_SETATTRIBUTESRNDCRAWLER(var C_NPC SLF) {
    if ((RNG_MCRAWLERCOUNTER) == (0)) {
        SLF.LEVEL = 10;
    };
    if ((RNG_MCRAWLERCOUNTER) == (1)) {
        SLF.LEVEL = 8;
    };
    if ((RNG_MCRAWLERCOUNTER) == (2)) {
        SLF.LEVEL = 6;
    };
    if ((RNG_MCRAWLERCOUNTER) == (3)) {
        SLF.LEVEL = 4;
    };
    if ((RNG_MCRAWLERCOUNTER) == (4)) {
        SLF.LEVEL = 3;
    };
    if (((RNG_MCRAWLERCOUNTER) == (5)) || ((RNG_MCRAWLERCOUNTER) == (6))) {
        SLF.LEVEL = 2;
    };
    if (((((RNG_MCRAWLERCOUNTER) == (7)) || ((RNG_MCRAWLERCOUNTER) == (8))) || ((RNG_MCRAWLERCOUNTER) == (9))) || ((RNG_MCRAWLERCOUNTER) == (10))) {
        SLF.LEVEL = 1;
    };
    SLF.LEVEL = 0;
    if ((RNG_MCRAWLERCOUNTER) >= (13)) {
        SLF.ATTRIBUTE[4] = 100;
        SLF.AIVAR[81] = 180;
        SLF.ATTRIBUTE[5] = 120;
        SLF.AIVAR[82] = 120;
        SLF.ATTRIBUTE[1] = 370;
        SLF.ATTRIBUTE[0] = 370;
        SLF.ATTRIBUTE[3] = 0;
        SLF.ATTRIBUTE[2] = 0;
        SLF.PROTECTION[1] = 150;
        SLF.PROTECTION[2] = 140;
        SLF.PROTECTION[6] = 160;
        SLF.PROTECTION[3] = 60;
        SLF.PROTECTION[4] = 75;
        SLF.PROTECTION[5] = 65;
    };
    SLF.ATTRIBUTE[4] = (150) + ((2) * (RNG_MCRAWLERCOUNTER));
    SLF.AIVAR[81] = (150) + ((2) * (RNG_MCRAWLERCOUNTER));
    SLF.ATTRIBUTE[5] = (90) + ((2) * (RNG_MCRAWLERCOUNTER));
    SLF.AIVAR[82] = (90) + ((2) * (RNG_MCRAWLERCOUNTER));
    SLF.ATTRIBUTE[1] = (300) + ((5) * (RNG_MCRAWLERCOUNTER));
    SLF.ATTRIBUTE[0] = (300) + ((5) * (RNG_MCRAWLERCOUNTER));
    SLF.ATTRIBUTE[3] = 0;
    SLF.ATTRIBUTE[2] = 0;
    SLF.PROTECTION[1] = (120) + ((2) * (RNG_MCRAWLERCOUNTER));
    SLF.PROTECTION[2] = (110) + ((2) * (RNG_MCRAWLERCOUNTER));
    SLF.PROTECTION[6] = (130) + ((2) * (RNG_MCRAWLERCOUNTER));
    SLF.PROTECTION[3] = (40) + ((2) * (RNG_MCRAWLERCOUNTER));
    SLF.PROTECTION[4] = (50) + ((2) * (RNG_MCRAWLERCOUNTER));
    SLF.PROTECTION[5] = (40) + ((2) * (RNG_MCRAWLERCOUNTER));
}

