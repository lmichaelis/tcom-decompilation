instance MIL_13643_OLIVER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_OLIVER;
    GUILD = GIL_MIL;
    ID = 0x354b;
    VOICE = 17;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13643_OLIVER, 50);
    B_SETNPCVISUAL(MIL_13643_OLIVER, MALE, HUMHEADPONY, FACE_N_OLIVER, 1, 0x8b1f);
    MDL_APPLYOVERLAYMDS(MIL_13643_OLIVER, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13643_OLIVER);
    B_GIVENPCTALENTS(MIL_13643_OLIVER);
    B_SETFIGHTSKILLS(MIL_13643_OLIVER, 45);
    DAILY_ROUTINE = RTN_START_13643;
}

func void RTN_START_13643() {
    TA_READ(12, 0, 14, 0, "PARTM3_MEDIC_STAND_01");
    TA_READ(14, 0, 12, 0, "PARTM3_MEDIC_STAND_01");
}

func void RTN_KQ407_GUIDE_00_13643() {
    TA_STAYSTRAIGHT(12, 0, 14, 0, "PARTM3_PATH_167");
    TA_STAYSTRAIGHT(14, 0, 12, 0, "PARTM3_PATH_167");
}

func void RTN_KQ407_GUIDE_01_13643() {
    TA_GUIDE_PLAYER(12, 0, 14, 0, "PARTM3_PRISON_06");
    TA_GUIDE_PLAYER(14, 0, 12, 0, "PARTM3_PRISON_06");
}

func void RTN_KQ407_GUIDE_02_13643() {
    TA_GUIDE_PLAYER(12, 0, 14, 0, "PARTM3_PRISON_19");
    TA_GUIDE_PLAYER(14, 0, 12, 0, "PARTM3_PRISON_19");
}

