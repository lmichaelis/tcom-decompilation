instance Q602_DIMACUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(0x16a3e);
}

func void Q602_DIMACUTSCENE_WAIT() {
    AI_WAITTILLEND(NONE_10064_VOLKERGUARD_Q602, HERO);
    AI_WAITTILLEND(NONE_10064_VOLKERGUARD_Q602, NONE_10065_VOLKERGUARD_Q602);
    AI_WAITTILLEND(NONE_10064_VOLKERGUARD_Q602, NONE_10066_VOLKERGUARD_Q602);
    AI_WAITTILLEND(NONE_10065_VOLKERGUARD_Q602, HERO);
    AI_WAITTILLEND(NONE_10065_VOLKERGUARD_Q602, NONE_10064_VOLKERGUARD_Q602);
    AI_WAITTILLEND(NONE_10065_VOLKERGUARD_Q602, NONE_10066_VOLKERGUARD_Q602);
    AI_WAITTILLEND(NONE_10066_VOLKERGUARD_Q602, HERO);
    AI_WAITTILLEND(NONE_10066_VOLKERGUARD_Q602, NONE_10064_VOLKERGUARD_Q602);
    AI_WAITTILLEND(NONE_10066_VOLKERGUARD_Q602, NONE_10065_VOLKERGUARD_Q602);
    AI_WAITTILLEND(HERO, NONE_10064_VOLKERGUARD_Q602);
    AI_WAITTILLEND(HERO, NONE_10065_VOLKERGUARD_Q602);
    AI_WAITTILLEND(HERO, NONE_10066_VOLKERGUARD_Q602);
}

func void Q602_DIMACUTSCENE_START() {
    WLD_SENDTRIGGER("KM_Q602_DIMA_01");
    TELEPORTNPCTOWP(0x71b, "PARTE1_DIMA_CUTSCENE_HERO");
    TELEPORTNPCTOWP(0xe9b8, "PARTE1_VOLKERGUARD_05");
    TELEPORTNPCTOWP(0xe9bb, "PARTE1_VOLKERGUARD_04");
    TELEPORTNPCTOWP(0xe9be, "PARTE1_VOLKERGUARD_03");
    TELEPORTNPCTOWP(0xea7d, "PARTE1_DIMA");
    TELEPORTNPCTOWP(0xea74, "PARTE1_ARAXOS_01");
    AI_TURNTONPC(NONE_10064_VOLKERGUARD_Q602, SLD_5001_DIMA_Q602);
    AI_TURNTONPC(NONE_10065_VOLKERGUARD_Q602, SLD_1017_ARAXOS_Q602);
    AI_TURNTONPC(NONE_10066_VOLKERGUARD_Q602, SLD_5001_DIMA_Q602);
    AI_TURNTONPC(SLD_5001_DIMA_Q602, NONE_10064_VOLKERGUARD_Q602);
    AI_TURNTONPC(SLD_1017_ARAXOS_Q602, NONE_10065_VOLKERGUARD_Q602);
    AI_TURNTONPC(HERO, NONE_10064_VOLKERGUARD_Q602);
    NONE_10064_VOLKERGUARD_Q602.AIVAR[92] = TRUE;
    Q602_DIMACUTSCENE_WAIT();
    AI_STARTFACEANI(NONE_10064_VOLKERGUARD_Q602, S_ANGRY, 1, -(1));
    AI_OUTPUT(NONE_10064_VOLKERGUARD_Q602, HERO, "DIA_VolkerGuard_DimaCutscene_13_01");
    AI_FUNCTION(NONE_10064_VOLKERGUARD_Q602, 0x16a40);
    Q602_DIMACUTSCENE_WAIT();
    AI_WAIT(NONE_10064_VOLKERGUARD_Q602, 0x3e4ccccd);
    AI_WAIT(NONE_10065_VOLKERGUARD_Q602, 0x3f800000);
    AI_WAIT(NONE_10066_VOLKERGUARD_Q602, 0x3fa66666);
    AI_TURNTONPC(NONE_10064_VOLKERGUARD_Q602, HERO);
    AI_TURNTONPC(NONE_10065_VOLKERGUARD_Q602, HERO);
    AI_TURNTONPC(NONE_10066_VOLKERGUARD_Q602, HERO);
    AI_OUTPUT(NONE_10064_VOLKERGUARD_Q602, HERO, "DIA_VolkerGuard_DimaCutscene_13_02");
    Q602_DIMACUTSCENE_WAIT();
    AI_FUNCTION(NONE_10064_VOLKERGUARD_Q602, 0x16a41);
    AI_STARTFACEANI(HERO, S_ANGRY, 1, -(1));
    AI_WAIT(HERO, 0x3f4ccccd);
    Q602_DIMACUTSCENE_WAIT();
    AI_FUNCTION(NONE_10064_VOLKERGUARD_Q602, 0x16a3f);
}

func void Q602_DIMACUTSCENE_END() {
    Q602_DIMACUTSCENE_ENABLE = 2;
    AI_RESETFACEANI(HERO);
    WLD_SENDUNTRIGGER("KM_Q602_DIMA_03");
    NONE_10064_VOLKERGUARD_Q602.AIVAR[92] = FALSE;
    NPC_REFRESH(SLD_5001_DIMA_Q602);
    NPC_REFRESH(SLD_1017_ARAXOS_Q602);
    NPC_REFRESH(NONE_10064_VOLKERGUARD_Q602);
    NPC_REFRESH(NONE_10065_VOLKERGUARD_Q602);
    NPC_REFRESH(NONE_10066_VOLKERGUARD_Q602);
    Q602_DIMACUTSCENE_FIGHT();
    Q602_DIMACUTSCENE_CHANGERTN();
    HERO.AIVAR[4] = FALSE;
}

func void Q602_DIMACUTSCENE_CHANGECAMERA01() {
    WLD_SENDTRIGGER("KM_Q602_DIMA_02");
    WLD_SENDUNTRIGGER("KM_Q602_DIMA_01");
}

func void Q602_DIMACUTSCENE_CHANGECAMERA02() {
    WLD_SENDTRIGGER("KM_Q602_DIMA_03");
    WLD_SENDUNTRIGGER("KM_Q602_DIMA_02");
}

