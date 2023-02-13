func void B_RIORDIANAFTERVOLFZACKE() {
    PRINTD("Teleport Riordian");
    B_STARTOTHERROUTINE(KDW_203_RIORDIAN, "FOLLOW2");
    TELEPORTNPCTOWP(56616, KDW_203_RIORDIAN.WP);
    KDW_203_RIORDIAN.AIVAR[15] = TRUE;
}

func void B_ENTER_ARCHOLOSMIANLAND() {
    var int QA401_TELEPORTPABLO;
    if ((EVENT_TELEPORTSPOOKYWOMANONZENLOAD) == (1)) {
        PRINTD("Baba leci do TOT");
        NPC_CLEARAIQUEUE(NONE_11295_SPOOKYWOMAN);
        B_STARTOTHERROUTINE(NONE_11295_SPOOKYWOMAN, TOT);
        TELEPORTNPCTOWP(57252, NONE_11295_SPOOKYWOMAN.WP);
        EVENT_TELEPORTSPOOKYWOMANONZENLOAD = 0;
    };
    if ((EVENT_TELEPORTSPOOKYWOMANONZENLOAD) == (2)) {
        PRINTD("Baba wraca do domu");
        NPC_CLEARAIQUEUE(NONE_11295_SPOOKYWOMAN);
        B_STARTOTHERROUTINE(NONE_11295_SPOOKYWOMAN, START);
        TELEPORTNPCTOWP(57252, NONE_11295_SPOOKYWOMAN.WP);
        EVENT_TELEPORTSPOOKYWOMANONZENLOAD = 0;
    };
    if ((BOUNTY_MADCUTTER_TELEPORTSPOOKYWOMAN) == (TRUE)) {
        BOUNTY_MADCUTTER_TELEPORTSPOOKYWOMAN = 2;
        PRINTD("Baba leci do TOT");
        NPC_CLEARAIQUEUE(NONE_11295_SPOOKYWOMAN);
        B_STARTOTHERROUTINE(NONE_11295_SPOOKYWOMAN, TOT);
        TELEPORTNPCTOWP(57252, NONE_11295_SPOOKYWOMAN.WP);
    };
    if ((BOUNTY_SLIPPY_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_SLIPPY_SPAWNINARCHOLOS = 2;
        PRINTD("Tworz� �liskor�kiego");
        WLD_INSERTNPC(59028, "SLUMS_SLIPPY_01");
    };
    if ((BOUNTY_LURKER_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_LURKER_SPAWNINARCHOLOS = 2;
        PRINTD("Mokry gotowy");
        WLD_INSERTNPC(59030, "PART13_WANTEDPOSTER_LURKER");
        if ((NPC_ISDEAD(YLURKER_P13_01)) == (FALSE)) {
            B_REMOVENPC(50602);
        };
    };
    if ((BOUNTY_MADCUTTER_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_MADCUTTER_SPAWNINARCHOLOS = 2;
        PRINTD("Siekiernik gotowy");
        WLD_INSERTNPC(59032, "PART11_WANTEDPOSTER_MADCUTTER");
    };
    if ((BOUNTY_COLLECTOR_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_COLLECTOR_SPAWNINARCHOLOS = 2;
        PRINTD("Mytnik gotowy");
        WLD_INSERTNPC(59034, "PART15_WANTEDPOSTER_COLLECTOR");
    };
    if ((BOUNTY_NOVIZE_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_NOVIZE_SPAWNINARCHOLOS = 2;
        PRINTD("Nociwjusz gotowy");
        WLD_INSERTNPC(59040, "PART3_SMALLCAVE_01");
    };
    if ((BOUNTY_FROST_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_FROST_SPAWNINARCHOLOS = 2;
        PRINTD("Nordmarczyk gotowy");
        WLD_INSERTNPC(59042, "PART14_WANTEDPOSTER_FROST");
    };
    if ((BOUNTY_HYENA_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_HYENA_SPAWNINARCHOLOS = 2;
        PRINTD("Hiena gotowa");
        WLD_INSERTNPC(59044, RNG_TRAP60_WAYPOINT);
        if ((TRAP60_SPAWNED) == (TRUE)) {
            TRAP60_HIDDEN = TRUE;
            if ((NPC_ISDEAD(BDT_13804_GRAVEROBBER)) == (FALSE)) {
                B_STARTOTHERROUTINE(BDT_13804_GRAVEROBBER, TOT);
                NPC_REFRESH(BDT_13804_GRAVEROBBER);
                TELEPORTNPCTOWP(57779, BDT_13804_GRAVEROBBER.WP);
            };
            if ((NPC_ISDEAD(BDT_13805_GRAVEROBBER)) == (FALSE)) {
                B_STARTOTHERROUTINE(BDT_13805_GRAVEROBBER, TOT);
                NPC_REFRESH(BDT_13805_GRAVEROBBER);
                TELEPORTNPCTOWP(57782, BDT_13805_GRAVEROBBER.WP);
            };
        };
        if ((SQ118_EZEKIEL_SEARCHFLORA) >= (3)) {
            B_STARTOTHERROUTINE(NONE_3_EZEKIEL, RESERVED_CONST_STRING_16);
            NPC_REFRESH(NONE_3_EZEKIEL);
            TELEPORTNPCTOWP(51492, NONE_3_EZEKIEL.WP);
        };
    };
    if ((BOUNTY_WIDOW_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_WIDOW_SPAWNINARCHOLOS = 2;
        PRINTD("Wdowa gotowa");
        WLD_INSERTNPC(59046, "PARTM5_WANTEDPOSTER_WIDOW");
        B_STARTOTHERROUTINE(VLK_880_NIKOLAS, "WANTEDPOSTER");
        NPC_REFRESH(VLK_880_NIKOLAS);
        TELEPORTNPCTOWP(53832, VLK_880_NIKOLAS.WP);
    };
    if ((BOUNTY_PUMA_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_PUMA_SPAWNINARCHOLOS = 2;
        PRINTD("Puma gotowa");
        WLD_INSERTNPC(59048, "PART1_WANTEDPOSTER_FIGHTER");
        WLD_INSERTNPC(59050, "PART1_WANTEDPOSTER_PUMA");
    };
    if ((BOUNTY_PROPHET_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_PROPHET_SPAWNINARCHOLOS = 2;
        PRINTD("Prorok gotowy");
        WLD_INSERTNPC(59051, "HARBOUR_WANTEDPOSTER_PROPETH");
        WLD_INSERTNPC(59053, "HARBOUR_WANTEDPOSTER_BELIVER_01");
        WLD_INSERTNPC(59055, "HARBOUR_WANTEDPOSTER_BELIVER_02");
        WLD_INSERTNPC(59057, "HARBOUR_WANTEDPOSTER_BELIVER_03");
        if ((NPC_ISDEAD(NONE_11151_THUG)) == (FALSE)) {
            B_STARTOTHERROUTINE(NONE_11151_THUG, TOT);
            NPC_REFRESH(NONE_11151_THUG);
            TELEPORTNPCTOWP(53897, NONE_11151_THUG.WP);
        };
        if ((NPC_ISDEAD(NONE_11152_THUG)) == (FALSE)) {
            B_STARTOTHERROUTINE(NONE_11152_THUG, TOT);
            NPC_REFRESH(NONE_11152_THUG);
            TELEPORTNPCTOWP(53900, NONE_11152_THUG.WP);
        };
        if ((NPC_ISDEAD(VLK_11123_HOOKER)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_11123_HOOKER, TOT);
            NPC_REFRESH(VLK_11123_HOOKER);
            TELEPORTNPCTOWP(54752, VLK_11123_HOOKER.WP);
        };
        if ((NPC_ISDEAD(VLK_11123_HOOKER)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_11123_HOOKER, TOT);
            NPC_REFRESH(VLK_11123_HOOKER);
            TELEPORTNPCTOWP(54752, VLK_11123_HOOKER.WP);
        };
        if ((NPC_ISDEAD(MIL_4007_HARBGUARD)) == (FALSE)) {
            B_STARTOTHERROUTINE(MIL_4007_HARBGUARD, TOT);
            NPC_REFRESH(MIL_4007_HARBGUARD);
            TELEPORTNPCTOWP(54117, MIL_4007_HARBGUARD.WP);
        };
        if ((NPC_ISDEAD(VLK_13864_WORKER)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_13864_WORKER, TOT);
            NPC_REFRESH(VLK_13864_WORKER);
            TELEPORTNPCTOWP(54222, VLK_13864_WORKER.WP);
        };
        if ((NPC_ISDEAD(VLK_13865_WORKER)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_13865_WORKER, TOT);
            NPC_REFRESH(VLK_13865_WORKER);
            TELEPORTNPCTOWP(54226, VLK_13865_WORKER.WP);
        };
        if ((NPC_ISDEAD(VLK_13866_WORKER)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_13866_WORKER, TOT);
            NPC_REFRESH(VLK_13866_WORKER);
            TELEPORTNPCTOWP(54229, VLK_13866_WORKER.WP);
        };
    };
    if ((BOUNTY_HAVDAN_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_HAVDAN_SPAWNINARCHOLOS = 2;
        PRINTD("Havdan gotowy");
        WLD_INSERTNPC(59059, "PART1_WANTEDPOSTER_FIGHTER");
        if ((NPC_ISDEAD(KM_LURKER_WANTEDPOSTER_HAVDAN)) == (FALSE)) {
            B_REMOVENPC(50603);
        };
    };
    if ((BOUNTY_BOAR_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_BOAR_SPAWNINARCHOLOS = 2;
        PRINTD("Dzik gotowy");
        WLD_INSERTNPC(59061, "FP_ROAM_PART10_136");
    };
    if ((BOUNTY_SCAVENGER_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_SCAVENGER_SPAWNINARCHOLOS = 2;
        PRINTD("�cierwojad gotowy");
        WLD_INSERTNPC(59062, "FP_ROAM_PART3_172");
    };
    if ((BOUNTY_MOLERAT_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_MOLERAT_SPAWNINARCHOLOS = 2;
        PRINTD("Kretoszczur gotowy");
        WLD_INSERTNPC(59063, "PART3_WANTEDPOSTER_MOLERAT");
    };
    if ((BOUNTY_CRAB_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_CRAB_SPAWNINARCHOLOS = 2;
        PRINTD("Krab gotowy");
        WLD_INSERTNPC(59064, "PART3_MOB_49");
    };
    if ((BOUNTY_ICEWOLF_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_ICEWOLF_SPAWNINARCHOLOS = 2;
        PRINTD("Lodowe wilki gotowe");
        WLD_INSERTNPC(59066, "FP_ROAM_PART1_97");
        WLD_INSERTNPC(59067, "FP_ROAM_PART1_92");
        WLD_INSERTNPC(59068, "FP_ROAM_PART1_94");
    };
    if ((BOUNTY_WHITEBEAR_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_WHITEBEAR_SPAWNINARCHOLOS = 2;
        PRINTD("Nied�wiedz gotowy");
        WLD_INSERTNPC(59069, "PART7_PATH_70");
    };
    if ((BOUNTY_SHADOWBEAST_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_SHADOWBEAST_SPAWNINARCHOLOS = 2;
        PRINTD("Cieniostw�r gotowy");
        WLD_INSERTNPC(59070, "PART15_PATH_33");
        BOUNTY_SHADOWBEAST_WAKEUP = 1;
    };
    if ((BOUNTY_GOLEM_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_GOLEM_SPAWNINARCHOLOS = 2;
        PRINTD("Golem gotowy");
        BOUNTY_NOVIZECORPSE();
        WLD_INSERTNPC(59077, "PART8_MOB_12");
    };
    if ((BOUNTY_TROLL_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_TROLL_SPAWNINARCHOLOS = 2;
        PRINTD("Trolle gotowe");
        WLD_INSERTNPC(59078, "FP_PART4_WANTEDPOSTER_TROLL_01");
        WLD_INSERTNPC(59079, "FP_PART4_WANTEDPOSTER_TROLL_02");
        WLD_INSERTNPC(59080, "FP_PART4_WANTEDPOSTER_TROLL_03");
        if ((NPC_ISDEAD(TROLL_PART4_01)) == (FALSE)) {
            B_REMOVENPC(51025);
        };
    };
    if ((BOUNTY_FIREWARAN_SPAWNINARCHOLOS) == (1)) {
        BOUNTY_FIREWARAN_SPAWNINARCHOLOS = 2;
        PRINTD("Jaszczury gotowe");
        WLD_INSERTNPC(59081, "FP_PART4_WANTEDPOSTER_FIREWARAN_01");
        WLD_INSERTNPC(59082, "FP_PART4_WANTEDPOSTER_FIREWARAN_02");
        WLD_INSERTNPC(59083, "FP_PART4_WANTEDPOSTER_FIREWARAN_03");
    };
    if ((BOUNTY_FORESTBUG_SPAWNINARCHOLOS) == (1)) {
        PRINTD("Bestia gotowa");
        WLD_INSERTNPC(59084, "FP_ROAM_PART12_100");
        BOUNTY_FORESTBUG_SPAWNINARCHOLOS = 2;
    };
    if (((QM305_GAMALINARCHOLOS) == (1)) && ((QM305_GAMALINSEWERS) == (2))) {
        B_STARTOTHERROUTINE(DJG_13678_GAMAL, TOT);
        TELEPORTNPCTOWP(54589, DJG_13678_GAMAL.WP);
    };
    if ((QM305_GAMALINSEWERS) == (3)) {
        QM305_GAMALINSEWERS = 4;
        B_STARTOTHERROUTINE(DJG_13678_GAMAL, "QM305_FINISH");
        TELEPORTNPCTOWP(54589, DJG_13678_GAMAL.WP);
    };
    if ((QA401_PABLOSEWERSSPAWN) == (2)) {
        if ((QA401_TELEPORTPABLO) == (FALSE)) {
            QA401_TELEPORTPABLO = TRUE;
            B_STARTOTHERROUTINE(NONE_7004_PABLO, TOT);
            TELEPORTNPCTOWP(55615, NONE_7004_PABLO.WP);
        };
    };
    if ((Q404_JONSTATUS) == (2)) {
        WLD_INSERTNPC(59089, "WOLFSDEN_CITADEL_HELP_HERO");
        B_KILLNPC(59089);
        Q404_JONSTATUS = 4;
    };
    if ((Q404_JONSTATUS) >= (1)) {
        if ((Q404_REMOVEKURT) == (FALSE)) {
            Q404_REMOVEKURT = TRUE;
            B_REMOVENPC(57510);
            WLD_INSERTITEM(39906, "FP_PARTM6_KURT_LETTER");
            Q308_REMOVEREFUGEEINCITY();
            FF_APPLYONCEEXTGT(64115, 0, -(1));
            B_STARTOTHERROUTINE(NONE_2246_BRADLOCK, "AFTERMINE");
            NPC_REFRESH(NONE_2246_BRADLOCK);
            B_STARTOTHERROUTINE(NONE_6396_VOLKERGUARD, "Q308");
            B_STARTOTHERROUTINE(NONE_6397_VOLKERGUARD, "Q308");
            WLD_INSERTNPC(53151, "PARTM4_GUARDSMAN_01");
            WLD_INSERTNPC(53153, "PARTM4_GUARDSMAN_02");
            WLD_INSERTNPC(53155, "PARTM4_VOLKERHOUSE_OUTSIDE_SMALLTALK_01");
        };
    };
    if ((Q514_FIRSTTIMEINVOLFZACKE) == (1)) {
        Q514_FIRSTTIMEINVOLFZACKE = 2;
        PRINTD("NPC posprz�tane");
        Q514_REMOVEARCHOLOSMAINLANDNPC();
    };
    if ((Q514_FINISHVOLFZACKE) == (1)) {
        Q514_FINISHVOLFZACKE = 2;
        B_LOGENTRY(TOPIC_Q514, LOG_Q514_FINISH);
        LOG_SETSTATUS(_@(MIS_Q514), TOPIC_Q514, LOG_SUCCESS);
        Q514_PREPAREWOLFSONS();
        Q601_PREPARENOVIZE();
        Q601_TELEPORTSILBACHNPC();
        WLD_SENDTRIGGER("Q515_BLOCKVOLFZACKE");
        if ((HLP_ISVALIDNPC(KDW_203_RIORDIAN)) == (FALSE)) {
            PRINTD("Riordian istnieje again!");
            WLD_INSERTNPC(56616, "PART5_VOLFZACKE_MAINGATE");
            B_RIORDIANAFTERVOLFZACKE();
        } else {
            B_RIORDIANAFTERVOLFZACKE();
        };
    };
}

func void LUNADOOR_CLOSED_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int LUNADOOR_CLOSED_COUNT;
    if ((LUNADOOR_CLOSED_COUNT) == (0)) {
        PRINTD("Rozpoczynam - LUNADOOR_CLOSED_APPLY");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("CHAPTER5_MOVER_DOORLUNA");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("CHAPTER5_VOB_DOORLUNA", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("CHAPTER5_MOVER_DOORLUNA");
        LUNADOOR_CLOSED_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - LUNADOOR_CLOSED_APPLY");
        B_REMOVENPC(53066);
        if (HLP_ISVALIDNPC(NONE_13749_SCARMAN)) {
            if (NPC_ISDEAD(NONE_13749_SCARMAN)) {
                B_REMOVENPC(53490);
            };
        };
        if (HLP_ISVALIDNPC(VLK_13687_CITIZEN)) {
            if (NPC_ISDEAD(VLK_13687_CITIZEN)) {
                B_REMOVENPC(52249);
            };
        };
        if (HLP_ISVALIDNPC(SLD_13686_ARAXOS)) {
            if (NPC_ISDEAD(SLD_13686_ARAXOS)) {
                B_REMOVENPC(52243);
            };
        };
        WLD_INSERTNPC(53069, "PARTM3_PAWNSHOP_02");
        CHANGEVOBCOLLISION("CHAPTER5_VOB_DOORLUNA", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(64115);
        LUNADOOR_CLOSED_COUNT = 0;
    };
}

