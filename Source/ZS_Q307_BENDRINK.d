func void ZS_Q307_BENDRINK() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_Q307_BENDRINK_LOOP() {
    var int DRINKWP;
    NPC_INITAMBIENTS(SELF, 4);
    DRINKWP = NPC_GETLASTAMBIENT(SELF);
    if ((NPC_GETSTATETIME(SELF)) >= (15)) {
        PRINTD("Idzie");
        if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(NONE_1316_TARA))) {
            if ((DRINKWP) == (1)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_01);
            };
            if ((DRINKWP) == (2)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_BEN);
            };
            if ((DRINKWP) == (3)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_02);
            };
            if ((DRINKWP) == (4)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_BEN);
            };
        } else if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(NONE_1315_ROSITA))) {
            if ((Q305_HERDIS_FINISHWAY) == (1)) {
                if ((DRINKWP) == (1)) {
                    AI_GOTOWP(SELF, PART17_BAR_WAITRESS_06);
                };
                if ((DRINKWP) == (2)) {
                    AI_GOTOWP(SELF, PART17_BAR_WAITRESS_03);
                };
                if ((DRINKWP) == (3)) {
                    AI_GOTOWP(SELF, PART17_BAR_WAITRESS_05);
                };
                if ((DRINKWP) == (4)) {
                    AI_GOTOWP(SELF, PART17_BAR_WAITRESS_04);
                };
            } else if ((DRINKWP) == (1)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_BEN);
            };
            if ((DRINKWP) == (2)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_03);
            };
            if ((DRINKWP) == (3)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_BEN);
            };
            if ((DRINKWP) == (4)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_04);
            };
        } else if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(NONE_6335_MILLIE))) {
            if ((DRINKWP) == (1)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_BEN);
            };
            if ((DRINKWP) == (2)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_04);
            };
            if ((DRINKWP) == (3)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_BEN);
            };
            if ((DRINKWP) == (4)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_05);
            };
        } else if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(NONE_6334_HERDIS))) {
            if ((DRINKWP) == (1)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_03);
            };
            if ((DRINKWP) == (2)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_01);
            };
            if ((DRINKWP) == (3)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_04);
            };
            if ((DRINKWP) == (4)) {
                AI_GOTOWP(SELF, PART17_BAR_WAITRESS_01);
            };
        };
        AI_ALIGNTOWP(SELF);
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_Q307_BENDRINK_END() {
}

