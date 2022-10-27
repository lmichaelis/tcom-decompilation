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
    if ((((((((((((((((((NPC_HASITEMS(SLF, 0x8477)) >= (1)) || ((NPC_HASITEMS(SLF, 0x8b11)) >= (1))) || ((NPC_HASITEMS(SLF, 0x8b12)) >= (1))) || ((NPC_HASITEMS(SLF, 0x8b13)) >= (1))) || ((NPC_HASITEMS(SLF, 0x8b14)) >= (1))) || ((NPC_HASITEMS(SLF, 0x8b15)) >= (1))) || ((NPC_HASITEMS(SLF, 0x8b16)) >= (1))) || ((NPC_HASITEMS(SLF, 0x8b17)) >= (1))) || ((NPC_HASITEMS(SLF, 0x8b18)) >= (1))) || ((NPC_HASITEMS(SLF, 0x8478)) >= (1))) || ((NPC_HASITEMS(SLF, 0x846c)) >= (1))) || ((NPC_HASITEMS(SLF, 0x846d)) >= (1))) || ((NPC_HASITEMS(SLF, 0x846e)) >= (1))) || ((NPC_HASITEMS(SLF, 0x8b1a)) >= (1))) || ((NPC_HASITEMS(SLF, 0x8b1b)) >= (1))) || ((NPC_HASITEMS(SLF, 0x8b1c)) >= (1))) || ((NPC_HASITEMS(SLF, 0x8b1d)) >= (1))) {
        return TRUE;
    };
    return FALSE;
}

func int ZS_LAUGH_LOOP() {
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
        if ((INFOMANAGER_HASFINISHED()) && ((NPC_GETDISTTONPC(SELF, HERO)) <= (0x9c4))) {
            if ((RANDOM) <= (6)) {
                if ((C_IGOTFEMALEARMOR(SELF)) == (TRUE)) {
                    AI_PLAYANI(SELF, T_LAUGH_FEMALE);
                } else {
                    AI_PLAYANI(SELF, T_LAUGH);
                } else {
                    AI_WAIT(SELF, 0x3fd9999a);
                };
            };
            if (((RANDOM) <= (12)) && ((RANDOM) >= (7))) {
                if ((C_IGOTFEMALEARMOR(SELF)) == (TRUE)) {
                    AI_PLAYANI(SELF, T_LAUGH_FEMALE);
                } else {
                    AI_PLAYANI(SELF, "T_LAUGH_LONG");
                } else {
                    AI_WAIT(SELF, 0x3f99999a);
                };
            };
            if (((RANDOM) <= (18)) && ((RANDOM) >= (13))) {
                if ((C_IGOTFEMALEARMOR(SELF)) == (TRUE)) {
                    AI_PLAYANI(SELF, T_LAUGH_FEMALE);
                } else {
                    AI_PLAYANI(SELF, T_LAUGH);
                } else {
                    AI_WAIT(SELF, 0x3fc00000);
                };
            };
            if (((RANDOM) <= (23)) && ((RANDOM) >= (19))) {
                if ((C_IGOTFEMALEARMOR(SELF)) == (TRUE)) {
                    AI_PLAYANI(SELF, T_LAUGH_FEMALE);
                } else {
                    AI_PLAYANI(SELF, "T_LAUGH_LONG");
                } else {
                    AI_WAIT(SELF, 0x3f800000);
                };
            };
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_LAUGH_LOOP.RANDOM = 0;
func void ZS_LAUGH_END() {
}

