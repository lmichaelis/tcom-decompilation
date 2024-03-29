instance PIR_13556_PIRATE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ADDON_PIRAT;
    GUILD = GIL_PIR;
    ID = 13556;
    VOICE = 28;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(PIR_13556_PIRATE, 35);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(PIR_13556_PIRATE, MALE, HUMHEADTHOMASNEU, FACE_B_PIRATE08, BODYTEX_B, 33571);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(PIR_13556_PIRATE);
    EQUIPITEM(PIR_13556_PIRATE, 39724);
    CREATEINVITEMS(PIR_13556_PIRATE, 34384, 75);
    MDL_APPLYOVERLAYMDS(PIR_13556_PIRATE, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(PIR_13556_PIRATE);
    B_SETFIGHTSKILLS(PIR_13556_PIRATE, 50);
    DAILY_ROUTINE = RTN_PRESTART_13556;
    AIVAR[70] = NPC_AMB_PIRATES;
}

func void RTN_PRESTART_13556() {
    TA_GUARD_PASSAGE(1, 0, 9, 30, "P17_HAVEN_NOENTRY_KILLHERO");
    TA_GUARD_PASSAGE(9, 30, 1, 0, "P17_HAVEN_NOENTRY_KILLHERO");
}

func void RTN_START_13556() {
    TA_SLEEP(1, 0, 9, 30, "P17_HAVEN_ARENA_HOUSE07_05");
    TA_SMALLTALK(9, 30, 12, 0, "P17_HAVEN_ARENA_34B");
    TA_SIT_CHAIR_EAT(12, 0, 14, 0, "P17_HAVEN_ARENA_HOUSE07_03");
    TA_SMALLTALK(14, 0, 16, 30, "P17_HAVEN_ARENA_34B");
    TA_SIT_CHAIR_DRINK(16, 30, 19, 0, "P17_HAVEN_ARENA_HOUSE07_03");
    TA_SMOKE_JOINT(19, 0, 20, 0, "P17_HAVEN_ARENA_11A");
    TA_SIT_CHAIR_EAT(20, 0, 21, 30, "P17_HAVEN_ARENA_11A");
    TA_SMALLTALK(21, 30, 0, 0, "P17_HAVEN_ARENA_05A");
    TA_SMALLTALK(0, 0, 1, 0, "P17_HAVEN_ARENA_34B");
}

