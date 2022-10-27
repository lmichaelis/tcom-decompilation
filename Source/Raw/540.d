func int ZS_MAGICSHRINK() {
    if (!(NPC_HASBODYFLAG(SELF, BS_FLAG_INTERRUPTABLE))) {
        AI_STANDUP(SELF);
    };
    AI_STANDUPQUICK(SELF);
    SELF.AIVAR[42] = 0;
    return 0 /* !broken stack! */;
}

func int ZS_MAGICSHRINK_LOOP() {
    if ((SELF.AIVAR[42]) == (0)) {
        MDL_SETMODELSCALE(SELF, 0x3f666666, 0x3f666666, 0x3f666666);
        SELF.AIVAR[42] = 1;
    };
    if ((SELF.AIVAR[42]) == (1)) {
        MDL_SETMODELSCALE(SELF, 0x3f59999a, 0x3f59999a, 0x3f59999a);
        SELF.AIVAR[42] = 2;
    };
    if ((SELF.AIVAR[42]) == (2)) {
        MDL_SETMODELSCALE(SELF, 0x3f4ccccd, 0x3f4ccccd, 0x3f4ccccd);
        SELF.AIVAR[42] = 3;
    };
    if ((SELF.AIVAR[42]) == (3)) {
        MDL_SETMODELSCALE(SELF, 0x3f400000, 0x3f400000, 0x3f400000);
        SELF.AIVAR[42] = 4;
    };
    if ((SELF.AIVAR[42]) == (4)) {
        MDL_SETMODELSCALE(SELF, 0x3f333333, 0x3f333333, 0x3f333333);
        SELF.AIVAR[42] = 5;
    };
    if ((SELF.AIVAR[42]) == (5)) {
        MDL_SETMODELSCALE(SELF, 0x3f266666, 0x3f266666, 0x3f266666);
        SELF.AIVAR[42] = 6;
    };
    if ((SELF.AIVAR[42]) == (6)) {
        MDL_SETMODELSCALE(SELF, 0x3f19999a, 0x3f19999a, 0x3f19999a);
        SELF.AIVAR[42] = 7;
    };
    if ((SELF.AIVAR[42]) == (7)) {
        MDL_SETMODELSCALE(SELF, 0x3f0ccccd, 0x3f0ccccd, 0x3f0ccccd);
        SELF.AIVAR[42] = 8;
    };
    if ((SELF.AIVAR[42]) == (8)) {
        MDL_SETMODELSCALE(SELF, 0x3f000000, 0x3f000000, 0x3f000000);
        SELF.AIVAR[42] = 9;
    };
    if ((SELF.AIVAR[42]) == (9)) {
        MDL_SETMODELSCALE(SELF, 0x3ee66666, 0x3ee66666, 0x3ee66666);
        SELF.AIVAR[42] = 10;
    };
    if ((SELF.AIVAR[42]) == (10)) {
        MDL_SETMODELSCALE(SELF, 0x3ecccccd, 0x3ecccccd, 0x3ecccccd);
        SELF.AIVAR[42] = 11;
    };
    if ((SELF.AIVAR[42]) == (11)) {
        MDL_SETMODELSCALE(SELF, 0x3eb33333, 0x3eb33333, 0x3eb33333);
        SELF.AIVAR[42] = 12;
    };
    if ((SELF.AIVAR[42]) == (12)) {
        MDL_SETMODELSCALE(SELF, 0x3e99999a, 0x3e99999a, 0x3e99999a);
        SELF.AIVAR[42] = 13;
    };
    if ((SELF.AIVAR[42]) == (13)) {
        NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, -(((SELF.ATTRIBUTE[0]) * (9)) / (10)));
        NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS_MAX, -(((SELF.ATTRIBUTE[1]) * (9)) / (10)));
        NPC_CHANGEATTRIBUTE(SELF, ATR_STRENGTH, -(((SELF.ATTRIBUTE[4]) * (9)) / (10)));
        SELF.PROTECTION[1] = (SELF.PROTECTION[1]) / (10);
        SELF.PROTECTION[2] = (SELF.PROTECTION[2]) / (10);
        SELF.PROTECTION[3] = (SELF.PROTECTION[3]) / (10);
        SELF.PROTECTION[4] = 0;
        SELF.PROTECTION[5] = (SELF.PROTECTION[5]) / (10);
        SELF.PROTECTION[6] = (SELF.PROTECTION[6]) / (10);
        SELF.AIVAR[42] = 14;
    };
    if ((SELF.AIVAR[42]) == (14)) {
        NPC_CLEARAIQUEUE(SELF);
        SELF.START_AISTATE = ZS_MAGICSHRUNK;
        AI_STARTSTATE(SELF, 0xab5b, 1, "");
        return LOOP_END;
    };
    AI_WAIT(SELF, 0x3ec28f5c);
    return LOOP_CONTINUE;
}

func void ZS_MAGICSHRINK_END() {
}

func void ZS_MAGICSHRUNK() {
    NPC_SETTARGET(SELF, HERO);
}

func int ZS_MAGICSHRUNK_LOOP() {
    AI_FLEE(SELF);
    return LOOP_CONTINUE;
}

func void ZS_MAGICSHRUNK_END() {
}

