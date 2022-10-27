instance VLK_6415_WALTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_WALTER;
    GUILD = GIL_VLK;
    ID = 0x190f;
    VOICE = 57;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6415_WALTER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6415_WALTER, MALE, HUMHEADFATBALD, FACE_N_WALTER, 1, 0x846a);
    MDL_APPLYOVERLAYMDS(VLK_6415_WALTER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(VLK_6415_WALTER);
    B_SETFIGHTSKILLS(VLK_6415_WALTER, 40);
    DAILY_ROUTINE = RTN_START_6415;
    AIVAR[74] = NPC_SQ225_KNOWGERHARD;
}

func void RTN_START_6415() {
    TA_STAND_ARMSCROSSED(7, 0, 8, 0, "SLUMS_SMITH_SELL");
    TA_SMITH_ANVIL(8, 0, 11, 0, "SLUMS_SMITH_ANVIL");
    TA_CHECKSWD(11, 0, 12, 0, "SLUMS_SMITH_ANVIL");
    TA_STAND_ARMSCROSSED(12, 0, 16, 0, "SLUMS_SMITH_SELL");
    TA_SMITH_SHARP(16, 0, 17, 0, "SLUMS_SMITH_SHARP");
    TA_SMITH_SHARP(17, 0, 18, 0, "SLUMS_SMITH_SHARP");
    TA_SMITH_ANVIL(18, 0, 20, 0, "SLUMS_SMITH_ANVIL");
    TA_CHECKSWD(20, 0, 20, 30, "SLUMS_SMITH_SELL");
    TA_STAND_ARMSCROSSED(20, 30, 22, 0, "SLUMS_SMITH_SELL");
    TA_SLEEP(22, 0, 7, 0, "SLUMS_SMITH_SELL");
}

