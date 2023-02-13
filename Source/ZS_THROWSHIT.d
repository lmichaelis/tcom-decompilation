func void ZS_THROWSHIT() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS)) && (C_BODYSTATECONTAINS(SELF, BS_DEAD))) {
        if ((NPC_HASITEMS(SELF, 36028)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 36028);
        };
    };
    if ((NPC_HASITEMS(SELF, 36028)) == (0)) {
        CREATEINVITEM(SELF, 36028);
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
        AI_USEITEMTOSTATE(SELF, 36028, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_THROWSHIT_END() {
    AI_USEITEMTOSTATE(SELF, 36028, -(1));
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
    var int RNDINNOS;
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
            if ((NPC_HASITEMS(SELF, 36046)) == (0)) {
                CREATEINVITEMS(SELF, 36046, 1);
            };
            AI_USEITEMTOSTATE(SELF, 36046, 1);
            SELF.AIVAR[19] = ISINPOS;
        } else if ((RNDINNOS) == (1)) {
            if ((NPC_HASITEMS(SELF, 36047)) == (0)) {
                CREATEINVITEMS(SELF, 36047, 1);
            };
            AI_USEITEMTOSTATE(SELF, 36047, 1);
            SELF.AIVAR[19] = ISINPOS;
        } else if ((RNDINNOS) == (2)) {
            if ((NPC_HASITEMS(SELF, 36048)) == (0)) {
                CREATEINVITEMS(SELF, 36048, 1);
            };
            AI_USEITEMTOSTATE(SELF, 36048, 1);
            SELF.AIVAR[19] = ISINPOS;
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_THROWINNOS_END() {
    if ((NPC_HASITEMS(SELF, 36046)) == (1)) {
        AI_USEITEMTOSTATE(SELF, 36046, -(1));
    };
    if ((NPC_HASITEMS(SELF, 36047)) == (1)) {
        AI_USEITEMTOSTATE(SELF, 36047, -(1));
    };
    if ((NPC_HASITEMS(SELF, 36048)) == (1)) {
        AI_USEITEMTOSTATE(SELF, 36048, -(1));
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
        if ((NPC_HASITEMS(SELF, 36030)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 36030);
        };
    };
    if ((NPC_HASITEMS(SELF, 36030)) == (0)) {
        CREATEINVITEM(SELF, 36030);
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
        AI_USEITEMTOSTATE(SELF, 36030, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_THROWSCAV_END() {
    AI_USEITEMTOSTATE(SELF, 36030, -(1));
}

func void ZS_THROWBAG() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS)) && (C_BODYSTATECONTAINS(SELF, BS_DEAD))) {
        if ((NPC_HASITEMS(SELF, 36063)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 36063);
        };
    };
    if ((NPC_HASITEMS(SELF, 36063)) == (0)) {
        CREATEINVITEM(SELF, 36063);
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
        AI_USEITEMTOSTATE(SELF, 36063, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_THROWBAG_END() {
    AI_USEITEMTOSTATE(SELF, 36063, -(1));
}

func void ZS_THROWAPPLE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS)) && (C_BODYSTATECONTAINS(SELF, BS_DEAD))) {
        if ((NPC_HASITEMS(SELF, 36031)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 36031);
        };
    };
    if ((NPC_HASITEMS(SELF, 36031)) == (0)) {
        CREATEINVITEM(SELF, 36031);
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
        AI_USEITEMTOSTATE(SELF, 36031, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_THROWAPPLE_END() {
    AI_USEITEMTOSTATE(SELF, 36031, -(1));
}

