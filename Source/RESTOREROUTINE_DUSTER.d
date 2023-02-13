func void RESTOREROUTINE_DUSTER() {
    if ((((((((LOG_GETSTATUS(MIS_Q203)) == (LOG_RUNNING)) && ((Q203_DUSTER_RTNCHECK) >= (1))) && ((BECOMEAGUARD_TAVERNPART) != (2))) || ((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_DUSTER_RTNCHECK) >= (1))) && ((NPC_KNOWSINFO(HERO, 67210)) == (FALSE)))) || ((((LOG_GETSTATUS(MIS_Q401)) == (LOG_RUNNING)) && ((Q401_DUSTER_RTNCHECK) >= (1))) && ((Q401_DUSTERBIZZAREADVENTURE) != (5)))) || (((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) && ((QM401_DUSTER_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_Q506)) == (LOG_RUNNING)) && ((Q506_DUSTER_RTNCHECK) >= (1)))) {
        if ((((LOG_GETSTATUS(MIS_Q203)) == (LOG_RUNNING)) && ((Q203_DUSTER_RTNCHECK) >= (1))) && ((BECOMEAGUARD_TAVERNPART) != (2))) {
            if ((Q203_DUSTER_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, "JOININGMILITIA");
            } else if ((Q203_DUSTER_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, "JOININGMILITIA_TAVERN");
            };
            return;
        };
        if ((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_DUSTER_RTNCHECK) >= (1))) && ((NPC_KNOWSINFO(HERO, 67210)) == (FALSE))) {
            if ((SQ225_DUSTER_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, "SQ225_WAIT");
            };
            return;
        };
        if ((((LOG_GETSTATUS(MIS_Q401)) == (LOG_RUNNING)) && ((Q401_DUSTER_RTNCHECK) >= (1))) && ((Q401_DUSTERBIZZAREADVENTURE) != (5))) {
            if ((Q401_DUSTER_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, "WOLFSDEN");
            } else if ((Q401_DUSTER_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, "PREPARE");
            } else if ((Q401_DUSTER_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, "EXPLOSION");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) && ((QM401_DUSTER_RTNCHECK) >= (1))) {
            if ((QM401_DUSTER_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, "QM401_VINEYARD_CART");
            } else if ((Q401_DUSTER_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, "QM401_VINEYARD_SMALLTALK");
            } else if ((Q401_DUSTER_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, "QM401_VINEYARD_PREPAREATTACK");
            } else if ((Q401_DUSTER_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, "QM401_VIENYARD_WAIT");
            } else if ((Q401_DUSTER_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, "QM401_VIENYARD_FIGHT");
            } else if ((Q401_DUSTER_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, "QM401_VIENYARD_TIRED");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_Q506)) == (LOG_RUNNING)) && ((Q506_DUSTER_RTNCHECK) >= (1))) {
            if ((Q506_DUSTER_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, "Q506_WAIT");
            };
            return;
        };
    };
    if ((Q506_DUSTERVOLFZACKE) == (FALSE)) {
        PRINTD("Duster idzie do miasta");
        NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, START);
    };
    PRINTD("Duster idzie pod Volfzacke");
    NPC_EXCHANGEROUTINE(MIL_6371_DUSTER, "Q506_CAMP");
}

