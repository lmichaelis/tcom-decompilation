func void B_GIVEPLAYERXP(var int ADD_XP) {
    if ((HERO.LEVEL) == (0)) {
        HERO.EXP_NEXT = 500;
    };
    if ((ADD_XP) > (0)) {
        HERO.EXP = (HERO.EXP) + (ADD_XP);
        CONCATTEXT = PRINT_XPGAINED;
        CONCATTEXT = CONCATSTRINGS(CONCATTEXT, INTTOSTRING(ADD_XP));
        PRINTSCREENS(CONCATTEXT, -(1), YPOS_XPGAINED, FONT_SCREENSMALL, 2);
    };
    if ((HERO.EXP) >= (HERO.EXP_NEXT)) {
        LOOP = MEM_STACKPOS.POSITION;
        HERO.LEVEL = (HERO.LEVEL) + (1);
        HERO.EXP_NEXT = (HERO.EXP_NEXT) + (((HERO.LEVEL) + (1)) * (500));
        TELEMETRY_SENDLEVELUPEVENT(HERO.LEVEL);
        HERO.ATTRIBUTE[1] = (HERO.ATTRIBUTE[1]) + (HP_PER_LEVEL);
        HERO.ATTRIBUTE[0] = (HERO.ATTRIBUTE[0]) + (HP_PER_LEVEL);
        HERO.LP = (HERO.LP) + (LP_PER_LEVEL);
        MARVINTRANSFORMHP = (MARVINTRANSFORMHP) + (HP_PER_LEVEL);
        if ((HERO.EXP) >= (HERO.EXP_NEXT)) {
            MEM_STACKPOS.POSITION = LOOP;
        };
        PRINTSCREEN(PRINT_LEVELUP, -(1), YPOS_LEVELUP, FONT_SCREEN, 2);
        SND_PLAY("LevelUp");
    };
}

var string B_GIVEPLAYERXP.CONCATTEXT = "";
var int B_GIVEPLAYERXP.LOOP = 0;