instance SQ116_TERRYDEAD(CUTSCENE) {
    ONSTART = FUNCTION(0x1687d);
}

func void SQ116_TERRYDEAD_WAIT() {
    AI_WAITTILLEND(BAU_2242_DENNIS, BAU_2243_GUMBERT);
    AI_WAITTILLEND(BAU_2242_DENNIS, HERO);
    AI_WAITTILLEND(BAU_2243_GUMBERT, BAU_2242_DENNIS);
    AI_WAITTILLEND(BAU_2243_GUMBERT, HERO);
    AI_WAITTILLEND(HERO, BAU_2243_GUMBERT);
    AI_WAITTILLEND(HERO, BAU_2242_DENNIS);
}

func void SQ116_TERRYDEAD_WAIT_V2() {
    AI_WAITTILLEND(BAU_2243_GUMBERT, HERO);
    AI_WAITTILLEND(HERO, BAU_2243_GUMBERT);
}

func void SQ116_TERRYDEAD_HOLDWIGBETTER_PART1() {
    SQ116_TERRYDEAD_WAIT();
    AI_OUTPUT(BAU_2243_GUMBERT, HERO, "DIA_Gumbert_SQ116_TERRYDEAD_13_12");
    SQ116_TERRYDEAD_WAIT();
    AI_OUTPUT(BAU_2242_DENNIS, HERO, "DIA_DENNIS_SQ116_TERRYDEAD_13_13");
}

func void SQ116_TERRYDEAD_HOLDWIGBETTER_PART2() {
    SQ116_TERRYDEAD_WAIT();
    AI_OUTPUT(BAU_2243_GUMBERT, HERO, "DIA_Gumbert_SQ116_TERRYDEAD_13_14");
    SQ116_TERRYDEAD_WAIT();
    AI_OUTPUT(BAU_2242_DENNIS, HERO, "DIA_DENNIS_SQ116_TERRYDEAD_13_15");
}

func void SQ116_TERRYDEAD_START() {
    SQ116_GUMBERTWAY_BLOCK = TRUE;
    WLD_SENDTRIGGER("SQ116_TERRYDEAD_01");
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(1);
    TELEPORTNPCTOWP(0x71b, "PART9_SQ116_CUTSCENE_HERO_02");
    TELEPORTNPCTOWP(0xded0, BAU_2242_DENNIS.WP);
    TELEPORTNPCTOWP(0xdedd, BAU_2243_GUMBERT.WP);
    TELEPORTNPCTOWP(0xdeea, BAU_2244_TERRY.WP);
    NPC_CLEARAIQUEUE(BAU_2242_DENNIS);
    NPC_CLEARAIQUEUE(BAU_2243_GUMBERT);
    AI_TURNTONPC(HERO, BAU_2244_TERRY);
    AI_TURNTONPC(BAU_2242_DENNIS, BAU_2244_TERRY);
    AI_TURNTONPC(BAU_2243_GUMBERT, BAU_2244_TERRY);
    BAU_2242_DENNIS.AIVAR[92] = FALSE;
    BAU_2243_GUMBERT.AIVAR[92] = TRUE;
    SQ116_TERRYDEAD_WAIT();
    AI_OUTPUT(BAU_2242_DENNIS, HERO, "DIA_DENNIS_SQ116_TERRYDEAD_13_01");
    SQ116_TERRYDEAD_WAIT();
    AI_OUTPUT(BAU_2243_GUMBERT, HERO, "DIA_Gumbert_SQ116_TERRYDEAD_13_02");
    SQ116_TERRYDEAD_WAIT();
    AI_TURNTONPC(BAU_2242_DENNIS, BAU_2243_GUMBERT);
    AI_OUTPUT(BAU_2242_DENNIS, HERO, "DIA_DENNIS_SQ116_TERRYDEAD_13_03");
    SQ116_TERRYDEAD_WAIT();
    AI_TURNTONPC(BAU_2243_GUMBERT, BAU_2242_DENNIS);
    AI_OUTPUT(BAU_2243_GUMBERT, HERO, "DIA_Gumbert_SQ116_TERRYDEAD_13_04");
    SQ116_TERRYDEAD_WAIT();
    AI_FUNCTION(BAU_2242_DENNIS, 0x1687f);
    AI_OUTPUT(BAU_2242_DENNIS, HERO, "DIA_DENNIS_SQ116_TERRYDEAD_13_05");
    SQ116_TERRYDEAD_WAIT();
    AI_OUTPUT(BAU_2243_GUMBERT, HERO, "DIA_Gumbert_SQ116_TERRYDEAD_13_06");
    SQ116_TERRYDEAD_WAIT();
    AI_OUTPUT(BAU_2242_DENNIS, HERO, "DIA_DENNIS_SQ116_TERRYDEAD_13_07");
    AI_TURNTONPC(BAU_2242_DENNIS, HERO);
    AI_OUTPUT(BAU_2242_DENNIS, HERO, "DIA_DENNIS_SQ116_TERRYDEAD_13_08");
    SQ116_TERRYDEAD_WAIT();
    AI_TURNTONPC(HERO, BAU_2242_DENNIS);
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_SQ116_TERRYDEAD_15_09");
    SQ116_TERRYDEAD_WAIT();
    AI_FUNCTION(BAU_2242_DENNIS, 0x16880);
    AI_OUTPUT(BAU_2242_DENNIS, HERO, "DIA_DENNIS_SQ116_TERRYDEAD_13_10");
    AI_OUTPUT(BAU_2242_DENNIS, HERO, "DIA_DENNIS_SQ116_TERRYDEAD_13_11");
    SQ116_TERRYDEAD_WAIT();
    AI_FUNCTION(BAU_2242_DENNIS, 0x16881);
    AI_TURNTONPC(HERO, BAU_2243_GUMBERT);
    AI_TURNTONPC(BAU_2242_DENNIS, BAU_2243_GUMBERT);
    SQ116_TERRYDEAD_HOLDWIGBETTER_PART1();
    SQ116_TERRYDEAD_HOLDWIGBETTER_PART2();
    SQ116_TERRYDEAD_WAIT();
    AI_OUTPUT(BAU_2243_GUMBERT, HERO, "DIA_Gumbert_SQ116_TERRYDEAD_13_16");
    SQ116_TERRYDEAD_WAIT();
    AI_OUTPUT(BAU_2242_DENNIS, HERO, "DIA_DENNIS_SQ116_TERRYDEAD_13_17");
    SQ116_TERRYDEAD_WAIT();
    AI_FUNCTION(BAU_2242_DENNIS, 0x16882);
    AI_SETWALKMODE(BAU_2242_DENNIS, NPC_RUN);
    AI_GOTOWP(BAU_2242_DENNIS, "PART9_DENNIS_TELEPORT_01");
}

func void SQ116_TERRYDEAD_LAKE() {
    B_PASSTIME(2);
    FADESCREENFROMBLACK(2);
    WLD_SENDTRIGGER("SQ116_TERRYDEAD_06");
    WLD_SENDUNTRIGGER("SQ116_TERRYDEAD_05");
    TELEPORTNPCTOWP(0x71b, "PART9_SQ116_CUTSCENE_HERO_03");
    TELEPORTNPCTOWP(0xdedd, "PART9_SQ116_CUTSCENE_GUMBERT_02");
    TELEPORTNPCTOWP(0xded0, "PART9_SQ116_CUTSCENE_DENNIS_02");
    TELEPORTNPCTOWP(0xdeea, BAU_2244_TERRY.WP);
    AI_TURNTONPC(HERO, BAU_2244_TERRY);
    AI_TURNTONPC(BAU_2243_GUMBERT, BAU_2244_TERRY);
    SQ116_TERRYDEAD_WAIT_V2();
    AI_WAIT(BAU_2243_GUMBERT, 0x40900000);
    AI_FUNCTION(BAU_2243_GUMBERT, 0x16883);
    AI_OUTPUT(BAU_2243_GUMBERT, HERO, "DIA_Gumbert_SQ116_TERRYDEAD_13_18");
    SQ116_TERRYDEAD_WAIT_V2();
    AI_TURNTONPC(HERO, BAU_2243_GUMBERT);
    if ((SQ116_KNOWTERRYNAME) == (FALSE)) {
        AI_OUTPUT(HERO, HERO, "DIA_MARVIN_SQ116_TERRYDEAD_15_19");
        SQ116_TERRYDEAD_WAIT_V2();
        AI_TURNTONPC(BAU_2243_GUMBERT, HERO);
        AI_OUTPUT(BAU_2243_GUMBERT, HERO, "DIA_Gumbert_SQ116_TERRYDEAD_13_20");
        SQ116_TERRYDEAD_WAIT_V2();
        AI_OUTPUT(HERO, HERO, "DIA_MARVIN_SQ116_TERRYDEAD_15_21");
        SQ116_TERRYDEAD_WAIT_V2();
        AI_OUTPUT(BAU_2243_GUMBERT, HERO, "DIA_Gumbert_SQ116_TERRYDEAD_13_22");
    };
    SQ116_TERRYDEAD_WAIT_V2();
    AI_FUNCTION(BAU_2243_GUMBERT, 0x16884);
}

func void SQ116_TERRYDEAD_CHANGECAMERA_01() {
    WLD_SENDTRIGGER("SQ116_TERRYDEAD_02");
    WLD_SENDUNTRIGGER("SQ116_TERRYDEAD_01");
}

func void SQ116_TERRYDEAD_CHANGECAMERA_02() {
    WLD_SENDTRIGGER("SQ116_TERRYDEAD_03");
    WLD_SENDUNTRIGGER("SQ116_TERRYDEAD_02");
}

func void SQ116_TERRYDEAD_CHANGECAMERA_03() {
    WLD_SENDTRIGGER("SQ116_TERRYDEAD_04");
    WLD_SENDUNTRIGGER("SQ116_TERRYDEAD_03");
}

func void SQ116_TERRYDEAD_CHANGECAMERA_04() {
    WLD_SENDTRIGGER("SQ116_TERRYDEAD_05");
    WLD_SENDUNTRIGGER("SQ116_TERRYDEAD_04");
    FADESCREENTOBLACKF(3, 0x1687e, 1000);
    B_STARTOTHERROUTINE(BAU_2242_DENNIS, START);
}

func void SQ116_TERRYDEAD_CHANGECAMERA_05() {
    WLD_SENDTRIGGER("SQ116_TERRYDEAD_07");
    WLD_SENDUNTRIGGER("SQ116_TERRYDEAD_06");
}

func void SQ116_TERRYDEAD_END() {
    SQ116_CANTALKWITHHOLDWIG = 1;
    WLD_SENDUNTRIGGER("SQ116_TERRYDEAD_01");
    WLD_SENDUNTRIGGER("SQ116_TERRYDEAD_02");
    WLD_SENDUNTRIGGER("SQ116_TERRYDEAD_03");
    WLD_SENDUNTRIGGER("SQ116_TERRYDEAD_04");
    WLD_SENDUNTRIGGER("SQ116_TERRYDEAD_05");
    WLD_SENDUNTRIGGER("SQ116_TERRYDEAD_06");
    WLD_SENDUNTRIGGER("SQ116_TERRYDEAD_07");
    BAU_2242_DENNIS.AIVAR[92] = FALSE;
    BAU_2243_GUMBERT.AIVAR[92] = FALSE;
    B_STARTOTHERROUTINE(BAU_2243_GUMBERT, START);
    NPC_REFRESH(BAU_2243_GUMBERT);
    HERO.AIVAR[4] = FALSE;
    B_LOGENTRY(TOPIC_SQ116, LOG_SQ116_TERRYISDEAD);
    B_STARTOTHERROUTINE(BAU_2245_HOLDWIG, "VINEYARD");
    NPC_REFRESH(BAU_2245_HOLDWIG);
    B_STARTOTHERROUTINE(BAU_2244_TERRY, TOT);
    NPC_REFRESH(BAU_2244_TERRY);
    TELEPORTNPCTOWP(0xdeea, BAU_2244_TERRY.WP);
    B_REMOVENPC(0xdeea);
    SQ116_BLOCKGUMBERTWAY();
}

