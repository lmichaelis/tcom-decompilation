func void EVT_SQ311_FOUNDOGIS() {
    if ((SQ311_FOUNDOGISBODY) == (FALSE)) {
        PRINTD("Znalaz³eœ cia³o!");
        SQ311_FOUNDOGISBODY = TRUE;
    };
}

func void EVT_SQ311_STOPFIGHT() {
    if ((SQ311_STOPTHISFIGHTING) == (FALSE)) {
        PRINTD("Stop Fight");
        SQ311_STOPTHISFIGHTING = TRUE;
        if (HLP_ISVALIDNPC(MIL_11132_GUARDMINE)) {
            TELEPORTNPCTOWP(0xdf10, MIL_11132_GUARDMINE.WP);
            if ((NPC_ISDEAD(MIL_11132_GUARDMINE)) == (FALSE)) {
                B_MAGICHURTNPC(HERO, MIL_11132_GUARDMINE, 0x1869f);
            };
        };
        if (HLP_ISVALIDNPC(MIL_11143_STOCKGUARD)) {
            TELEPORTNPCTOWP(0xdf13, MIL_11143_STOCKGUARD.WP);
            if ((NPC_ISDEAD(MIL_11143_STOCKGUARD)) == (FALSE)) {
                B_MAGICHURTNPC(HERO, MIL_11143_STOCKGUARD, 0x1869f);
            };
        };
        if (HLP_ISVALIDNPC(MIL_11134_MILITIA)) {
            TELEPORTNPCTOWP(0xdf4a, MIL_11134_MILITIA.WP);
            if ((NPC_ISDEAD(MIL_11134_MILITIA)) == (FALSE)) {
                B_MAGICHURTNPC(HERO, MIL_11134_MILITIA, 0x1869f);
            };
        };
        if (HLP_ISVALIDNPC(MIL_11135_MILITIA)) {
            TELEPORTNPCTOWP(0xdf4d, MIL_11135_MILITIA.WP);
            if ((NPC_ISDEAD(MIL_11135_MILITIA)) == (FALSE)) {
                B_MAGICHURTNPC(HERO, MIL_11135_MILITIA, 0x1869f);
            };
        };
        if (HLP_ISVALIDNPC(MIL_11138_MILITIA)) {
            TELEPORTNPCTOWP(0xdf50, MIL_11138_MILITIA.WP);
            if ((NPC_ISDEAD(MIL_11138_MILITIA)) == (FALSE)) {
                B_MAGICHURTNPC(HERO, MIL_11138_MILITIA, 0x1869f);
            };
        };
        if (HLP_ISVALIDNPC(MIL_11140_MILITIA)) {
            TELEPORTNPCTOWP(0xdf53, MIL_11140_MILITIA.WP);
            if ((NPC_ISDEAD(MIL_11140_MILITIA)) == (FALSE)) {
                B_MAGICHURTNPC(HERO, MIL_11140_MILITIA, 0x1869f);
            };
        };
        if (HLP_ISVALIDNPC(MIL_11141_MILITIA)) {
            TELEPORTNPCTOWP(0xdf56, MIL_11141_MILITIA.WP);
            if ((NPC_ISDEAD(MIL_11141_MILITIA)) == (FALSE)) {
                B_MAGICHURTNPC(HERO, MIL_11141_MILITIA, 0x1869f);
            };
        };
        if (HLP_ISVALIDNPC(MIL_11142_MILITIA)) {
            TELEPORTNPCTOWP(0xdf59, MIL_11142_MILITIA.WP);
            if ((NPC_ISDEAD(MIL_11142_MILITIA)) == (FALSE)) {
                B_MAGICHURTNPC(HERO, MIL_11142_MILITIA, 0x1869f);
            };
        };
        if (HLP_ISVALIDNPC(MIL_11144_MILITIA)) {
            TELEPORTNPCTOWP(0xdf5d, MIL_11144_MILITIA.WP);
            if ((NPC_ISDEAD(MIL_11144_MILITIA)) == (FALSE)) {
                B_MAGICHURTNPC(HERO, MIL_11144_MILITIA, 0x1869f);
            };
        };
        if (HLP_ISVALIDNPC(MIL_11131_ELWART)) {
            TELEPORTNPCTOWP(0xdf79, MIL_11131_ELWART.WP);
            if ((NPC_ISDEAD(MIL_11131_ELWART)) == (FALSE)) {
                B_MAGICHURTNPC(HERO, MIL_11131_ELWART, 0x1869f);
            };
        };
        SQ311_AFTERFIGHT();
    };
}

var int EVT_SQ311_STOPFIGHT.SQ311_STOPTHISFIGHTING = 0;
