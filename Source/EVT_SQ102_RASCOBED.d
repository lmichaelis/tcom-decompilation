func void EVT_SQ102_RASCOBED() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_ISVALIDNPC(BAU_722_RASCO)) {
            if (((NPC_GETDISTTONPC(HERO, BAU_722_RASCO)) <= (800)) && ((NPC_ISINSTATE(BAU_722_RASCO, 61603)) == (FALSE))) {
                PRINTD("Rasco atakuje!");
                B_IMMEDIATEATTACKPLAYER(BAU_722_RASCO, AR_THEFT);
                B_ADDPETZCRIME(BAU_722_RASCO, CRIME_THEFT);
                NPC_REFRESH(BAU_722_RASCO);
                AI_TURNTONPC(BAU_722_RASCO, HERO);
            };
        };
    };
}

func void EVT_SQ102_THIEFALARM() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_ISVALIDNPC(BAU_729_NOB)) {
            if (((NPC_GETDISTTONPC(HERO, BAU_729_NOB)) <= (600)) && ((NPC_ISINSTATE(BAU_729_NOB, 61603)) == (FALSE))) {
                PRINTD("Jil atakuje!");
                B_IMMEDIATEATTACKPLAYER(BAU_729_NOB, AR_THEFT);
                B_ADDPETZCRIME(BAU_729_NOB, CRIME_THEFT);
                NPC_REFRESH(BAU_729_NOB);
                AI_TURNTONPC(BAU_729_NOB, HERO);
            };
        };
        if (HLP_ISVALIDNPC(NONE_11048_HENKER)) {
            if (((NPC_GETDISTTONPC(HERO, NONE_11048_HENKER)) <= (600)) && ((NPC_ISINSTATE(NONE_11048_HENKER, 61603)) == (FALSE))) {
                PRINTD("Ochroniarz atakuje!");
                B_IMMEDIATEATTACKPLAYER(NONE_11048_HENKER, AR_THEFT);
                B_ADDPETZCRIME(NONE_11048_HENKER, CRIME_THEFT);
                NPC_REFRESH(NONE_11048_HENKER);
                AI_TURNTONPC(NONE_11048_HENKER, HERO);
            };
        };
        if (HLP_ISVALIDNPC(BAU_725_ELSA)) {
            if (((NPC_GETDISTTONPC(HERO, BAU_725_ELSA)) <= (600)) && ((NPC_ISINSTATE(BAU_725_ELSA, 61603)) == (FALSE))) {
                PRINTD("Sprz¹taczka atakuje!");
                B_IMMEDIATEATTACKPLAYER(BAU_725_ELSA, AR_THEFT);
                B_ADDPETZCRIME(BAU_725_ELSA, CRIME_THEFT);
                NPC_REFRESH(BAU_725_ELSA);
                AI_TURNTONPC(BAU_725_ELSA, HERO);
            };
        };
    };
}

