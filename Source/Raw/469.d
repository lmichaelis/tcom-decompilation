func void Q301_TELEPORTTOHAVEN() {
    FADESCREENTOBLACKF(1, 0xa93b, 1000);
}

func void Q301_MARVIN_DONTLEAVETHISPLACE() {
    AI_OUTPUT(HERO, HERO, "DIA_Marvin_CantLeave_15_01");
}

func void Q301_TELEPORTTOHAVEN_FADESCREEN() {
    Q301_CANTLEAVEHAVEN = FALSE;
    TELEPORTNPCTOWP(0x71b, "P17_HAVEN_BAR_OUT_03");
    Q301_MARVIN_DONTLEAVETHISPLACE();
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(1);
}

