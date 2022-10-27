func void B_RAISEREALFIGHTTALENTPERCENT(var C_NPC OTH, var int TALENT, var int PERCENT) {
    if ((TALENT) == (NPC_TALENT_1H)) {
        OTH.AIVAR[84] += PERCENT;
    };
    if ((TALENT) == (NPC_TALENT_2H)) {
        OTH.AIVAR[85] += PERCENT;
    };
    if ((TALENT) == (NPC_TALENT_BOW)) {
        OTH.AIVAR[86] += PERCENT;
    };
    if ((TALENT) == (NPC_TALENT_CROSSBOW)) {
        OTH.AIVAR[87] += PERCENT;
    };
}

func void B_RAISEFIGHTTALENT(var C_NPC OTH, var int TALENT, var int PERCENT) {
    if (PLAYER_REAL_LEARNING) {
        B_RAISEREALFIGHTTALENTPERCENT(OTH, TALENT, PERCENT);
    };
    B_ADDFIGHTSKILL(OTH, TALENT, PERCENT);
}

