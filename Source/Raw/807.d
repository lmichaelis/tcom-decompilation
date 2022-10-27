func void ZS_THROWSHIT() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS)) && (C_BODYSTATECONTAINS(SELF, BS_DEAD))) {
        if ((NPC_HASITEMS(SELF, 0x8cbc)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 0x8cbc);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8cbc)) == (0)) {
        CREATEINVITEM(SELF, 0x8cbc);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_THROWSHIT_LOOP() {
    if (NPC_ISONFP(SELF, "SHIT")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "SHIT")) {
        AI_GOTOFP(SELF, "SHIT");
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
        AI_USEITEMTOSTATE(SELF, 0x8cbc, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_THROWSHIT_END() {
    AI_USEITEMTOSTATE(SELF, 0x8cbc, -(1));
}

func void ZS_THROWINNOS() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    MDL_APPLYOVERLAYMDS(SELF, "Humans_Throw_Innos.mds");
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_THROWINNOS_LOOP() {
    if (NPC_ISONFP(SELF, "INNOS")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "INNOS")) {
        AI_GOTOFP(SELF, "INNOS");
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
        RNDINNOS = HLP_RANDOM(3);
        if ((RNDINNOS) == (0)) {
            if ((NPC_HASITEMS(SELF, 0x8cce)) == (0)) {
                CREATEINVITEMS(SELF, 0x8cce, 1);
            };
            AI_USEITEMTOSTATE(SELF, 0x8cce, 1);
            SELF.AIVAR[19] = ISINPOS;
        } else if ((RNDINNOS) == (1)) {
            if ((NPC_HASITEMS(SELF, 0x8ccf)) == (0)) {
                CREATEINVITEMS(SELF, 0x8ccf, 1);
            };
            AI_USEITEMTOSTATE(SELF, 0x8ccf, 1);
            SELF.AIVAR[19] = ISINPOS;
        } else if ((RNDINNOS) == (2)) {
            if ((NPC_HASITEMS(SELF, 0x8cd0)) == (0)) {
                CREATEINVITEMS(SELF, 0x8cd0, 1);
            };
            AI_USEITEMTOSTATE(SELF, 0x8cd0, 1);
            SELF.AIVAR[19] = ISINPOS;
        };
    };
    return LOOP_CONTINUE;
}

var int ZS_THROWINNOS_LOOP.RNDINNOS = 0;
func void ZS_THROWINNOS_END() {
    if ((NPC_HASITEMS(SELF, 0x8cce)) == (1)) {
        AI_USEITEMTOSTATE(SELF, 0x8cce, -(1));
    };
    if ((NPC_HASITEMS(SELF, 0x8ccf)) == (1)) {
        AI_USEITEMTOSTATE(SELF, 0x8ccf, -(1));
    };
    if ((NPC_HASITEMS(SELF, 0x8cd0)) == (1)) {
        AI_USEITEMTOSTATE(SELF, 0x8cd0, -(1));
    };
}

func void ZS_THROWSCAV() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS)) && (C_BODYSTATECONTAINS(SELF, BS_DEAD))) {
        if ((NPC_HASITEMS(SELF, 0x8cbe)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 0x8cbe);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8cbe)) == (0)) {
        CREATEINVITEM(SELF, 0x8cbe);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_THROWSCAV_LOOP() {
    if (NPC_ISONFP(SELF, "SHIT")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "SHIT")) {
        AI_GOTOFP(SELF, "SHIT");
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
        AI_USEITEMTOSTATE(SELF, 0x8cbe, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_THROWSCAV_END() {
    AI_USEITEMTOSTATE(SELF, 0x8cbe, -(1));
}

func void ZS_THROWBAG() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS)) && (C_BODYSTATECONTAINS(SELF, BS_DEAD))) {
        if ((NPC_HASITEMS(SELF, 0x8cdf)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 0x8cdf);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8cdf)) == (0)) {
        CREATEINVITEM(SELF, 0x8cdf);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_THROWBAG_LOOP() {
    if (NPC_ISONFP(SELF, "SHIT")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "SHIT")) {
        AI_GOTOFP(SELF, "SHIT");
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
        AI_USEITEMTOSTATE(SELF, 0x8cdf, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_THROWBAG_END() {
    AI_USEITEMTOSTATE(SELF, 0x8cdf, -(1));
}

func void ZS_THROWAPPLE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS)) && (C_BODYSTATECONTAINS(SELF, BS_DEAD))) {
        if ((NPC_HASITEMS(SELF, 0x8cbf)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 0x8cbf);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8cbf)) == (0)) {
        CREATEINVITEM(SELF, 0x8cbf);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_THROWAPPLE_LOOP() {
    if (NPC_ISONFP(SELF, "SHIT")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "SHIT")) {
        AI_GOTOFP(SELF, "SHIT");
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
        AI_USEITEMTOSTATE(SELF, 0x8cbf, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_THROWAPPLE_END() {
    AI_USEITEMTOSTATE(SELF, 0x8cbf, -(1));
}

