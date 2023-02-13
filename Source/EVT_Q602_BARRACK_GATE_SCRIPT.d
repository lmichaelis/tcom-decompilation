func void EVT_Q602_BARRACK_GATE_SCRIPT() {
    WLD_SENDTRIGGER("Q602_BARRACK_GATE");
    if ((Q602_HELPSALL) == (2)) {
        Q602_HELPSALL = 3;
        B_STARTOTHERROUTINE(KDF_9004_TENGRAL_Q602, "Q602_OPENGATE");
    };
}

func void EVT_Q602_KICKDOOR_01() {
    var int Q602_KICKDOOR_01;
    if ((Q602_KICKDOOR_01) == (0)) {
        Q602_KICKDOOR_01 = 1;
        MOB_CHANGEFOCUSNAME("Q602_KICKDOOR", "MOBNAME_NOTHING");
        WLD_SENDTRIGGER("Q602_BROKENDOOR_01");
        WLD_SENDTRIGGER("Q602_BROKENDOOR_02");
        WLD_SENDTRIGGER("Q602_BROKENDOOR_03");
        WLD_PLAYEFFECT("FX_DUST", HERO, HERO, 0, 0, 0, FALSE);
        SND_PLAY("ROCKS_KICK_01");
        SND_PLAY("PLACEHOLDER_SlamDoor01");
        SND_PLAY("DESTROY_WOOD");
    };
}

func void EVT_Q602_KICKDOOR_02() {
    var int Q602_KICKDOOR_02;
    if ((Q602_KICKDOOR_02) == (0)) {
        Q602_KICKDOOR_02 = 1;
        NONE_15_ULRYK_Q602.NPCTYPE = NPCTYPE_MAIN;
        NONE_15_ULRYK_Q602.GUILD = GIL_BDT;
        NPC_SETTRUEGUILD(NONE_15_ULRYK_Q602, GIL_BDT);
        NONE_15_ULRYK_Q602.AIVAR[96] = 6;
        NONE_15_ULRYK_Q602.AIVAR[15] = FALSE;
        START_BOSSUI(NONE_15_ULRYK_Q602, 2);
        NONE_15_ULRYK_Q602.FLAGS = NPC_FLAG_IMPORTANT;
        NONE_15_ULRYK_Q602.FIGHT_TACTIC = FAI_HUMAN_MASTER;
        MIL_4000_RODERICH_Q602.FIGHT_TACTIC = FAI_HUMAN_MASTER;
        NPC_CLEARAIQUEUE(NONE_15_ULRYK_Q602);
        AI_TURNTONPC(NONE_15_ULRYK_Q602, MIL_4000_RODERICH_Q602);
        AI_PLAYANI(NONE_15_ULRYK_Q602, "T_1HSFINISH");
        if ((NONE_15_ULRYK_Q602.AIVAR[17]) == (TRUE)) {
            FF_APPLYONCEEXT(91856, 1000, 2);
        } else {
            FF_APPLYONCEEXT(91856, 500, 2);
        };
        NPC_SETTRUEGUILD(HERO, HERO.GUILD);
    };
}

func void Q602_ULRYK_FREEZERODERICH() {
    var int Q602_ULRYK_FREEZERODERICH_COUNT;
    Q602_ULRYK_FREEZERODERICH_COUNT = (Q602_ULRYK_FREEZERODERICH_COUNT) + (1);
    if ((Q602_ULRYK_FREEZERODERICH_COUNT) == (2)) {
        Q602_ULRYK_FREEZERODERICH_COUNT = 0;
        WLD_PLAYEFFECT("FX_IceWave", NONE_15_ULRYK_Q602, NONE_15_ULRYK_Q602, 0, 0, 0, FALSE);
        SND_PLAY("MFX_ICEWAVE_CAST");
        if ((Q602_STARTFIGHTWITHULRYK) == (2)) {
            WLD_PLAYEFFECT("spellFX_IceSpell_SENDPERCEPTION", MIL_4000_RODERICH_Q602, MIL_4000_RODERICH_Q602, 0, 0, 0, FALSE);
            NPC_CLEARAIQUEUE(MIL_4000_RODERICH_Q602);
            B_CLEARPERCEPTIONS(MIL_4000_RODERICH_Q602);
            AI_STARTSTATE(MIL_4000_RODERICH_Q602, 43861, 0, "");
            MIL_4000_RODERICH_Q602.AIVAR[4] = TRUE;
            B_STARTOTHERROUTINE(NONE_15_ULRYK_Q602, "Q602_FIGHT_MARVIN");
            NPC_REFRESH(NONE_15_ULRYK_Q602);
            AI_TURNTONPC(NONE_15_ULRYK_Q602, HERO);
            NPC_CLEARAIQUEUE(NONE_15_ULRYK_Q602);
            NPC_CLEARAIQUEUE(NONE_15_ULRYK_Q602);
        } else {
            WLD_PLAYEFFECT("spellFX_IceSpell_SENDPERCEPTION", MIL_4000_RODERICH_Q602, MIL_4000_RODERICH_Q602, 0, 0, 0, FALSE);
            NPC_CLEARAIQUEUE(MIL_4000_RODERICH_Q602);
            B_CLEARPERCEPTIONS(MIL_4000_RODERICH_Q602);
            AI_STARTSTATE(MIL_4000_RODERICH_Q602, 43856, 0, "");
            B_STARTOTHERROUTINE(NONE_15_ULRYK_Q602, "Q602_FIGHT_MARVIN");
            NPC_REFRESH(NONE_15_ULRYK_Q602);
            AI_TURNTONPC(NONE_15_ULRYK_Q602, HERO);
            NPC_CLEARAIQUEUE(NONE_15_ULRYK_Q602);
            NPC_CLEARAIQUEUE(NONE_15_ULRYK_Q602);
            MUSIC_OVERRIDETRACK(21949);
            WLD_SENDTRIGGER("Q602_FIGHTULRYK_ALPHA");
        };
    };
}

func void EVT_KICKDOOR_03() {
    var int Q602_KICKDOOR_03;
    if ((Q602_KICKDOOR_03) == (0)) {
        Q602_FINALBOSS_READYTOFIGHT = 1;
        Q602_KICKDOOR_03 = 1;
        MOB_CHANGEFOCUSNAME("Q602_CANALS_KICKDOOR", "MOBNAME_NOTHING");
        WLD_SENDTRIGGER("Q602_CANALS_BROKENDOOR_01");
        WLD_SENDTRIGGER("Q602_CANALS_BROKENDOOR_02");
        WLD_SENDTRIGGER("Q602_CANALS_BROKENDOOR_03");
        WLD_PLAYEFFECT("FX_DUST", HERO, HERO, 0, 0, 0, FALSE);
        SND_PLAY("ROCKS_KICK_01");
        SND_PLAY("PLACEHOLDER_SlamDoor01");
        SND_PLAY("DESTROY_WOOD");
        PRINTD("Volker spawn");
        WLD_INSERTNPC(60096, "PARTE5_VOLKER");
        VLK_15000_VOLKER_Q602.AIVAR[15] = TRUE;
    };
}

func void EVT_Q602_E3_SHOOT() {
    var int Q602_E3_SHOOT_CHECK;
    if ((Q602_E3_SHOOT_CHECK) == (0)) {
        Q602_E3_SHOOT_CHECK = 1;
        MOB_CHANGEFOCUSNAME("Q602_E3_SHOOT_NAME", "MOBNAME_NOTHING");
        WLD_SENDTRIGGER("Q602_WOOD_01");
        WLD_SENDTRIGGER("Q602_WOOD_02");
        WLD_SENDTRIGGER("Q602_WOOD_03");
        SND_PLAY("DOOR_SLAM");
        SND_PLAY("ROCKS_FALL_01");
        SND_PLAY("DESTROY_WOOD");
    };
}

func void EVT_Q602_ELEVATOR() {
    if ((Q602_ELEVATORCHECK) == (0)) {
        PRINTD("Wina na g�rze");
        Q602_ELEVATORCHECK = 1;
        WLD_SENDTRIGGER("Q602_SEWERS_ELEVATOR");
    };
    if ((Q602_ELEVATORCHECK) == (1)) {
        PRINTD("Wina na dole");
        Q602_ELEVATORCHECK = 0;
        WLD_SENDUNTRIGGER("Q602_SEWERS_ELEVATOR");
    };
}
