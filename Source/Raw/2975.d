instance BDT_8031_GOLEM(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WANTEDPOSTER_GOLEM;
    GUILD = GIL_STONEGOLEM;
    ID = 0x1f5f;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_8031_GOLEM, 50);
    ATTRIBUTE[1] = 0x5dc;
    ATTRIBUTE[0] = 0x5dc;
    PROTECTION[1] = 130;
    PROTECTION[2] = 150;
    PROTECTION[6] = 220;
    PROTECTION[3] = 120;
    PROTECTION[4] = 220;
    PROTECTION[5] = -(1);
    LEVEL = 150;
    MDL_SETVISUAL(BDT_8031_GOLEM, "Golem.mds");
    MDL_SETVISUALBODY(BDT_8031_GOLEM, "KM_MAGICGOLEM_BODY", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
    DAMAGETYPE = DAM_MAGIC;
    FIGHT_TACTIC = FAI_TROLL;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = 0xdac;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = TRUE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[32] = ONLYROUTINE;
    CREATEINVITEMS(BDT_8031_GOLEM, 0x8c95, 20);
    CREATEINVITEMS(BDT_8031_GOLEM, 0x859a, 1);
    NPC_SETTOFISTMODE(BDT_8031_GOLEM);
}
