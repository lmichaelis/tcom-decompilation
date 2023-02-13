func void P2_HUNTERS_TRAP() {
    B_IMMEDIATEATTACKPLAYER(NONE_11126_IGNIS, AR_KILL);
    NONE_11126_IGNIS.FLAGS = 0;
    NPC_REFRESH(NONE_11128_MAKOT);
    B_IMMEDIATEATTACKPLAYER(NONE_11128_MAKOT, AR_KILL);
    NONE_11128_MAKOT.FLAGS = 0;
    NPC_REFRESH(NONE_11127_ADI);
    B_IMMEDIATEATTACKPLAYER(NONE_11127_ADI, AR_KILL);
    NONE_11127_ADI.FLAGS = 0;
    NPC_REFRESH(NONE_11129_REG);
    B_IMMEDIATEATTACKPLAYER(NONE_11129_REG, AR_KILL);
    NONE_11129_REG.FLAGS = 0;
}

instance DIA_IGNIS_EXIT(C_INFO) {
    NPC = 55694;
    NR = 999;
    CONDITION = DIA_IGNIS_EXIT_CONDITION;
    INFORMATION = DIA_IGNIS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_IGNIS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_IGNIS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_IGNIS_HUNTERSTRIALOG(C_INFO) {
    NPC = 55694;
    NR = 1;
    CONDITION = DIA_IGNIS_HUNTERSTRIALOG_CONDITION;
    INFORMATION = DIA_IGNIS_HUNTERSTRIALOG_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_IGNIS_HUNTERSTRIALOG_CONDITION() {
    if (((((NPC_GETDISTTOWP(NONE_11126_IGNIS, RNG_TRAP08_WAYPOINT)) <= (500)) && ((NPC_GETDISTTOWP(NONE_11127_ADI, "PART2_EASTEREGG_ADI")) <= (500))) && ((NPC_GETDISTTOWP(NONE_11128_MAKOT, "PART2_EASTEREGG_MAKOT")) <= (500))) && ((NPC_GETDISTTOWP(NONE_11129_REG, "PART2_EASTEREGG_REG")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_IGNIS_HUNTERSTRIALOG_INFO() {
    TRIA_INVITE(NONE_11127_ADI);
    TRIA_INVITE(NONE_11128_MAKOT);
    TRIA_INVITE(NONE_11129_REG);
    TRIA_START();
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_02");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11127_ADI);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    CREATEINVITEM(SELF, 33926);
    B_STOPLOOKAT(SELF);
    AI_USEITEMTOSTATE(SELF, 33926, 1);
    AI_WAIT(SELF, 1065353216);
    AI_USEITEMTOSTATE(SELF, 33926, -(1));
    B_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_04");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11129_REG);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_05");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11128_MAKOT);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_07");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11127_ADI);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, NONE_11128_MAKOT);
    AI_TURNTONPC(SELF, NONE_11128_MAKOT);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_08");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11128_MAKOT);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, NONE_11127_ADI);
    AI_TURNTONPC(SELF, NONE_11127_ADI);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_09");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11127_ADI);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, NONE_11128_MAKOT);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_10");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11128_MAKOT);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, NONE_11127_ADI);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_11");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11126_IGNIS);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, NONE_11128_MAKOT);
    AI_TURNTONPC(SELF, NONE_11128_MAKOT);
    AI_TURNTONPC(NONE_11128_MAKOT, SELF);
    AI_TURNTONPC(NONE_11127_ADI, SELF);
    AI_TURNTONPC(NONE_11129_REG, SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_12");
    TRIA_WAIT();
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    AI_TURNTONPC(SELF, OTHER);
    AI_TURNTONPC(NONE_11128_MAKOT, OTHER);
    AI_TURNTONPC(NONE_11127_ADI, OTHER);
    AI_TURNTONPC(NONE_11129_REG, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_14");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_15");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11129_REG);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, NONE_11126_IGNIS);
    AI_TURNTONPC(SELF, NONE_11126_IGNIS);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_16");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11127_ADI);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, NONE_11126_IGNIS);
    AI_TURNTONPC(SELF, NONE_11126_IGNIS);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_17");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11128_MAKOT);
    AI_LOOKATNPC(OTHER, SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_18");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11126_IGNIS);
    AI_LOOKATNPC(OTHER, SELF);
    AI_TURNTONPC(SELF, NONE_11127_ADI);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_19");
    TRIA_WAIT();
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    AI_TURNTONPC(SELF, OTHER);
    AI_TURNTONPC(NONE_11128_MAKOT, OTHER);
    AI_TURNTONPC(NONE_11127_ADI, OTHER);
    AI_TURNTONPC(NONE_11129_REG, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_20");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_21");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11129_REG);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, NONE_11127_ADI);
    AI_TURNTONPC(SELF, NONE_11127_ADI);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_22");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11127_ADI);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    AI_LOOKATNPC(SELF, NONE_11129_REG);
    AI_TURNTONPC(SELF, NONE_11129_REG);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_23");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_24");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11128_MAKOT);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_25");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_26");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11126_IGNIS);
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    AI_TURNTONPC(SELF, OTHER);
    AI_TURNTONPC(NONE_11128_MAKOT, SELF);
    AI_TURNTONPC(NONE_11127_ADI, SELF);
    AI_TURNTONPC(NONE_11129_REG, SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_27");
    TRIA_WAIT();
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    AI_TURNTONPC(SELF, OTHER);
    AI_TURNTONPC(NONE_11128_MAKOT, OTHER);
    AI_TURNTONPC(NONE_11127_ADI, OTHER);
    AI_TURNTONPC(NONE_11129_REG, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_28");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_03_29");
    TRIA_FINISH();
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
    INFO_CLEARCHOICES(77257);
    INFO_ADDCHOICE(77257, "Enough with those games!", 77262);
    if ((NPC_HASITEMS(OTHER, 34203)) >= (IGNIS_DRINK)) {
        INFO_ADDCHOICE(77257, "Drink for my health! (Give 100 GP)", 77261);
    };
    INFO_ADDCHOICE(77257, "I don't have that much gold.", 77260);
}

func void DIA_IGNIS_HUNTERSTRIALOG_NOGOLD() {
    B_SAY(OTHER, SELF, "$MARVIN_IDONTHAVEGOLD");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_NoGold_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_NoGold_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_NoGold_03_04");
    NPC_EXCHANGEROUTINE(NONE_11126_IGNIS, TOT);
    NPC_EXCHANGEROUTINE(NONE_11127_ADI, TOT);
    NPC_EXCHANGEROUTINE(NONE_11128_MAKOT, TOT);
    NPC_EXCHANGEROUTINE(NONE_11129_REG, TOT);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_IGNIS_HUNTERSTRIALOG_GOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ignis_HuntersTrialog_Gold_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 34203, IGNIS_DRINK);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_Gold_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_Gold_03_03");
    CREATEINVITEMS(SELF, 34375, 1);
    B_GIVEINVITEMS(SELF, OTHER, 34375, 1);
    B_GIVEPLAYERXP(XP_EVENT_IGNIS);
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_Gold_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_Gold_03_05");
    NPC_EXCHANGEROUTINE(NONE_11126_IGNIS, TOT);
    NPC_EXCHANGEROUTINE(NONE_11127_ADI, TOT);
    NPC_EXCHANGEROUTINE(NONE_11128_MAKOT, TOT);
    NPC_EXCHANGEROUTINE(NONE_11129_REG, TOT);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_IGNIS_HUNTERSTRIALOG_BADTIME() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ignis_HuntersTrialog_BadTime_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Ignis_HuntersTrialog_BadTime_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_BadTime_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_BadTime_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_HuntersTrialog_BadTime_03_05");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(OTHER, 77253);
}

instance DIA_IGNIS_EASTEREGG(C_INFO) {
    NPC = 55694;
    NR = 4;
    CONDITION = DIA_IGNIS_EASTEREGG_CONDITION;
    INFORMATION = DIA_IGNIS_EASTEREGG_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_IGNIS_EASTEREGG_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 77257)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_IGNIS_EASTEREGG_INFO() {
    B_USEFAKESCROLLSTATE_START();
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_EasterEgg_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_EasterEgg_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_EasterEgg_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_EasterEgg_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_EasterEgg_03_10");
    B_USEFAKESCROLLSTATE_END();
    AI_OUTPUT(OTHER, SELF, "DIA_Ignis_EasterEgg_15_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_EasterEgg_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Ignis_EasterEgg_03_13");
    AI_STOPPROCESSINFOS(SELF);
}

