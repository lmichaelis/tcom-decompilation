func void ZS_LAUGH() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int C_IGOTFEMALEARMOR(var C_NPC SLF) {
    if ((((((((((((((((((NPC_HASITEMS(SLF, 33911)) >= (1)) || ((NPC_HASITEMS(SLF, 35601)) >= (1))) || ((NPC_HASITEMS(SLF, 35602)) >= (1))) || ((NPC_HASITEMS(SLF, 35603)) >= (1))) || ((NPC_HASITEMS(SLF, 35604)) >= (1))) || ((NPC_HASITEMS(SLF, 35605)) >= (1))) || ((NPC_HASITEMS(SLF, 35606)) >= (1))) || ((NPC_HASITEMS(SLF, 35607)) >= (1))) || ((NPC_HASITEMS(SLF, 35608)) >= (1))) || ((NPC_HASITEMS(SLF, 33912)) >= (1))) || ((NPC_HASITEMS(SLF, 33900)) >= (1))) || ((NPC_HASITEMS(SLF, 33901)) >= (1))) || ((NPC_HASITEMS(SLF, 33902)) >= (1))) || ((NPC_HASITEMS(SLF, 35610)) >= (1))) || ((NPC_HASITEMS(SLF, 35611)) >= (1))) || ((NPC_HASITEMS(SLF, 35612)) >= (1))) || ((NPC_HASITEMS(SLF, 35613)) >= (1))) {
        return TRUE;
    };
    return FALSE;
}

func int ZS_LAUGH_LOOP() {
    var int RANDOM;
    if (NPC_ISONFP(SELF, "LAUGH")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "LAUGH")) {
        AI_GOTOFP(SELF, "LAUGH");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_STANDUP(SELF);
        SELF.AIVAR[19] = ISINPOS;
    };
    if ((SELF.AIVAR[19]) == (ISINPOS)) {
        RANDOM = HLP_RANDOM(24);
        if ((INFOMANAGER_HASFINISHED()) && ((NPC_GETDISTTONPC(SELF, HERO)) <= (2500))) {
            if ((RANDOM) <= (6)) {
                if ((C_IGOTFEMALEARMOR(SELF)) == (TRUE)) {
                    AI_PLAYANI(SELF, T_LAUGH_FEMALE);
                } else {
                    AI_PLAYANI(SELF, T_LAUGH);
                };
                AI_WAIT(SELF, 1071225242);
            };
            if (((RANDOM) <= (12)) && ((RANDOM) >= (7))) {
                if ((C_IGOTFEMALEARMOR(SELF)) == (TRUE)) {
                    AI_PLAYANI(SELF, T_LAUGH_FEMALE);
                } else {
                    AI_PLAYANI(SELF, "T_LAUGH_LONG");
                };
                AI_WAIT(SELF, 1067030938);
            };
            if (((RANDOM) <= (18)) && ((RANDOM) >= (13))) {
                if ((C_IGOTFEMALEARMOR(SELF)) == (TRUE)) {
                    AI_PLAYANI(SELF, T_LAUGH_FEMALE);
                } else {
                    AI_PLAYANI(SELF, T_LAUGH);
                };
                AI_WAIT(SELF, 1069547520);
            };
            if (((RANDOM) <= (23)) && ((RANDOM) >= (19))) {
                if ((C_IGOTFEMALEARMOR(SELF)) == (TRUE)) {
                    AI_PLAYANI(SELF, T_LAUGH_FEMALE);
                } else {
                    AI_PLAYANI(SELF, "T_LAUGH_LONG");
                };
                AI_WAIT(SELF, 1065353216);
            };
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_LAUGH_END() {
}

