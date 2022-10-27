func void EVT_SQ102_RASCOBED() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_ISVALIDNPC(BAU_722_RASCO)) {
            if (((NPC_GETDISTTONPC(HERO, BAU_722_RASCO)) <= (800)) && ((NPC_ISINSTATE(BAU_722_RASCO, 0xf0a3)) == (FALSE))) {
                PRINTD("Rasco atakuje!");
                B_IMMEDIATEATTACKPLAYER(BAU_722_RASCO, AR_THEFT);
                B_ADDPETZCRIME(BAU_722_RASCO, CRIME_THEFT);
                NPC_REFRESH(BAU_722_RASCO);
                AI_TURNTONPC(BAU_722_RASCO, HERO);
            };
        };
    };
}

instance EVT_SQ102_RASCOBED.HER(C_NPC)
func void EVT_SQ102_THIEFALARM() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_ISVALIDNPC(BAU_729_NOB)) {
            if (((NPC_GETDISTTONPC(HERO, BAU_729_NOB)) <= (600)) && ((NPC_ISINSTATE(BAU_729_NOB, 0xf0a3)) == (FALSE))) {
                PRINTD("Jil atakuje!");
                B_IMMEDIATEATTACKPLAYER(BAU_729_NOB, AR_THEFT);
                B_ADDPETZCRIME(BAU_729_NOB, CRIME_THEFT);
                NPC_REFRESH(BAU_729_NOB);
                AI_TURNTONPC(BAU_729_NOB, HERO);
            };
        };
        if (HLP_ISVALIDNPC(NONE_11048_HENKER)) {
            if (((NPC_GETDISTTONPC(HERO, NONE_11048_HENKER)) <= (600)) && ((NPC_ISINSTATE(NONE_11048_HENKER, 0xf0a3)) == (FALSE))) {
                PRINTD("Ochroniarz atakuje!");
                B_IMMEDIATEATTACKPLAYER(NONE_11048_HENKER, AR_THEFT);
                B_ADDPETZCRIME(NONE_11048_HENKER, CRIME_THEFT);
                NPC_REFRESH(NONE_11048_HENKER);
                AI_TURNTONPC(NONE_11048_HENKER, HERO);
            };
        };
        if (HLP_ISVALIDNPC(BAU_725_ELSA)) {
            if (((NPC_GETDISTTONPC(HERO, BAU_725_ELSA)) <= (600)) && ((NPC_ISINSTATE(BAU_725_ELSA, 0xf0a3)) == (FALSE))) {
                PRINTD("Sprz¹taczka atakuje!");
                B_IMMEDIATEATTACKPLAYER(BAU_725_ELSA, AR_THEFT);
                B_ADDPETZCRIME(BAU_725_ELSA, CRIME_THEFT);
                NPC_REFRESH(BAU_725_ELSA);
                AI_TURNTONPC(BAU_725_ELSA, HERO);
            };
        };
    };
}

instance EVT_SQ102_THIEFALARM.HER(C_NPC)
