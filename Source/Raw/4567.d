instance Q306_ENDFINALROUND(CUTSCENE) {
    ONSTART = FUNCTION(0x1693e);
}

func void Q306_ENDFINALROUND_WAIT() {
    AI_WAITTILLEND(PIR_1307_PROXIMO, HERO);
    AI_WAITTILLEND(HERO, PIR_1307_PROXIMO);
}

func void Q306_ENDFINALROUND_START() {
    MUSIC_OVERRIDETRACK(0x55be);
    Q306_LOSTWEAPONINTOURNAMENT = 0;
    FINISH_BOSSUI();
    HERO.AIVAR[95] = FALSE;
    HERO.AIVAR[94] = FALSE;
    NONE_7500_BEN.AIVAR[94] = FALSE;
    NONE_7500_BEN.AIVAR[45] = AF_NONE;
    WLD_SENDTRIGGER("KM_ARENAFIGHT_6_01");
    WLD_SENDUNTRIGGER("Q306_ARENACROWD");
    Q306_ENDFINALROUND_CROWDSTOP();
    NPC_CLEARAIQUEUE(PIR_1307_PROXIMO);
    NPC_CLEARAIQUEUE(HERO);
    AI_REMOVEWEAPON(HERO);
    TELEPORTNPCTOWP(0xe548, "P17_HAVEN_ARENA_SPEAKER_01");
    TELEPORTNPCTOWP(0xe4e7, "P17_HAVEN_ARENA_OPPONENT_02");
    TELEPORTNPCTOWP(0x71b, "P17_HAVEN_ARENA_PLAYER_02");
    PIR_1307_PROXIMO.AIVAR[92] = TRUE;
    AI_SETWALKMODE(HERO, NPC_WALK);
    AI_TURNTONPC(HERO, NONE_7500_BEN);
    AI_TURNTONPC(PIR_1307_PROXIMO, PIR_1306_RODRIGO);
    Q306_ENDFINALROUND_WAIT();
    AI_PLAYANI(PIR_1307_PROXIMO, "T_SHOCKED_START");
    AI_WAIT(PIR_1307_PROXIMO, 0x40000000);
    AI_FUNCTION(PIR_1307_PROXIMO, 0x16940);
    Q306_ENDFINALROUND_WAIT();
    AI_WAIT(PIR_1307_PROXIMO, 0x3f99999a);
    AI_PLAYANI(PIR_1307_PROXIMO, "T_SHOCKED_REMOVE");
    AI_OUTPUT(PIR_1307_PROXIMO, HERO, "DIA_Proximo_FinishTournament_13_01");
    Q306_ENDFINALROUND_WAIT();
    AI_FUNCTION(PIR_1307_PROXIMO, 0x16941);
    AI_OUTPUT(PIR_1307_PROXIMO, HERO, "DIA_Proximo_FinishTournament_13_02");
    AI_FUNCTION(PIR_1307_PROXIMO, 0x1693f);
    AI_TURNTONPC(HERO, PIR_1308_SIMON);
    AI_PLAYANI(HERO, "T_MARVIN_FLEX");
    AI_OUTPUT(PIR_1307_PROXIMO, HERO, "DIA_Proximo_FinishTournament_13_03");
    AI_FUNCTION(PIR_1307_PROXIMO, 0x16942);
    AI_OUTPUT(PIR_1307_PROXIMO, HERO, "DIA_Proximo_FinishTournament_13_04");
    AI_FUNCTION(PIR_1307_PROXIMO, 0x16943);
    AI_OUTPUT(PIR_1307_PROXIMO, HERO, "DIA_Proximo_FinishTournament_13_05");
    AI_FUNCTION(PIR_1307_PROXIMO, 0x16944);
    AI_OUTPUT(PIR_1307_PROXIMO, HERO, "DIA_Proximo_FinishTournament_13_06");
    AI_FUNCTION(PIR_1307_PROXIMO, 0x16945);
    AI_WAIT(HERO, 0x40400000);
}

func void Q306_ENDFINALROUND_HAPPYCROWD() {
    Q306_ENDFINALROUND_HAPPYCROWD_START();
}

func void Q306_ENDFINALROUND_CAMERACHANGE_01() {
    WLD_SENDTRIGGER("KM_ARENAFIGHT_4_01");
    WLD_SENDUNTRIGGER("KM_ARENAFIGHT_6_01");
}

func void Q306_ENDFINALROUND_CAMERACHANGE_02() {
    WLD_SENDTRIGGER("KM_ARENAFIGHT_3_01");
    WLD_SENDUNTRIGGER("KM_ARENAFIGHT_4_01");
}

func void Q306_ENDFINALROUND_CAMERACHANGE_03() {
    WLD_SENDTRIGGER("KM_ARENAFIGHT_6_02");
    WLD_SENDUNTRIGGER("KM_ARENAFIGHT_3_01");
}

func void Q306_ENDFINALROUND_CAMERACHANGE_04() {
    WLD_SENDTRIGGER("KM_ARENAFIGHT_1_05");
    WLD_SENDUNTRIGGER("KM_ARENAFIGHT_6_02");
}

func void Q306_ENDFINALROUND_CAMERACHANGE_05() {
    WLD_SENDTRIGGER("KM_ARENAFIGHT_6_04");
    WLD_SENDUNTRIGGER("KM_ARENAFIGHT_1_05");
}

func void Q306_ENDFINALROUND_END() {
    MUSIC_DISABLEOVERRIDE();
    WLD_SENDUNTRIGGER("Q306_ARENACROWD");
    PRINTD("Finito!");
    Q306_STATE = 27;
    Q306_TOURNAMENTSTATUS = 1;
    GAMESERVICES_UNLOCKACHIEVEMENT(ACH_10);
    LOG_SETSTATUS(_@(MIS_Q306), TOPIC_Q306, LOG_SUCCESS);
    AI_LOGENTRY(TOPIC_Q306, LOG_Q306_TOURNAMENTWON);
    B_GIVEPLAYERXP(XP_Q306_FINISH);
    NONE_7500_BEN.AIVAR[96] = 2;
    NPC_REFRESH(PIR_1307_PROXIMO);
    PIR_1307_PROXIMO.AIVAR[92] = FALSE;
    WLD_SENDTRIGGER("KM_ARENAFIGHT_6_03");
    WLD_SENDUNTRIGGER("KM_ARENAFIGHT_6_04");
    HAVEN_AFTERQ306();
}

