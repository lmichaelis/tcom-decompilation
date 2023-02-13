instance VLK_11181_BLINDEDANDERAS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ANDREAS;
    GUILD = GIL_NONE;
    ID = 111811;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11181_BLINDEDANDERAS, 2);
    FIGHT_TACTIC = FAI_HUMAN_POWERLESS;
    B_SETNPCVISUAL(VLK_11181_BLINDEDANDERAS, MALE, HUMHEADBALDNOBLINK, FACE_B_BLINDEDANDERAS, BODYTEX_B_HOMELESS02, 0);
    MDL_APPLYOVERLAYMDS(VLK_11181_BLINDEDANDERAS, HUMANSTIREDMDS);
    B_CREATEAMBIENTINV(VLK_11181_BLINDEDANDERAS);
    B_GIVENPCTALENTS(VLK_11181_BLINDEDANDERAS);
    B_SETFIGHTSKILLS(VLK_11181_BLINDEDANDERAS, 0);
    DAILY_ROUTINE = RTN_START_111811;
}

func void RTN_START_111811() {
    TA_SIT_TURKISH_BLINDED(8, 0, 22, 0, "PART9_ANDERAS_BLINDED");
    TA_SIT_TURKISH_BLINDED(22, 0, 8, 0, "PART9_ANDERAS_BLINDED");
}

