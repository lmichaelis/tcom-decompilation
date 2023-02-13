func void B_PICKPOCKET_AMBIENT_TIER_1() {
    var int INVENTORY_OTHER;
    var int INVENTORY_PIR;
    var int INVENTORY_SLD;
    var int INVENTORY_MIL;
    var int INVENTORY_VLK;
    var int INVENTORY_BAU;
    if ((SELF.GUILD) == (GIL_BAU)) {
        if ((INVENTORY_BAU) == (0)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 34300, 2);
            B_GIVEINVITEMS(SELF, OTHER, 34300, 2);
            CREATEINVITEMS(SELF, 34203, 3);
        } else if ((INVENTORY_BAU) == (1)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 34298, 2);
            B_GIVEINVITEMS(SELF, OTHER, 34298, 2);
            CREATEINVITEMS(SELF, 34203, 4);
        } else if ((INVENTORY_BAU) == (2)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 33964, 1);
            B_GIVEINVITEMS(SELF, OTHER, 33964, 1);
            CREATEINVITEMS(SELF, 34203, 3);
        } else if ((INVENTORY_BAU) == (3)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 36378, 1);
            B_GIVEINVITEMS(SELF, OTHER, 36378, 1);
            CREATEINVITEMS(SELF, 34203, 5);
        } else if ((INVENTORY_BAU) == (4)) {
            INVENTORY_BAU = 0;
            CREATEINVITEMS(SELF, 34203, 8);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 8);
        };
    };
    if ((SELF.GUILD) == (GIL_VLK)) {
        if ((INVENTORY_VLK) == (0)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 36631, 1);
            B_GIVEINVITEMS(SELF, OTHER, 36631, 1);
            CREATEINVITEMS(SELF, 34203, 5);
        } else if ((INVENTORY_VLK) == (1)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 34204, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34204, 1);
            CREATEINVITEMS(SELF, 34203, 6);
        } else if ((INVENTORY_VLK) == (2)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 34203, 9);
        } else if ((INVENTORY_VLK) == (3)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 34203, 11);
        } else if ((INVENTORY_VLK) == (4)) {
            INVENTORY_VLK = 0;
            CREATEINVITEMS(SELF, 34203, 14);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 14);
        };
    };
    if ((SELF.GUILD) == (GIL_MIL)) {
        if ((INVENTORY_MIL) == (0)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 36368, 1);
            B_GIVEINVITEMS(SELF, OTHER, 36368, 1);
            CREATEINVITEMS(SELF, 34203, 5);
        } else if ((INVENTORY_MIL) == (1)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 34203, 6);
        } else if ((INVENTORY_MIL) == (2)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 38234, 1);
            B_GIVEINVITEMS(SELF, OTHER, 38234, 1);
            CREATEINVITEMS(SELF, 34203, 4);
        } else if ((INVENTORY_MIL) == (3)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 33847, 1);
            B_GIVEINVITEMS(SELF, OTHER, 33847, 1);
            CREATEINVITEMS(SELF, 34203, 6);
        } else if ((INVENTORY_MIL) == (4)) {
            INVENTORY_MIL = 0;
            CREATEINVITEMS(SELF, 34203, 11);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 11);
        };
    };
    if ((SELF.GUILD) == (GIL_SLD)) {
        if ((INVENTORY_SLD) == (0)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 33994, 1);
            B_GIVEINVITEMS(SELF, OTHER, 33994, 1);
            CREATEINVITEMS(SELF, 34203, 7);
        } else if ((INVENTORY_SLD) == (1)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 34194, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34194, 1);
            CREATEINVITEMS(SELF, 34203, 5);
        } else if ((INVENTORY_SLD) == (2)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 38228, 1);
            B_GIVEINVITEMS(SELF, OTHER, 38228, 1);
            CREATEINVITEMS(SELF, 34203, 7);
        } else if ((INVENTORY_SLD) == (3)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 33848, 1);
            B_GIVEINVITEMS(SELF, OTHER, 33848, 1);
            CREATEINVITEMS(SELF, 34203, 6);
        } else if ((INVENTORY_SLD) == (4)) {
            INVENTORY_SLD = 0;
            CREATEINVITEMS(SELF, 34203, 16);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 16);
        };
    };
    if ((SELF.GUILD) == (GIL_PIR)) {
        if ((INVENTORY_PIR) == (0)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 33994, 2);
            B_GIVEINVITEMS(SELF, OTHER, 33994, 2);
            CREATEINVITEMS(SELF, 34203, 7);
        } else if ((INVENTORY_PIR) == (1)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 34194, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34194, 1);
            CREATEINVITEMS(SELF, 34203, 8);
        } else if ((INVENTORY_PIR) == (2)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 38228, 1);
            B_GIVEINVITEMS(SELF, OTHER, 38228, 1);
            CREATEINVITEMS(SELF, 34203, 6);
        } else if ((INVENTORY_PIR) == (3)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 38234, 1);
            B_GIVEINVITEMS(SELF, OTHER, 38234, 1);
            CREATEINVITEMS(SELF, 34203, 7);
        } else if ((INVENTORY_PIR) == (4)) {
            INVENTORY_PIR = 0;
            CREATEINVITEMS(SELF, 34203, 21);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 21);
        };
    };
    if ((INVENTORY_OTHER) == (0)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 34203, 6);
    };
    if ((INVENTORY_OTHER) == (1)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 34194, 1);
        B_GIVEINVITEMS(SELF, OTHER, 34194, 1);
        CREATEINVITEMS(SELF, 34203, 4);
    };
    if ((INVENTORY_OTHER) == (2)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 34203, 8);
    };
    if ((INVENTORY_OTHER) == (3)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 34203, 12);
    };
    if ((INVENTORY_OTHER) == (4)) {
        INVENTORY_OTHER = 0;
        CREATEINVITEMS(SELF, 34296, 2);
        B_GIVEINVITEMS(SELF, OTHER, 34296, 2);
        CREATEINVITEMS(SELF, 34203, 5);
        B_GIVEINVITEMS(SELF, OTHER, 34203, 5);
    };
}

func void B_PICKPOCKET_AMBIENT_TIER_2() {
    var int INVENTORY_OTHER;
    var int INVENTORY_PIR;
    var int INVENTORY_DJG;
    var int INVENTORY_SLD;
    var int INVENTORY_MIL;
    var int INVENTORY_VLK;
    var int INVENTORY_BAU;
    if ((SELF.GUILD) == (GIL_BAU)) {
        if ((INVENTORY_BAU) == (0)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 34302, 2);
            B_GIVEINVITEMS(SELF, OTHER, 34302, 2);
            CREATEINVITEMS(SELF, 34203, 8);
        } else if ((INVENTORY_BAU) == (1)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 34282, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34282, 1);
            CREATEINVITEMS(SELF, 34203, 10);
        } else if ((INVENTORY_BAU) == (2)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 34276, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34276, 1);
            CREATEINVITEMS(SELF, 34203, 7);
        } else if ((INVENTORY_BAU) == (3)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 36614, 1);
            B_GIVEINVITEMS(SELF, OTHER, 36614, 1);
            CREATEINVITEMS(SELF, 34203, 9);
        } else if ((INVENTORY_BAU) == (4)) {
            INVENTORY_BAU = 0;
            CREATEINVITEMS(SELF, 34203, 18);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 18);
        };
    };
    if ((SELF.GUILD) == (GIL_VLK)) {
        if ((INVENTORY_VLK) == (0)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 36606, 1);
            B_GIVEINVITEMS(SELF, OTHER, 36606, 1);
            CREATEINVITEMS(SELF, 34203, 9);
        } else if ((INVENTORY_VLK) == (1)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 34208, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34208, 1);
            CREATEINVITEMS(SELF, 34203, 8);
        } else if ((INVENTORY_VLK) == (2)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 34203, 19);
        } else if ((INVENTORY_VLK) == (3)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 34735, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34735, 1);
            CREATEINVITEMS(SELF, 34203, 2);
        } else if ((INVENTORY_VLK) == (4)) {
            INVENTORY_VLK = 0;
            CREATEINVITEMS(SELF, 34203, 24);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 24);
        };
    };
    if ((SELF.GUILD) == (GIL_MIL)) {
        if ((INVENTORY_MIL) == (0)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 36688, 1);
            B_GIVEINVITEMS(SELF, OTHER, 36688, 1);
            CREATEINVITEMS(SELF, 34203, 11);
        } else if ((INVENTORY_MIL) == (1)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 34352, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34352, 1);
            CREATEINVITEMS(SELF, 34203, 9);
        } else if ((INVENTORY_MIL) == (2)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 38236, 1);
            B_GIVEINVITEMS(SELF, OTHER, 38236, 1);
            CREATEINVITEMS(SELF, 34203, 11);
        } else if ((INVENTORY_MIL) == (3)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 33860, 1);
            B_GIVEINVITEMS(SELF, OTHER, 33860, 1);
            CREATEINVITEMS(SELF, 34203, 9);
        } else if ((INVENTORY_MIL) == (4)) {
            INVENTORY_MIL = 0;
            CREATEINVITEMS(SELF, 34203, 22);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 22);
        };
    };
    if ((SELF.GUILD) == (GIL_SLD)) {
        if ((INVENTORY_SLD) == (0)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 33660, 1);
            B_GIVEINVITEMS(SELF, OTHER, 33660, 1);
            CREATEINVITEMS(SELF, 34203, 11);
        } else if ((INVENTORY_SLD) == (1)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 34352, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34352, 1);
            CREATEINVITEMS(SELF, 34203, 12);
        } else if ((INVENTORY_SLD) == (2)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 38230, 1);
            B_GIVEINVITEMS(SELF, OTHER, 38230, 1);
            CREATEINVITEMS(SELF, 34203, 10);
        } else if ((INVENTORY_SLD) == (3)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 33858, 1);
            B_GIVEINVITEMS(SELF, OTHER, 33858, 1);
            CREATEINVITEMS(SELF, 34203, 11);
        } else if ((INVENTORY_SLD) == (4)) {
            INVENTORY_SLD = 0;
            CREATEINVITEMS(SELF, 34203, 27);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 27);
        };
    };
    if ((SELF.GUILD) == (GIL_DJG)) {
        if ((INVENTORY_DJG) == (0)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 36939, 1);
            B_GIVEINVITEMS(SELF, OTHER, 36939, 1);
            CREATEINVITEMS(SELF, 34203, 11);
        } else if ((INVENTORY_DJG) == (1)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 33859, 1);
            B_GIVEINVITEMS(SELF, OTHER, 33859, 1);
            CREATEINVITEMS(SELF, 34203, 10);
        } else if ((INVENTORY_DJG) == (2)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 35316, 1);
            B_GIVEINVITEMS(SELF, OTHER, 35316, 1);
            CREATEINVITEMS(SELF, 34203, 12);
        } else if ((INVENTORY_DJG) == (3)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 36608, 1);
            B_GIVEINVITEMS(SELF, OTHER, 36608, 1);
            CREATEINVITEMS(SELF, 34203, 14);
        } else if ((INVENTORY_DJG) == (4)) {
            INVENTORY_DJG = 0;
            CREATEINVITEMS(SELF, 34207, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34207, 1);
            CREATEINVITEMS(SELF, 34203, 9);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 9);
        };
    };
    if ((SELF.GUILD) == (GIL_PIR)) {
        if ((INVENTORY_PIR) == (0)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 36136, 1);
            B_GIVEINVITEMS(SELF, OTHER, 36136, 1);
            CREATEINVITEMS(SELF, 34203, 13);
        } else if ((INVENTORY_PIR) == (1)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 38259, 1);
            B_GIVEINVITEMS(SELF, OTHER, 38259, 1);
            CREATEINVITEMS(SELF, 34203, 16);
        } else if ((INVENTORY_PIR) == (2)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 33869, 1);
            B_GIVEINVITEMS(SELF, OTHER, 33869, 1);
            CREATEINVITEMS(SELF, 34203, 14);
        } else if ((INVENTORY_PIR) == (3)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 34735, 1);
        } else if ((INVENTORY_PIR) == (4)) {
            INVENTORY_PIR = 0;
            CREATEINVITEMS(SELF, 34203, 34);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 34);
        };
    };
    if ((INVENTORY_OTHER) == (0)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 34203, 18);
    };
    if ((INVENTORY_OTHER) == (1)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 34203, 27);
    };
    if ((INVENTORY_OTHER) == (2)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 34352, 1);
        B_GIVEINVITEMS(SELF, OTHER, 34352, 1);
        CREATEINVITEMS(SELF, 34203, 10);
    };
    if ((INVENTORY_OTHER) == (3)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 33988, 2);
        B_GIVEINVITEMS(SELF, OTHER, 33988, 2);
        CREATEINVITEMS(SELF, 34203, 9);
    };
    if ((INVENTORY_OTHER) == (4)) {
        INVENTORY_OTHER = 0;
        CREATEINVITEMS(SELF, 34207, 1);
        B_GIVEINVITEMS(SELF, OTHER, 34207, 1);
        CREATEINVITEMS(SELF, 34203, 8);
        B_GIVEINVITEMS(SELF, OTHER, 34203, 8);
    };
}

func void B_PICKPOCKET_AMBIENT_TIER_3() {
    var int INVENTORY_OTHER;
    var int INVENTORY_PIR;
    var int INVENTORY_DJG;
    var int INVENTORY_SLD;
    var int INVENTORY_MIL;
    var int INVENTORY_VLK;
    var int INVENTORY_BAU;
    if ((SELF.GUILD) == (GIL_BAU)) {
        if ((INVENTORY_BAU) == (0)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 34290, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34290, 1);
            CREATEINVITEMS(SELF, 34203, 14);
        } else if ((INVENTORY_BAU) == (1)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 36714, 1);
            B_GIVEINVITEMS(SELF, OTHER, 36714, 1);
            CREATEINVITEMS(SELF, 34203, 16);
        } else if ((INVENTORY_BAU) == (2)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 36694, 1);
            B_GIVEINVITEMS(SELF, OTHER, 36694, 1);
            CREATEINVITEMS(SELF, 34203, 17);
        } else if ((INVENTORY_BAU) == (3)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 36409, 1);
            B_GIVEINVITEMS(SELF, OTHER, 36409, 1);
            CREATEINVITEMS(SELF, 34203, 19);
        } else if ((INVENTORY_BAU) == (4)) {
            INVENTORY_BAU = 0;
            CREATEINVITEMS(SELF, 34203, 37);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 37);
        };
    };
    if ((SELF.GUILD) == (GIL_VLK)) {
        if ((INVENTORY_VLK) == (0)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 34207, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34207, 1);
            CREATEINVITEMS(SELF, 34203, 16);
        } else if ((INVENTORY_VLK) == (1)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 33661, 1);
            B_GIVEINVITEMS(SELF, OTHER, 33661, 1);
            CREATEINVITEMS(SELF, 34203, 15);
        } else if ((INVENTORY_VLK) == (2)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 34203, 35);
        } else if ((INVENTORY_VLK) == (3)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 34737, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34737, 1);
            CREATEINVITEMS(SELF, 34203, 6);
        } else if ((INVENTORY_VLK) == (4)) {
            INVENTORY_VLK = 0;
            CREATEINVITEMS(SELF, 34203, 45);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 45);
        };
    };
    if ((SELF.GUILD) == (GIL_MIL)) {
        if ((INVENTORY_MIL) == (0)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 36639, 1);
            B_GIVEINVITEMS(SELF, OTHER, 36639, 1);
            CREATEINVITEMS(SELF, 34203, 12);
        } else if ((INVENTORY_MIL) == (1)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 34354, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34354, 1);
            CREATEINVITEMS(SELF, 34203, 11);
        } else if ((INVENTORY_MIL) == (2)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 38238, 1);
            B_GIVEINVITEMS(SELF, OTHER, 38238, 1);
            CREATEINVITEMS(SELF, 34203, 10);
        } else if ((INVENTORY_MIL) == (3)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 37718, 1);
            B_GIVEINVITEMS(SELF, OTHER, 37718, 1);
            CREATEINVITEMS(SELF, 34203, 9);
        } else if ((INVENTORY_MIL) == (4)) {
            INVENTORY_MIL = 0;
            CREATEINVITEMS(SELF, 34203, 42);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 42);
        };
    };
    if ((SELF.GUILD) == (GIL_SLD)) {
        if ((INVENTORY_SLD) == (0)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 33660, 3);
            B_GIVEINVITEMS(SELF, OTHER, 33660, 3);
            CREATEINVITEMS(SELF, 34203, 14);
        } else if ((INVENTORY_SLD) == (1)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 34354, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34354, 1);
            CREATEINVITEMS(SELF, 34203, 16);
        } else if ((INVENTORY_SLD) == (2)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 38232, 1);
            B_GIVEINVITEMS(SELF, OTHER, 38232, 1);
            CREATEINVITEMS(SELF, 34203, 15);
        } else if ((INVENTORY_SLD) == (3)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 34381, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34381, 1);
            CREATEINVITEMS(SELF, 34203, 19);
        } else if ((INVENTORY_SLD) == (4)) {
            INVENTORY_SLD = 0;
            CREATEINVITEMS(SELF, 34203, 55);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 55);
        };
    };
    if ((SELF.GUILD) == (GIL_DJG)) {
        if ((INVENTORY_DJG) == (0)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 36939, 3);
            B_GIVEINVITEMS(SELF, OTHER, 36939, 3);
            CREATEINVITEMS(SELF, 34203, 12);
        } else if ((INVENTORY_DJG) == (1)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 35326, 1);
            B_GIVEINVITEMS(SELF, OTHER, 35326, 1);
            CREATEINVITEMS(SELF, 34203, 14);
        } else if ((INVENTORY_DJG) == (2)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 34207, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34207, 1);
            CREATEINVITEMS(SELF, 34203, 18);
        } else if ((INVENTORY_DJG) == (3)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 33865, 1);
            B_GIVEINVITEMS(SELF, OTHER, 33865, 1);
            CREATEINVITEMS(SELF, 34203, 12);
        } else if ((INVENTORY_DJG) == (4)) {
            INVENTORY_DJG = 0;
            CREATEINVITEMS(SELF, 34737, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34737, 1);
        };
    };
    if ((SELF.GUILD) == (GIL_PIR)) {
        if ((INVENTORY_PIR) == (0)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 34212, 1);
            B_GIVEINVITEMS(SELF, OTHER, 34212, 1);
            CREATEINVITEMS(SELF, 34203, 19);
        } else if ((INVENTORY_PIR) == (1)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 33660, 2);
            B_GIVEINVITEMS(SELF, OTHER, 33660, 2);
            CREATEINVITEMS(SELF, 34203, 20);
        } else if ((INVENTORY_PIR) == (2)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 33867, 1);
            B_GIVEINVITEMS(SELF, OTHER, 33867, 1);
            CREATEINVITEMS(SELF, 34203, 17);
        } else if ((INVENTORY_PIR) == (3)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 34737, 1);
        } else if ((INVENTORY_PIR) == (4)) {
            INVENTORY_PIR = 0;
            CREATEINVITEMS(SELF, 34203, 75);
            B_GIVEINVITEMS(SELF, OTHER, 34203, 75);
        };
    };
    if ((INVENTORY_OTHER) == (0)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 34737, 1);
    };
    if ((INVENTORY_OTHER) == (1)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 34203, 33);
    };
    if ((INVENTORY_OTHER) == (2)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 34354, 1);
        B_GIVEINVITEMS(SELF, OTHER, 34354, 1);
        CREATEINVITEMS(SELF, 34203, 13);
    };
    if ((INVENTORY_OTHER) == (3)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 34203, 44);
    };
    if ((INVENTORY_OTHER) == (4)) {
        INVENTORY_OTHER = 0;
        CREATEINVITEMS(SELF, 34221, 1);
        B_GIVEINVITEMS(SELF, OTHER, 34221, 1);
        CREATEINVITEMS(SELF, 34203, 11);
        B_GIVEINVITEMS(SELF, OTHER, 34203, 11);
    };
}

