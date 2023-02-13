instance SQ419_TANNINGCUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(92997);
}

func void SQ419_TANNINGCUTSCENE_START() {
    WLD_SENDTRIGGER("SQ419_TANNING_02");
    WLD_SENDUNTRIGGER("SQ419_TANNING_01");
    DIACAM_DISABLE();
    TELEPORTNPCTOWP(58256, DJG_10004_EINAR.WP);
    TELEPORTNPCTOWP(1819, "WOLFSDEN_CITADEL_ARMORY_TANNING_01");
    NPC_CLEARAIQUEUE(DJG_10004_EINAR);
    DJG_10004_EINAR.AIVAR[92] = TRUE;
    if (WLD_ISMOBAVAILABLE(DJG_10004_EINAR, "WORKTABLE")) {
        AI_USEMOB(DJG_10004_EINAR, "WORKTABLE", 1);
    };
    MDL_APPLYOVERLAYMDS(HERO, "HumanS_Tanning_Dialogue.MDS");
    CREATEINVITEMS(HERO, 35377, 1);
    AI_EQUIPARMOR(HERO, 35377);
    AI_OUTPUT(DJG_10004_EINAR, HERO, "DIA_Einar_SQ419_TanningCutscene_03_01");
    AI_OUTPUT(DJG_10004_EINAR, HERO, "DIA_Einar_SQ419_TanningCutscene_03_02");
    AI_FUNCTION(DJG_10004_EINAR, 92998);
    AI_OUTPUT(DJG_10004_EINAR, HERO, "DIA_Einar_SQ419_TanningCutscene_03_03");
    AI_OUTPUT(DJG_10004_EINAR, HERO, "DIA_Einar_SQ419_TanningCutscene_03_04");
    AI_FUNCTION(DJG_10004_EINAR, 92999);
    AI_OUTPUT(DJG_10004_EINAR, HERO, "DIA_Einar_SQ419_TanningCutscene_03_05");
    AI_OUTPUT(HERO, DJG_10004_EINAR, "DIA_Einar_SQ419_TanningCutscene_15_06");
    AI_FUNCTION(DJG_10004_EINAR, 93000);
    AI_OUTPUT(DJG_10004_EINAR, HERO, "DIA_Einar_SQ419_TanningCutscene_03_07");
    AI_OUTPUT(DJG_10004_EINAR, HERO, "DIA_Einar_SQ419_TanningCutscene_03_08");
    AI_FUNCTION(DJG_10004_EINAR, 93001);
    AI_OUTPUT(DJG_10004_EINAR, HERO, "DIA_Einar_SQ419_TanningCutscene_03_09");
    AI_OUTPUT(DJG_10004_EINAR, HERO, "DIA_Einar_SQ419_TanningCutscene_03_10");
    AI_FUNCTION(DJG_10004_EINAR, 93002);
    AI_OUTPUT(DJG_10004_EINAR, HERO, "DIA_Einar_SQ419_TanningCutscene_03_11");
    AI_WAITTILLEND(HERO, DJG_10004_EINAR);
    AI_PLAYANI(HERO, "T_TANNING_END");
    AI_FUNCTION(HERO, 93003);
    AI_USEMOB(DJG_10004_EINAR, NPC_GETDETECTEDMOB(HERO), -(1));
    AI_TURNTONPC(HERO, DJG_10004_EINAR);
    AI_TURNTONPC(DJG_10004_EINAR, HERO);
    AI_FUNCTION(DJG_10004_EINAR, 63934);
}

func void SQ419_TANNINGCUTSCENE_CAMERA_01() {
    WLD_SENDTRIGGER("SQ419_TANNING_03");
    WLD_SENDUNTRIGGER("SQ419_TANNING_02");
}

func void SQ419_TANNINGCUTSCENE_CAMERA_02() {
    WLD_SENDTRIGGER("SQ419_TANNING_04");
    WLD_SENDUNTRIGGER("SQ419_TANNING_03");
}

func void SQ419_TANNINGCUTSCENE_CAMERA_03() {
    WLD_SENDTRIGGER("SQ419_TANNING_05");
    WLD_SENDUNTRIGGER("SQ419_TANNING_04");
}

func void SQ419_TANNINGCUTSCENE_CAMERA_04() {
    WLD_SENDTRIGGER("SQ419_TANNING_06");
    WLD_SENDUNTRIGGER("SQ419_TANNING_05");
}

func void SQ419_TANNINGCUTSCENE_CAMERA_05() {
    WLD_SENDTRIGGER("SQ419_TANNING_07");
    WLD_SENDUNTRIGGER("SQ419_TANNING_06");
}

func void SQ419_TANNINGCUTSCENE_REMOVEKNIFE() {
    NPC_REMOVEINVITEMS(HERO, 35377, 1);
    MDL_REMOVEOVERLAYMDS(HERO, "HumanS_Tanning_Dialogue.MDS");
}

