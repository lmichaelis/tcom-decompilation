func void GOLDMINE_FIGHTMARVIN() {
    SQ301_ARENAFIGHTHERO = 1;
    HERO.AIVAR[95] = TRUE;
    HERO.AIVAR[94] = TRUE;
    VLK_6355_BRUNO.AIVAR[94] = TRUE;
    SLD_6356_ARAXOS.AIVAR[94] = TRUE;
    HERO.AIVAR[96] = 10;
    VLK_6355_BRUNO.AIVAR[96] = -(1);
    SLD_6356_ARAXOS.AIVAR[96] = -(1);
    VLK_6355_BRUNO.FLAGS = 0;
    SLD_6356_ARAXOS.FLAGS = 0;
    VLK_6357_NIVEL.FLAGS = 0;
    VLK_6358_MIROH.FLAGS = 0;
    VLK_6355_BRUNO.AIVAR[15] = FALSE;
    SLD_6356_ARAXOS.AIVAR[15] = FALSE;
    VLK_6357_NIVEL.AIVAR[15] = FALSE;
    VLK_6358_MIROH.AIVAR[15] = FALSE;
    NPC_SETTRUEGUILD(HERO, HERO.GUILD);
    NPC_EXCHANGEROUTINE(VLK_6355_BRUNO, "FOLLOWHERO");
}

