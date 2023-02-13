func void ZS_MM_RTN_EATGROUND() {
    PERCEPTION_SET_MONSTER_RTN();
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if (WLD_ISFPAVAILABLE(SELF, "FP_ROAM")) {
        AI_GOTOFP(SELF, "FP_ROAM");
    };
    B_MM_DESYNCHRONIZE();
    AI_PLAYANI(SELF, "T_STAND_2_EAT");
    MDL_APPLYRANDOMANI(SELF, "S_EAT", "R_ROAM1");
    MDL_APPLYRANDOMANI(SELF, "S_EAT", "R_ROAM2");
    MDL_APPLYRANDOMANI(SELF, "S_EAT", "R_ROAM3");
    MDL_APPLYRANDOMANIFREQ(SELF, "S_EAT", 1090519040);
}

func int ZS_MM_RTN_EATGROUND_LOOP() {
    if ((!(WLD_ISTIME(SELF.AIVAR[36], 0, SELF.AIVAR[37], 0))) && ((SELF.AIVAR[36]) != (ONLYROUTINE))) {
        AI_STARTSTATE(SELF, 91672, 1, "");
        return LOOP_END;
    };
    return LOOP_CONTINUE;
}

func void ZS_MM_RTN_EATGROUND_END() {
    AI_PLAYANI(SELF, "T_EAT_2_STAND");
}

