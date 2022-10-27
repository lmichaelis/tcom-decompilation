func void ODGAR_GIVEFINALPRESENT() {
    MAXWEAPONSKILL = MAXOF4(HERO.HITCHANCE[1], HERO.HITCHANCE[2], HERO.HITCHANCE[3], HERO.HITCHANCE[4]);
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[1])) {
        if ((HERO.ATTRIBUTE[4]) >= (HERO.ATTRIBUTE[5])) {
            CREATEINVITEMS(NONE_881_ODGAR, 0x93c3, 1);
        } else {
            CREATEINVITEMS(NONE_881_ODGAR, 0x93b7, 1);
            B_GIVEINVITEMS(NONE_881_ODGAR, HERO, 0x93b7, 1);
        } else {
            /* set_instance(0) */;
        };
    };
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[2])) {
        if ((HERO.ATTRIBUTE[4]) >= (HERO.ATTRIBUTE[5])) {
            CREATEINVITEMS(NONE_881_ODGAR, 0x93ff, 1);
        } else {
            CREATEINVITEMS(NONE_881_ODGAR, 0x9401, 1);
            B_GIVEINVITEMS(NONE_881_ODGAR, HERO, 0x9401, 1);
        } else {
            /* set_instance(0) */;
        };
    };
    if ((HERO.ATTRIBUTE[4]) >= (HERO.ATTRIBUTE[5])) {
        CREATEINVITEMS(NONE_881_ODGAR, 0x93c3, 1);
    };
    CREATEINVITEMS(NONE_881_ODGAR, 0x93b7, 1);
    B_GIVEINVITEMS(NONE_881_ODGAR, HERO, 0x93b7, 1);
}

var int ODGAR_GIVEFINALPRESENT.MAXWEAPONSKILL = 0;
