instance SLD_13491_RUDI(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_RUDI;
    GUILD = GIL_SLD;
    ID = 0x34b3;
    VOICE = 6;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13491_RUDI, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_13491_RUDI, MALE, HUMHEADFIGHTER, FACE_N_RUDI, 1, 0x8a8e);
    MDL_APPLYOVERLAYMDS(SLD_13491_RUDI, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(SLD_13491_RUDI);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_13491_RUDI);
    DAILY_ROUTINE = RTN_START_13491;
}

func void RTN_START_13491() {
    TA_OBSERVE(23, 0, 22, 0, "PARTM1_GUILDHOUSE_LIVINGROOM_STAND_02");
    TA_OBSERVE(22, 0, 23, 0, "PARTM1_GUILDHOUSE_LIVINGROOM_STAND_02");
}

func void RTN_SQ416_RAMSEYHOUSE_13491() {
    TA_LEAN(8, 0, 22, 0, "PARTM5_RAMSEY_SQ416_HUNTER_04");
    TA_LEAN(22, 0, 8, 0, "PARTM5_RAMSEY_SQ416_HUNTER_04");
}

func void RTN_SQ416_VILLAGE_INN_13491() {
    TA_STAND_DRINKING(8, 0, 22, 0, "VILLAGE_PUB_DRINK_02");
    TA_STAND_DRINKING(22, 0, 8, 0, "VILLAGE_PUB_DRINK_02");
}

func void RTN_SQ416_VILLAGE_SLEEP_13491() {
    TA_SLEEP(8, 0, 22, 0, "VILLAGE_PUB_ROOM03_BED01");
    TA_SLEEP(22, 0, 8, 0, "VILLAGE_PUB_ROOM03_BED01");
}

func void RTN_TOT_13491() {
    TA_SLEEP(8, 0, 22, 0, TOT);
    TA_SLEEP(22, 0, 8, 0, TOT);
}

