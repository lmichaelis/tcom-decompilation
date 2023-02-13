var int SQ316_MARVINCURRENT_BEER;
var int SQ316_MARVINCURRENT_OWBEER;
var int SQ316_MARVINCURRENT_BEER_02;
var int SQ316_MARVINCURRENT_BEER_03;
var int SQ316_MARVINCURRENT_DARKBEER;
var int SQ316_GREGORBEERCOUNT;
var int SQ316_GREGORBEEROWCOUNT;
var int SQ316_GREGORBEER02COUNT;
var int SQ316_GREGORBEER03COUNT;
var int SQ316_GREGORDARKBEERCOUNT;
func void DIA_GREGOR_SQ316_NOSTUFF() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    B_SAY(SELF, OTHER, "$NOITEMS");
    AI_RESETFACEANI(SELF);
}

func void DIA_GREGOR_SQ316_GIVESTUFF() {
    SQ316_GIVEGREGORALLSTUFF = TRUE;
    B_GIVEINVITEMS(OTHER, SELF, 34203, SQ316_GREGORPRICE);
    AI_LOGENTRY(TOPIC_SQ316, LOG_SQ316_RANSOMPAID);
    B_GIVEINVITEMS(OTHER, SELF, 33978, 10);
}

func void SQ316_MARVIN_GIVEDARK() {
    SQ316_MARVINCURRENT_DARKBEER = NPC_HASITEMS(OTHER, 36364);
    SQ316_GREGORDARKBEERCOUNT = NPC_HASITEMS(SELF, 36364);
    if ((NPC_HASITEMS(OTHER, 36364)) >= (1)) {
        if ((NPC_HASITEMS(OTHER, 36364)) < ((20) - (SQ316_GREGORBEERCOUNT))) {
        } else {
            SQ316_GREGORBEERCOUNT = (SQ316_GREGORBEERCOUNT) + (SQ316_MARVINCURRENT_DARKBEER);
        };
    };
    DIA_GREGOR_SQ316_GIVESTUFF();
}

func void SQ316_MARVIN_GIVEBEER03() {
    SQ316_MARVINCURRENT_BEER_03 = NPC_HASITEMS(OTHER, 36375);
    SQ316_GREGORBEER03COUNT = NPC_HASITEMS(SELF, 36375);
    if ((NPC_HASITEMS(OTHER, 36375)) >= (1)) {
        if ((NPC_HASITEMS(OTHER, 36375)) < ((20) - (SQ316_GREGORBEERCOUNT))) {
        } else {
            SQ316_GREGORBEERCOUNT = (SQ316_GREGORBEERCOUNT) + (SQ316_MARVINCURRENT_BEER_03);
        };
    };
    if ((SQ316_GREGORBEERCOUNT) < (20)) {
        SQ316_MARVIN_GIVEDARK();
    };
    DIA_GREGOR_SQ316_GIVESTUFF();
}

func void SQ316_MARVIN_GIVEBEER02() {
    SQ316_MARVINCURRENT_BEER_02 = NPC_HASITEMS(OTHER, 36368);
    SQ316_GREGORBEER02COUNT = NPC_HASITEMS(SELF, 36368);
    if ((NPC_HASITEMS(OTHER, 36368)) >= (1)) {
        if ((NPC_HASITEMS(OTHER, 36368)) < ((20) - (SQ316_GREGORBEERCOUNT))) {
        } else {
            SQ316_GREGORBEERCOUNT = (SQ316_GREGORBEERCOUNT) + (SQ316_MARVINCURRENT_BEER_02);
        };
    };
    if ((SQ316_GREGORBEERCOUNT) < (20)) {
        SQ316_MARVIN_GIVEBEER03();
    };
    DIA_GREGOR_SQ316_GIVESTUFF();
}

func void SQ316_MARVIN_GIVEOWBEER() {
    SQ316_MARVINCURRENT_OWBEER = NPC_HASITEMS(OTHER, 36363);
    SQ316_GREGORBEEROWCOUNT = NPC_HASITEMS(SELF, 36363);
    if ((NPC_HASITEMS(OTHER, 36363)) >= (1)) {
        if ((NPC_HASITEMS(OTHER, 36363)) < ((20) - (SQ316_GREGORBEERCOUNT))) {
        } else {
            SQ316_GREGORBEERCOUNT = (SQ316_GREGORBEERCOUNT) + (SQ316_MARVINCURRENT_OWBEER);
        };
    };
    if ((SQ316_GREGORBEERCOUNT) < (20)) {
        SQ316_MARVIN_GIVEBEER02();
    };
    DIA_GREGOR_SQ316_GIVESTUFF();
}

func void SQ316_MARVIN_GIVEBEER() {
    SQ316_MARVINCURRENT_BEER = NPC_HASITEMS(OTHER, 33984);
    if ((NPC_HASITEMS(OTHER, 33984)) >= (20)) {
        B_GIVEINVITEMS(OTHER, SELF, 33984, 20);
        SQ316_GREGORBEERCOUNT = 20;
        DIA_GREGOR_SQ316_GIVESTUFF();
    };
    B_GIVEINVITEMS(OTHER, SELF, 33984, SQ316_MARVINCURRENT_BEER);
    SQ316_GREGORBEERCOUNT = (SQ316_GREGORBEERCOUNT) + (SQ316_MARVINCURRENT_BEER);
    SQ316_MARVIN_GIVEOWBEER();
}

func void SQ316_CHECKMARVINBEER() {
    if (((NPC_HASITEMS(HERO, 33978)) >= (10)) && ((NPC_HASITEMS(HERO, 34203)) >= (SQ316_GREGORPRICE))) {
        SQ316_MARVINCURRENT_BEER = NPC_HASITEMS(OTHER, 33984);
        SQ316_MARVINCURRENT_OWBEER = NPC_HASITEMS(OTHER, 36363);
        SQ316_MARVINCURRENT_BEER_02 = NPC_HASITEMS(OTHER, 36368);
        SQ316_MARVINCURRENT_BEER_03 = NPC_HASITEMS(OTHER, 36375);
        SQ316_MARVINCURRENT_DARKBEER = NPC_HASITEMS(OTHER, 36364);
        if ((((((SQ316_MARVINCURRENT_BEER) + (SQ316_MARVINCURRENT_OWBEER)) + (SQ316_MARVINCURRENT_BEER_02)) + (SQ316_MARVINCURRENT_BEER_03)) + (SQ316_MARVINCURRENT_DARKBEER)) >= (20)) {
            SQ316_MARVIN_GIVEBEER();
        } else {
            DIA_GREGOR_SQ316_NOSTUFF();
        };
    };
    DIA_GREGOR_SQ316_NOSTUFF();
}

func void SQ316_SWAMPWARAN() {
    PRINTD("Spawn warana!");
    WLD_INSERTNPC(51038, "FP_ROAM_PART17_SQ316");
}

func void SQ316_DESERTERSATTACK() {
    if ((NPC_HASEQUIPPEDMELEEWEAPON(PIR_1301_GREGOR)) == (FALSE)) {
        CREATEINVITEMS(PIR_1301_GREGOR, 34064, 1);
        AI_EQUIPBESTMELEEWEAPON(PIR_1301_GREGOR);
    };
    if ((NPC_HASEQUIPPEDMELEEWEAPON(PIR_1302_MORTY)) == (FALSE)) {
        CREATEINVITEMS(PIR_1302_MORTY, 39549, 1);
        AI_EQUIPBESTMELEEWEAPON(PIR_1302_MORTY);
    };
    B_IMMEDIATEATTACKPLAYER(PIR_1301_GREGOR, AR_KILL);
    PIR_1301_GREGOR.FLAGS = 0;
    PIR_1301_GREGOR.GUILD = GIL_NONE;
    PIR_1301_GREGOR.AIVAR[52] = TRUE;
    SQ316_FIGHTWITHMILITIA = 1;
    B_STARTOTHERROUTINE(PIR_1302_MORTY, "SQ316");
    NPC_REFRESH(PIR_1302_MORTY);
    B_IMMEDIATEATTACKPLAYER(PIR_1302_MORTY, AR_KILL);
    PIR_1302_MORTY.FLAGS = 0;
    PIR_1302_MORTY.GUILD = GIL_NONE;
    PIR_1302_MORTY.AIVAR[52] = TRUE;
}

func void SQ316_ARAXOSHUNTERISDEAD() {
    FF_APPLYONCEEXTGT(62450, 0, -(1));
}

func void SQ316_ARAXOSHUNTERISDEAD_APPLY() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int SQ316_ARAXOSHUNTERISDEAD_COUNT;
    if ((SQ316_ARAXOSHUNTERISDEAD_COUNT) == (0)) {
        PRINTD("Rozpoczynam - SQ316_AraxosHunterIsDead_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("SQ316_CORPSEARAXOS");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("SQ316_ARAXOSBODY", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("SQ316_CORPSEARAXOS");
        SQ316_ARAXOSHUNTERISDEAD_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - SQ316_AraxosHunterIsDead_Apply");
        CHANGEVOBCOLLISION("SQ316_ARAXOSBODY", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62450);
        SQ316_ARAXOSHUNTERISDEAD_COUNT = 0;
    };
}

func void SQ316_GREGORANDMORTYLEAVE() {
    NPC_EXCHANGEROUTINE(PIR_1301_GREGOR, "TAVERN");
    B_STARTOTHERROUTINE(PIR_1302_MORTY, "TAVERN");
    NPC_REFRESH(PIR_1302_MORTY);
    HERO.AIVAR[4] = FALSE;
}
