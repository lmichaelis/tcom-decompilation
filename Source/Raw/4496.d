func int COND_Q602_PUTOUTFIRE_V1() {
    if ((Q602_PUTOUTFIRE_V1) == (1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_Q602_PUTOUTFIRE_V2() {
    if ((Q602_PUTOUTFIRE_V2) == (1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_Q602_MATEYFREE() {
    if ((Q602_MATEYFREE) >= (1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_Q602_LORENZODOOR() {
    if (NPC_KNOWSINFO(HERO, 0x16202)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_Q602_TENGRALDOOR() {
    if ((Q602_TENGRALDOOR) == (1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_Q602_KICKDOOR_01() {
    if ((Q602_KICKDOOR_01) == (0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int COND_Q602_KICKDOOR_01.Q602_KICKDOOR_01 = 0;
func int COND_Q602_KICKDOOR_02() {
    if ((Q602_FINALBATTLE_STARTFIGHT) >= (8)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_Q602_KICKDOOR_03() {
    if ((Q602_CANALSUNLOCKED) == (1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

