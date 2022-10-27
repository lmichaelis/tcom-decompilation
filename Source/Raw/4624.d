instance SQ125_KYLECLIMBTREE_CUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(0x16ad0);
}

func void SQ125_KYLECLIMBTREE_CUTSCENE_WAIT() {
    AI_WAITTILLEND(HERO, BAU_6342_KYLE);
    AI_WAITTILLEND(BAU_6342_KYLE, HERO);
}

func void SQ125_KYLECLIMBTREE_CUTSCENE_START() {
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("SQ125_TREE_02");
    TELEPORTNPCTOWP(0x71b, "PART6_SQ125_TREE_WAIT");
    TELEPORTNPCTOWP(0xdb76, "PART6_SQ125_KYLE_TREE");
    NPC_CLEARAIQUEUE(BAU_6342_KYLE);
    BAU_6342_KYLE.AIVAR[92] = TRUE;
    AI_TURNTONPC(HERO, BAU_6342_KYLE);
    AI_TURNTONPC(BAU_6342_KYLE, HERO);
    AI_WAIT(BAU_6342_KYLE, 0x40000000);
    AI_FUNCTION(BAU_6342_KYLE, 0x16ad1);
    AI_OUTPUT(BAU_6342_KYLE, HERO, "DIA_Kyle_SQ125_Cutscene_03_01");
    SQ125_KYLECLIMBTREE_CUTSCENE_WAIT();
    AI_OUTPUT(HERO, HERO, "DIA_Marvin_SQ125_Cutscene_15_02");
    SQ125_KYLECLIMBTREE_CUTSCENE_WAIT();
    AI_FUNCTION(BAU_6342_KYLE, 0x16ad2);
    AI_OUTPUT(BAU_6342_KYLE, HERO, "DIA_Kyle_SQ125_Cutscene_03_03");
    AI_FUNCTION(BAU_6342_KYLE, 0xf2c2);
}

func void SQ125_KYLECLIMBTREE_CAMERA_01() {
    WLD_SENDTRIGGER("SQ125_TREE_03");
    WLD_SENDUNTRIGGER("SQ125_TREE_02");
}

func void SQ125_KYLECLIMBTREE_CAMERA_02() {
    WLD_SENDTRIGGER("SQ125_TREE_04");
    WLD_SENDUNTRIGGER("SQ125_TREE_03");
}

