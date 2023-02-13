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

func void ZS_LAUGH_END() {
}

