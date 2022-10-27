func int ZS_MAGICSCALE() {
    if (!(NPC_HASBODYFLAG(SELF, BS_FLAG_INTERRUPTABLE))) {
        AI_STANDUP(SELF);
    };
    AI_STANDUPQUICK(SELF);
    SELF.AIVAR[42] = 0;
    return 0 /* !broken stack! */;
}

func void ZS_MAGICSCALE_BUFFSTUFF() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, +(((SELF.ATTRIBUTE[0]) * (9)) / (10)));
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS_MAX, +(((SELF.ATTRIBUTE[1]) * (9)) / (10)));
    NPC_CHANGEATTRIBUTE(SELF, ATR_STRENGTH, +(((SELF.ATTRIBUTE[4]) * (9)) / (10)));
    SELF.PROTECTION[1] = (SELF.PROTECTION[1]) * (2);
    SELF.PROTECTION[2] = (SELF.PROTECTION[2]) * (2);
    SELF.PROTECTION[3] = (SELF.PROTECTION[3]) * (2);
    SELF.PROTECTION[4] = (SELF.PROTECTION[4]) * (2);
    SELF.PROTECTION[5] = (SELF.PROTECTION[5]) * (2);
    SELF.PROTECTION[6] = (SELF.PROTECTION[6]) * (2);
}

func void ZS_MAGICSCALE_STOPSCALE() {
    NPC_CLEARAIQUEUE(SELF);
    SELF.START_AISTATE = ZS_MAGICSCALED;
    AI_STARTSTATE(SELF, 0xab63, 1, "");
}

func int ZS_MAGICSCALE_LOOP() {
    if ((SELF.AIVAR[42]) == (0)) {
        MDL_SETMODELSCALE(SELF, 0x3eb33333, 0x3e99999a, 0x3e99999a);
        SELF.AIVAR[42] = 1;
    };
    if ((SELF.AIVAR[42]) == (1)) {
        MDL_SETMODELSCALE(SELF, 0x3ee66666, 0x3ecccccd, 0x3ecccccd);
        SELF.AIVAR[42] = 2;
    };
    if ((SELF.AIVAR[42]) == (2)) {
        MDL_SETMODELSCALE(SELF, 0x3f0ccccd, 0x3f000000, 0x3f000000);
        SELF.AIVAR[42] = 3;
    };
    if ((SELF.AIVAR[42]) == (3)) {
        MDL_SETMODELSCALE(SELF, 0x3f266666, 0x3f19999a, 0x3f19999a);
        SELF.AIVAR[42] = 4;
    };
    if ((SELF.AIVAR[42]) == (4)) {
        MDL_SETMODELSCALE(SELF, 0x3f400000, 0x3f333333, 0x3f333333);
        SELF.AIVAR[42] = 5;
    };
    if ((SELF.AIVAR[42]) == (5)) {
        MDL_SETMODELSCALE(SELF, 0x3f59999a, 0x3f4ccccd, 0x3f4ccccd);
        SELF.AIVAR[42] = 6;
    };
    if ((SELF.AIVAR[42]) == (6)) {
        MDL_SETMODELSCALE(SELF, 0x3f733333, 0x3f666666, 0x3f666666);
        SELF.AIVAR[42] = 7;
    };
    if ((SELF.AIVAR[42]) == (7)) {
        MDL_SETMODELSCALE(SELF, 0x3f866666, 0x3f800000, 0x3f800000);
        SELF.AIVAR[42] = 8;
    };
    if ((SELF.AIVAR[42]) == (8)) {
        MDL_SETMODELSCALE(SELF, 0x3f933333, 0x3f8ccccd, 0x3f8ccccd);
        SELF.AIVAR[42] = 9;
    };
    if ((SELF.AIVAR[42]) == (9)) {
        MDL_SETMODELSCALE(SELF, 0x3fa00000, 0x3f99999a, 0x3f99999a);
        SELF.AIVAR[42] = 10;
    };
    if ((SELF.AIVAR[42]) == (10)) {
        MDL_SETMODELSCALE(SELF, 0x3faccccd, 0x3fa66666, 0x3fa66666);
        SELF.AIVAR[42] = 11;
    };
    if ((SELF.AIVAR[42]) == (11)) {
        MDL_SETMODELSCALE(SELF, 0x3fb9999a, 0x3fb33333, 0x3fb33333);
        SELF.AIVAR[42] = 12;
    };
    if ((SELF.AIVAR[42]) == (12)) {
        MDL_SETMODELSCALE(SELF, 0x3fc66666, 0x3fc00000, 0x3fc00000);
        SELF.AIVAR[42] = 13;
    };
    if ((SELF.AIVAR[42]) == (13)) {
        ZS_MAGICSCALE_BUFFSTUFF();
        SELF.AIVAR[42] = 14;
    };
    if ((SELF.AIVAR[42]) == (14)) {
        ZS_MAGICSCALE_STOPSCALE();
        return LOOP_END;
    };
    AI_WAIT(SELF, 0x3ec28f5c);
    return LOOP_CONTINUE;
}

func void ZS_MAGICSCALE_END() {
}

func void ZS_MAGICSCALED() {
    NPC_SETTARGET(SELF, HERO);
}

func int ZS_MAGICSCALED_LOOP() {
    AI_ATTACK(SELF);
    return LOOP_CONTINUE;
}

func void ZS_MAGICSCALED_END() {
}

