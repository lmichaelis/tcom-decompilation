func void B_ANNOUNCE_PROPAGANDIST() {
    if (C_BODYSTATECONTAINS(SELF, BS_SIT)) {
        AI_STANDUP(SELF);
        B_TURNTONPC(SELF, HERO);
    };
    AI_REMOVEWEAPON(SELF);
    CREATEINVITEM(SELF, 0x8486);
    AI_USEITEMTOSTATE(SELF, 0x8486, 1);
    RANDY = HLP_RANDOM(5);
    PRO01 = HLP_GETNPC(0xd017);
    PRO02 = HLP_GETNPC(0xd012);
    PRO03 = HLP_GETNPC(0xd537);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(PRO01))) {
        if ((RANDY) < (3)) {
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_00");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_01");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_02");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_03");
        } else if ((RANDY) >= (3)) {
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_04");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_05");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_06");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_07");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_08");
        };
    };
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(PRO02))) {
        if ((RANDY) < (3)) {
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_09");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_10");
        } else if (((RANDY) >= (3)) && ((RANDY) < (5))) {
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_11");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_12");
        } else if ((RANDY) == (5)) {
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_13");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_14");
        };
    };
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(PRO03))) {
        if ((RANDY) < (3)) {
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_15");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_16");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_17");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_18");
        } else if (((RANDY) >= (3)) && ((RANDY) < (5))) {
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_19");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_20");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_21");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_22");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_23");
        } else if ((RANDY) == (5)) {
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_24");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_25");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_26");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_27");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_28");
            AI_OUTPUT(SELF, SELF, "DIA_Propagandist_Announce_04_29");
        };
    };
    AI_USEITEMTOSTATE(SELF, 0x8486, -(1));
}

var int B_ANNOUNCE_PROPAGANDIST.RANDY = 0;
instance B_ANNOUNCE_PROPAGANDIST.PRO01(C_NPC)
instance B_ANNOUNCE_PROPAGANDIST.PRO02(C_NPC)
instance B_ANNOUNCE_PROPAGANDIST.PRO03(C_NPC)
