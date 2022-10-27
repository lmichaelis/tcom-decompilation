instance VLK_929_MERCHANT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 929;
    VOICE = 18;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_929_MERCHANT, 18);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_929_MERCHANT, MALE, HUMHEADBALD, FACE_P_MERCHANT01, 0, 0x8ad8);
    MDL_APPLYOVERLAYMDS(VLK_929_MERCHANT, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_929_MERCHANT);
    B_GIVENPCTALENTS(VLK_929_MERCHANT);
    B_SETFIGHTSKILLS(VLK_929_MERCHANT, 40);
    DAILY_ROUTINE = RTN_START_929;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_929() {
    TA_THROWAPPLE(8, 0, 22, 0, "PARTM2_CONTROL_08");
    TA_THROWAPPLE(22, 0, 8, 0, "PARTM2_CONTROL_08");
}

