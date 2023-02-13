func void SQ415_RAZORDIALOG_S0() {
    var int SQ415_SWORDMOVER;
    if ((MOB_HASITEMS("SQ415_RAZORBODY", 39534)) == (FALSE)) {
        if ((SQ415_SWORDMOVER) == (0)) {
            SQ415_SWORDMOVER = 1;
            WLD_SENDTRIGGER("SQ415_MOVER_DEVIRSWORD");
        };
    };
    if ((SQ415_SWORDMOVER) == (1)) {
        SQ415_SWORDMOVER = 0;
        WLD_SENDTRIGGER("SQ415_MOVER_DEVIRSWORD");
    };
    HERO.AIVAR[4] = FALSE;
}

