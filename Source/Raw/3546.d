func void SQ416_RAMSEYHOUSEUNLOCK() {
    FF_APPLYONCEEXTGT(0xf835, 0, -(1));
}

func void SQ416_RAMSEYHOUSEUNLOCK_APPLY() {
    if ((SQ416_RAMSEYHOUSEUNLOCK_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ416_RamseyHouseUnlock_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("RAMSEYHOUSE_MOVER_DOOR_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("RAMSEYHOUSE_MOVER_DOOR_02");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        CHANGEVOBCOLLISION("RAMSEYHOUSE_DOOR_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("RAMSEYHOUSE_DOOR_02", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("RAMSEYHOUSE_MOVER_DOOR_01");
        WLD_SENDTRIGGER("RAMSEYHOUSE_MOVER_DOOR_02");
        SQ416_RAMSEYHOUSEUNLOCK_COUNT = 1;
    };
    if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - SQ416_RamseyHouseUnlock_Apply");
        CHANGEVOBCOLLISION("RAMSEYHOUSE_DOOR_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("RAMSEYHOUSE_DOOR_02", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf835);
        SQ416_RAMSEYHOUSEUNLOCK_COUNT = 0;
    };
}

var int SQ416_RAMSEYHOUSEUNLOCK_APPLY.SQ416_RAMSEYHOUSEUNLOCK_COUNT = 0;
instance SQ416_RAMSEYHOUSEUNLOCK_APPLY.MOVER1(ZCMOVER)
instance SQ416_RAMSEYHOUSEUNLOCK_APPLY.MOVER2(ZCMOVER)
var int SQ416_RAMSEYHOUSEUNLOCK_APPLY.MOVPTR1 = 0;
var int SQ416_RAMSEYHOUSEUNLOCK_APPLY.MOVPTR2 = 0;
func void SQ416_HUNTERMEETING() {
    PRINTD("My�liwi przybyli");
    B_STARTOTHERROUTINE(VLK_3015_DETLOW, "SQ416_RAMSEYHOUSE");
    SQ416_DETLOW_RTNCHECK = 1;
    B_STARTOTHERROUTINE(SLD_11050_GERKE, "SQ416_RAMSEYHOUSE");
    B_STARTOTHERROUTINE(VLK_6389_NIRKA, "SQ416_RAMSEYHOUSE");
    B_STARTOTHERROUTINE(VLK_3025_ALLAN, "SQ416_RAMSEYHOUSE");
    B_STARTOTHERROUTINE(SLD_13491_RUDI, "SQ416_RAMSEYHOUSE");
    B_STARTOTHERROUTINE(NONE_500_RAMSEY, "SQ416_RAMSEYHOUSE");
}

func void SQ416_RAMSEYHOUSEMEETING_APPLY() {
    SQ416_RAMSEYHOUSEMEETINGCOUNT = (SQ416_RAMSEYHOUSEMEETINGCOUNT) + (1);
    if ((SQ416_RAMSEYHOUSEMEETINGCOUNT) == (4)) {
        CUTSCENE_START(0x16b3c);
    };
}

var int SQ416_RAMSEYHOUSEMEETING_APPLY.SQ416_RAMSEYHOUSEMEETINGCOUNT = 0;
func void SQ416_RAMSEYHOUSEMEETINGCUTSCENE_END_APPLY() {
    SQ416_RAMSEYHOUSEMEETINGCUTSCENE_END_COUNT = (SQ416_RAMSEYHOUSEMEETINGCUTSCENE_END_COUNT) + (1);
    if ((SQ416_RAMSEYHOUSEMEETINGCUTSCENE_END_COUNT) == (4)) {
        SQ416_RAMSEYHOUSEMEETING = 4;
        NONE_500_RAMSEY.AIVAR[92] = FALSE;
        AI_STOPLOOKAT(HERO);
        WLD_SENDUNTRIGGER("SQ416_RAMSEYHOUSE_01");
        WLD_SENDUNTRIGGER("SQ416_RAMSEYHOUSE_02");
        WLD_SENDUNTRIGGER("SQ416_RAMSEYHOUSE_03");
        B_LOGENTRY(TOPIC_SQ416, LOG_SQ416_RAMSEYCUTSCENE);
        B_STARTOTHERROUTINE(NONE_500_RAMSEY, "SQ416_RAMSEYHOUSE_SMALLTALK");
        NPC_REFRESH(NONE_500_RAMSEY);
        B_STARTOTHERROUTINE(VLK_6389_NIRKA, "SQ416_RAMSEYHOUSE_SMALLTALK");
        NPC_REFRESH(VLK_6389_NIRKA);
        B_STARTOTHERROUTINE(VLK_3015_DETLOW, "SQ416_VILLAGE_INN");
        SQ416_DETLOW_RTNCHECK = 2;
        NPC_REFRESH(VLK_3015_DETLOW);
        B_STARTOTHERROUTINE(SLD_11050_GERKE, "SQ416_VILLAGE_INN");
        NPC_REFRESH(SLD_11050_GERKE);
        B_STARTOTHERROUTINE(VLK_3025_ALLAN, "SQ416_VILLAGE_INN");
        NPC_REFRESH(VLK_3025_ALLAN);
        B_STARTOTHERROUTINE(SLD_13491_RUDI, "SQ416_VILLAGE_INN");
        NPC_REFRESH(SLD_13491_RUDI);
        B_STARTOTHERROUTINE(BAU_11033_FARMER, "SQ416_VILLAGE_INN");
        B_STARTOTHERROUTINE(BAU_11015_FARMER, "SQ416_VILLAGE_INN");
        if ((FAQ001_TELEPORTSUNDERTOARAXOS) != (2)) {
            B_STARTOTHERROUTINE(SLD_5002_SUNDER, "SQ416_VILLAGE_INN");
        };
        if ((SQ227_VEITMARKET) != (2)) {
            B_STARTOTHERROUTINE(NONE_11006_VEIT, "SQ416_VILLAGE_INN");
        };
        B_STARTOTHERROUTINE(NONE_11037_MARKUS, START);
        B_STARTOTHERROUTINE(NONE_6262_CARDEN, START);
        B_STARTOTHERROUTINE(BAU_704_BASTIAN, "SQ416_VILLAGE_INN");
        HERO.AIVAR[4] = FALSE;
    };
}

var int SQ416_RAMSEYHOUSEMEETINGCUTSCENE_END_APPLY.SQ416_RAMSEYHOUSEMEETINGCUTSCENE_END_COUNT = 0;
func void SQ416_DRINKBEER() {
    AI_STOPLOOKAT(SELF);
    CREATEINVITEM(SELF, 0x8e17);
    AI_USEITEM(SELF, 0x8e17);
}

func void SQ416_DRINKBEER_MARVIN() {
    AI_STOPLOOKAT(HERO);
    CREATEINVITEM(HERO, 0x8e17);
    AI_USEITEM(HERO, 0x8e17);
}

func void SQ416_DETLOWGOTOSLEEP() {
    NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "SQ416_VILLAGE_SLEEP");
    SQ416_DETLOW_RTNCHECK = 3;
}

func void SQ416_HUNTERSGOTOSLEEP() {
    SQ416_HUNTERSSLEEP = 1;
    NPC_EXCHANGEROUTINE(VLK_3025_ALLAN, "SQ416_VILLAGE_SLEEP");
    NPC_EXCHANGEROUTINE(SLD_11050_GERKE, "SQ416_VILLAGE_SLEEP");
    NPC_EXCHANGEROUTINE(SLD_13491_RUDI, "SQ416_VILLAGE_SLEEP");
    B_STARTOTHERROUTINE(NONE_500_RAMSEY, START);
    B_STARTOTHERROUTINE(VLK_6389_NIRKA, START);
}

func void GERKE_SQ416_KILLHIM_APPLY() {
    if ((GERKE_SQ416_KILLHIM_COUNT) == (0)) {
        PRINTD("Rozpoczynam - Gerke_SQ416_KillHim_Count");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ416_MOVER_CORPSE_ALLAN");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        B_KILLNPC(0xd9e1);
        CHANGEVOBCOLLISION("SQ416_CORPSE_ALLAN", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("SQ416_MOVER_CORPSE_ALLAN");
        WLD_SENDTRIGGER("SQ416_MOVER_SOUND");
        GERKE_SQ416_KILLHIM_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - Gerke_SQ416_KillHim_Count");
        CHANGEVOBCOLLISION("SQ416_CORPSE_ALLAN", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf844);
        GERKE_SQ416_KILLHIM_COUNT = 0;
    };
}

var int GERKE_SQ416_KILLHIM_APPLY.GERKE_SQ416_KILLHIM_COUNT = 0;
instance GERKE_SQ416_KILLHIM_APPLY.MOVER1(ZCMOVER)
var int GERKE_SQ416_KILLHIM_APPLY.MOVPTR1 = 0;
func void SQ416_SPAWNDETLOW() {
    PRINTD("Detlow spawn");
    B_STARTOTHERROUTINE(VLK_3015_DETLOW, "SQ416_ALLANBODY");
    SQ416_DETLOW_RTNCHECK = 5;
    TELEPORTNPCTOWP(0xd212, "SQ416_ALLAN_HORN_03");
    VLK_3015_DETLOW.AIVAR[15] = TRUE;
    HERO.AIVAR[4] = FALSE;
    WLD_INSERTNPC(0xc41e, "PART12_SQ416_CAVE_BOSS");
}

func void SQ416_PREPARERAMSEY() {
    B_STARTOTHERROUTINE(NONE_500_RAMSEY, "SQ416_VILLAGE_WAIT");
    WLD_INSERTNPC(0xdff2, "VILLAGE_SQ416_RAMSEYGUARD_01");
    WLD_INSERTNPC(0xdff6, "VILLAGE_SQ416_RAMSEYGUARD_02");
}

func void SQ416_RAMSEYGUARD_TOFOREST() {
    AI_WAIT(BAU_13494_RAMSEYBODYGUARD, 0x3e4ccccd);
    B_STARTOTHERROUTINE(BAU_13494_RAMSEYBODYGUARD, "SQ416_VILLAGE_FOREST");
    AI_WAIT(BAU_13495_RAMSEYBODYGUARD, 0x3dcccccd);
    B_STARTOTHERROUTINE(BAU_13495_RAMSEYBODYGUARD, "SQ416_VILLAGE_FOREST");
}

func void SQ416_RAMSEYGUARD_REMOVE() {
    PRINTD("Usuni�to straznik�w ramseya");
    B_REMOVENPC(0xdff2);
    B_REMOVENPC(0xdff6);
}

func void SQ416_PARTYCUTSCENEENABLE_START() {
    SQ416_PARTYCUTSCENEENABLE = 1;
    HERO.AIVAR[4] = TRUE;
    FF_APPLYONCEEXT(0xf84d, 75, 4);
}

func void SQ416_PARTYCUTSCENEENABLE_APPLY() {
    SQ416_PARTYCUTSCENEENABLE_COUNT = (SQ416_PARTYCUTSCENEENABLE_COUNT) + (1);
    if ((SQ416_PARTYCUTSCENEENABLE_COUNT) == (4)) {
        CUTSCENE_START(0x16b36);
    };
}

var int SQ416_PARTYCUTSCENEENABLE_APPLY.SQ416_PARTYCUTSCENEENABLE_COUNT = 0;
func void SQ416_PARTYCUTSCENEENABLE_DISABLE() {
    HERO.AIVAR[4] = TRUE;
    FF_APPLYONCEEXT(0xf850, 75, 4);
}

func void SQ416_PARTYCUTSCENEENABLE_DISABLE_APPLY() {
    SQ416_PARTYCUTSCENEENABLE_DISABLE_COUNT = (SQ416_PARTYCUTSCENEENABLE_DISABLE_COUNT) + (1);
    if ((SQ416_PARTYCUTSCENEENABLE_DISABLE_COUNT) == (4)) {
        SQ416_RAMSEYPARTYCUTSCENEENABLE = 1;
        SQ416_PARTYCUTSCENEENABLE = 4;
        WLD_SENDUNTRIGGER("SQ416_PART_01");
        WLD_SENDUNTRIGGER("SQ416_PART_02");
        WLD_SENDUNTRIGGER("SQ416_PART_03");
        DIACAM_ENABLE();
        B_LOGENTRY(TOPIC_SQ416, LOG_SQ416_RAMSEY_INVITE);
        HERO.AIVAR[4] = FALSE;
        NPC_EXCHANGEROUTINE(BAU_704_BASTIAN, START);
    };
}

var int SQ416_PARTYCUTSCENEENABLE_DISABLE_APPLY.SQ416_PARTYCUTSCENEENABLE_DISABLE_COUNT = 0;
func void SQ416_RAMSEYPARTYCUTSCENEENABLE_APPLY() {
    SQ416_RAMSEYPARTYCUTSCENEENABLE_COUNT = (SQ416_RAMSEYPARTYCUTSCENEENABLE_COUNT) + (1);
    if ((SQ416_RAMSEYPARTYCUTSCENEENABLE_COUNT) == (4)) {
        CUTSCENE_START(0x16b31);
    };
}

var int SQ416_RAMSEYPARTYCUTSCENEENABLE_APPLY.SQ416_RAMSEYPARTYCUTSCENEENABLE_COUNT = 0;
func void SQ416_FINISHQUEST_END_APPLY() {
    SQ416_FINISHQUEST_END_COUNT = (SQ416_FINISHQUEST_END_COUNT) + (1);
    if ((SQ416_FINISHQUEST_END_COUNT) == (4)) {
        WLD_SENDUNTRIGGER("SQ416_RAMSEYPARTY_01");
        WLD_SENDUNTRIGGER("SQ416_RAMSEYPARTY_02");
        WLD_SENDUNTRIGGER("SQ416_RAMSEYPARTY_03");
        LOG_SETSTATUS(_@(MIS_SQ416), TOPIC_SQ416, LOG_SUCCESS);
        B_GIVEPLAYERXP(XP_SQ416_FINISH);
        B_LOGENTRY(TOPIC_SQ416, LOG_SQ416_FINISH);
        HERO.AIVAR[4] = FALSE;
        AI_STOPLOOKAT(HERO);
        NONE_500_RAMSEY.AIVAR[92] = FALSE;
        SQ416_RAMSEYPARTY = TRUE;
        SQ416_RAMSEYPARTY_DAY = WLD_GETDAY();
        B_STARTOTHERROUTINE(VLK_3015_DETLOW, "SQ416_RAMSEY_PARTY");
        SQ416_DETLOW_RTNCHECK = 9;
        B_STARTOTHERROUTINE(VLK_3024_ERNESTO, "SQ416_RAMSEY_PARTY");
        TELEPORTNPCTOWP(0xd0af, "PART12_RAMSEYHOUSE_SQ416_SPOT_03");
        B_STARTOTHERROUTINE(NONE_15_ULRYK, "SQ416_RAMSEY_PARTY");
        B_STARTOTHERROUTINE(VLK_6388_MORRIS, "SQ416_RAMSEY_PARTY_V1");
        B_STARTOTHERROUTINE(BAU_700_ALBYN, "SQ416_RAMSEY_PARTY");
        B_STARTOTHERROUTINE(BAU_706_LOKVAR, "SQ416_RAMSEY_PARTY");
        B_STARTOTHERROUTINE(VLK_6128_LEON, "SQ416_RAMSEY_PARTY");
        B_STARTOTHERROUTINE(NONE_500_RAMSEY, "SQ416_RAMSEY_PARTY");
    };
}

var int SQ416_FINISHQUEST_END_APPLY.SQ416_FINISHQUEST_END_COUNT = 0;
func void SQ416_FINISHQUEST_GIVEITEM() {
    MAXWEAPONSKILL = MAXOF4(HERO.HITCHANCE[1], HERO.HITCHANCE[2], HERO.HITCHANCE[3], HERO.HITCHANCE[4]);
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[1])) {
        if ((HERO.ATTRIBUTE[4]) >= (HERO.ATTRIBUTE[5])) {
            CREATEINVITEMS(NONE_500_RAMSEY, 0x9a84, 1);
        } else {
            CREATEINVITEMS(NONE_500_RAMSEY, 0x9a83, 1);
            B_GIVEINVITEMS(NONE_500_RAMSEY, HERO, 0x9a83, 1);
        } else {
            /* set_instance(0) */;
        };
    };
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[2])) {
        if ((HERO.ATTRIBUTE[4]) >= (HERO.ATTRIBUTE[5])) {
            CREATEINVITEMS(NONE_500_RAMSEY, 0x9a9b, 1);
        } else {
            CREATEINVITEMS(NONE_500_RAMSEY, 0x9ac7, 1);
            B_GIVEINVITEMS(NONE_500_RAMSEY, HERO, 0x9ac7, 1);
        } else {
            /* set_instance(0) */;
        };
    };
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[3])) {
        CREATEINVITEMS(NONE_500_RAMSEY, 0x9b3d, 1);
    };
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[4])) {
        CREATEINVITEMS(NONE_500_RAMSEY, 0x9b20, 1);
        B_GIVEINVITEMS(NONE_500_RAMSEY, HERO, 0x9b20, 1);
    };
    CREATEINVITEMS(NONE_500_RAMSEY, 0x9b3d, 1);
    B_GIVEINVITEMS(NONE_500_RAMSEY, VLK_3015_DETLOW, 0x9b3d, 1);
}

var int SQ416_FINISHQUEST_GIVEITEM.MAXWEAPONSKILL = 0;
func void SQ416_GIVEDETLOWSCROLLS() {
    CREATEINVITEMS(VLK_3015_DETLOW, 0x879c, 2);
    CREATEINVITEMS(VLK_3015_DETLOW, 0x879f, 4);
    CREATEINVITEMS(VLK_3015_DETLOW, 0x87a2, 1);
    CREATEINVITEMS(VLK_3015_DETLOW, 0x87a3, 1);
    CREATEINVITEMS(VLK_3015_DETLOW, 0x87a5, 2);
    CREATEINVITEMS(VLK_3015_DETLOW, 0x87a6, 1);
    CREATEINVITEMS(VLK_3015_DETLOW, 0x9ba1, 1);
    CREATEINVITEMS(VLK_3015_DETLOW, 0x864b, 4);
    CREATEINVITEMS(VLK_3015_DETLOW, 0x864f, 34);
}

func void SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_APPLY() {
    if ((SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ416_PartyCutsceneEnable_RamseyParty_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ416_DEADRAZOR");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("SQ416_MOVER_RAMSEYPARTY");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        MOVPTR3 = MEM_SEARCHVOBBYNAME("SQ416_MOVER_RAMSEYDOOR_CLOSED");
        MOVER3 = MEM_PTRTOINST(MOVPTR3);
        MOVPTR4 = MEM_SEARCHVOBBYNAME("SQ416_MOVER_RAMSEYDOOR_OPEN");
        MOVER4 = MEM_PTRTOINST(MOVPTR4);
        CHANGEVOBCOLLISION("SQ416_DEADRAZOR_CATCH", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_DEADRAZOR", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_RAMSEYDOOR_CLOSED", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_RAMSEYDOOR_OPEN", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_03", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_04", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_05", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_06", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_07", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_08", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_09", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_10", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_11", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_12", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_13", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_14", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_15", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_16", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_17", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("SQ416_DEADRAZOR");
        WLD_SENDTRIGGER("SQ416_MOVER_RAMSEYPARTY");
        WLD_SENDTRIGGER("SQ416_MOVER_RAMSEYDOOR_CLOSED");
        WLD_SENDTRIGGER("SQ416_MOVER_RAMSEYDOOR_OPEN");
        SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_COUNT = 1;
    };
    if (((((((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - SQ416_PartyCutsceneEnable_RamseyParty_Apply");
        CHANGEVOBCOLLISION("SQ416_RAMSEYDOOR_CLOSED", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_RAMSEYDOOR_OPEN", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_04", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_05", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_06", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_07", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_08", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_09", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_10", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_11", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_12", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_13", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_14", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_15", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_16", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("SQ416_VOB_17", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf859);
        SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_COUNT = 0;
    };
}

var int SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_APPLY.SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_COUNT = 0;
instance SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_APPLY.MOVER1(ZCMOVER)
instance SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_APPLY.MOVER2(ZCMOVER)
instance SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_APPLY.MOVER3(ZCMOVER)
instance SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_APPLY.MOVER4(ZCMOVER)
var int SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_APPLY.MOVPTR1 = 0;
var int SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_APPLY.MOVPTR2 = 0;
var int SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_APPLY.MOVPTR3 = 0;
var int SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_APPLY.MOVPTR4 = 0;
func void SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_PREPARENPC() {
    B_STARTOTHERROUTINE(BAU_703_MARTHA, "SQ416_RAMSEY_PARTY");
    if ((NPC_ISDEAD(BAU_11008_FARMER)) == (FALSE)) {
        B_STARTOTHERROUTINE(BAU_11008_FARMER, "SQ416_RAMSEY_PARTY");
    };
    if ((NPC_ISDEAD(BAU_11010_FARMER)) == (FALSE)) {
        B_STARTOTHERROUTINE(BAU_11010_FARMER, "SQ416_RAMSEY_PARTY");
    };
    if ((NPC_ISDEAD(BAU_11011_FARMER)) == (FALSE)) {
        B_STARTOTHERROUTINE(BAU_11011_FARMER, "SQ416_RAMSEY_PARTY");
    };
    if ((NPC_ISDEAD(BAU_11017_FARMER)) == (FALSE)) {
        B_STARTOTHERROUTINE(BAU_11017_FARMER, "SQ416_RAMSEY_PARTY");
    };
    if ((NPC_ISDEAD(BAU_11019_FARMER)) == (FALSE)) {
        B_STARTOTHERROUTINE(BAU_11019_FARMER, "SQ416_RAMSEY_PARTY");
    };
    if ((NPC_ISDEAD(BAU_11025_FARMER)) == (FALSE)) {
        B_STARTOTHERROUTINE(BAU_11025_FARMER, "SQ416_RAMSEY_PARTY");
    };
    B_STARTOTHERROUTINE(NONE_500_RAMSEY, "SQ416_RAMSEY_WAIT_BEFOREDOOR");
    SQ416_CHANGERAMSEYRTN = 1;
    B_STARTOTHERROUTINE(VLK_3015_DETLOW, "SQ416_RAMSEY_WAIT");
    SQ416_DETLOW_RTNCHECK = 8;
    B_STARTOTHERROUTINE(VLK_3024_ERNESTO, "SQ416_RAMSEY_WAIT");
    B_STARTOTHERROUTINE(NONE_15_ULRYK, "SQ416_RAMSEY_WAIT");
    B_STARTOTHERROUTINE(BAU_700_ALBYN, "SQ416_RAMSEY_WAIT");
    B_STARTOTHERROUTINE(VLK_6388_MORRIS, "SQ416_RAMSEY_WAIT");
    B_STARTOTHERROUTINE(BAU_706_LOKVAR, "SQ416_RAMSEY_WAIT");
    B_STARTOTHERROUTINE(VLK_6128_LEON, "SQ416_RAMSEY_WAIT");
}

func void SQ416_PARTYCUTSCENEENABLE_RAMSEYPARTY_REMOVENPC() {
    B_STARTOTHERROUTINE(BAU_703_MARTHA, START);
    if ((NPC_ISDEAD(BAU_11008_FARMER)) == (FALSE)) {
        B_STARTOTHERROUTINE(BAU_11008_FARMER, START);
    };
    if ((NPC_ISDEAD(BAU_11010_FARMER)) == (FALSE)) {
        if (NPC_KNOWSINFO(OTHER, 0x155e6)) {
            B_STARTOTHERROUTINE(BAU_11010_FARMER, START);
            NPC_REFRESH(BAU_11010_FARMER);
        } else {
            B_STARTOTHERROUTINE(BAU_11010_FARMER, "PRESTART");
            NPC_REFRESH(BAU_11010_FARMER);
        };
    };
    if ((NPC_ISDEAD(BAU_11011_FARMER)) == (FALSE)) {
        B_STARTOTHERROUTINE(BAU_11011_FARMER, START);
    };
    if ((NPC_ISDEAD(BAU_11017_FARMER)) == (FALSE)) {
        B_STARTOTHERROUTINE(BAU_11017_FARMER, START);
    };
    if ((NPC_ISDEAD(BAU_11019_FARMER)) == (FALSE)) {
        B_STARTOTHERROUTINE(BAU_11019_FARMER, START);
    };
    if ((NPC_ISDEAD(BAU_11025_FARMER)) == (FALSE)) {
        B_STARTOTHERROUTINE(BAU_11025_FARMER, START);
    };
    RESTOREROUTINE_DETLOW();
    RESTOREROUTINE_SUNDER();
    B_STARTOTHERROUTINE(VLK_3024_ERNESTO, "OLDCITY");
    B_STARTOTHERROUTINE(NONE_15_ULRYK, START);
    B_STARTOTHERROUTINE(VLK_6388_MORRIS, START);
    B_STARTOTHERROUTINE(BAU_706_LOKVAR, START);
    B_STARTOTHERROUTINE(VLK_6128_LEON, "OLDCITY");
    B_STARTOTHERROUTINE(NONE_500_RAMSEY, "SILBACH");
    B_STARTOTHERROUTINE(BAU_700_ALBYN, "RAMSEYCOMEBACK");
    B_STARTOTHERROUTINE(MIL_709_KIPPER, START);
    FF_APPLYONCEEXTGT(0xbb80, 0, -(1));
}

func void SQ416_DETLOWSUSPECT_COUNT() {
    SQ416_REALMONSTER_COUNT = (SQ416_REALMONSTER_COUNT) + (1);
    PRINTD(CS2("Punkty podejrze�: ", INTTOSTRING(SQ416_REALMONSTER_COUNT)));
}

func void SQ416_TOOFARFOREST_TELEPORT() {
    if ((NPC_GETDISTTOWP(HERO, "PART12_PATH_35")) <= (0x1b58)) {
        TELEPORTNPCTOWP(0x71b, "PART12_PATH_44");
    };
    if ((NPC_GETDISTTOWP(HERO, "PART12_PATH_104")) <= (0xfa0)) {
        TELEPORTNPCTOWP(0x71b, "PART12_PATH_98");
    };
    TELEPORTNPCTOWP(0x71b, "PART12_PATH_49");
    SQ416_CANTLEAVEFOREST = 1;
    FADESCREENFROMBLACK(1);
}
