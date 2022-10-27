func void RESTOREROUTINE_RUUD() {
    if ((((LOG_GETSTATUS(MIS_CQ006)) == (LOG_RUNNING)) && ((CQ006_RUUD_RTNCHECK) >= (1))) || ((LOG_GETSTATUS(MIS_CQ006)) == (LOG_SUCCESS))) {
        if (((LOG_GETSTATUS(MIS_CQ006)) == (LOG_RUNNING)) && ((CQ006_RUUD_RTNCHECK) >= (1))) {
            if ((CQ006_RUUD_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(VLK_6282_RUUD, "CQ006_HARBOUR");
            } else if ((CQ006_RUUD_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(VLK_6282_RUUD, "CQ006_FLEE");
            };
            return;
        };
        if ((LOG_GETSTATUS(MIS_CQ006)) == (LOG_SUCCESS)) {
            if ((Q504_RUUDVOLFZACKE) == (1)) {
                NPC_EXCHANGEROUTINE(VLK_6282_RUUD, "Q506_CAMP");
                return;
            };
            if (((LOG_GETSTATUS(MIS_KQ406)) == (LOG_RUNNING)) && ((KQ406_RUUD_RTNCHECK) >= (1))) {
                if ((KQ406_RUUD_RTNCHECK) == (1)) {
                    NPC_EXCHANGEROUTINE(VLK_6282_RUUD, "KQ406_STOP");
                } else if ((KQ406_RUUD_RTNCHECK) == (2)) {
                    NPC_EXCHANGEROUTINE(VLK_6282_RUUD, "KQ406_ANGRYMOB");
                };
                return;
            };
            NPC_EXCHANGEROUTINE(VLK_6282_RUUD, "NORMALDAY");
            return;
        };
    };
    NPC_EXCHANGEROUTINE(VLK_6282_RUUD, START);
}

