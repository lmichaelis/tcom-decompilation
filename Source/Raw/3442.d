func void GOLDMINE_KILLMARVIN() {
    SQ301_FINALFIGHT = 1;
    VLK_6355_BRUNO.FLAGS = 0;
    SLD_6356_ARAXOS.FLAGS = 0;
    NONE_6361_THUG.FLAGS = 0;
    NONE_6362_THUG.FLAGS = 0;
    VLK_6357_NIVEL.FLAGS = 0;
    VLK_6358_MIROH.FLAGS = 0;
    NONE_6359_WORKER.FLAGS = 0;
    NONE_6360_WORKER.FLAGS = 0;
    VLK_6357_NIVEL.ATTRIBUTE[1] = (VLK_6357_NIVEL.ATTRIBUTE[1]) + (150);
    if ((VLK_6357_NIVEL.ATTRIBUTE[0]) != (VLK_6357_NIVEL.ATTRIBUTE[1])) {
        VLK_6357_NIVEL.ATTRIBUTE[0] = VLK_6357_NIVEL.ATTRIBUTE[1];
    };
    VLK_6358_MIROH.ATTRIBUTE[1] = (VLK_6358_MIROH.ATTRIBUTE[1]) + (150);
    if ((VLK_6358_MIROH.ATTRIBUTE[0]) != (VLK_6358_MIROH.ATTRIBUTE[1])) {
        VLK_6358_MIROH.ATTRIBUTE[0] = VLK_6358_MIROH.ATTRIBUTE[1];
    };
    NONE_6359_WORKER.ATTRIBUTE[1] = (NONE_6359_WORKER.ATTRIBUTE[1]) + (150);
    if ((NONE_6359_WORKER.ATTRIBUTE[0]) != (NONE_6359_WORKER.ATTRIBUTE[1])) {
        NONE_6359_WORKER.ATTRIBUTE[0] = NONE_6359_WORKER.ATTRIBUTE[1];
    };
    NONE_6360_WORKER.ATTRIBUTE[1] = (NONE_6360_WORKER.ATTRIBUTE[1]) + (150);
    if ((NONE_6360_WORKER.ATTRIBUTE[0]) != (NONE_6360_WORKER.ATTRIBUTE[1])) {
        NONE_6360_WORKER.ATTRIBUTE[0] = NONE_6360_WORKER.ATTRIBUTE[1];
    };
    VLK_6355_BRUNO.GUILD = GIL_BDT;
    SLD_6356_ARAXOS.GUILD = GIL_BDT;
    NONE_6361_THUG.GUILD = GIL_BDT;
    NONE_6362_THUG.GUILD = GIL_BDT;
    NPC_SETTRUEGUILD(NONE_6362_THUG, GIL_BDT);
    VLK_6357_NIVEL.AIVAR[15] = TRUE;
    NPC_SETTRUEGUILD(NONE_6361_THUG, GIL_BDT);
    VLK_6358_MIROH.AIVAR[15] = TRUE;
    NPC_SETTRUEGUILD(SLD_6356_ARAXOS, GIL_BDT);
    NONE_6359_WORKER.AIVAR[15] = TRUE;
    NPC_SETTRUEGUILD(VLK_6355_BRUNO, GIL_BDT);
    NONE_6360_WORKER.AIVAR[15] = TRUE;
    NPC_SETTRUEGUILD(HERO, HERO.GUILD);
    NPC_REFRESH(SLD_6356_ARAXOS);
    NPC_REFRESH(NONE_6361_THUG);
    NPC_REFRESH(NONE_6362_THUG);
    NPC_REFRESH(VLK_6357_NIVEL);
    NPC_REFRESH(VLK_6358_MIROH);
    NPC_REFRESH(NONE_6359_WORKER);
    NPC_REFRESH(NONE_6360_WORKER);
    AI_TURNTONPC(VLK_6357_NIVEL, HERO);
    AI_TURNTONPC(VLK_6358_MIROH, HERO);
    AI_TURNTONPC(NONE_6359_WORKER, HERO);
    AI_TURNTONPC(NONE_6360_WORKER, HERO);
}

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
