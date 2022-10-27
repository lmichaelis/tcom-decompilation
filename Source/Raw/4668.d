func void EVENTSMANAGER_KQ402() {
    if ((LOG_GETSTATUS(MIS_KQ402)) != (LOG_RUNNING)) {
        return;
    };
    if ((KQ402_ARWIDCUTSCENE) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM3_PATH_12")) <= (450)) {
            KQ402_ARWIDCUTSCENE = 2;
            CUTSCENE_START(0x168a7);
        };
    };
    if ((KQ402_GUARDCANTTALK) == (1)) {
        if ((KQ402_INSIDESTORAGE_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "HARBOUR_STORAGE03_03")) <= (350)) {
                KQ402_INSIDESTORAGE_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_KQ402, LOG_KQ402_STORAGE);
            };
        };
        if ((KQ402_ARWIDRUN_CHANGERTN) == (FALSE)) {
            if (((NPC_GETDISTTOWP(MIL_4017_ARWID_KQ402, "HARBOUR_STORAGE03_01")) <= (400)) && ((NPC_ISINSTATE(MIL_4017_ARWID_KQ402, 0xf09f)) == (FALSE))) {
                KQ402_ARWIDRUN_CHANGERTN = TRUE;
                B_STARTOTHERROUTINE(MIL_11074_MILITIA, "KQ402_SMALLTALK");
                NPC_REFRESH(MIL_11074_MILITIA);
                B_STARTOTHERROUTINE(MIL_4017_ARWID_KQ402, "KQ402_SMALLTALK");
                NPC_REFRESH(MIL_4017_ARWID_KQ402);
            };
        };
        if ((KQ402_ENOUGHPOTIONS_01) == (FALSE)) {
            if ((MOB_HASITEMS("KQ402_CHEST_01", 0x91cb)) >= (1)) {
                KQ402_ENOUGHPOTIONS_01 = TRUE;
                KQ402_CHECKCHEST();
            };
        };
        if ((KQ402_ENOUGHPOTIONS_02) == (FALSE)) {
            if ((MOB_HASITEMS("KQ402_CHEST_02", 0x91cb)) >= (1)) {
                KQ402_ENOUGHPOTIONS_02 = TRUE;
                KQ402_CHECKCHEST();
            };
        };
        if ((KQ402_ENOUGHPOTIONS_03) == (FALSE)) {
            if (((MOB_HASITEMS("KQ402_CHEST_03", 0x91cb)) >= (1)) || (((MOB_HASITEMS("KQ402_CHEST_03", 0x91cb)) >= (1)) && ((MOB_HASITEMS("KQ402_CHEST_03", 0x846f)) >= (1)))) {
                KQ402_ENOUGHPOTIONS_03 = TRUE;
                KQ402_CHECKCHEST();
            };
        };
        if ((KQ402_ENOUGHPOTIONS_04) == (FALSE)) {
            if ((MOB_HASITEMS("KQ402_CHEST_04", 0x91cb)) >= (1)) {
                KQ402_ENOUGHPOTIONS_04 = TRUE;
                KQ402_CHECKCHEST();
            };
        };
        if ((KQ402_ENOUGHPOTIONS_05) == (FALSE)) {
            if ((MOB_HASITEMS("KQ402_CHEST_05", 0x91cb)) >= (1)) {
                KQ402_ENOUGHPOTIONS_05 = TRUE;
                KQ402_CHECKCHEST();
            };
        };
    };
    if ((KQ402_REMOVEARMOR_V1) == (0)) {
        if ((NPC_HASITEMS(HERO, 0x91c9)) >= (1)) {
            KQ402_REMOVEARMOR_V1 = 1;
            NPC_REMOVEINVITEMS(HERO, 0x91c9, 1);
            CREATEINVITEMS(HERO, 0x846f, 1);
            PRINTD("Zamieniono zbrojê");
        };
    };
    if ((KQ402_REMOVEARMOR_V2) == (0)) {
        if ((NPC_HASITEMS(HERO, 0x91ca)) >= (1)) {
            KQ402_REMOVEARMOR_V2 = 1;
            NPC_REMOVEINVITEMS(HERO, 0x91ca, 1);
            CREATEINVITEMS(HERO, 0x846f, 1);
            PRINTD("Zamieniono zbrojê");
        };
    };
    if ((KQ402_RUSTWAITARMOR) == (1)) {
        if ((KQ402_RUSTWAITARMOR_DAY) <= ((WLD_GETDAY()) - (1))) {
            KQ402_RUSTWAITARMOR = 2;
            KQ402_CHANGEWOODCHESTS();
        };
    };
    if ((KQ402_RAPORTABOUTARMORS) == (3)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM3_PATH_162")) <= (500)) {
            KQ402_RAPORTABOUTARMORS = 2;
            CUTSCENE_START(0x168ad);
        };
    };
}

var int EVENTSMANAGER_KQ402.KQ402_INSIDESTORAGE_LOGENTRY = 0;
var int EVENTSMANAGER_KQ402.KQ402_ARWIDRUN_CHANGERTN = 0;
var int EVENTSMANAGER_KQ402.KQ402_ENOUGHPOTIONS_01 = 0;
var int EVENTSMANAGER_KQ402.KQ402_ENOUGHPOTIONS_02 = 0;
var int EVENTSMANAGER_KQ402.KQ402_ENOUGHPOTIONS_03 = 0;
var int EVENTSMANAGER_KQ402.KQ402_ENOUGHPOTIONS_04 = 0;
var int EVENTSMANAGER_KQ402.KQ402_ENOUGHPOTIONS_05 = 0;
