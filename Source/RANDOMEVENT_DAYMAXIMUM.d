func void RANDOMEVENT_DAYMAXIMUM() {
    if ((RND_DOKTOR) == (FALSE)) {
        if ((RND_TOTALSPAWNED) < (RNG_EVENTS_MAX)) {
            if ((KAPITEL) == (1)) {
                PRINTD("Mo�liwe eventy: 1");
                RND_DAYMAXIMUM = 1;
            } else if ((KAPITEL) == (2)) {
                PRINTD("Mo�liwe eventy: 1");
                RND_DAYMAXIMUM = 1;
            } else if (((KAPITEL) == (3)) || ((KAPITEL) == (4))) {
                PRINTD("Mo�liwe eventy: 1");
                RND_DAYMAXIMUM = 1;
            } else if ((KAPITEL) == (5)) {
                PRINTD("Mo�liwe eventy: 2");
                RND_DAYMAXIMUM = 2;
            } else {
                PRINTD("Eventy niemo�liwe.");
                RND_DAYMAXIMUM = -(1);
            };
        } else {
            PRINTD("Jakim� cudem wyspawni�e� wszystko.");
            RND_DAYMAXIMUM = -(1);
        };
    };
    PRINTD("Eventy s� na amfetaminie.");
    RND_DAYMAXIMUM = RNG_EVENTS_MAX;
}

func void RANDOMEVENTCONTROLER() {
    if ((RANDOMEVENT_DAYMAXIMUMTODAY) == (FALSE)) {
        RANDOMEVENT_DAYMAXIMUM();
        RANDOMEVENT_DAYMAXIMUMTODAY = TRUE;
    };
    if (((RND_TURNOFF) == (TRUE)) && ((RND_TODAYSPAWNED) >= (RND_DAYMAXIMUM))) {
        if ((RND_DAYOFTURNOFF) != (WLD_GETDAY())) {
            RND_TURNOFF = FALSE;
            RND_TODAYSPAWNED = 0;
            RND_DAYCOUNTER = 0;
            RANDOMEVENT_DAYMAXIMUMTODAY = FALSE;
            PRINTD("Losowe eventy znowu dzia�aj�!");
        };
    };
    if (((RND_TURNOFF) == (FALSE)) && ((RND_TODAYSPAWNED) >= (RND_DAYMAXIMUM))) {
        RND_DAYCOUNTER = 0;
        RND_TURNOFF = TRUE;
        RANDOMEVENT_DAYMAXIMUMTODAY = FALSE;
        RND_DAYOFTURNOFF = WLD_GETDAY();
        PRINTD("Losowe eventy STOP!");
    };
    if ((RND_DAYCOUNTER) >= (4)) {
        RND_DAYCOUNTER = 0;
        RND_TODAYSPAWNED = RND_DAYMAXIMUM;
        RANDOMEVENT_DAYMAXIMUMTODAY = FALSE;
        RND_DAYOFTURNOFF = WLD_GETDAY();
        PRINTD("Przez 4 dni nic sie nie dzia�o");
        PRINTD("Losowe eventy STOP!");
    };
}

func void EVENTSMANAGERSPAWN_TRAPS() {
    if ((LOG_GETSTATUS(MIS_Q103)) == (LOG_SUCCESS)) {
        EVENTSMANAGER_TRAP20();
        EVENTSMANAGER_TRAP36();
        EVENTSMANAGER_TRAP56();
        EVENTSMANAGER_TRAP64();
        if ((NPC_ISINSTATE(MIL_710_FOLKARD, 61599)) == (FALSE)) {
            if (((LOG_GETSTATUS(MIS_SQ109)) == (LOG_SUCCESS)) || ((SQ109_ROLFDIED) == (TRUE))) {
                EVENTSMANAGER_AV_FOLKARD();
            };
        };
        if ((NPC_ISINSTATE(MIL_709_KIPPER, 61599)) == (FALSE)) {
            EVENTSMANAGER_AV_KIPPER();
        };
        if ((NPC_ISINSTATE(MIL_708_DICKON, 61599)) == (FALSE)) {
            EVENTSMANAGER_AV_FELIX();
        };
        if ((NPC_ISINSTATE(MIL_707_HARRY, 61599)) == (FALSE)) {
            EVENTSMANAGER_AV_HARRY();
        };
    };
    if ((KAPITEL) >= (2)) {
        EVENTSMANAGER_TRAP18();
        EVENTSMANAGER_TRAPFELLER();
        EVENTSMANAGER_TRAP37();
        EVENTSMANAGER_TRAP65();
        EVENTSMANAGER_TRAP66();
        EVENTSMANAGER_TRAP40();
        EVENTSMANAGER_TRAP68();
        EVENTSMANAGER_TRAP67();
        EVENTSMANAGER_TRAP70();
    };
    if ((LOG_GETSTATUS(MIS_Q202)) == (LOG_SUCCESS)) {
        EVENTSMANAGER_TRAPMASTERGAME();
        EVENTSMANAGER_TRAP01();
        EVENTSMANAGER_TRAP02();
        EVENTSMANAGER_TRAP07();
        EVENTSMANAGER_TRAP09();
        EVENTSMANAGER_TRAP10();
        EVENTSMANAGER_TRAP58();
        EVENTSMANAGER_TRAP11();
        EVENTSMANAGER_TRAP69();
    };
    if ((KAPITEL) >= (3)) {
        EVENTSMANAGER_TRAP16();
        EVENTSMANAGER_TRAP21();
        EVENTSMANAGER_TRAP54();
        EVENTSMANAGER_TRAP22();
        EVENTSMANAGER_TRAP57();
        EVENTSMANAGER_TRAP23();
    };
    if ((KAPITEL) >= (4)) {
        EVENTSMANAGER_TRAPDA();
        EVENTSMANAGER_TRAP04();
        EVENTSMANAGER_TRAP05();
        EVENTSMANAGER_TRAP06();
        EVENTSMANAGER_TRAP06B();
        EVENTSMANAGER_TRAP19();
        EVENTSMANAGER_TRAP25();
        EVENTSMANAGER_TRAP30();
        EVENTSMANAGER_TRAP31();
        EVENTSMANAGER_TRAP32();
        EVENTSMANAGER_TRAP33();
        EVENTSMANAGER_TRAP34();
        EVENTSMANAGER_TRAP35();
        EVENTSMANAGER_TRAP43();
        EVENTSMANAGER_TRAP44();
        EVENTSMANAGER_TRAP45();
        EVENTSMANAGER_TRAP62();
        EVENTSMANAGER_TRAP63();
        EVENTSMANAGER_TRAP38();
        EVENTSMANAGER_NS74();
        EVENTSMANAGER_TRAP46();
        EVENTSMANAGER_TRAP47();
        EVENTSMANAGER_TRAP48();
        EVENTSMANAGER_TRAP49();
        EVENTSMANAGER_TRAP50();
        EVENTSMANAGER_TRAP51();
        EVENTSMANAGER_CULUSSPAWNP1();
        EVENTSMANAGER_CULUSSPAWNP2();
        EVENTSMANAGER_CULUSSPAWNP3();
        EVENTSMANAGER_TRAP03();
        EVENTSMANAGER_TRAP71();
    };
    if ((KAPITEL) >= (5)) {
        EVENTSMANAGER_TRAP08();
        EVENTSMANAGER_TRAP60();
        EVENTSMANAGER_TRAP24();
        EVENTSMANAGER_TRAP26();
        EVENTSMANAGER_TRAP39();
        EVENTSMANAGER_TRAP42();
        EVENTSMANAGER_TRAP55();
        EVENTSMANAGER_TRAP41();
    };
    EVENTSMANAGER_TRAPM7();
    EVENTSMANAGER_TRAP52();
    EVENTSMANAGER_TRAP53();
    EVENTSMANAGER_TRAP59();
    EVENTSMANAGER_TRAPHA();
    if ((SLUMSGUARDIAN_NEWTRAPS) == (TRUE)) {
        if ((KAPITEL) >= (2)) {
            EVENTSMANAGER_TRAP12();
            EVENTSMANAGER_TRAP13();
            EVENTSMANAGER_TRAP14();
            EVENTSMANAGER_TRAP15();
        };
        if ((KAPITEL) >= (3)) {
            EVENTSMANAGER_TRAP27();
            EVENTSMANAGER_TRAP28();
            EVENTSMANAGER_TRAP29();
        };
    };
}

func void EVENTSMANAGER_NICESURPRISES() {
    if ((LOG_GETSTATUS(MIS_Q103)) == (LOG_SUCCESS)) {
        EVENTSMANAGER_NS15();
        EVENTSMANAGER_NS23();
        EVENTSMANAGER_NS31();
        EVENTSMANAGER_NS32();
        EVENTSMANAGER_NS40();
        EVENTSMANAGER_NS21();
        EVENTSMANAGER_RNG_PAEVENTSWAMP();
    };
    if ((KAPITEL) >= (2)) {
        EVENTSMANAGER_NS19();
        EVENTSMANAGER_NS63();
        EVENTSMANAGER_NS62();
        EVENTSMANAGER_NS51();
        EVENTSMANAGER_NS52();
        EVENTSMANAGER_NS30();
        EVENTSMANAGER_NS70();
        EVENTSMANAGER_NS24();
    };
    if ((LOG_GETSTATUS(MIS_Q202)) == (LOG_SUCCESS)) {
        EVENTSMANAGER_NS01();
        EVENTSMANAGER_NS59();
        EVENTSMANAGER_NS60();
        EVENTSMANAGER_NS61();
        EVENTSMANAGER_NS64();
        if ((LOG_GETSTATUS(MIS_FMQ001)) != (LOG_RUNNING)) {
            EVENTSMANAGER_NS02();
        };
        EVENTSMANAGER_NS66();
        EVENTSMANAGER_NS03();
        EVENTSMANAGER_NS25();
        EVENTSMANAGER_NS39();
        EVENTSMANAGER_NS47();
        EVENTSMANAGER_NS04();
        EVENTSMANAGER_NS05();
        EVENTSMANAGER_NS06();
        EVENTSMANAGER_NS07();
        EVENTSMANAGER_NS08();
        EVENTSMANAGER_NS09();
        EVENTSMANAGER_NS55();
        EVENTSMANAGER_NS57();
        EVENTSMANAGER_NS69();
    };
    if ((KAPITEL) >= (3)) {
        EVENTSMANAGER_NS62_NEW();
        EVENTSMANAGER_NS65();
        EVENTSMANAGER_NS10();
        EVENTSMANAGER_NS29();
        EVENTSMANAGER_NS33();
        EVENTSMANAGER_NS11();
        EVENTSMANAGER_NS13();
        EVENTSMANAGER_NS26();
        EVENTSMANAGER_NS27();
        EVENTSMANAGER_NS28();
        EVENTSMANAGER_NS36();
        EVENTSMANAGER_NS46();
        EVENTSMANAGER_NS49();
        EVENTSMANAGER_NS50();
        EVENTSMANAGER_NS71();
    };
    if ((KAPITEL) >= (4)) {
        EVENTSMANAGER_NS14();
        EVENTSMANAGER_NS16();
        EVENTSMANAGER_NS35();
        EVENTSMANAGER_NS48();
        EVENTSMANAGER_NS56();
        EVENTSMANAGER_NS37();
        EVENTSMANAGER_NS44();
        EVENTSMANAGER_NS17();
        EVENTSMANAGER_NS18();
        EVENTSMANAGER_NS22();
        EVENTSMANAGER_NS34();
        EVENTSMANAGER_NS_FABIOZOMBIE();
        EVENTSMANAGER_NS68();
        EVENTSMANAGER_NS73();
    };
    if ((KAPITEL) >= (5)) {
        EVENTSMANAGER_NS38();
        EVENTSMANAGER_NS45();
        if ((LOG_GETSTATUS(MIS_Q501)) == (LOG_SUCCESS)) {
            EVENTSMANAGER_NS42();
            EVENTSMANAGER_NS53();
            EVENTSMANAGER_NS54();
        };
    };
    if ((KAPITEL) == (4)) {
        EVENTSMANAGER_NS41();
        EVENTSMANAGER_NS43();
        EVENTSMANAGER_NS58();
        EVENTSMANAGER_NS72();
        EVENTSMANAGER_NS72_TRIAL();
    };
    if ((KAPITEL) >= (2)) {
        EVENTSMANAGER_NS67();
    };
    if ((KAPITEL) < (5)) {
        if ((RND_NOSCARYEVENTS) == (FALSE)) {
            EVENTSMANAGER_RNG_PAEVENT01();
            EVENTSMANAGER_RNG_PAEVENT02();
            EVENTSMANAGER_RNG_PAEVENT03();
            EVENTSMANAGER_RNG_PAEVENT04();
            EVENTSMANAGER_RNG_PAEVENT05();
            EVENTSMANAGER_RNG_PAEVENT06();
            EVENTSMANAGER_RNG_PAEVENT07();
            EVENTSMANAGER_RNG_PAEVENT08();
            EVENTSMANAGER_RNG_PAEVENT09();
            EVENTSMANAGER_RNG_PAEVENT10();
            EVENTSMANAGER_RNG_PAEVENT11();
            EVENTSMANAGER_RNG_PAEVENT12();
        };
    };
}

func void RANDOMEVENTOTHER() {
    EVENTSMANAGER_ACTIVATETRAPSWITHOUTDIALOGE();
    EVENTSMANAGER_CASTAWAYEVENT();
    EVENTSMANAGER_TRAPFROGGY();
    EVENTSMANAGER_SCAVTRAP();
    EVENTSMANAGER_RINGEVENT();
    EVENTSMANAGER_NS21_SCREAM();
    EVENTSMANAGER_TRAP03_CITIZENBEATEN();
    EVENTSMANAGER_NS65_DESPAWN();
    EVENTSMANAGER_NS66_DESPAWN();
    EVENTSMANAGER_NS17_DESPAWN();
    EVENTSMANAGER_RND_TROLLTRAP();
    EVENTSMANAGER_APPARITIONTRAP();
    EVENTSMANAGER_TRAP62_FIGHTISOVER();
    EVENTSMANAGER_TRAP63_FIGHTISOVER();
    EVENTSMANAGER_TRAP16_FIGHTISOVER();
    EVENTSMANAGER_FAQ003_AFTERMATCH();
    EVENTSMANAGER_TRAP12_RUNNING();
    EVENTSMANAGER_TRAP23_FIGHT();
    EVENTSMANAGER_NS03_MEETING();
    EVENTSMANAGER_NS17_ANNOYINGWALK();
    EVENTSMANAGER_NS42_RUNNING();
    EVENTSMANAGER_NS36_CURSE();
    EVENTSMANAGER_NS44_TRANSFORM();
    EVENTSMANAGER_NS38_DESPAWN();
    EVENTSMANAGER_NS45_HOOLIGANS();
    if ((LOG_GETSTATUS(MIS_QM401)) == (LOG_SUCCESS)) {
        EVENTSMANAGER_RNG_SALVIISGONE();
    };
    EVENTSMANAGER_RNG_GETORYKISGONE();
    EVENTSMANAGER_RNG_HAVENISGONE();
    EVENTSMANAGER_NS_FABIOZOMBIE_ADDITIONAL();
    EVENTSMANAGER_TRAP55_RIP();
    EVENTSMANAGER_RNG_PAEVENT01_REMOVE();
    EVENTSMANAGER_RNG_PAEVENT02_REMOVE();
    EVENTSMANAGER_RNG_PAEVENT03_REMOVE();
    EVENTSMANAGER_RNG_PAEVENT04_REMOVE();
    EVENTSMANAGER_RNG_PAEVENT05_REMOVE();
    EVENTSMANAGER_RNG_PAEVENT06_REMOVE();
    EVENTSMANAGER_RNG_PAEVENT07_REMOVE();
    EVENTSMANAGER_RNG_PAEVENT08_REMOVE();
    EVENTSMANAGER_RNG_PAEVENT09_REMOVE();
    EVENTSMANAGER_RNG_PAEVENT10_REMOVE();
    EVENTSMANAGER_RNG_PAEVENT11_REMOVE();
    EVENTSMANAGER_RNG_PAEVENT12_REMOVE();
    EVENTSMANAGER_RNG_PAEVENTSWAMP_REMOVE();
    if ((KAPITEL) == (2)) {
        EVENTSMANAGER_FAKEJORNSEVENTS();
    };
    if ((KAPITEL) == (5)) {
        B_REMOVEALLWSGHOSTS();
    };
}

func void EVENTSMANAGER_TRAPS() {
    if ((RANDOMEVENTSOFF) == (FALSE)) {
        RANDOMEVENTCONTROLER();
        if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
            RANDOMEVENTOTHER();
        } else if ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN)) {
            EVENTSMANAGER_RNG_VTERRIFICEVENTS();
        } else if ((CURRENTLEVEL) == (ARCHOLOS_SILVERMINE_ZEN)) {
            EVENTSMANAGER_RNG_SILVERMINEEVENTSALL();
        };
        if (((RND_TURNOFF) == (FALSE)) || ((RND_DAYMAXIMUM) != (-(1)))) {
            B_RANDOMEVENT_RANDOMIZER();
            if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
                EVENTSMANAGERSPAWN_TRAPS();
                EVENTSMANAGER_NICESURPRISES();
            } else if ((CURRENTLEVEL) == (ARCHOLOS_SEWERS_ZEN)) {
                EVENTSMANAGER_RNG_SEVENTSALL();
            };
        };
    };
}

func void M1_DA3_11277_BEGGAR_TRAP() {
    B_IMMEDIATEATTACKPLAYER(VLK_11277_BEGGAR, AR_KILL);
    VLK_11277_BEGGAR.FLAGS = 0;
    VLK_11277_BEGGAR.GUILD = GIL_NONE;
    VLK_11277_BEGGAR.AIVAR[52] = TRUE;
    B_IMMEDIATEATTACKPLAYER(VLK_11278_BEGGAR, AR_KILL);
    VLK_11278_BEGGAR.FLAGS = 0;
    VLK_11278_BEGGAR.GUILD = GIL_NONE;
    VLK_11278_BEGGAR.AIVAR[52] = TRUE;
    B_IMMEDIATEATTACKPLAYER(VLK_11279_BEGGAR, AR_KILL);
    VLK_11279_BEGGAR.FLAGS = 0;
    VLK_11279_BEGGAR.AIVAR[52] = TRUE;
    VLK_11279_BEGGAR.GUILD = GIL_NONE;
    B_IMMEDIATEATTACKPLAYER(VLK_11280_BEGGAR, AR_KILL);
    VLK_11280_BEGGAR.FLAGS = 0;
    VLK_11280_BEGGAR.AIVAR[52] = TRUE;
    VLK_11280_BEGGAR.GUILD = GIL_NONE;
    B_IMMEDIATEATTACKPLAYER(VLK_11281_BEGGAR, AR_KILL);
    VLK_11281_BEGGAR.FLAGS = 0;
    VLK_11281_BEGGAR.AIVAR[52] = TRUE;
    VLK_11281_BEGGAR.GUILD = GIL_NONE;
    B_IMMEDIATEATTACKPLAYER(VLK_11282_BEGGAR, AR_KILL);
    VLK_11282_BEGGAR.FLAGS = 0;
    VLK_11282_BEGGAR.AIVAR[52] = TRUE;
    VLK_11282_BEGGAR.GUILD = GIL_NONE;
}

func void P9_13631_RENEGADES_TRAP() {
    NONE_13631_RENEGADE.NAME[0] = NAME_RENEGADE;
    NONE_13630_RENEGADE.NAME[0] = NAME_RENEGADE;
    NONE_13631_RENEGADE.AIVAR[79] = TRUE;
    NONE_13630_RENEGADE.AIVAR[79] = TRUE;
    B_IMMEDIATEATTACKPLAYER(NONE_13631_RENEGADE, AR_KILL);
    NONE_13631_RENEGADE.FLAGS = 0;
    NONE_13631_RENEGADE.GUILD = GIL_NONE;
    NONE_13631_RENEGADE.AIVAR[52] = TRUE;
    B_IMMEDIATEATTACKPLAYER(NONE_13630_RENEGADE, AR_KILL);
    NONE_13630_RENEGADE.FLAGS = 0;
    NONE_13630_RENEGADE.GUILD = GIL_NONE;
    NONE_13630_RENEGADE.AIVAR[52] = TRUE;
}

func void M3_13779_HOBO_TRAP() {
    B_IMMEDIATEATTACKPLAYER(VLK_13779_HOBO, AR_KILL);
    VLK_13779_HOBO.FLAGS = 0;
    VLK_13779_HOBO.GUILD = GIL_NONE;
    VLK_13779_HOBO.AIVAR[52] = TRUE;
    B_IMMEDIATEATTACKPLAYER(VLK_13780_HOBO, AR_KILL);
    VLK_13780_HOBO.FLAGS = 0;
    VLK_13780_HOBO.GUILD = GIL_NONE;
    VLK_13780_HOBO.AIVAR[52] = TRUE;
    TRAP57_ATTACK = TRUE;
}

