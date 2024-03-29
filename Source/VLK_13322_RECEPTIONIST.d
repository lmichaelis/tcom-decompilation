instance VLK_13322_RECEPTIONIST(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_RECEPTIONIST;
    GUILD = GIL_VLK;
    ID = 13322;
    VOICE = 6;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13322_RECEPTIONIST, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_13322_RECEPTIONIST, MALE, HUMHEADFATBALD, FACE_N_RECEPTIONIST, 1, 35529);
    MDL_APPLYOVERLAYMDS(VLK_13322_RECEPTIONIST, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13322_RECEPTIONIST);
    B_GIVENPCTALENTS(VLK_13322_RECEPTIONIST);
    B_SETFIGHTSKILLS(VLK_13322_RECEPTIONIST, 50);
    DAILY_ROUTINE = RTN_START_13322;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
    AIVAR[70] = NPC_AMB_CITY_OLDCITY;
}

func void RTN_START_13322() {
    TA_STAND_GUARDING(8, 0, 10, 0, "PARTM5_HOTEL_STAND_01");
    TA_STAND_ARMSCROSSED(10, 0, 13, 0, "PARTM5_HOTEL_STAND_01");
    TA_CHECKLIST(13, 0, 18, 0, "PARTM5_HOTEL_STAND_01");
    TA_STAND_ARMSCROSSED(18, 0, 22, 0, "PARTM5_HOTEL_STAND_01");
    TA_STAND_GUARDING(22, 0, 4, 0, "PARTM5_HOTEL_STAND_01");
    TA_STAND_ARMSCROSSED(4, 0, 8, 0, "PARTM5_HOTEL_STAND_01");
}

