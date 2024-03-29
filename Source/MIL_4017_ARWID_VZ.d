instance MIL_4017_ARWID_VZ(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ARWID;
    GUILD = GIL_NONE;
    ID = 30006;
    VOICE = 28;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    if ((MARVIN_MILITIA_WHEREJOINED) == (1)) {
        if ((ARWID_TIERARMOR) == (1)) {
            B_SETNPCVISUAL(MIL_4017_ARWID_VZ, MALE, HUMHEADPONY, FACE_N_ARWID, BODYTEX_N, 35501);
            EQUIPITEM(MIL_4017_ARWID_VZ, 34066);
            B_SETATTRIBUTESTOLEVEL(MIL_4017_ARWID_VZ, 50);
        } else if ((ARWID_TIERARMOR) == (2)) {
            B_SETNPCVISUAL(MIL_4017_ARWID_VZ, MALE, HUMHEADPONY, FACE_N_ARWID, BODYTEX_N, 35506);
            EQUIPITEM(MIL_4017_ARWID_VZ, 34074);
            B_SETATTRIBUTESTOLEVEL(MIL_4017_ARWID_VZ, 60);
        } else {
            B_SETNPCVISUAL(MIL_4017_ARWID_VZ, MALE, HUMHEADPONY, FACE_N_ARWID, BODYTEX_N, 35488);
            EQUIPITEM(MIL_4017_ARWID_VZ, 39500);
            B_SETATTRIBUTESTOLEVEL(MIL_4017_ARWID_VZ, 40);
        };
    };
    if ((MARVIN_MILITIA_WHEREJOINED) == (2)) {
        if ((ARWID_TIERARMOR) == (3)) {
            B_SETNPCVISUAL(MIL_4017_ARWID_VZ, MALE, HUMHEADPONY, FACE_N_ARWID, BODYTEX_N, 35493);
            CREATEINVITEMS(MIL_4017_ARWID_VZ, 34384, 20);
            EQUIPITEM(MIL_4017_ARWID_VZ, 34386);
            B_SETATTRIBUTESTOLEVEL(MIL_4017_ARWID_VZ, 50);
        } else if ((ARWID_TIERARMOR) == (4)) {
            B_SETNPCVISUAL(MIL_4017_ARWID_VZ, MALE, HUMHEADPONY, FACE_N_ARWID, BODYTEX_N, 35498);
            CREATEINVITEMS(MIL_4017_ARWID_VZ, 34384, 20);
            EQUIPITEM(MIL_4017_ARWID_VZ, 39734);
            B_SETATTRIBUTESTOLEVEL(MIL_4017_ARWID_VZ, 60);
        } else {
            B_SETNPCVISUAL(MIL_4017_ARWID_VZ, MALE, HUMHEADPONY, FACE_N_ARWID, BODYTEX_N, 35488);
            EQUIPITEM(MIL_4017_ARWID_VZ, 39500);
            B_SETATTRIBUTESTOLEVEL(MIL_4017_ARWID_VZ, 40);
        };
    };
    B_SETNPCVISUAL(MIL_4017_ARWID_VZ, MALE, HUMHEADPONY, FACE_N_ARWID, BODYTEX_N, 35488);
    EQUIPITEM(MIL_4017_ARWID_VZ, 39500);
    B_SETATTRIBUTESTOLEVEL(MIL_4017_ARWID_VZ, 40);
    MDL_APPLYOVERLAYMDS(MIL_4017_ARWID_VZ, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_4017_ARWID_VZ);
    B_SETFIGHTSKILLS(MIL_4017_ARWID_VZ, 60);
    MDL_APPLYOVERLAYMDS(MIL_4017_ARWID_VZ, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(MIL_4017_ARWID_VZ, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(MIL_4017_ARWID_VZ, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(MIL_4017_ARWID_VZ, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_30006;
    AIVAR[74] = NPC_VOLFZACK_IAMWARRIOR;
}

func void RTN_START_30006() {
    TA_STAND_GUARDING(22, 0, 8, 0, "VOLFZACKE_BEFORE_ARWID");
    TA_STAND_GUARDING(8, 0, 22, 0, "VOLFZACKE_BEFORE_ARWID");
}

func void RTN_FAKECAMP_30006() {
    TA_LEAN(22, 0, 8, 0, "VOLFZACK_WARRIOR_AFTER_03");
    TA_LEAN(8, 0, 22, 0, "VOLFZACK_WARRIOR_AFTER_03");
}

func void RTN_CAMP_30006() {
    TA_SIT_BENCH(22, 0, 8, 0, "VOLFZACKE_GUILDHERO");
    TA_SIT_BENCH(8, 0, 22, 0, "VOLFZACKE_GUILDHERO");
}

func void RTN_FOLLOW_30006() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "VOLFZACKE_GUILDHERO");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "VOLFZACKE_GUILDHERO");
}

func void RTN_PUZZLE_OUTSIDE_UP_30006() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_04");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_04");
}

func void RTN_PUZZLE_OUTSIDE_DOWN_30006() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_01");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_01");
}

func void RTN_PUZZLE_OUTSIDE_LEFT_30006() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_02");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_02");
}

func void RTN_PUZZLE_OUTSIDE_RIGHT_30006() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_03");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_03");
}

func void RTN_PUZZLE_INSIDE_UPLEFT_30006() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_07");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_07");
}

func void RTN_PUZZLE_INSIDE_UPRIGHT_30006() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_08");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_08");
}

func void RTN_PUZZLE_INSIDE_DOWNLEFT_30006() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_05");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_05");
}

func void RTN_PUZZLE_INSIDE_DOWNRIGHT_30006() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CHESS_PLACE_06");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CHESS_PLACE_06");
}

