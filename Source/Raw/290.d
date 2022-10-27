func void B_SAY_SMALLTALK() {
    RANDOM = HLP_RANDOM(145);
    CHOICE = HLP_RANDOM(1);
    if ((RANDOM) < (5)) {
        B_SAY(SELF, SELF, "$SMALLTALK01");
    };
    if ((RANDOM) < (10)) {
        B_SAY(SELF, SELF, "$SMALLTALK02");
    };
    if ((RANDOM) < (15)) {
        if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(BAU_703_MARTHA))) {
            B_SAY(SELF, SELF, "$SMALLTALK02");
        } else {
            B_SAY(SELF, SELF, "$SMALLTALK03");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((RANDOM) < (20)) {
        B_SAY(SELF, SELF, "$SMALLTALK04");
    };
    if ((RANDOM) < (25)) {
        B_SAY(SELF, SELF, "$SMALLTALK05");
    };
    if ((RANDOM) < (30)) {
        B_SAY(SELF, SELF, "$SMALLTALK06");
    };
    if ((RANDOM) < (35)) {
        B_SAY(SELF, SELF, "$SMALLTALK07");
    };
    if ((RANDOM) < (40)) {
        B_SAY(SELF, SELF, "$SMALLTALK08");
    };
    if ((RANDOM) < (45)) {
        B_SAY(SELF, SELF, "$SMALLTALK09");
    };
    if ((RANDOM) < (50)) {
        B_SAY(SELF, SELF, "$SMALLTALK10");
    };
    if ((RANDOM) < (55)) {
        B_SAY(SELF, SELF, "$SMALLTALK11");
    };
    if ((RANDOM) < (60)) {
        B_SAY(SELF, SELF, "$SMALLTALK12");
    };
    if ((RANDOM) < (65)) {
        B_SAY(SELF, SELF, "$SMALLTALK13");
    };
    if ((RANDOM) < (70)) {
        B_SAY(SELF, SELF, "$SMALLTALK14");
    };
    if ((RANDOM) < (75)) {
        B_SAY(SELF, SELF, "$SMALLTALK15");
    };
    if ((RANDOM) < (80)) {
        B_SAY(SELF, SELF, "$SMALLTALK16");
    };
    if ((RANDOM) < (85)) {
        B_SAY(SELF, SELF, "$SMALLTALK17");
    };
    if ((RANDOM) < (90)) {
        B_SAY(SELF, SELF, "$SMALLTALK18");
    };
    if ((RANDOM) < (95)) {
        B_SAY(SELF, SELF, "$SMALLTALK19");
    };
    if ((RANDOM) < (100)) {
        B_SAY(SELF, SELF, "$SMALLTALK20");
    };
    if ((RANDOM) < (105)) {
        B_SAY(SELF, SELF, "$SMALLTALK21");
    };
    if ((RANDOM) < (110)) {
        if ((((NPC_GETTRUEGUILD(SELF)) == (GIL_NOV)) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_PAL))) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_KDF))) {
            if ((CHOICE) == (0)) {
                B_SAY(SELF, SELF, "$SMALLTALK28");
            } else {
                B_SAY(SELF, SELF, "$SMALLTALK22");
            } else {
                /* set_instance(0) */;
            };
        };
        if (((((NPC_GETTRUEGUILD(SELF)) == (GIL_BDT)) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_SLD))) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_DJG))) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_PIR))) {
            if ((CHOICE) == (0)) {
                B_SAY(SELF, SELF, "$SMALLTALK25");
            } else {
                B_SAY(SELF, SELF, "$SMALLTALK22");
            } else {
                /* set_instance(0) */;
            };
        };
        B_SAY(SELF, SELF, "$SMALLTALK22");
    };
    if ((RANDOM) < (115)) {
        if ((((NPC_GETTRUEGUILD(SELF)) == (GIL_NOV)) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_PAL))) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_KDF))) {
            if ((CHOICE) == (0)) {
                B_SAY(SELF, SELF, "$SMALLTALK29");
            } else {
                B_SAY(SELF, SELF, "$SMALLTALK23");
            } else {
                /* set_instance(0) */;
            };
        };
        if (((((NPC_GETTRUEGUILD(SELF)) == (GIL_BDT)) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_SLD))) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_DJG))) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_PIR))) {
            if ((CHOICE) == (0)) {
                B_SAY(SELF, SELF, "$SMALLTALK26");
            } else {
                B_SAY(SELF, SELF, "$SMALLTALK23");
            } else {
                /* set_instance(0) */;
            };
        };
        B_SAY(SELF, SELF, "$SMALLTALK23");
    };
    if ((RANDOM) <= (120)) {
        if ((((NPC_GETTRUEGUILD(SELF)) == (GIL_NOV)) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_PAL))) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_KDF))) {
            if ((CHOICE) == (0)) {
                B_SAY(SELF, SELF, "$SMALLTALK30");
            } else {
                B_SAY(SELF, SELF, "$SMALLTALK24");
            } else {
                /* set_instance(0) */;
            };
        };
        if (((((NPC_GETTRUEGUILD(SELF)) == (GIL_BDT)) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_SLD))) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_DJG))) || ((NPC_GETTRUEGUILD(SELF)) == (GIL_PIR))) {
            if ((CHOICE) == (0)) {
                B_SAY(SELF, SELF, "$SMALLTALK27");
            } else {
                B_SAY(SELF, SELF, "$SMALLTALK31");
            } else {
                /* set_instance(0) */;
            };
        };
        B_SAY(SELF, SELF, "$SMALLTALK24");
    };
    if ((RANDOM) <= (130)) {
        B_SAY(SELF, SELF, "$SMALLTALK32");
    };
    if ((RANDOM) <= (135)) {
        B_SAY(SELF, SELF, "$SMALLTALK33");
    };
    if ((RANDOM) <= (140)) {
        B_SAY(SELF, SELF, "$SMALLTALK34");
    };
    if ((RANDOM) <= (145)) {
        B_SAY(SELF, SELF, "$SMALLTALK35");
    };
}

var int B_SAY_SMALLTALK.RANDOM = 0;
var int B_SAY_SMALLTALK.CHOICE = 0;
