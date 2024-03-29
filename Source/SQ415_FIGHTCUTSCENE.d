instance SQ415_FIGHTCUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(92974);
}

func void SQ415_FIGHTCUTSCENE_WAIT() {
    AI_WAITTILLEND(HERO, DJG_13341_DEVIR);
    AI_WAITTILLEND(HERO, DJG_13342_KYLID);
    AI_WAITTILLEND(DJG_13341_DEVIR, HERO);
    AI_WAITTILLEND(DJG_13341_DEVIR, DJG_13342_KYLID);
    AI_WAITTILLEND(DJG_13342_KYLID, HERO);
    AI_WAITTILLEND(DJG_13342_KYLID, DJG_13341_DEVIR);
}

func void SQ415_FIGHTCUTSCENE_START() {
    if ((NPC_HASEQUIPPEDMELEEWEAPON(DJG_13342_KYLID)) == (FALSE)) {
        CREATEINVITEMS(DJG_13342_KYLID, 39532, 1);
        AI_EQUIPBESTMELEEWEAPON(DJG_13342_KYLID);
    };
    if ((NPC_HASEQUIPPEDMELEEWEAPON(DJG_13341_DEVIR)) == (FALSE)) {
        CREATEINVITEMS(DJG_13341_DEVIR, 39532, 1);
        AI_EQUIPBESTMELEEWEAPON(DJG_13341_DEVIR);
    };
    WLD_SENDTRIGGER("SQ415_FIGHT_01");
    TELEPORTNPCTOWP(1819, "PART16_SQ415_AUDIENCE_HERO");
    TELEPORTNPCTOWP(58338, DJG_13342_KYLID.WP);
    TELEPORTNPCTOWP(58334, DJG_13341_DEVIR.WP);
    NPC_CLEARAIQUEUE(DJG_13342_KYLID);
    NPC_CLEARAIQUEUE(DJG_13341_DEVIR);
    DJG_13342_KYLID.FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    DJG_13341_DEVIR.FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    DJG_13342_KYLID.AIVAR[4] = FALSE;
    DJG_13341_DEVIR.AIVAR[4] = FALSE;
    B_TURNTONPC(DJG_13342_KYLID, DJG_13341_DEVIR);
    B_TURNTONPC(DJG_13341_DEVIR, DJG_13342_KYLID);
    B_TURNTONPC(HERO, DJG_13341_DEVIR);
    SQ415_FIGHTCUTSCENE_WAIT();
    AI_STARTFACEANI(DJG_13342_KYLID, S_ANGRY, 1, -(1));
    AI_STARTFACEANI(DJG_13341_DEVIR, S_ANGRY, 1, -(1));
    AI_PLAYANI(DJG_13342_KYLID, "R_STRETCH_RANDOM_01");
    SQ415_FIGHTCUTSCENE_WAIT();
    AI_FUNCTION(DJG_13342_KYLID, 92976);
    AI_PLAYANI(DJG_13341_DEVIR, "T_THREAT_DEATH");
    SQ415_FIGHTCUTSCENE_WAIT();
    AI_FUNCTION(DJG_13342_KYLID, 92975);
}

func void SQ415_FIGHTCUTSCENE_END() {
    WLD_SENDTRIGGER("SQ415_FIGHT_03");
    WLD_SENDUNTRIGGER("SQ415_FIGHT_01");
    WLD_SENDUNTRIGGER("SQ415_FIGHT_02");
    B_STARTOTHERROUTINE(DJG_13342_KYLID, "SQ415_FIGHT_START");
    NPC_REFRESH(DJG_13342_KYLID);
    DJG_13342_KYLID.AIVAR[96] = 10;
    B_STARTOTHERROUTINE(DJG_13341_DEVIR, "SQ415_FIGHT_START");
    NPC_REFRESH(DJG_13341_DEVIR);
    DJG_13342_KYLID.AIVAR[96] = 10;
}

func void SQ415_FIGHTCUTSCENE_CAMERA_01() {
    WLD_SENDTRIGGER("SQ415_FIGHT_02");
    WLD_SENDUNTRIGGER("SQ415_FIGHT_01");
}

