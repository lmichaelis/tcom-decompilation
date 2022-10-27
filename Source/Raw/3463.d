func void SQ125_SPAWNKYLE() {
    WLD_SENDTRIGGER("SQ125_SAWSOUND");
    WLD_SENDTRIGGER("SQ125_MOVER_SAWSOUND");
    B_STARTOTHERROUTINE(BAU_6342_KYLE, "SQ125_WORK_WAIT");
    NPC_REFRESH(BAU_6342_KYLE);
    TELEPORTNPCTOWP(0xdb76, BAU_6342_KYLE.WP);
}

func void SQ125_KYLEFACEONLOAD() {
    if ((SQ125_REFRESHKYLEFACE) == (TRUE)) {
        NPC_CHANGEFACE(BAU_6342_KYLE, FACE_N_KYLE_ALCHEMY);
    };
}

func void SQ125_KYLE_ENDDIALOGUE() {
    FF_APPLYONCEEXT(0xf2bd, 75, 4);
}

func void SQ125_KYLE_ENDDIALOGUE_APPLY() {
    SQ125_KYLE_ENDDIALOGUE_COUNT = (SQ125_KYLE_ENDDIALOGUE_COUNT) + (1);
    if ((SQ125_KYLE_ENDDIALOGUE_COUNT) == (4)) {
        WLD_SENDUNTRIGGER("SQ125_TREE_01");
        DIACAM_ENABLE();
    };
}

var int SQ125_KYLE_ENDDIALOGUE_APPLY.SQ125_KYLE_ENDDIALOGUE_COUNT = 0;
func void SQ125_KYLECLIMBTREE_PREPARE() {
    HERO.AIVAR[4] = TRUE;
    FF_APPLYONCEEXT(0xf2c0, 75, 4);
}

func void SQ125_KYLECLIMBTREE_APPLY() {
    SQ125_KYLECLIMBTREE_COUNT = (SQ125_KYLECLIMBTREE_COUNT) + (1);
    if ((SQ125_KYLECLIMBTREE_COUNT) == (4)) {
        CUTSCENE_START(0x16ace);
        SQ125_KYLECLIMBTREE_COUNT = 0;
    };
}

var int SQ125_KYLECLIMBTREE_APPLY.SQ125_KYLECLIMBTREE_COUNT = 0;
func void SQ125_KYLECLIMBTREE_STARTDIALOGUE() {
    SQ125_CLIMBINGTREE = 3;
    BAU_6342_KYLE.AIVAR[92] = FALSE;
    HERO.AIVAR[4] = FALSE;
    AI_STARTSTATE(BAU_6342_KYLE, 0xf09f, 1, "");
    AI_STARTSTATE(HERO, 0xf09f, 1, "");
}

func void SQ125_KYLECLIMBTREE_CUTSCENE_END() {
    FF_APPLYONCEEXT(0xf2c4, 75, 4);
}

func void SQ125_KYLECLIMBTREE_CUTSCENE_END_APPLY() {
    SQ125_KYLECLIMBTREE_CUTSCENE_END_COUNT = (SQ125_KYLECLIMBTREE_CUTSCENE_END_COUNT) + (1);
    if ((SQ125_KYLECLIMBTREE_CUTSCENE_END_COUNT) == (4)) {
        WLD_SENDUNTRIGGER("SQ125_TREE_01");
        WLD_SENDUNTRIGGER("SQ125_TREE_02");
        WLD_SENDUNTRIGGER("SQ125_TREE_03");
        WLD_SENDUNTRIGGER("SQ125_TREE_04");
        DIACAM_ENABLE();
        B_STARTOTHERROUTINE(BAU_6342_KYLE, "SQ125_TREE");
        NPC_REFRESH(BAU_6342_KYLE);
        TELEPORTNPCTOWP(0xdb76, BAU_6342_KYLE.WP);
        SQ125_KYLECLIMBTREE_CUTSCENE_END_COUNT = 0;
        HERO.AIVAR[4] = FALSE;
    };
}

var int SQ125_KYLECLIMBTREE_CUTSCENE_END_APPLY.SQ125_KYLECLIMBTREE_CUTSCENE_END_COUNT = 0;
func void SQ125_TRYTOHELPKYLE() {
    SQ125_HELPINGKYLE = 1;
    MOB_CHANGEFOCUSNAME("SQ125_LADDER_03", "MOBNAME_SQ125_LADDER");
}

func void SQ125_REMOVENAMES() {
    SQ125_HELPINGKYLE = 2;
    MOB_CHANGEFOCUSNAME("SQ125_LADDER_03", "MOBNAME_NOTHING");
}

var int SQ125_WHAT_LADDER = 0;
var int SQ125_WHAT_STRAW = 0;
func void SQ125_HELPINGKYLE_LADDER() {
    SQ125_HELPINGKYLE_WAY = 1;
    SQ125_REMOVENAMES();
    FADESCREENTOBLACKF(1, 0xf2cd, 1000);
}

func void SQ125_HELPINGKYLE_STRAW() {
    SQ125_HELPINGKYLE_WAY = 2;
    MDL_APPLYOVERLAYMDS(BAU_6342_KYLE, "HumanS_Wounded.mds");
    SQ125_REMOVENAMES();
    FADESCREENTOBLACKF(1, 0xf2ce, 1000);
}

func void SQ125_HELPINGKYLE_TELEPORTNPC() {
    B_STARTOTHERROUTINE(BAU_6342_KYLE, "SQ125_AFTERTREE");
    NPC_REFRESH(BAU_6342_KYLE);
    TELEPORTNPCTOWP(0xdb76, BAU_6342_KYLE.WP);
    TELEPORTNPCTOWP(0x71b, "PART6_PATH_41");
}

func void SQ125_HELPINGKYLE_LADDER_FADESCREEN() {
    SQ125_HELPINGKYLE_TELEPORTNPC();
    FF_APPLYONCEEXTGT(0xf2cf, 0, -(1));
}

func void SQ125_HELPINGKYLE_STRAW_FADESCREEN() {
    SQ125_HELPINGKYLE_TELEPORTNPC();
    FF_APPLYONCEEXTGT(0xf2d9, 0, -(1));
}

func void SQ125_HELPINGKYLE_LADDER_APPLY() {
    if ((SQ125_HELPINGKYLE_LADDER_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ125_HelpingKyle_Ladder_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ125_MOVER_LADDER_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("SQ125_MOVER_LADDER_02");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        MOVPTR3 = MEM_SEARCHVOBBYNAME("SQ125_MOVER_LADDER_03");
        MOVER3 = MEM_PTRTOINST(MOVPTR3);
        MOVPTR4 = MEM_SEARCHVOBBYNAME("SQ125_MOVER_LADDER_FINAL");
        MOVER4 = MEM_PTRTOINST(MOVPTR4);
        if ((SQ125_WHAT_LADDER) == (1)) {
            CHANGEVOBCOLLISION("SQ125_LADDER_01", FALSE, FALSE, FALSE, TRUE);
        } else if ((SQ125_WHAT_LADDER) == (2)) {
            CHANGEVOBCOLLISION("SQ125_LADDER_02", FALSE, FALSE, FALSE, TRUE);
        } else if ((SQ125_WHAT_LADDER) == (3)) {
            CHANGEVOBCOLLISION("SQ125_LADDER_03", FALSE, FALSE, FALSE, TRUE);
        };
        CHANGEVOBCOLLISION("SQ125_LADDER_FINAL", FALSE, FALSE, FALSE, TRUE);
        if ((SQ125_WHAT_LADDER) == (1)) {
            WLD_SENDTRIGGER("SQ125_MOVER_LADDER_01");
        } else if ((SQ125_WHAT_LADDER) == (2)) {
            WLD_SENDTRIGGER("SQ125_MOVER_LADDER_02");
        } else if ((SQ125_WHAT_LADDER) == (3)) {
            WLD_SENDTRIGGER("SQ125_MOVER_LADDER_03");
        };
        WLD_SENDTRIGGER("SQ125_MOVER_LADDER_FINAL");
        SQ125_HELPINGKYLE_LADDER_COUNT = 1;
    };
    if (((((((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ125_HelpingKyle_Ladder_Apply");
        if ((SQ125_WHAT_LADDER) == (1)) {
            CHANGEVOBCOLLISION("SQ125_LADDER_01", TRUE, TRUE, TRUE, TRUE);
        } else if ((SQ125_WHAT_LADDER) == (2)) {
            CHANGEVOBCOLLISION("SQ125_LADDER_02", TRUE, TRUE, TRUE, TRUE);
        } else if ((SQ125_WHAT_LADDER) == (3)) {
            CHANGEVOBCOLLISION("SQ125_LADDER_03", TRUE, TRUE, TRUE, TRUE);
        };
        CHANGEVOBCOLLISION("SQ125_LADDER_FINAL", TRUE, TRUE, TRUE, TRUE);
        SQ125_HELPINGKYLE_LADDER_COUNT = 0;
        B_PASSTIME(1);
        HERO.AIVAR[4] = FALSE;
        FADESCREENFROMBLACK(1);
        FF_REMOVE(0xf2cf);
        SQ125_HELPINGKYLE_LADDER_COUNT = 0;
    };
}

var int SQ125_HELPINGKYLE_LADDER_APPLY.SQ125_HELPINGKYLE_LADDER_COUNT = 0;
instance SQ125_HELPINGKYLE_LADDER_APPLY.MOVER1(ZCMOVER)
instance SQ125_HELPINGKYLE_LADDER_APPLY.MOVER2(ZCMOVER)
instance SQ125_HELPINGKYLE_LADDER_APPLY.MOVER3(ZCMOVER)
instance SQ125_HELPINGKYLE_LADDER_APPLY.MOVER4(ZCMOVER)
var int SQ125_HELPINGKYLE_LADDER_APPLY.MOVPTR1 = 0;
var int SQ125_HELPINGKYLE_LADDER_APPLY.MOVPTR2 = 0;
var int SQ125_HELPINGKYLE_LADDER_APPLY.MOVPTR3 = 0;
var int SQ125_HELPINGKYLE_LADDER_APPLY.MOVPTR4 = 0;
func void SQ125_HELPINGKYLE_STRAW_APPLY() {
    if ((SQ125_HELPINGKYLE_STRAW_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ125_HelpingKyle_Straw_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ125_MOVER_STARWS_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("SQ125_MOVER_STARWS_02");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        MOVPTR3 = MEM_SEARCHVOBBYNAME("SQ125_MOVER_STARWS_03");
        MOVER3 = MEM_PTRTOINST(MOVPTR3);
        MOVPTR4 = MEM_SEARCHVOBBYNAME("SQ125_MOVER_STARWS_04");
        MOVER4 = MEM_PTRTOINST(MOVPTR4);
        MOVPTR5 = MEM_SEARCHVOBBYNAME("SQ125_MOVER_STARWS_FINAL");
        MOVER5 = MEM_PTRTOINST(MOVPTR5);
        if ((SQ125_WHAT_STRAW) == (1)) {
            CHANGEVOBCOLLISION("SQ125_STRAWS_01", FALSE, FALSE, FALSE, TRUE);
            CHANGEVOBCOLLISION("SQ125_STRAWS_02", FALSE, FALSE, FALSE, TRUE);
        } else if ((SQ125_WHAT_STRAW) == (2)) {
            CHANGEVOBCOLLISION("SQ125_STRAWS_03", FALSE, FALSE, FALSE, TRUE);
            CHANGEVOBCOLLISION("SQ125_STRAWS_04", FALSE, FALSE, FALSE, TRUE);
        } else if ((SQ125_WHAT_STRAW) == (3)) {
            CHANGEVOBCOLLISION("SQ125_STRAWS_05", FALSE, FALSE, FALSE, TRUE);
            CHANGEVOBCOLLISION("SQ125_STRAWS_06", FALSE, FALSE, FALSE, TRUE);
        } else if ((SQ125_WHAT_STRAW) == (4)) {
            CHANGEVOBCOLLISION("SQ125_STRAWS_07", FALSE, FALSE, FALSE, TRUE);
            CHANGEVOBCOLLISION("SQ125_STRAWS_08", FALSE, FALSE, FALSE, TRUE);
        };
        CHANGEVOBCOLLISION("SQ125_STRAWS_FINAL_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ125_STRAWS_FINAL_02", FALSE, FALSE, FALSE, TRUE);
        if ((SQ125_WHAT_STRAW) == (1)) {
            WLD_SENDTRIGGER("SQ125_MOVER_STARWS_01");
        } else if ((SQ125_WHAT_STRAW) == (2)) {
            WLD_SENDTRIGGER("SQ125_MOVER_STARWS_02");
        } else if ((SQ125_WHAT_STRAW) == (3)) {
            WLD_SENDTRIGGER("SQ125_MOVER_STARWS_03");
        } else if ((SQ125_WHAT_STRAW) == (4)) {
            WLD_SENDTRIGGER("SQ125_MOVER_STARWS_04");
        };
        WLD_SENDTRIGGER("SQ125_MOVER_STARWS_FINAL");
        SQ125_HELPINGKYLE_STRAW_COUNT = 1;
    };
    if (((((((((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER5.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER5.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ125_HelpingKyle_Straw_Apply");
        if ((SQ125_WHAT_STRAW) == (1)) {
            CHANGEVOBCOLLISION("SQ125_STRAWS_01", TRUE, TRUE, TRUE, TRUE);
            CHANGEVOBCOLLISION("SQ125_STRAWS_02", TRUE, TRUE, TRUE, TRUE);
        } else if ((SQ125_WHAT_STRAW) == (2)) {
            CHANGEVOBCOLLISION("SQ125_STRAWS_03", TRUE, TRUE, TRUE, TRUE);
            CHANGEVOBCOLLISION("SQ125_STRAWS_04", TRUE, TRUE, TRUE, TRUE);
        } else if ((SQ125_WHAT_STRAW) == (3)) {
            CHANGEVOBCOLLISION("SQ125_STRAWS_05", TRUE, TRUE, TRUE, TRUE);
            CHANGEVOBCOLLISION("SQ125_STRAWS_06", TRUE, TRUE, TRUE, TRUE);
        } else if ((SQ125_WHAT_STRAW) == (4)) {
            CHANGEVOBCOLLISION("SQ125_STRAWS_07", TRUE, TRUE, TRUE, TRUE);
            CHANGEVOBCOLLISION("SQ125_STRAWS_08", TRUE, TRUE, TRUE, TRUE);
        };
        CHANGEVOBCOLLISION("SQ125_STRAWS_FINAL_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ125_STRAWS_FINAL_02", TRUE, TRUE, TRUE, TRUE);
        B_PASSTIME(1);
        HERO.AIVAR[4] = FALSE;
        FADESCREENFROMBLACK(1);
        FF_REMOVE(0xf2d9);
        SQ125_HELPINGKYLE_STRAW_COUNT = 0;
    };
}

var int SQ125_HELPINGKYLE_STRAW_APPLY.SQ125_HELPINGKYLE_STRAW_COUNT = 0;
instance SQ125_HELPINGKYLE_STRAW_APPLY.MOVER1(ZCMOVER)
instance SQ125_HELPINGKYLE_STRAW_APPLY.MOVER2(ZCMOVER)
instance SQ125_HELPINGKYLE_STRAW_APPLY.MOVER3(ZCMOVER)
instance SQ125_HELPINGKYLE_STRAW_APPLY.MOVER4(ZCMOVER)
instance SQ125_HELPINGKYLE_STRAW_APPLY.MOVER5(ZCMOVER)
var int SQ125_HELPINGKYLE_STRAW_APPLY.MOVPTR1 = 0;
var int SQ125_HELPINGKYLE_STRAW_APPLY.MOVPTR2 = 0;
var int SQ125_HELPINGKYLE_STRAW_APPLY.MOVPTR3 = 0;
var int SQ125_HELPINGKYLE_STRAW_APPLY.MOVPTR4 = 0;
var int SQ125_HELPINGKYLE_STRAW_APPLY.MOVPTR5 = 0;
func void SQ125_REMOVEMOVERS() {
    FF_APPLYONCEEXTGT(0xf2e6, 0, -(1));
}

func void SQ125_REMOVEMOVERS_APPLY() {
    if ((SQ125_REMOVEMOVERS_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ125_RemoveMovers_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ125_MOVER_LADDER_FINAL");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("SQ125_MOVER_STARWS_FINAL");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        if ((SQ125_HELPINGKYLE_WAY) == (1)) {
            CHANGEVOBCOLLISION("SQ125_LADDER_FINAL", FALSE, FALSE, FALSE, TRUE);
        } else if ((SQ125_HELPINGKYLE_WAY) == (2)) {
            CHANGEVOBCOLLISION("SQ125_STRAWS_FINAL_01", FALSE, FALSE, FALSE, TRUE);
            CHANGEVOBCOLLISION("SQ125_STRAWS_FINAL_02", FALSE, FALSE, FALSE, TRUE);
        };
        if ((SQ125_HELPINGKYLE_WAY) == (1)) {
            WLD_SENDTRIGGER("SQ125_MOVER_LADDER_FINAL");
        } else if ((SQ125_HELPINGKYLE_WAY) == (2)) {
            WLD_SENDTRIGGER("SQ125_MOVER_STARWS_FINAL");
        };
        SQ125_REMOVEMOVERS_COUNT = 1;
    };
    if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SQ125_RemoveMovers_Apply");
        if ((SQ125_HELPINGKYLE_WAY) == (1)) {
            CHANGEVOBCOLLISION("SQ125_LADDER_FINAL", TRUE, TRUE, TRUE, TRUE);
        } else if ((SQ125_HELPINGKYLE_WAY) == (2)) {
            CHANGEVOBCOLLISION("SQ125_STRAWS_FINAL_01", TRUE, TRUE, TRUE, TRUE);
            CHANGEVOBCOLLISION("SQ125_STRAWS_FINAL_02", TRUE, TRUE, TRUE, TRUE);
        };
        FF_REMOVE(0xf2e6);
        SQ125_REMOVEMOVERS_COUNT = 0;
    };
}

var int SQ125_REMOVEMOVERS_APPLY.SQ125_REMOVEMOVERS_COUNT = 0;
instance SQ125_REMOVEMOVERS_APPLY.MOVER1(ZCMOVER)
instance SQ125_REMOVEMOVERS_APPLY.MOVER2(ZCMOVER)
var int SQ125_REMOVEMOVERS_APPLY.MOVPTR1 = 0;
var int SQ125_REMOVEMOVERS_APPLY.MOVPTR2 = 0;
func void SQ125_REMOVEMONSTERS() {
    if (HLP_ISVALIDNPC(LURKER_SQ125_01)) {
        if ((NPC_ISDEAD(LURKER_SQ125_01)) == (FALSE)) {
            B_REMOVENPC(0xc5a8);
        };
    };
    if (HLP_ISVALIDNPC(LURKER_SQ125_02)) {
        if ((NPC_ISDEAD(LURKER_SQ125_02)) == (FALSE)) {
            B_REMOVENPC(0xc5a9);
        };
    };
}

func void SQ125_SPAWNMONSTERS() {
    WLD_INSERTNPC(0xc59b, "PART6_MOB_45");
    WLD_INSERTNPC(0xc59b, "PART6_MOB_11");
}

