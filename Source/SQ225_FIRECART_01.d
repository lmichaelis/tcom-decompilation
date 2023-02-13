var int SQ225_FIRECART_01;
var int SQ225_FIRECART_02;
func void SQ225_FIRECART_STOP() {
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_SQ225_FIRECART_15_01");
}

func void SQ225_FIRECART_CHECK() {
    SND_PLAY("TORCH_ENLIGHT");
    NPC_REMOVEINVITEM(HERO, 34742);
    AI_WAIT(HERO, 1069547520);
    if (((SQ225_FIRECART_01) == (TRUE)) && ((SQ225_FIRECART_02) == (TRUE))) {
        B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_CARTS_DONE);
        SQ225_FIRECARTWAIT = 1;
        SQ225_FIRECARTWAIT_HOUR = WLD_GETHOUR();
        SQ225_FIRECARTWAIT_DAY = WLD_GETDAY();
        NPC_CLEARAIQUEUE(BAU_11190_FARMER);
        B_STARTOTHERROUTINE(BAU_11190_FARMER, START);
    };
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_CARTS_ALMOSTDONE);
    B_SAY(HERO, HERO, "$MARVIN_ThinkingEmoji");
}

func void EVT_SQ225_CART_SCRIPT_01() {
    if (((WLD_ISTIME(20, 0, 3, 0)) || (NPC_ISDEAD(BAU_11190_FARMER))) || ((NPC_GETDISTTOWP(BAU_11190_FARMER, "PART9_SQ225_PLUNDER")) >= (2000))) {
        if ((SQ225_FIRECART_01) == (FALSE)) {
            SQ225_FIRECART_01 = TRUE;
            SQ225_QUESTFAILED_MOVER_03 = TRUE;
            WLD_SENDTRIGGER("MOVER_SQ225_CART_FIRE_02");
            SQ225_FIRECART_CHECK();
        } else {
            /* set_instance(0) */;
        };
    };
    SQ225_FIRECART_STOP();
}

func void EVT_SQ225_CART_SCRIPT_02() {
    if (((WLD_ISTIME(20, 0, 3, 0)) || (NPC_ISDEAD(BAU_11190_FARMER))) || ((NPC_GETDISTTOWP(BAU_11190_FARMER, "PART9_SQ225_PLUNDER")) >= (2000))) {
        if ((SQ225_FIRECART_02) == (FALSE)) {
            SQ225_FIRECART_02 = TRUE;
            SQ225_QUESTFAILED_MOVER_02 = TRUE;
            WLD_SENDTRIGGER("MOVER_SQ225_CART_FIRE_01");
            SQ225_FIRECART_CHECK();
        } else {
            /* set_instance(0) */;
        };
    };
    SQ225_FIRECART_STOP();
}

func void EVT_SQ225_GERSTANDCHEST() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_ISVALIDNPC(NONE_839_GERSTAND)) {
            if (((NPC_GETDISTTONPC(HERO, NONE_839_GERSTAND)) <= (600)) && ((NPC_ISINSTATE(NONE_839_GERSTAND, 61603)) == (FALSE))) {
                PRINTD("Gerstand atakuje!");
                B_IMMEDIATEATTACKPLAYER(NONE_839_GERSTAND, AR_THEFT);
                B_ADDPETZCRIME(NONE_839_GERSTAND, CRIME_THEFT);
                NPC_REFRESH(NONE_839_GERSTAND);
                AI_USEMOB(NONE_839_GERSTAND, NPC_GETDETECTEDMOB(NONE_839_GERSTAND), -(1));
                AI_TURNTONPC(NONE_839_GERSTAND, HERO);
            };
        };
    };
}

func void EVT_SQ225_WAITINVENZELHOUSE() {
    if ((DUSTER_SQ225_VENZELWAIT) == (1)) {
        FADESCREENTOBLACKF(1, 92067, 1000);
    };
}

func void SQ225_WAITINVENZELHOUSE_FADESCREEN() {
    DUSTER_SQ225_VENZELWAIT = 2;
    B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_DUSTERWAIT);
    B_PASSTIME(4);
    FADESCREENFROMBLACK(1);
    HERO.AIVAR[4] = FALSE;
}

