func void ZS_STUDY_WP() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_STUDY_WP_LOOP() {
    var float WAITTIME;
    var int WAIT;
    var int EVENTRANDY;
    var int RANDY;
    var int RANDYSTATETIME;
    RANDYSTATETIME = (RANDY) + (25);
    RANDY = HLP_RANDOM(10);
    EVENTRANDY = HLP_RANDOM(100);
    WAIT = (RANDY) + (5);
    WAITTIME = 0;
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    AI_ALIGNTOWP(SELF);
    if ((NPC_GETSTATETIME(SELF)) >= (RANDYSTATETIME)) {
        if (C_BODYSTATECONTAINS(SELF, BS_SIT)) {
            AI_STANDUP(SELF);
            B_TURNTONPC(SELF, HERO);
        };
        AI_REMOVEWEAPON(SELF);
        if ((RANDY) <= (3)) {
            if (((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(SLD_5000_LORENZO))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(MIL_4000_RODERICH)))) {
                if ((RANDY) == (0)) {
                    AI_PLAYANI(SELF, "T_LGUARD_SCRATCH");
                } else if ((RANDY) == (1)) {
                    AI_PLAYANI(SELF, "T_LGUARD_STRETCH");
                } else if ((RANDY) == (2)) {
                    AI_PLAYANI(SELF, "T_LGUARD_CHANGELEG");
                };
            };
        } else if (((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(SLD_5000_LORENZO))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(MIL_4000_RODERICH)))) {
            AI_PLAYANI(SELF, T_LGUARD_2_STAND);
        } else {
            AI_PLAYANI(SELF, "T_LEADER_2_STAND");
        };
        SELF.AIVAR[19] = NOTINPOS;
        if ((NPC_HASITEMS(SELF, 33751)) == (FALSE)) {
            CREATEINVITEM(SELF, 33751);
        };
        B_STOPLOOKAT(SELF);
        AI_USEITEMTOSTATE(SELF, 33751, 1);
        AI_WAIT(SELF, WAITTIME);
        AI_USEITEMTOSTATE(SELF, 33751, -(1));
        NPC_SETSTATETIME(SELF, 0);
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        if (((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(SLD_5000_LORENZO))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(MIL_4000_RODERICH)))) {
            AI_PLAYANI(SELF, T_STAND_2_LGUARD);
        } else {
            AI_PLAYANI(SELF, "T_STAND_2_LEADER");
        };
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_STUDY_WP_END() {
    NPC_REMOVEINVITEMS(SELF, 33751, NPC_HASITEMS(OTHER, 33751));
}

