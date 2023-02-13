func void SQ119_ARAXOSTEST_CLEARGOLDNUGGET() {
    SQ119_ARAXOSTEST_COUNTGOLDNUGGET = 0;
}

func void SQ119_OPENARAXOSMINE() {
    SQ119_INSIDEMINE = 1;
    WLD_SENDTRIGGER("ARAXOSMINE_GATE");
    NPC_EXCHANGEROUTINE(SLD_13700_ARAXOS_GUARDMINE, "INSIDEMINE");
}

func void SQ119_LEAVEARAXOSMINE() {
    SQ119_CANSELLGOLDNUGGET = TRUE;
    WLD_SENDTRIGGER("ARAXOSMINE_GATE");
    if ((QA306_BLOODWYNCUTSCENESTATUS) != (3)) {
        if ((((QA306_LOAFSJUDGMENT_RESULT) != (2)) || ((QA306_FIGHTWITHLOAFSTATUS) != (2))) || ((NPC_KNOWSINFO(HERO, 78800)) == (FALSE))) {
            B_STARTOTHERROUTINE(SLD_13704_ARAXOS_GUARDMINE, "BLOCKPATH");
            NPC_REFRESH(SLD_13704_ARAXOS_GUARDMINE);
            TELEPORTNPCTOWP(56323, SLD_13704_ARAXOS_GUARDMINE.WP);
            NPC_EXCHANGEROUTINE(SLD_13700_ARAXOS_GUARDMINE, START);
        };
    };
}

func void SQ119_TOLLEKSPAWN() {
    B_STARTOTHERROUTINE(NONE_13706_TOLLEK, "GOLDMOB_WAIT");
    NPC_REFRESH(NONE_13706_TOLLEK);
    TELEPORTNPCTOWP(56341, NONE_13706_TOLLEK.WP);
}

func void SQ119_NIKOLTCOMEBACK() {
    B_STARTOTHERROUTINE(NONE_13705_NIKOLT, "COMEBACK");
    NPC_REFRESH(NONE_13705_NIKOLT);
}

var int MARVIN_CURRENTPICKAXENUMBER;
var int MARVIN_CURRENTGOLDNUGGETNUMBER;
var int MARVIN_CURRENTLORENZOSTEMPEL;
var int MARVIN_CURRENTWORKERARMOR;
func void SQ119_COUNTHEROSTUFF() {
    MARVIN_CURRENTPICKAXENUMBER = NPC_HASITEMS(HERO, 34015);
    MARVIN_CURRENTGOLDNUGGETNUMBER = NPC_HASITEMS(HERO, 33660);
    MARVIN_CURRENTLORENZOSTEMPEL = NPC_HASITEMS(HERO, 37218);
    MARVIN_CURRENTWORKERARMOR = NPC_HASITEMS(HERO, 33925);
}

func void SQ119_REMOVEIMPORTANTHEROSTUFF() {
    if ((MARVIN_CURRENTPICKAXENUMBER) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 34015, MARVIN_CURRENTPICKAXENUMBER);
    };
    if ((MARVIN_CURRENTGOLDNUGGETNUMBER) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 33660, MARVIN_CURRENTGOLDNUGGETNUMBER);
    };
    if ((MARVIN_CURRENTLORENZOSTEMPEL) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 37218, MARVIN_CURRENTLORENZOSTEMPEL);
    };
    if ((MARVIN_CURRENTWORKERARMOR) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 33925, MARVIN_CURRENTWORKERARMOR);
    };
}

func void SQ119_GIVEALLSTUFF() {
    GETITEMHOLDER();
    B_GIVEALLINVENTORY(HERO, ITEM_HOLDER);
}

func void SQ119_CREATEHEROSTUFF() {
    if ((MARVIN_CURRENTPICKAXENUMBER) >= (1)) {
        CREATEINVITEMS(HERO, 34015, MARVIN_CURRENTPICKAXENUMBER);
    };
    if ((MARVIN_CURRENTGOLDNUGGETNUMBER) >= (1)) {
        CREATEINVITEMS(HERO, 33660, MARVIN_CURRENTGOLDNUGGETNUMBER);
    };
    if ((MARVIN_CURRENTLORENZOSTEMPEL) >= (1)) {
        CREATEINVITEMS(HERO, 37218, MARVIN_CURRENTLORENZOSTEMPEL);
    };
    if ((MARVIN_CURRENTWORKERARMOR) >= (1)) {
        CREATEINVITEMS(HERO, 33925, MARVIN_CURRENTWORKERARMOR);
    };
}

func void SQ119_GIVEALLSTUFF_BACK() {
    CREATEINVITEMS(SLD_13700_ARAXOS_GUARDMINE, 37027, 1);
    B_GIVEINVITEMS(SLD_13700_ARAXOS_GUARDMINE, HERO, 37027, 1);
}

func void SQ119_GIVEWORKERARMOR() {
    CREATEINVITEMS(SLD_13700_ARAXOS_GUARDMINE, 33925, 1);
    B_GIVEINVITEMS(SLD_13700_ARAXOS_GUARDMINE, HERO, 33925, 1);
}

var int SQ119_IHADW1ARMOR;
func void SQ119_GIVEARAXOSARMORS() {
    if ((NPC_HASITEMS(HERO, 35470)) >= (1)) {
        B_GIVEINVITEMS(HERO, SLD_13700_ARAXOS_GUARDMINE, 35470, 1);
    };
    if ((NPC_HASITEMS(HERO, 35451)) >= (1)) {
        B_GIVEINVITEMS(HERO, SLD_13700_ARAXOS_GUARDMINE, 35451, 1);
    };
    if ((NPC_HASITEMS(HERO, 35465)) >= (1)) {
        B_GIVEINVITEMS(HERO, SLD_13700_ARAXOS_GUARDMINE, 35465, 1);
    };
    if ((NPC_HASITEMS(HERO, 35454)) >= (1)) {
        if ((SQ119_IHADW1ARMOR) == (FALSE)) {
            SQ119_IHADW1ARMOR = TRUE;
            B_GIVEINVITEMS(HERO, SLD_13700_ARAXOS_GUARDMINE, 35454, 1);
        };
    };
    if ((NPC_HASITEMS(HERO, 35459)) >= (1)) {
        B_GIVEINVITEMS(HERO, SLD_13700_ARAXOS_GUARDMINE, 35459, 1);
    };
    HERO.AIVAR[4] = FALSE;
}

func void SQ119_GIVEARAXOSARMORS_BACK() {
    if ((NPC_HASITEMS(SLD_13700_ARAXOS_GUARDMINE, 35470)) >= (1)) {
        B_GIVEINVITEMS(SLD_13700_ARAXOS_GUARDMINE, HERO, 35470, 1);
    };
    if ((NPC_HASITEMS(SLD_13700_ARAXOS_GUARDMINE, 35451)) >= (1)) {
        B_GIVEINVITEMS(SLD_13700_ARAXOS_GUARDMINE, HERO, 35451, 1);
    };
    if ((NPC_HASITEMS(SLD_13700_ARAXOS_GUARDMINE, 35465)) >= (1)) {
        B_GIVEINVITEMS(SLD_13700_ARAXOS_GUARDMINE, HERO, 35465, 1);
    };
    if ((NPC_HASITEMS(SLD_13700_ARAXOS_GUARDMINE, 35454)) >= (1)) {
        if ((SQ119_IHADW1ARMOR) == (TRUE)) {
            SQ119_IHADW1ARMOR = FALSE;
            B_GIVEINVITEMS(SLD_13700_ARAXOS_GUARDMINE, HERO, 35454, 1);
            AI_EQUIPARMOR(SLD_13700_ARAXOS_GUARDMINE, 35454);
        };
    };
    if ((NPC_HASITEMS(SLD_13700_ARAXOS_GUARDMINE, 35459)) >= (1)) {
        B_GIVEINVITEMS(SLD_13700_ARAXOS_GUARDMINE, HERO, 35459, 1);
    };
    HERO.AIVAR[4] = FALSE;
}
