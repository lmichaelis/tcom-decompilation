func void ZS_MM_RTN_WUSEL() {
    PERCEPTION_SET_MONSTER_RTN();
    AI_SETWALKMODE(SELF, NPC_RUN);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    AI_GOTOFP(SELF, "FP_ROAM");
}

func int ZS_MM_RTN_WUSEL_LOOP() {
    if ((!(WLD_ISTIME(SELF.AIVAR[38], 0, SELF.AIVAR[39], 0))) && ((SELF.AIVAR[38]) != (ONLYROUTINE))) {
        AI_STARTSTATE(SELF, 0x16618, 1, "");
        return LOOP_END;
    };
    if ((NPC_GETSTATETIME(SELF)) >= (1)) {
        if (NPC_ISONFP(SELF, "FP_ROAM")) {
            if (WLD_ISNEXTFPAVAILABLE(SELF, "FP_ROAM")) {
                NPC_CLEARAIQUEUE(SELF);
                AI_GOTONEXTFP(SELF, "FP_ROAM");
            };
        } else if ((!(C_BODYSTATECONTAINS(SELF, BS_WALK))) && (!(C_BODYSTATECONTAINS(SELF, BS_RUN)))) {
            AI_GOTOFP(SELF, "FP_ROAM");
        };
        NPC_SETSTATETIME(SELF, 0);
        SELF.AIVAR[19] = NOTINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_MM_RTN_WUSEL_END() {
}

