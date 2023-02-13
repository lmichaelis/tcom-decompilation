func void KQ405_HUNTERS_CHANGEARMORSSTATS() {
    BDT_6289_VILLAN.NAME[0] = NAME_HUNTER;
    BDT_6290_BANDIT.NAME[0] = NAME_HUNTER;
    BDT_6288_MYRMIDON.NAME[0] = NAME_HUNTER;
    BDT_6289_VILLAN.AIVAR[79] = TRUE;
    BDT_6290_BANDIT.AIVAR[79] = TRUE;
    BDT_6288_MYRMIDON.AIVAR[79] = TRUE;
    NPC_CHANGEARMOR(BDT_6289_VILLAN, 35427);
    NPC_REMOVEINVITEMS(BDT_6289_VILLAN, 39736, 1);
    B_SETFIGHTSKILLS(BDT_6289_VILLAN, 40);
    NPC_REMOVEINVITEMS(BDT_6289_VILLAN, 35398, 1);
    CREATEINVITEMS(BDT_6289_VILLAN, 39572, 1);
    MDL_APPLYOVERLAYMDS(BDT_6289_VILLAN, HUMANSARROGANCEMDS);
    B_SETATTRIBUTESTOLEVEL(BDT_6289_VILLAN, 38);
    NPC_CHANGEARMOR(BDT_6290_BANDIT, 35428);
    NPC_REMOVEINVITEMS(BDT_6290_BANDIT, 39736, 1);
    B_SETFIGHTSKILLS(BDT_6290_BANDIT, 40);
    NPC_REMOVEINVITEMS(BDT_6290_BANDIT, 35403, 1);
    CREATEINVITEMS(BDT_6290_BANDIT, 39589, 1);
    MDL_APPLYOVERLAYMDS(BDT_6290_BANDIT, HUMANSMILITIAMDS);
    B_SETATTRIBUTESTOLEVEL(BDT_6290_BANDIT, 40);
    NPC_CHANGEARMOR(BDT_6288_MYRMIDON, 35429);
    NPC_REMOVEINVITEMS(BDT_6288_MYRMIDON, 35438, 1);
    B_SETFIGHTSKILLS(BDT_6288_MYRMIDON, 40);
    CREATEINVITEMS(BDT_6288_MYRMIDON, 37443, 1);
    MDL_APPLYOVERLAYMDS(BDT_6288_MYRMIDON, HUMANSPOCKETWALKMDS);
    B_SETATTRIBUTESTOLEVEL(BDT_6288_MYRMIDON, 42);
}

func void KQ405_HUNTERSRTN_01() {
    B_STARTOTHERROUTINE(BDT_6289_VILLAN, "KQ405_SPAWN");
    B_STARTOTHERROUTINE(BDT_6290_BANDIT, "KQ405_SPAWN");
    B_STARTOTHERROUTINE(BDT_6288_MYRMIDON, "KQ405_SPAWN");
    TELEPORTNPCTOWP(57947, BDT_6289_VILLAN.WP);
    TELEPORTNPCTOWP(57956, BDT_6290_BANDIT.WP);
    TELEPORTNPCTOWP(58036, BDT_6288_MYRMIDON.WP);
    AI_TELEPORTALWAYS(BDT_6289_VILLAN, BDT_6289_VILLAN.WP, TRUE);
    AI_TELEPORTALWAYS(BDT_6290_BANDIT, BDT_6290_BANDIT.WP, TRUE);
    AI_TELEPORTALWAYS(BDT_6288_MYRMIDON, BDT_6288_MYRMIDON.WP, TRUE);
}

func void KQ405_HUNTERSRTN_02() {
    BDT_6289_VILLAN.AIVAR[15] = TRUE;
    BDT_6290_BANDIT.AIVAR[15] = TRUE;
    BDT_6288_MYRMIDON.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(BDT_6289_VILLAN, "KQ405_GUIDE");
    NPC_REFRESH(BDT_6289_VILLAN);
    B_STARTOTHERROUTINE(BDT_6290_BANDIT, "KQ405_GUIDE");
    NPC_REFRESH(BDT_6290_BANDIT);
    B_STARTOTHERROUTINE(BDT_6288_MYRMIDON, "KQ405_GUIDE");
    NPC_REFRESH(BDT_6288_MYRMIDON);
    HERO.AIVAR[4] = FALSE;
}

func void KQ405_HUNTERSSPAWN() {
    PRINTD("�owcy teleport");
    KQ405_HUNTERSEVENT = 1;
    if (((MARVIN_LOSTGUILDMILITA) == (TRUE)) || ((HERO.GUILD) == (GIL_MIL))) {
        KQ405_HUNTERSRTN_01();
    };
    WLD_INSERTNPC(57947, "PART13_KQ405_SPAWNHUNTER_03");
    WLD_INSERTNPC(57956, "PART13_KQ405_SPAWNHUNTER_02");
    WLD_INSERTNPC(58036, "PART13_KQ405_SPAWNHUNTER_01");
    KQ405_HUNTERSRTN_01();
    KQ405_HUNTERS_CHANGEARMORSSTATS();
}

func void KQ405_FIGHTWITHHUNTERS() {
    BDT_6289_VILLAN.NAME[0] = NAME_VILLAIN;
    BDT_6290_BANDIT.NAME[0] = NAME_HOODLUM;
    BDT_6288_MYRMIDON.NAME[0] = NAME_MYRMIDON;
    KQ405_FIGHTWITHHUNTERSSTATUS = 1;
    BDT_6289_VILLAN.AIVAR[15] = FALSE;
    BDT_6290_BANDIT.AIVAR[15] = FALSE;
    BDT_6288_MYRMIDON.AIVAR[15] = FALSE;
    B_IMMEDIATEATTACKPLAYER(BDT_6289_VILLAN, AR_KILL);
    B_IMMEDIATEATTACKPLAYER(BDT_6290_BANDIT, AR_KILL);
    B_IMMEDIATEATTACKPLAYER(BDT_6288_MYRMIDON, AR_KILL);
    NPC_SETTRUEGUILD(BDT_6288_MYRMIDON, GIL_BDT);
    BDT_6289_VILLAN.GUILD = GIL_BDT;
    NPC_SETTRUEGUILD(BDT_6290_BANDIT, GIL_BDT);
    BDT_6290_BANDIT.GUILD = GIL_BDT;
    NPC_SETTRUEGUILD(BDT_6289_VILLAN, GIL_BDT);
    BDT_6288_MYRMIDON.GUILD = GIL_BDT;
    BDT_6289_VILLAN.FLAGS = 0;
    BDT_6290_BANDIT.FLAGS = 0;
    BDT_6288_MYRMIDON.FLAGS = 0;
    HERO.AIVAR[4] = FALSE;
    NPC_SETTRUEGUILD(HERO, HERO.GUILD);
}

func void KQ405_SEWERS_CORPSES() {
    FF_APPLYONCEEXTGT(61250, 0, -(1));
    if ((KQ405_READNOTE) == (1)) {
        KQ405_READNOTE = 2;
    };
    if ((KQ405_HIDEBODIES) == (1)) {
        KQ405_HIDEBODIES = 2;
    };
}

func void KQ405_SEWERS_CORPSES_APPLY() {
    var int MOVPTR4;
    var ZCMOVER MOVER2;
    var ZCMOVER MOVER4;
    var int MOVPTR2;
    var ZCMOVER MOVER3;
    var int MOVPTR3;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int KQ405_SEWERS_CORPSES_COUNT;
    if ((KQ405_SEWERS_CORPSES_COUNT) == (0)) {
        PRINTD("Rozpoczynam - KQ405_SEWERS_CORPSES_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KQ405_MOVER_CORPSE_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("KQ405_MOVER_CORPSE_02");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        MOVPTR3 = MEM_SEARCHVOBBYNAME("KQ405_MOVER_CORPSE_03");
        MOVER3 = MEM_PTRTOINST(MOVPTR3);
        MOVPTR4 = MEM_SEARCHVOBBYNAME("KQ405_MOVER_BURKHARD_CORPSE");
        MOVER4 = MEM_PTRTOINST(MOVPTR4);
        CHANGEVOBCOLLISION("KQ405_CORPSE_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ405_CORPSE_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ405_CORPSE_03", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KQ405_BURKHARD_CORPSE", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KQ405_MOVER_CORPSE_01");
        WLD_SENDTRIGGER("KQ405_MOVER_CORPSE_02");
        WLD_SENDTRIGGER("KQ405_MOVER_CORPSE_03");
        WLD_SENDTRIGGER("KQ405_MOVER_BURKHARD_CORPSE");
        KQ405_SEWERS_CORPSES_COUNT = 1;
    };
    if (((((((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - KQ405_SEWERS_CORPSES_Apply");
        CHANGEVOBCOLLISION("KQ405_CORPSE_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ405_CORPSE_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ405_CORPSE_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ405_BURKHARD_CORPSE", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(61250);
        KQ405_SEWERS_CORPSES_COUNT = 0;
    };
}

func void KQ405_FIGHTWITHGILES() {
    KQ405_FIGHTWITHGILESSTATUS = 1;
    if (HLP_ISVALIDNPC(NONE_13673_GILES)) {
        if ((NPC_ISDEAD(NONE_13673_GILES)) == (FALSE)) {
            B_IMMEDIATEATTACKPLAYER(NONE_13673_GILES, AR_KILL);
            NONE_13673_GILES.AIVAR[52] = TRUE;
            NONE_13673_GILES.FLAGS = 0;
        };
    };
    if (HLP_ISVALIDNPC(NONE_13672_DEGORY)) {
        if ((NPC_ISDEAD(NONE_13672_DEGORY)) == (FALSE)) {
            B_IMMEDIATEATTACKPLAYER(NONE_13672_DEGORY, AR_KILL);
            NONE_13672_DEGORY.AIVAR[52] = TRUE;
            NONE_13672_DEGORY.FLAGS = 0;
        };
    };
    if (HLP_ISVALIDNPC(NONE_13669_HOBO)) {
        if ((NPC_ISDEAD(NONE_13669_HOBO)) == (FALSE)) {
            B_IMMEDIATEATTACKPLAYER(NONE_13669_HOBO, AR_KILL);
            NONE_13669_HOBO.AIVAR[52] = TRUE;
            NONE_13669_HOBO.FLAGS = 0;
        };
    };
    if (HLP_ISVALIDNPC(NONE_13670_HOBO)) {
        if ((NPC_ISDEAD(NONE_13670_HOBO)) == (FALSE)) {
            B_IMMEDIATEATTACKPLAYER(NONE_13670_HOBO, AR_KILL);
            NONE_13670_HOBO.AIVAR[52] = TRUE;
            NONE_13670_HOBO.FLAGS = 0;
        };
    };
    if (HLP_ISVALIDNPC(NONE_13671_HOBO)) {
        if ((NPC_ISDEAD(NONE_13671_HOBO)) == (FALSE)) {
            B_IMMEDIATEATTACKPLAYER(NONE_13671_HOBO, AR_KILL);
            NONE_13671_HOBO.AIVAR[52] = TRUE;
            NONE_13671_HOBO.FLAGS = 0;
        };
    };
    HERO.AIVAR[4] = FALSE;
}

