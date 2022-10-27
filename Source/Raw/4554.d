instance KQ407_CAPTUREDORC(CUTSCENE) {
    ONSTART = FUNCTION(0x168dd);
}

func void KQ407_CAPTUREDORC_WAIT() {
    AI_WAITTILLEND(HERO, MIL_13643_OLIVER);
    AI_WAITTILLEND(HERO, NONE_13654_CAPTUREDORC);
    AI_WAITTILLEND(NONE_13654_CAPTUREDORC, HERO);
    AI_WAITTILLEND(NONE_13654_CAPTUREDORC, MIL_13643_OLIVER);
    AI_WAITTILLEND(MIL_13643_OLIVER, HERO);
    AI_WAITTILLEND(MIL_13643_OLIVER, NONE_13654_CAPTUREDORC);
}

func void KQ407_CAPTUREDORC_START() {
    MUSIC_OVERRIDETRACK(0x55be);
    WLD_SENDTRIGGER("KQ407_CAPTUREDORC_01");
    MDL_APPLYOVERLAYMDS(HERO, "Humans_Crossbow_Dialogue.MDS");
    TELEPORTNPCTOWP(0x71b, "PARTM3_PRISON_KQ407_HERO");
    TELEPORTNPCTOWP(0xd1eb, "PARTM3_PRISON_KQ407_OLIVER");
    TELEPORTNPCTOWP(0xeba1, "PARTM3_PRISON_KQ407_ORC");
    NPC_CLEARAIQUEUE(MIL_13643_OLIVER);
    NPC_CLEARAIQUEUE(NONE_13654_CAPTUREDORC);
    MIL_13643_OLIVER.AIVAR[92] = TRUE;
    NONE_13654_CAPTUREDORC.AIVAR[92] = TRUE;
    B_TURNTONPC(NONE_13654_CAPTUREDORC, MIL_13643_OLIVER);
    B_TURNTONPC(MIL_13643_OLIVER, NONE_13654_CAPTUREDORC);
    B_TURNTONPC(HERO, NONE_13654_CAPTUREDORC);
    NONE_13654_CAPTUREDORC.FLAGS = 0;
    MIL_13643_OLIVER.FLAGS = 0;
    KQ407_CAPTUREDORC_WAIT();
    CREATEINVITEMS(HERO, 0x8650, 2);
    AI_EQUIPBESTRANGEDWEAPON(HERO);
    AI_READYRANGEDWEAPON(HERO);
    AI_OUTPUT(MIL_13643_OLIVER, HERO, "DIA_Oliver_KQ407_Cutscene_03_01");
    KQ407_CAPTUREDORC_WAIT();
    AI_OUTPUT(NONE_13654_CAPTUREDORC, HERO, "DIA_CapturedOrc_KQ407_Cutscene_03_02");
    KQ407_CAPTUREDORC_WAIT();
    AI_FUNCTION(MIL_13643_OLIVER, 0x168df);
    AI_OUTPUT(MIL_13643_OLIVER, HERO, "DIA_Oliver_KQ407_Cutscene_03_03");
    AI_PLAYANI(MIL_13643_OLIVER, T_STAND_2_COUNTING);
    AI_OUTPUT(MIL_13643_OLIVER, HERO, "DIA_Oliver_KQ407_Cutscene_03_04");
    KQ407_CAPTUREDORC_WAIT();
    AI_OUTPUT(NONE_13654_CAPTUREDORC, HERO, "DIA_CapturedOrc_KQ407_Cutscene_03_05");
    AI_OUTPUT(NONE_13654_CAPTUREDORC, HERO, "DIA_CapturedOrc_KQ407_Cutscene_03_06");
    KQ407_CAPTUREDORC_WAIT();
    AI_OUTPUT(HERO, HERO, "DIA_Marvin_KQ407_Cutscene_15_07");
    KQ407_CAPTUREDORC_WAIT();
    AI_FUNCTION(MIL_13643_OLIVER, 0x168e0);
    AI_OUTPUT(MIL_13643_OLIVER, HERO, "DIA_Oliver_KQ407_Cutscene_03_08");
    AI_OUTPUT(MIL_13643_OLIVER, HERO, "DIA_Oliver_KQ407_Cutscene_03_09");
    AI_PLAYANI(MIL_13643_OLIVER, T_COUNTING_2_STAND);
    KQ407_CAPTUREDORC_WAIT();
    AI_OUTPUT(NONE_13654_CAPTUREDORC, HERO, "DIA_CapturedOrc_KQ407_Cutscene_03_10");
    AI_OUTPUT(NONE_13654_CAPTUREDORC, HERO, "DIA_CapturedOrc_KQ407_Cutscene_03_11");
    KQ407_CAPTUREDORC_WAIT();
    AI_OUTPUT(HERO, HERO, "DIA_Marvin_KQ407_Cutscene_15_12");
    KQ407_CAPTUREDORC_WAIT();
    AI_FUNCTION(MIL_13643_OLIVER, 0x168e1);
    AI_OUTPUT(MIL_13643_OLIVER, HERO, "DIA_Oliver_KQ407_Cutscene_03_13");
    AI_FUNCTION(MIL_13643_OLIVER, 0x168e2);
    AI_TURNTONPC(MIL_13643_OLIVER, HERO);
    AI_OUTPUT(MIL_13643_OLIVER, HERO, "DIA_Oliver_KQ407_Cutscene_03_14");
    KQ407_CAPTUREDORC_WAIT();
    AI_OUTPUT(HERO, HERO, "DIA_Marvin_KQ407_Cutscene_15_15");
    KQ407_CAPTUREDORC_WAIT();
    AI_OUTPUT(MIL_13643_OLIVER, HERO, "DIA_Oliver_KQ407_Cutscene_03_16");
    KQ407_CAPTUREDORC_WAIT();
    AI_OUTPUT(HERO, HERO, "DIA_Marvin_KQ407_Cutscene_15_17");
    KQ407_CAPTUREDORC_WAIT();
    AI_FUNCTION(MIL_13643_OLIVER, 0x168e3);
    AI_SETWALKMODE(MIL_13643_OLIVER, NPC_WALK);
    AI_GOTOWP(MIL_13643_OLIVER, "PARTM3_PRISON_KQ407_LEVER");
    KQ407_CAPTUREDORC_WAIT();
    AI_USEMOB(MIL_13643_OLIVER, NPC_GETDETECTEDMOB(MIL_13643_OLIVER), -(1));
    KQ407_CAPTUREDORC_WAIT();
    AI_USEMOB(MIL_13643_OLIVER, "LEVER", 1);
    AI_FUNCTION(MIL_13643_OLIVER, 0x168e4);
    AI_WAIT(MIL_13643_OLIVER, 0x3f800000);
    AI_GOTOWP(MIL_13643_OLIVER, "PARTM3_PRISON_KQ407_ORC");
    KQ407_CAPTUREDORC_WAIT();
    AI_TURNTONPC(HERO, MIL_13643_OLIVER);
    AI_OUTPUT(MIL_13643_OLIVER, HERO, "DIA_Oliver_KQ407_Cutscene_03_18");
    KQ407_CAPTUREDORC_WAIT();
    AI_OUTPUT(NONE_13654_CAPTUREDORC, HERO, "DIA_CapturedOrc_KQ407_Cutscene_03_19");
    KQ407_CAPTUREDORC_WAIT();
    AI_FUNCTION(HERO, 0x168e5);
}

func void KQ407_CAPTUREDORC_END() {
    MUSIC_DISABLEOVERRIDE();
    FF_APPLYONCEEXT(0xf151, 75, 4);
}

func void KQ407_CAPTUREDORC_CAMERA_01() {
    WLD_SENDTRIGGER("KQ407_CAPTUREDORC_02");
    WLD_SENDUNTRIGGER("KQ407_CAPTUREDORC_01");
}

func void KQ407_CAPTUREDORC_CAMERA_02() {
    WLD_SENDTRIGGER("KQ407_CAPTUREDORC_03");
    WLD_SENDUNTRIGGER("KQ407_CAPTUREDORC_02");
}

func void KQ407_CAPTUREDORC_CAMERA_03() {
    WLD_SENDTRIGGER("KQ407_CAPTUREDORC_04");
    WLD_SENDUNTRIGGER("KQ407_CAPTUREDORC_03");
}

func void KQ407_CAPTUREDORC_CAMERA_04() {
    WLD_SENDTRIGGER("KQ407_CAPTUREDORC_05");
    WLD_SENDUNTRIGGER("KQ407_CAPTUREDORC_04");
}

func void KQ407_CAPTUREDORC_CAMERA_05() {
    AI_LOOKATNPC(HERO, MIL_13643_OLIVER);
    WLD_SENDTRIGGER("KQ407_CAPTUREDORC_06");
    WLD_SENDUNTRIGGER("KQ407_CAPTUREDORC_05");
}

func void KQ407_CAPTUREDORC_CAMERA_06() {
    WLD_SENDTRIGGER("KQ407_CAPTUREDORC_07");
    WLD_SENDUNTRIGGER("KQ407_CAPTUREDORC_06");
}

func void KQ407_CAPTUREDORC_SHOT() {
    FF_APPLYONCEEXT(0x168e6, 700, 3);
}

func void KQ407_CAPTUREDORC_SHOT_APPLY() {
    KQ407_CAPTUREDORC_SHOT_COUNT = (KQ407_CAPTUREDORC_SHOT_COUNT) + (1);
    if ((KQ407_CAPTUREDORC_SHOT_COUNT) == (1)) {
        SND_PLAY3D(NONE_13654_CAPTUREDORC, "ORC_Attack");
        SND_PLAY3D(MIL_13643_OLIVER, "SVM_1_DEAD");
        B_KILLNPC(0xd1eb);
    };
    if ((KQ407_CAPTUREDORC_SHOT_COUNT) == (2)) {
        AI_PLAYANI(HERO, "T_CROSSBOW_SHOOT");
        B_MAGICHURTNPC(HERO, NONE_13654_CAPTUREDORC, 0xcbe543f);
        SND_PLAY3D(NONE_13654_CAPTUREDORC, "ORC_Die");
    };
    if ((KQ407_CAPTUREDORC_SHOT_COUNT) == (3)) {
        KQ407_CAPTUREDORC_SHOT_COUNT = 0;
        AI_FUNCTION(HERO, 0x168e8);
    };
}

var int KQ407_CAPTUREDORC_SHOT_APPLY.KQ407_CAPTUREDORC_SHOT_COUNT = 0;
func void KQ407_CAPTUREDORC_HIDEWEAPON() {
    AI_REMOVEWEAPON(HERO);
    AI_PLAYANI(HERO, "T_FACEPALM");
    AI_FUNCTION(HERO, 0x168de);
}

