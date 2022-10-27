func int COND_ARETHECHEST() {
    if (NPC_KNOWSINFO(HERO, 0x13e78)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_MINEWHEEL() {
    if ((Q404_CANUSEMINEWHEEL) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_JONCHEST() {
    if ((Q404_MARVINFINISHEDMINE) == (2)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int CONT_KICKBARREL_WOLFSDEN() {
    if ((Q402_ARETHEWAY) == (TRUE)) {
        PRINTD("Hero mo¿e odebraæ itemy!");
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

