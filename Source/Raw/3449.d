func void KQ403_CHANGERTN() {
    PRINTD("Zmiana rutyn!");
    B_STARTOTHERROUTINE(VLK_6003_KALEB, "KQ403");
    NPC_REFRESH(VLK_6003_KALEB);
}

func void KQ403_TELEPORTLADY() {
    PRINTD("Zmiana rutyn!");
    B_STARTOTHERROUTINE(VLK_6065_OLDLADY, "KQ403");
    NPC_REFRESH(VLK_6065_OLDLADY);
    TELEPORTNPCTOWP(0xd342, VLK_6065_OLDLADY.WP);
}

func void KQ403_FOLLOWLADY() {
    VLK_6065_OLDLADY.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(VLK_6065_OLDLADY, "KQ403_FOLLOW");
    NPC_REFRESH(VLK_6065_OLDLADY);
}

func void KQ403_PREPAREHOUSE() {
    PRINTD("Przedmioty gotowe");
    B_STARTOTHERROUTINE(VLK_6003_KALEB, "KQ403_TAVERN");
    NPC_REFRESH(VLK_6003_KALEB);
    B_STARTOTHERROUTINE(VLK_6065_OLDLADY, "KQ403_WAIT");
    NPC_REFRESH(VLK_6065_OLDLADY);
    TELEPORTNPCTOWP(0xd342, VLK_6065_OLDLADY.WP);
    WLD_SENDTRIGGER("KQ403_HOUSE_01");
    WLD_SENDTRIGGER("KQ403_HOUSE_02");
    WLD_SENDTRIGGER("KQ403_HOUSE_03");
}

func void KQ403_PREPARELASTEVENT() {
    PRINTD("Zmiana RTN");
    B_STARTOTHERROUTINE(VLK_6009_GIRL, "KQ403_EVENT");
    NPC_REFRESH(VLK_6009_GIRL);
    TELEPORTNPCTOWP(0xd3fc, VLK_6009_GIRL.WP);
    B_STARTOTHERROUTINE(VLK_6005_GIRL, "KQ403_EVENT");
    NPC_REFRESH(VLK_6005_GIRL);
    TELEPORTNPCTOWP(0xd3ef, VLK_6005_GIRL.WP);
    B_STARTOTHERROUTINE(VLK_6001_FISHMONGER, "KQ403_EVENT");
    NPC_REFRESH(VLK_6001_FISHMONGER);
    TELEPORTNPCTOWP(0xd332, VLK_6001_FISHMONGER.WP);
    B_STARTOTHERROUTINE(VLK_6000_FISHMONGER, "KQ403_EVENT");
    NPC_REFRESH(VLK_6000_FISHMONGER);
    TELEPORTNPCTOWP(0xd32e, VLK_6000_FISHMONGER.WP);
    B_STARTOTHERROUTINE(VLK_6065_OLDLADY, "KQ403_EVENT");
    NPC_REFRESH(VLK_6065_OLDLADY);
    TELEPORTNPCTOWP(0xd342, VLK_6065_OLDLADY.WP);
    B_STARTOTHERROUTINE(VLK_6064_OLDGUY, "KQ403_EVENT");
    NPC_REFRESH(VLK_6064_OLDGUY);
    TELEPORTNPCTOWP(0xd33d, VLK_6064_OLDGUY.WP);
    B_STARTOTHERROUTINE(VLK_6003_KALEB, "KQ403_EVENT");
    NPC_REFRESH(VLK_6003_KALEB);
    TELEPORTNPCTOWP(0xd51a, VLK_6003_KALEB.WP);
    KQ403_CARAMON_RTNCHECK = 7;
    B_STARTOTHERROUTINE(SLD_1009_CARAMON, "KQ403_WAIT");
    NPC_REFRESH(SLD_1009_CARAMON);
    TELEPORTNPCTOWP(0xcb1c, SLD_1009_CARAMON.WP);
}

func void KQ403_TAVERN() {
    PRINTD("Zmiana RTN");
    B_STARTOTHERROUTINE(VLK_6009_GIRL, "TAVERN");
    NPC_REFRESH(VLK_6009_GIRL);
    TELEPORTNPCTOWP(0xd3fc, VLK_6009_GIRL.WP);
    B_STARTOTHERROUTINE(VLK_6005_GIRL, "TAVERN");
    NPC_REFRESH(VLK_6005_GIRL);
    TELEPORTNPCTOWP(0xd3ef, VLK_6005_GIRL.WP);
    B_STARTOTHERROUTINE(VLK_6001_FISHMONGER, "TAVERN");
    NPC_REFRESH(VLK_6001_FISHMONGER);
    TELEPORTNPCTOWP(0xd332, VLK_6001_FISHMONGER.WP);
    B_STARTOTHERROUTINE(VLK_6000_FISHMONGER, "TAVERN");
    NPC_REFRESH(VLK_6000_FISHMONGER);
    TELEPORTNPCTOWP(0xd32e, VLK_6000_FISHMONGER.WP);
    B_STARTOTHERROUTINE(VLK_6065_OLDLADY, "TAVERN");
    NPC_REFRESH(VLK_6065_OLDLADY);
    TELEPORTNPCTOWP(0xd342, VLK_6065_OLDLADY.WP);
    B_STARTOTHERROUTINE(VLK_6064_OLDGUY, "TAVERN");
    NPC_REFRESH(VLK_6064_OLDGUY);
    TELEPORTNPCTOWP(0xd33d, VLK_6064_OLDGUY.WP);
    B_STARTOTHERROUTINE(VLK_6003_KALEB, "TAVERN");
    NPC_REFRESH(VLK_6003_KALEB);
    TELEPORTNPCTOWP(0xd51a, VLK_6003_KALEB.WP);
}

func void KQ403_HIDEEVENTS() {
    WLD_SENDTRIGGER("KQ403_BONE_01");
    WLD_SENDTRIGGER("KQ403_BONE_02");
    WLD_SENDTRIGGER("KQ403_BONE_03");
    WLD_SENDTRIGGER("KQ403_BLOOD");
    WLD_SENDTRIGGER("KQ403_SWORD");
}

func void KQ403_HOUSEENTER_STOP() {
    KQ403_READYFORDEMOLISHHOUSE = 10;
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_KQ403_EnterHouse_15_01");
    AI_FUNCTION(HERO, 0xf1be);
}

func void KQ403_HOUSEENTER_STOP_UNLOCK() {
    FADESCREENTOBLACKF(1, 0xf1bf, 500);
}

func void KQ403_HOUSEENTER_STOP_UNLOCK_FADESCREEN() {
    KQ403_READYFORDEMOLISHHOUSE = 1;
    TELEPORTNPCTOWP(0x71b, "HARBOUR_PATH_167");
    FADESCREENFROMBLACK(1);
    HERO.AIVAR[4] = FALSE;
}

func void KQ403_HOUSEENTER_FLOOR_STOP() {
    KQ403_READYFORDEMOLISHHOUSE = 10;
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_KQ403_EnterHouse_15_02");
    AI_FUNCTION(HERO, 0xf1c1);
}

func void KQ403_HOUSEENTER_FLOOR_STOP_UNLOCK() {
    FADESCREENTOBLACKF(1, 0xf1c2, 500);
}

func void KQ403_HOUSEENTER_FLOOR_STOP_UNLOCK_FADESCREEN() {
    KQ403_READYFORDEMOLISHHOUSE = 1;
    TELEPORTNPCTOWP(0x71b, "HARBOUR_HOUSE01_05");
    FADESCREENFROMBLACK(1);
    HERO.AIVAR[4] = FALSE;
}

func void KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY() {
    if ((KQ403_PREPAREHOUSE_FORKING_COLLISION) == (0)) {
        PRINTD("Rozpoczynam - KQ403_PrepareHouse_InsideHouse_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KQ403_MOVER_HOUSE_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("KQ403_MOVER_HOUSE_02");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        MOVPTR3 = MEM_SEARCHVOBBYNAME("KQ403_MOVER_HOUSE_03");
        MOVER3 = MEM_PTRTOINST(MOVPTR3);
        MOVPTR4 = MEM_SEARCHVOBBYNAME("KQ403_MOVER_HOUSE_04");
        MOVER4 = MEM_PTRTOINST(MOVPTR4);
        MOVPTR5 = MEM_SEARCHVOBBYNAME("KQ403_MOVER_HOUSE_05");
        MOVER5 = MEM_PTRTOINST(MOVPTR5);
        MOVPTR6 = MEM_SEARCHVOBBYNAME("KQ403_MOVER_HOUSE_06");
        MOVER6 = MEM_PTRTOINST(MOVPTR6);
        MOVPTR7 = MEM_SEARCHVOBBYNAME("KQ403_MOVER_NEW_HOUSE_01");
        MOVER7 = MEM_PTRTOINST(MOVPTR7);
        MOVPTR8 = MEM_SEARCHVOBBYNAME("KQ403_MOVER_NEW_HOUSE_02");
        MOVER8 = MEM_PTRTOINST(MOVPTR8);
        MOVPTR9 = MEM_SEARCHVOBBYNAME("KQ403_MOVER_NEW_HOUSE_03");
        MOVER9 = MEM_PTRTOINST(MOVPTR9);
        MOVPTR10 = MEM_SEARCHVOBBYNAME("KQ403_MOVER_NEW_HOUSE_04");
        MOVER10 = MEM_PTRTOINST(MOVPTR10);
        MOVPTR11 = MEM_SEARCHVOBBYNAME("KQ403_MOVER_NEW_HOUSE_05");
        MOVER11 = MEM_PTRTOINST(MOVPTR11);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_02", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_03", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_04", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_05", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_06", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_07", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_08", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_09", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_10", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_11", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_12", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_13", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_14", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_15", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_16", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_17", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_18", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_19", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_20", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_21", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_22", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_23", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_24", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_25", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_28", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_29", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_30", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_31", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_32", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_33", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_34", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_35", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_36", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_37", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_38", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_39", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_40", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_41", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_42", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_43", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_44", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_45", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_02", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_03", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_04", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_05", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_06", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_07", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_08", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_09", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_10", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_11", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_12", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_13", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_14", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_15", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_16", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_17", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_18", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_19", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_20", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_21", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_22", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_23", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_24", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_25", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_26", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_27", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_28", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_29", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_30", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_31", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_32", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_33", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_34", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_35", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_36", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_37", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_38", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_39", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_40", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_41", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_43", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_44", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_45", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_46", FALSE, FALSE, FALSE, FALSE);
        WLD_SENDTRIGGER("KQ403_MOVER_HOUSE_01");
        WLD_SENDTRIGGER("KQ403_MOVER_HOUSE_02");
        WLD_SENDTRIGGER("KQ403_MOVER_HOUSE_03");
        WLD_SENDTRIGGER("KQ403_MOVER_HOUSE_04");
        WLD_SENDTRIGGER("KQ403_MOVER_HOUSE_05");
        WLD_SENDTRIGGER("KQ403_MOVER_HOUSE_06");
        WLD_SENDTRIGGER("KQ403_MOVER_NEW_HOUSE_01");
        WLD_SENDTRIGGER("KQ403_MOVER_NEW_HOUSE_02");
        WLD_SENDTRIGGER("KQ403_MOVER_NEW_HOUSE_03");
        WLD_SENDTRIGGER("KQ403_MOVER_NEW_HOUSE_04");
        WLD_SENDTRIGGER("KQ403_MOVER_NEW_HOUSE_05");
        KQ403_PREPAREHOUSE_FORKING_COLLISION = 1;
    };
    if (((((((((((((((((((((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER3.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER4.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER5.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER5.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER6.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER6.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER7.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER7.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER8.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER8.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER9.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER9.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER10.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER10.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER11.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER11.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - KQ403_PrepareHouse_InsideHouse_Apply");
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_04", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_05", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_06", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_07", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_08", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_09", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_10", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_11", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_12", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_13", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_14", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_15", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_16", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_17", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_18", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_19", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_20", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_21", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_22", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_23", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_24", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_25", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_26", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_27", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_28", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_29", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_30", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_31", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_32", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_33", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_34", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_35", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_36", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_37", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_38", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_39", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_40", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_41", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_43", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_44", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_45", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KQ403_HOUSE_VOB_NEW_46", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf1c3);
        KQ403_PREPAREHOUSE_FORKING_COLLISION = 0;
    };
}

var int KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.KQ403_PREPAREHOUSE_FORKING_COLLISION = 0;
instance KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVER1(ZCMOVER)
instance KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVER2(ZCMOVER)
instance KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVER3(ZCMOVER)
instance KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVER4(ZCMOVER)
instance KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVER5(ZCMOVER)
instance KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVER6(ZCMOVER)
instance KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVER7(ZCMOVER)
instance KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVER8(ZCMOVER)
instance KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVER9(ZCMOVER)
instance KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVER10(ZCMOVER)
instance KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVER11(ZCMOVER)
var int KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVPTR1 = 0;
var int KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVPTR2 = 0;
var int KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVPTR3 = 0;
var int KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVPTR4 = 0;
var int KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVPTR5 = 0;
var int KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVPTR6 = 0;
var int KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVPTR7 = 0;
var int KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVPTR8 = 0;
var int KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVPTR9 = 0;
var int KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVPTR10 = 0;
var int KQ403_PREPAREHOUSE_INSIDEHOUSE_APPLY.MOVPTR11 = 0;
func void KQ403_PREPAREHOUSE_INSIDEHOUSE() {
    FF_APPLYONCEEXTGT(0xf1c3, 0, -(1));
}

func void KQ403_PREPAREHOUSE_SPAWNNPC() {
    WLD_INSERTNPC(0xeb0a, "HARBOUR_HOUSE01_04");
    WLD_INSERTNPC(0xeb0c, "HARBOUR_HOUSE01_04");
    WLD_INSERTNPC(0xeb0e, "HARBOUR_HOUSE01_04");
    WLD_INSERTNPC(0xeb10, "HARBOUR_HOUSE01_04");
    WLD_INSERTNPC(0xeb12, "HARBOUR_HOUSE01_04");
    WLD_INSERTNPC(0xeb14, "HARBOUR_HOUSE01_04");
    WLD_INSERTNPC(0xeb16, "HARBOUR_HOUSE01_04");
    WLD_INSERTNPC(0xeb18, "HARBOUR_HOUSE01_04");
    WLD_INSERTNPC(0xeb1a, "HARBOUR_HOUSE01_04");
    WLD_INSERTNPC(0xeb1c, "HARBOUR_HOUSE01_04");
    B_STARTOTHERROUTINE(MIL_13381_EURIC, "KALEBHOUSE");
    NPC_REFRESH(MIL_13381_EURIC);
    TELEPORTNPCTOWP(0xd1ca, MIL_13381_EURIC.WP);
}

func void KQ404_PREPAREHOUSE() {
    KQ403_PREPAREHOUSE_INSIDEHOUSE();
    KQ403_PREPAREHOUSE_SPAWNNPC();
    if (((HERO.GUILD) == (GIL_MIL)) || (((HERO.GUILD) == (GIL_SLD)) == (FALSE))) {
        KQ403_TAVERN();
    };
}

func void KQ403_FINISHQUEST() {
    KQ403_FINISH = TRUE;
    KQ403_FINISH_DAY = WLD_GETDAY();
    if ((LOG_GETSTATUS(MIS_KQ403)) == (LOG_RUNNING)) {
        LOG_SETSTATUS(_@(MIS_KQ403), TOPIC_KQ403, LOG_SUCCESS);
        KQ403_HIDEEVENTS();
    };
    RESTOREROUTINE_CARAMON();
    KQ404_PREPAREHOUSE();
    KQ404_SPAWNNPC();
}

func void KQ403_TELEPORTTOLORENZO() {
    FADESCREENTOBLACKF(1, 0xf1e0, 1000);
}

func void KQ403_TELEPORTTOLORENZO_FADESCREEN() {
    HERO.AIVAR[4] = FALSE;
    TELEPORTNPCTOWP(0x71b, "PARTM1_GUILDHOUSE_18");
    AI_TURNTONPC(HERO, SLD_5000_LORENZO);
    FADESCREENFROMBLACK(1);
}

func void KQ403_TELEPORTTOKALEB() {
    FADESCREENTOBLACKF(1, 0xf1e2, 1000);
}

func void KQ403_TELEPORTTOKALEB_FADESCREEN() {
    HERO.AIVAR[4] = FALSE;
    if ((KQ403_OLAFTAVERNREADY) == (1)) {
        TELEPORTNPCTOWP(0x71b, "HARBOUR_TAVERN_01");
        AI_TURNTONPC(HERO, VLK_6003_KALEB);
    };
    TELEPORTNPCTOWP(0x71b, "HARBOUR_PATH_145");
    AI_TURNTONPC(HERO, VLK_6003_KALEB);
    FADESCREENFROMBLACK(1);
}
