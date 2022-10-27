instance SQ116_TERRY(CUTSCENE) {
    ONSTART = FUNCTION(0x16abc);
}

func void SQ116_TERRY_WAIT() {
    AI_WAITTILLEND(BAU_2242_DENNIS, BAU_2244_TERRY);
    AI_WAITTILLEND(BAU_2242_DENNIS, HERO);
    AI_WAITTILLEND(BAU_2244_TERRY, BAU_2242_DENNIS);
    AI_WAITTILLEND(BAU_2244_TERRY, HERO);
    AI_WAITTILLEND(HERO, BAU_2244_TERRY);
    AI_WAITTILLEND(HERO, BAU_2242_DENNIS);
}

func void SQ116_TERRY_START() {
    if ((SQ116_FASTTRAVELWITHDENNIS) == (TRUE)) {
        FADESCREENFROMBLACK(1);
    };
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("SQ116_01");
    BAU_2242_DENNIS.AIVAR[15] = FALSE;
    TELEPORTNPCTOWP(0x71b, "PART9_SQ116_CUTSCENE_HERO");
    TELEPORTNPCTOWP(0xded0, BAU_2242_DENNIS.WP);
    TELEPORTNPCTOWP(0xdeea, BAU_2244_TERRY.WP);
    NPC_CLEARAIQUEUE(BAU_2242_DENNIS);
    NPC_CLEARAIQUEUE(BAU_2244_TERRY);
    AI_TURNTONPC(HERO, BAU_2244_TERRY);
    AI_TURNTONPC(BAU_2242_DENNIS, BAU_2244_TERRY);
    AI_PLAYANI(BAU_2244_TERRY, T_PLUNDER);
    AI_TURNTONPC(BAU_2244_TERRY, HERO);
    AI_WAIT(BAU_2242_DENNIS, 0x40900000);
    AI_FUNCTION(BAU_2242_DENNIS, 0x16abd);
}

func void SQ116_STARTTRIALOG() {
    SQ116_TRIALOGREADY = 1;
    HERO.AIVAR[4] = FALSE;
    WLD_SENDTRIGGER("SQ116_02");
    WLD_SENDUNTRIGGER("SQ116_01");
}

