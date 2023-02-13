func int DIA_TOUGHGUY_NEWS_CONDITION() {
    if (((NPC_ISINSTATE(SELF, 61599)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) && ((SELF.AIVAR[64]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TOUGHGUY_NEWS_INFO() {
    if ((SELF.AIVAR[0]) == (FIGHT_LOST)) {
        B_SAY(SELF, OTHER, "$TOUGHGUY_ATTACKLOST");
    };
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        B_SAY(SELF, OTHER, "$TOUGHGUY_ATTACKWON");
    };
    B_SAY(SELF, OTHER, "$TOUGHGUY_PLAYERATTACK");
    SELF.AIVAR[64] = TRUE;
}

func void B_ASSIGNTOUGHGUYNEWS(var C_NPC SLF) {
    DIA_TOUGHGUY_NEWS.NPC = HLP_GETINSTANCEID(SLF);
}

