instance BDT_6289_VILLAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_VILLAIN;
    GUILD = GIL_NONE;
    ID = 6289;
    VOICE = 45;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_6289_VILLAN, 20);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(BDT_6289_VILLAN, MALE, HUMHEADBALD, FACE_B_VILLAN, 3, 35398);
    MDL_APPLYOVERLAYMDS(BDT_6289_VILLAN, HUMANSRELAXEDMDS);
    EQUIPITEM(BDT_6289_VILLAN, 39736);
    CREATEINVITEMS(BDT_6289_VILLAN, 34384, 10);
    B_CREATEAMBIENTINV(BDT_6289_VILLAN);
    B_GIVENPCTALENTS(BDT_6289_VILLAN);
    B_SETFIGHTSKILLS(BDT_6289_VILLAN, 100);
    DAILY_ROUTINE = RTN_TOT_6289;
}

func void RTN_START_6289() {
    TA_STAYSTRAIGHT(8, 0, 12, 0, "PART15_PATH_227");
    TA_STAYSTRAIGHT(12, 0, 8, 0, "PART15_PATH_227");
}

func void RTN_CUTSCENE_6289() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 12, 0, "PART15_WITHOUTTRACE_GONZALOCUTSCENE_BANDIT02");
    TA_STAYSTRAIGHT_NOIQ(12, 0, 8, 0, "PART15_WITHOUTTRACE_GONZALOCUTSCENE_BANDIT02");
}

func void RTN_HAVEN_6289() {
    TA_LEAN(8, 0, 12, 0, "PART17_HAVEN_LEAN_01");
    TA_LEAN(12, 0, 8, 0, "PART17_HAVEN_LEAN_01");
}

func void RTN_TAVERN_6289() {
    TA_STAYSTRAIGHT(8, 0, 12, 0, "PART17_BAR_PLUNDER_01");
    TA_STAYSTRAIGHT(12, 0, 8, 0, "PART17_BAR_PLUNDER_01");
}

func void RTN_TOT_6289() {
    TA_STAYSTRAIGHT(8, 0, 12, 0, TOT);
    TA_STAYSTRAIGHT(12, 0, 8, 0, TOT);
}

func void RTN_KQ405_SPAWN_6289() {
    TA_STAYSTRAIGHT(8, 0, 12, 0, "PART13_KQ405_SPAWNHUNTER_03");
    TA_STAYSTRAIGHT(12, 0, 8, 0, "PART13_KQ405_SPAWNHUNTER_03");
}

func void RTN_KQ405_SILBACH_6289() {
    TA_WAITING(8, 0, 12, 0, "PART13_VILLAGE_RUPERT_WAIT");
    TA_WAITING(12, 0, 8, 0, "PART13_VILLAGE_RUPERT_WAIT");
}

func void RTN_KQ405_GUIDE_6289() {
    TA_GUIDE_PLAYER(8, 0, 12, 0, "PART13_KQ405_HUNTERGUIDE_03");
    TA_GUIDE_PLAYER(12, 0, 8, 0, "PART13_KQ405_HUNTERGUIDE_03");
}

