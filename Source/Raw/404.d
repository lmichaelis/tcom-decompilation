instance DIA_AMBIENT_NEWS(C_INFO) {
    NR = 1;
    CONDITION = DIA_AMBIENT_NEWS_CONDITION;
    INFORMATION = DIA_AMBIENT_NEWS_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_AMBIENT_NEWS_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((B_GETPLAYERCRIME(SELF)) != (CRIME_NONE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_AMBIENT_NEWS_INFO() {
    if ((B_GETPLAYERCRIME(SELF)) == (CRIME_SHEEPKILLER)) {
        B_SAY(SELF, OTHER, "$SHEEPKILLER_CRIME");
    };
    if ((B_GETPLAYERCRIME(SELF)) == (CRIME_ATTACK)) {
        B_SAY(SELF, OTHER, "$ATTACK_CRIME");
    };
    if ((B_GETPLAYERCRIME(SELF)) == (CRIME_THEFT)) {
        B_SAY(SELF, OTHER, "$THEFT_CRIME");
    };
    if (C_NPCBELONGSTOCITY(SELF)) {
        if (((OTHER.GUILD) == (GIL_MIL)) && ((RODERICH_DEBTS) <= (0))) {
            B_SAY(SELF, OTHER, "$MIL_CITY_CRIME");
        } else if ((RODERICH_DEBTS) <= (0)) {
            B_SAY(SELF, OTHER, "$CITY_CRIME");
        };
    };
    if ((C_NPCBELONGSTOFARMS(SELF)) && ((ALBYN_DEBTS) <= (0))) {
        B_SAY(SELF, OTHER, "$FARMS_CRIME");
    };
    if ((C_NPCBELONGSTOWOLFSLAIR(SELF)) && ((CREDNAR_DEBTS) <= (0))) {
        B_SAY(SELF, OTHER, "$WOLFSLAIR_CRIME");
    };
    if ((C_NPCBELONGSTOMONASTERY(SELF)) && ((NOTGER_DEBTS) <= (0))) {
        B_SAY(SELF, OTHER, "$MONA_CRIME");
    };
    AI_STOPPROCESSINFOS(SELF);
}

func void B_ASSIGNAMBIENTNEWS(var C_NPC SLF) {
    DIA_AMBIENT_NEWS.NPC = HLP_GETINSTANCEID(SLF);
}

