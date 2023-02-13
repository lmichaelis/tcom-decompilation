func int COND_Q304FARN() {
    if (NPC_KNOWSINFO(HERO, 84034)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_PALMCUT_01() {
    if (((Q305_ISLANDPALM01_CUT) == (FALSE)) && ((Q305_ISLANDPALM_BLOCKER) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_PALMCUT_02() {
    if (((Q305_ISLANDPALM02_CUT) == (FALSE)) && ((Q305_ISLANDPALM_BLOCKER) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_PALMCUT_03() {
    if (((Q305_ISLANDPALM03_CUT) == (FALSE)) && ((Q305_ISLANDPALM_BLOCKER) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_PALMPLUNDER_01() {
    if ((Q305_ISLANDPALM01_CUT) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_PALMPLUNDER_02() {
    if ((Q305_ISLANDPALM02_CUT) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_PALMPLUNDER_03() {
    if ((Q305_ISLANDPALM03_CUT) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_FIREPLACEOAR_ISLAND() {
    if ((NPC_HASITEMS(HERO, 36949)) >= (1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_BOATREMOVE_Q305() {
    if ((Q305_BOATREMOVE) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_ARENA() {
    if ((Q306_READYFORFIGHT) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_SOUPTRAP() {
    if ((SQ310_CANUSESOUP) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_CANONFIRE() {
    if ((SQ408_CANUSECANON) == (3)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_BARREL_KAJMA() {
    if ((NPC_KNOWSINFO(HERO, 85107)) && ((NPC_KNOWSINFO(HERO, 49034)) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

