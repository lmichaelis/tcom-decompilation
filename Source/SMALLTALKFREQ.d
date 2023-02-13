const int SMALLTALKFREQ = 6;
func void ZS_SMALLTALK() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) && ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(MIL_6371_DUSTER)))) {
        AI_SETWALKMODE(SELF, NPC_RUN);
    };
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_SMALLTALK_LOOP() {
    if (NPC_ISONFP(SELF, "SMALLTALK")) {
        if ((NPC_GETSTATETIME(SELF)) >= ((SMALLTALKFREQ) * (2))) {
            NPC_PERCEIVEALL(SELF);
            if ((WLD_DETECTNPC(SELF, -(1), 46687, -(1))) || (WLD_DETECTNPC(SELF, -(1), 46690, -(1)))) {
                if ((NPC_GETDISTTONPC(SELF, OTHER)) < (PERC_DIST_DIALOG)) {
                    NPC_SETSTATETIME(OTHER, SMALLTALKFREQ);
                    B_TURNTONPC(SELF, OTHER);
                    if (((ISINCAMERA) == (FALSE)) && (INFOMANAGER_HASFINISHED())) {
                        B_SAY_SMALLTALK();
                    };
                };
            } else if ((NPC_GETSTATETIME(SELF)) >= (5)) {
                AI_STARTSTATE(SELF, 46690, 1, "");
            };
            WLD_DETECTNPC(SELF, -(1), 46690, -(1));
            NPC_SETSTATETIME(SELF, 0);
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "SMALLTALK")) {
        AI_GOTOFP(SELF, "SMALLTALK");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_SMALLTALK_END() {
}

func void ZS_SMALLTALK_WAIT() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_PLAYANI(SELF, T_STAND_2_LGUARD);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_SMALLTALK_WAIT_LOOP() {
    var int RANDOM;
    if (NPC_ISONFP(SELF, "SMALLTALK")) {
        if ((NPC_GETSTATETIME(SELF)) >= ((SMALLTALKFREQ) * (2))) {
            NPC_PERCEIVEALL(SELF);
            if ((WLD_DETECTNPC(SELF, -(1), 46687, -(1))) || (WLD_DETECTNPC(SELF, -(1), 46690, -(1)))) {
                if ((NPC_GETDISTTONPC(SELF, OTHER)) < (PERC_DIST_DIALOG)) {
                    AI_STARTSTATE(SELF, 46687, 1, "");
                };
            } else if ((NPC_GETSTATETIME(SELF)) >= (5)) {
                NPC_SETSTATETIME(OTHER, SMALLTALKFREQ);
                RANDOM = HLP_RANDOM(7);
                if ((RANDOM) == (0)) {
                    AI_PLAYANI(SELF, "T_LGUARD_SCRATCH");
                } else if ((RANDOM) == (1)) {
                    AI_PLAYANI(SELF, "T_LGUARD_STRETCH");
                } else if ((RANDOM) == (2)) {
                    AI_PLAYANI(SELF, "T_LGUARD_CHANGELEG");
                };
            };
            WLD_DETECTNPC(SELF, -(1), 46690, -(1));
            NPC_SETSTATETIME(SELF, 0);
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "SMALLTALK")) {
        AI_GOTOFP(SELF, "SMALLTALK");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_SMALLTALK_WAIT_END() {
}

