func int COND_BLAKELEVER() {
    if (((SQ305_MARVINCANUSEBLAKELEVER) == (2)) || ((SQ305_MARVINCANUSEBLAKELEVER) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_NORMANGRAVE1() {
    if ((NPC_KNOWSINFO(HERO, 0x10e01)) && ((Q309_DIGNORMANGRACE) != (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_BLOODFLASK() {
    if (NPC_KNOWSINFO(HERO, 0x10d99)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_BARRELJORN() {
    if ((Q405_CLOSEDDOORLOGENTRY) == (1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_BIGCRATESJORN() {
    if (((Q405_SAFEPLACELOGENTRY) == (1)) && ((Q405_VOLKERGUARDSATTACK) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_JORNSECRETBUTTON() {
    if (((Q405_SAFEPLACELOGENTRY) == (3)) && ((LOG_GETSTATUS(MIS_Q405)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_JORNGRAVE() {
    if ((Q405_GRAVESCOUNT) >= (2)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_JORNLEVER() {
    if (NPC_KNOWSINFO(HERO, 0x138d4)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_CHAIRINNOS() {
    if ((SQ309_CHAIRWORKINNOS) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_SQ313OPEN() {
    if ((SQ313_CANOPENDOOR) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_SQ313KICKV1() {
    if ((SQ313_CANKICKDOOR_V1) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_SQ313KICKV2() {
    if ((SQ313_CANKICKDOOR_V2) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_BROTHEL_SECRET() {
    if ((KQ404_CANOPENBROTHELSECRET) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

