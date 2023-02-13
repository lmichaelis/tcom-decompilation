instance Q515_ESCAPE(CUTSCENE) {
    ONSTART = FUNCTION(92716);
}

func void Q515_ESCAPE_WAIT() {
    AI_WAITTILLEND(DJG_10041_WOLFSON_Q515, HERO);
    AI_WAITTILLEND(DJG_10041_WOLFSON_Q515, KDW_203_RIORDIAN);
    AI_WAITTILLEND(KDW_203_RIORDIAN, HERO);
    AI_WAITTILLEND(KDW_203_RIORDIAN, DJG_10041_WOLFSON_Q515);
    AI_WAITTILLEND(HERO, DJG_10041_WOLFSON_Q515);
    AI_WAITTILLEND(HERO, KDW_203_RIORDIAN);
}

func void Q515_ESCAPE_START() {
    WLD_SENDTRIGGER("KM_Q515_ESCAPE_01");
    TELEPORTNPCTOWP(1819, "PART5_VOLFZACKE_RIORDIAN_HERO");
    TELEPORTNPCTOWP(56616, "PART5_VOLFZACKE_RIORDIAN_ULRYK");
    TELEPORTNPCTOWP(56026, "PART5_VOLFZACKE_ULRYK");
    NPC_CLEARAIQUEUE(DJG_10041_WOLFSON_Q515);
    NPC_CLEARAIQUEUE(KDW_203_RIORDIAN);
    KDW_203_RIORDIAN.AIVAR[92] = TRUE;
    Q515_ESCAPE_WAIT();
    AI_TURNTONPC(DJG_10041_WOLFSON_Q515, HERO);
    AI_PLAYANI(HERO, T_JUMPB);
    AI_WAIT(HERO, 1045220557);
    AI_TURNTONPC(HERO, KDW_203_RIORDIAN);
    AI_WAIT(KDW_203_RIORDIAN, 1045220557);
    CREATEINVITEM(KDW_203_RIORDIAN, 34594);
    B_READYSPELL(KDW_203_RIORDIAN, SPL_TELEPORTXARDAS, SPL_COST_TELEPORT);
    AI_TURNTONPC(KDW_203_RIORDIAN, HERO);
    AI_OUTPUT(KDW_203_RIORDIAN, HERO, "DIA_Riordian_Q515_Escape_03_01");
    Q515_ESCAPE_WAIT();
    AI_FUNCTION(KDW_203_RIORDIAN, 92717);
    AI_FUNCTION(DJG_10041_WOLFSON_Q515, 92721);
    AI_PLAYANI(KDW_203_RIORDIAN, "T_MAGRUN_2_HEASHOOT");
    AI_WAITTILLEND(HERO, KDW_203_RIORDIAN);
    AI_FUNCTION(HERO, 92720);
    AI_PLAYANI(KDW_203_RIORDIAN, "T_HEASHOOT_2_STAND");
    AI_DRAWWEAPON(DJG_10041_WOLFSON_Q515);
    AI_PLAYANI(DJG_10041_WOLFSON_Q515, "T_CHARGE");
    AI_TURNTONPC(DJG_10041_WOLFSON_Q515, KDW_203_RIORDIAN);
    AI_FUNCTION(DJG_10041_WOLFSON_Q515, 92718);
    AI_PLAYANI(DJG_10041_WOLFSON_Q515, T_SEARCH);
    AI_SETWALKMODE(DJG_10041_WOLFSON_Q515, NPC_WALK);
    AI_GOTONPC(DJG_10041_WOLFSON_Q515, KDW_203_RIORDIAN);
    AI_FUNCTION(DJG_10041_WOLFSON_Q515, 92719);
}

func void Q515_ESCAPE_CHANGECAMERA_01() {
    WLD_SENDTRIGGER("KM_Q515_ESCAPE_02");
    WLD_SENDUNTRIGGER("KM_Q515_ESCAPE_01");
}

func void Q515_ESCAPE_CHANGECAMERA_02() {
    TELEPORTNPCTOWP(56026, "PART5_VOLFZACKE_RIORDIAN_HERO");
    TELEPORTNPCTOWP(56616, "PART5_VOLFZACKE_Q515_CROSSBOW");
    WLD_SENDTRIGGER("KM_Q515_ESCAPE_03");
    WLD_SENDUNTRIGGER("KM_Q515_ESCAPE_02");
}

func void Q515_ESCAPE_CHANGECAMERA_END() {
    KDW_203_RIORDIAN.AIVAR[92] = FALSE;
    LOG_SETSTATUS(_@(MIS_Q515), TOPIC_Q515, LOG_SUCCESS);
    AI_LOGENTRY(TOPIC_Q515, LOG_Q515_FINISH);
    B_GIVEPLAYERXP(XP_Q515_FINISH);
    WLD_SENDUNTRIGGER("KM_Q515_ESCAPE_03");
    Q515_REMOVEALLNPC();
    HERO.AIVAR[4] = FALSE;
}

func void Q515_ESCAPE_TELEPORTMARVIN() {
    B_STARTOTHERROUTINE(KDW_215_NOTGER, "Q601_CHURCH");
    B_STARTOTHERROUTINE(KDW_216_INGOLF, "Q601_CHURCH");
    TELEPORTNPCTOWP(1819, "PART8_CHURCH_03");
    SND_PLAY("MFX_TELEPORT_CAST");
}

func void Q515_ESCAPE_DRAWWEAPON() {
    AI_WAIT(DJG_10133_WOLFSON_Q515, 1036831949);
    AI_DRAWWEAPON(DJG_10133_WOLFSON_Q515);
    AI_WAIT(DJG_10134_WOLFSON_Q515, 1058642330);
    AI_DRAWWEAPON(DJG_10134_WOLFSON_Q515);
    AI_WAIT(DJG_10135_WOLFSON_Q515, 1050253722);
    AI_DRAWWEAPON(DJG_10135_WOLFSON_Q515);
    AI_WAIT(DJG_10136_WOLFSON_Q515, 1063675494);
    AI_DRAWWEAPON(DJG_10136_WOLFSON_Q515);
    AI_WAIT(DJG_10137_WOLFSON_Q515, 1060320051);
    AI_DRAWWEAPON(DJG_10137_WOLFSON_Q515);
    AI_WAIT(DJG_10138_WOLFSON_Q515, 1067030938);
    AI_DRAWWEAPON(DJG_10138_WOLFSON_Q515);
}

