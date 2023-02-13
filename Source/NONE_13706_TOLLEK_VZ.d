instance NONE_13706_TOLLEK_VZ(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_TOLLEK;
    GUILD = GIL_NONE;
    ID = 137060;
    VOICE = 25;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    B_SETATTRIBUTESTOLEVEL(NONE_13706_TOLLEK_VZ, 35);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(NONE_13706_TOLLEK_VZ, 34015);
    B_SETNPCVISUAL(NONE_13706_TOLLEK_VZ, MALE, HUMHEADPONY, FACE_P_TOLLEK, BODYTEX_P_HOMELESS02, 35591);
    MDL_APPLYOVERLAYMDS(NONE_13706_TOLLEK_VZ, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(NONE_13706_TOLLEK_VZ);
    B_SETFIGHTSKILLS(NONE_13706_TOLLEK_VZ, 40);
    MDL_APPLYOVERLAYMDS(NONE_13706_TOLLEK_VZ, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(NONE_13706_TOLLEK_VZ, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(NONE_13706_TOLLEK_VZ, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(NONE_13706_TOLLEK_VZ, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_137060;
}

func void RTN_START_137060() {
    TA_PLUNDER(22, 0, 8, 0, "VOLFZACKE_BEFORE_NIRKO");
    TA_PLUNDER(8, 0, 22, 0, "VOLFZACKE_BEFORE_NIRKO");
}

func void RTN_FAKECAMP_137060() {
    TA_PLUNDER(22, 0, 8, 0, "VOLFZACK_MINER_AFTER_02");
    TA_PLUNDER(8, 0, 22, 0, "VOLFZACK_MINER_AFTER_02");
}

func void RTN_CAMP_137060() {
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACKE_RECOON");
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACKE_RECOON");
}

func void RTN_Q514_KITCHEN_137060() {
    TA_TREASURE(22, 0, 8, 0, "VOLFZACK_KITCHEN_05");
    TA_TREASURE(8, 0, 22, 0, "VOLFZACK_KITCHEN_05");
}

func void RTN_Q514_TRAININGHALL_137060() {
    TA_TREASURE(22, 0, 8, 0, "VOLFZACK_TRAININGHALL_ROCKS");
    TA_TREASURE(8, 0, 22, 0, "VOLFZACK_TRAININGHALL_ROCKS");
}

func void RTN_Q514_TRAININGHALL_SCARED_137060() {
    TA_SEARCH_SCARED(8, 0, 22, 0, "VOLFZACK_TRAININGHALL_WORKER");
    TA_SEARCH_SCARED(22, 0, 8, 0, "VOLFZACK_TRAININGHALL_WORKER");
}

