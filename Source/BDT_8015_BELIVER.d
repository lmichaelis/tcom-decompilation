instance BDT_8015_BELIVER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WANTEDPOSTER_PROPHETBELIVER;
    GUILD = GIL_NONE;
    ID = 8015;
    VOICE = 14;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_8015_BELIVER, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(BDT_8015_BELIVER, 34397);
    CREATEINVITEMS(BDT_8015_BELIVER, 34383, 20);
    ATTRIBUTE[1] = 500;
    ATTRIBUTE[0] = 500;
    LEVEL = 60;
    B_SETNPCVISUAL(BDT_8015_BELIVER, MALE, HUMHEADBALD, FACE_N_BOUNTYTARGET12, 1, 35428);
    MDL_APPLYOVERLAYMDS(BDT_8015_BELIVER, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(BDT_8015_BELIVER);
    B_SETFIGHTSKILLS(BDT_8015_BELIVER, 50);
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    DAILY_ROUTINE = RTN_START_8015;
}

func void RTN_START_8015() {
    TA_PRAYSTAND(4, 0, 22, 0, "HARBOUR_WANTEDPOSTER_BELIVER_03");
    TA_PRAYSTAND(22, 0, 4, 0, "HARBOUR_WANTEDPOSTER_BELIVER_03");
}

