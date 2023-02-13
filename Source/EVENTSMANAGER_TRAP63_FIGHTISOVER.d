func void EVENTSMANAGER_TRAP63_FIGHTISOVER() {
    if ((PARTM2_FIGHTISOVERGENERAL) == (FALSE)) {
        if ((PARTM2_FIGHTISOVER01) == (FALSE)) {
            if (HLP_ISVALIDNPC(VLK_11249_REFUGEE)) {
                if (NPC_ISDEAD(VLK_11249_REFUGEE)) {
                    PRINTD("Dziewczyna w M2 zginê³a");
                    NPC_EXCHANGEROUTINE(BDT_11248_REFUGEE, "AfterEvent");
                    BDT_11248_REFUGEE.GUILD = GIL_BDT;
                    PARTM2_FIGHTISOVER01 = TRUE;
                };
            };
        };
        if ((PARTM2_FIGHTISOVER02) == (FALSE)) {
            if (HLP_ISVALIDNPC(BDT_11248_REFUGEE)) {
                if (NPC_ISDEAD(BDT_11248_REFUGEE)) {
                    NPC_EXCHANGEROUTINE(MIL_11247_MILITIA, "AfterEvent");
                    PRINTD("Bandyta w M2 zgin¹³");
                    if ((PARTM2_FIGHTISOVER01) == (FALSE)) {
                        VLK_11249_REFUGEE.FLAGS = 2;
                        VLK_11249_REFUGEE.GUILD = GIL_VLK;
                        NPC_EXCHANGEROUTINE(VLK_11249_REFUGEE, TOT);
                        VLK_11249_REFUGEE.ATTRIBUTE[0] = VLK_11249_REFUGEE.ATTRIBUTE[1];
                        PRINTD("A dziewczyna w M2 prze¿y³a");
                    };
                    PARTM2_FIGHTISOVER02 = TRUE;
                    PARTM2_FIGHTISOVERGENERAL = TRUE;
                };
            };
        };
    };
}

