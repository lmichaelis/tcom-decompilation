instance Q306_THIRDROUND_SEASNAKE(CUTSCENE) {
    ONSTART = FUNCTION(0x16974);
}

func void Q306_THIRDROUND_SEASNAKE_WAIT() {
    AI_WAITTILLEND(PIR_1307_PROXIMO, HERO);
    AI_WAITTILLEND(PIR_1307_PROXIMO, SEASNAKE);
    AI_WAITTILLEND(SEASNAKE, HERO);
    AI_WAITTILLEND(SEASNAKE, PIR_1307_PROXIMO);
    AI_WAITTILLEND(HERO, PIR_1307_PROXIMO);
    AI_WAITTILLEND(HERO, SEASNAKE);
}

func void Q306_THIRDROUND_SEASNAKE_START() {
    WLD_SENDTRIGGER("KM_ARENAFIGHT_1_05");
    if ((HERO.ATTRIBUTE[0]) != (HERO.ATTRIBUTE[1])) {
        HERO.ATTRIBUTE[0] = HERO.ATTRIBUTE[1];
    };
    if ((HERO.ATTRIBUTE[2]) != (HERO.ATTRIBUTE[3])) {
        HERO.ATTRIBUTE[2] = HERO.ATTRIBUTE[3];
    };
    NPC_CLEARAIQUEUE(PIR_1307_PROXIMO);
    NPC_CLEARAIQUEUE(SEASNAKE);
    TELEPORTNPCTOWP(0x71b, "P17_HAVEN_ARENA_18");
    TELEPORTNPCTOWP(0xe548, "P17_HAVEN_ARENA_SPEAKER_01");
    TELEPORTNPCTOWP(0xc652, "P17_HAVEN_ARENA_MONSTER_01");
    PIR_1307_PROXIMO.AIVAR[92] = TRUE;
    AI_TURNTONPC(PIR_1307_PROXIMO, PIR_1306_RODRIGO);
    AI_TURNTONPC(SEASNAKE, PIR_1306_RODRIGO);
    Q306_THIRDROUND_SEASNAKE_WAIT();
    AI_WAIT(PIR_1307_PROXIMO, 0x3e4ccccd);
    AI_SETWALKMODE(SEASNAKE, NPC_WALK);
    AI_OUTPUT(PIR_1307_PROXIMO, HERO, "DIA_Proximo_BeforeSeaSnakeFight_13_01");
    Q306_THIRDROUND_SEASNAKE_WAIT();
    AI_FUNCTION(PIR_1307_PROXIMO, 0x16975);
    AI_SETWALKMODE(SEASNAKE, NPC_RUN);
    AI_OUTPUT(PIR_1307_PROXIMO, HERO, "DIA_Proximo_BeforeSeaSnakeFight_13_02");
    Q306_THIRDROUND_SEASNAKE_WAIT();
    AI_FUNCTION(PIR_1307_PROXIMO, 0x16976);
    AI_TURNTONPC(HERO, SEASNAKE);
    AI_WAIT(SEASNAKE, 0x40000000);
    AI_GOTOWP(SEASNAKE, "P17_HAVEN_ARENA_MONSTER_03");
    AI_PLAYANI(SEASNAKE, T_WARN);
    Q306_THIRDROUND_SEASNAKE_WAIT();
    AI_FUNCTION(SEASNAKE, 0x16977);
}

func void Q306_THIRDROUND_SEASNAKE_CAMERACHANGE_01() {
    WLD_SENDTRIGGER("KM_ARENAFIGHT_4_04");
    WLD_SENDUNTRIGGER("KM_ARENAFIGHT_1_05");
}

func void Q306_THIRDROUND_SEASNAKE_CAMERACHANGE_02() {
    WLD_SENDTRIGGER("KM_ARENAFIGHT_4_05");
    WLD_SENDUNTRIGGER("KM_ARENAFIGHT_4_04");
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_MONSTER");
    TELEPORTNPCTOWP(0x71b, "P17_HAVEN_ARENA_PLAYER_03");
}

func void Q306_THIRDROUND_SEASNAKE_END() {
    PRINTD("Walka z wunszem!");
    Q306_STATE = 21;
    WLD_SENDUNTRIGGER("KM_ARENAFIGHT_4_05");
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_MONSTER");
    NPC_REFRESH(PIR_1307_PROXIMO);
    NPC_REFRESH(SEASNAKE);
    NPC_CLEARAIQUEUE(HERO);
    PIR_1307_PROXIMO.AIVAR[92] = FALSE;
    HERO.AIVAR[4] = FALSE;
    SEASNAKE.WP = "P17_HAVEN_ARENA_OPPONENT_02";
    SEASNAKE.SPAWNPOINT = "P17_HAVEN_ARENA_OPPONENT_02";
    Q306_STARTFIGHTWITHSNAKE();
}

