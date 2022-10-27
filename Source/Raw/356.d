func void RESTOREROUTINE_KESSEL() {
    if ((((((((LOG_GETSTATUS(MIS_Q405)) == (LOG_RUNNING)) && ((Q405_KESSEL_RTNCHECK) >= (1))) || (((LOG_GETSTATUS(MIS_Q406)) == (LOG_RUNNING)) && ((Q406_KESSEL_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_Q502)) == (LOG_RUNNING)) && ((Q502_KESSEL_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_Q503)) == (LOG_RUNNING)) && ((Q503_KESSEL_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_Q506)) == (LOG_RUNNING)) && ((Q506_KESSEL_RTNCHECK) >= (1)))) || ((((LOG_GETSTATUS(MIS_SQ504)) == (LOG_RUNNING)) && ((SQ504_KESSEL_RTNCHECK) >= (1))) && ((Q203_MILITIAGUILDREPUTATION) == (TRUE)))) {
        if (((LOG_GETSTATUS(MIS_Q405)) == (LOG_RUNNING)) && ((Q405_KESSEL_RTNCHECK) >= (1))) {
            PRINTD("Kessel idzie pod RTN - Q405");
            if ((Q405_KESSEL_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q405_BEFORECUTSCENE");
            } else if ((Q405_KESSEL_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q405_WAIT");
            } else if ((Q405_KESSEL_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q405_JornHOUSE_GUIDE");
            } else if ((Q405_KESSEL_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q405_JornHOUSE_GUIDE2");
            } else if ((Q405_KESSEL_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q405_JornHOUSE_SEARCH");
            } else if ((Q405_KESSEL_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q405_JornHOUSE_ESCAPED");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_Q406)) == (LOG_RUNNING)) && ((Q406_KESSEL_RTNCHECK) >= (1))) {
            PRINTD("Kessel idzie pod RTN - Q406");
            if ((Q406_KESSEL_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q406_VINEYARD");
            } else if ((Q406_KESSEL_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q406_HOUSE");
            } else if ((Q406_KESSEL_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q406_HOUSE2");
            } else if ((Q406_KESSEL_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q406_HOUSEFLEE");
            } else if ((Q406_KESSEL_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q406_HOUSEFLEE2");
            } else if ((Q406_KESSEL_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q406_HOUSEFLEE3");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_Q502)) == (LOG_RUNNING)) && ((Q502_KESSEL_RTNCHECK) >= (1))) {
            PRINTD("Kessel idzie pod RTN - Q502");
            if ((Q502_PREPAREKESSEL) == (TRUE)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, RESERVED_CONST_STRING_14);
            } else if ((Q502_KESSEL_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q502_MONASTERY");
            } else if ((Q502_KESSEL_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q502_WAIT");
            } else if ((Q502_KESSEL_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q502_GUIDE");
            } else if ((Q502_KESSEL_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q502_SMALLTALK");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_Q503)) == (LOG_RUNNING)) && ((Q503_KESSEL_RTNCHECK) >= (1))) {
            PRINTD("Kessel idzie pod RTN - Q503");
            if ((Q503_KESSEL_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q503WAIT");
            } else if ((Q503_KESSEL_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q503TRIALOG");
            } else if ((Q503_KESSEL_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q503WAITV2");
            } else if ((Q503_KESSEL_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q503_GUIDE");
            } else if ((Q503_KESSEL_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q503FIGHT");
            } else if ((Q503_KESSEL_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q503TIRED");
            } else if ((Q503_KESSEL_RTNCHECK) == (7)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q503_GATESEARCH");
            } else if ((Q503_KESSEL_RTNCHECK) == (8)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q503_WAITOUTSIDE");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_Q506)) == (LOG_RUNNING)) && ((Q506_KESSEL_RTNCHECK) >= (1))) {
            PRINTD("Kessel idzie pod RTN - Q505_WAITCAMP");
            if ((Q506_KESSEL_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q505_WAITCAMP");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_SQ504)) == (LOG_RUNNING)) && ((SQ504_KESSEL_RTNCHECK) >= (1))) {
            PRINTD("Kessel idzie pod RTN - SQ504");
            if ((SQ504_KESSEL_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "SQ504_WAITBRIDGE");
            } else if ((SQ504_KESSEL_RTNCHECK) == (2)) {
                SQ504_KESSELWAITTOGUIDE = 1;
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "SQ504_WAITBRIDGE");
            } else if ((SQ504_KESSEL_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "SQ504_JOINCIRCLE");
            };
            return;
        };
    };
    PRINTD("Kessel nie wie co robiæ, wiêc idzie pod Volfzacke");
    NPC_EXCHANGEROUTINE(NONE_202_KESSEL, "Q505_WAITCAMP");
}

