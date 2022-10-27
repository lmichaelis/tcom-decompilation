instance BDT_8001_LURKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WANTEDPOSTER_LURKER;
    GUILD = GIL_BDT;
    ID = 0x1f41;
    VOICE = 13;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_8001_LURKER, 32);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(BDT_8001_LURKER, 0x9b53);
    CREATEINVITEMS(BDT_8001_LURKER, 0x864f, 20);
    CREATEINVITEMS(BDT_8001_LURKER, 0x8d20, 3);
    ATTRIBUTE[1] = 650;
    ATTRIBUTE[0] = 650;
    LEVEL = 70;
    B_SETNPCVISUAL(BDT_8001_LURKER, MALE, HUMHEADBALD, FACE_N_BOUNTYTARGET06, 1, 0x8323);
    MDL_APPLYOVERLAYMDS(BDT_8001_LURKER, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(BDT_8001_LURKER);
    B_SETFIGHTSKILLS(BDT_8001_LURKER, 45);
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    DAILY_ROUTINE = RTN_START_8001;
}

func void RTN_START_8001() {
    TA_OBSERVE(22, 0, 8, 0, "PART13_WANTEDPOSTER_LURKER");
    TA_OBSERVE(8, 0, 22, 0, "PART13_WANTEDPOSTER_LURKER");
}
