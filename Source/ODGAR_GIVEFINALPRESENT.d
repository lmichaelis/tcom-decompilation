func void ODGAR_GIVEFINALPRESENT() {
    var int MAXWEAPONSKILL;
    MAXWEAPONSKILL = MAXOF4(HERO.HITCHANCE[1], HERO.HITCHANCE[2], HERO.HITCHANCE[3], HERO.HITCHANCE[4]);
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[1])) {
        if ((HERO.ATTRIBUTE[4]) >= (HERO.ATTRIBUTE[5])) {
            CREATEINVITEMS(NONE_881_ODGAR, 37827, 1);
        } else {
            CREATEINVITEMS(NONE_881_ODGAR, 37815, 1);
            B_GIVEINVITEMS(NONE_881_ODGAR, HERO, 37815, 1);
        };
    };
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[2])) {
        if ((HERO.ATTRIBUTE[4]) >= (HERO.ATTRIBUTE[5])) {
            CREATEINVITEMS(NONE_881_ODGAR, 37887, 1);
        } else {
            CREATEINVITEMS(NONE_881_ODGAR, 37889, 1);
            B_GIVEINVITEMS(NONE_881_ODGAR, HERO, 37889, 1);
        };
    };
    if ((HERO.ATTRIBUTE[4]) >= (HERO.ATTRIBUTE[5])) {
        CREATEINVITEMS(NONE_881_ODGAR, 37827, 1);
    };
    CREATEINVITEMS(NONE_881_ODGAR, 37815, 1);
    B_GIVEINVITEMS(NONE_881_ODGAR, HERO, 37815, 1);
}

