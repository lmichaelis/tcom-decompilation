func void B_ENTER_VOLFZACKE() {
    if ((KAPITEL) < (5)) {
        HERO.ATTRIBUTE[1] = -(1);
        HERO.ATTRIBUTE[0] = -(1);
        HERO.FLAGS = 0;
        PRINTSCREEN(RESERVED_CONST_STRING_69, -(1), -(1), FONT_SCREEN, 10);
    };
    if ((Q514_FIRSTTIMEINVOLFZACKE) == (0)) {
        Q514_FIRSTTIMEINVOLFZACKE = 1;
        PRINTD("Inside volfzacke");
    };
    if ((Q514_FINISHVOLFZACKE) == (2)) {
        Q514_FINISHVOLFZACKE = 3;
        Q514_REMOVEEVERYTHING();
    };
    B_BREAKDOWNSIDEQUESTS();
}

