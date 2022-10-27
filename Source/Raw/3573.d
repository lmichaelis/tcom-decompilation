func void B_PICKPOCKET_AMBIENT_TIER_1() {
    if ((SELF.GUILD) == (GIL_BAU)) {
        if ((INVENTORY_BAU) == (0)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 0x85fc, 2);
            B_GIVEINVITEMS(SELF, OTHER, 0x85fc, 2);
            CREATEINVITEMS(SELF, 0x859b, 3);
        } else if ((INVENTORY_BAU) == (1)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 0x85fa, 2);
            B_GIVEINVITEMS(SELF, OTHER, 0x85fa, 2);
            CREATEINVITEMS(SELF, 0x859b, 4);
        } else if ((INVENTORY_BAU) == (2)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 0x84ac, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x84ac, 1);
            CREATEINVITEMS(SELF, 0x859b, 3);
        } else if ((INVENTORY_BAU) == (3)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 0x8e1a, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8e1a, 1);
            CREATEINVITEMS(SELF, 0x859b, 5);
        } else if ((INVENTORY_BAU) == (4)) {
            INVENTORY_BAU = 0;
            CREATEINVITEMS(SELF, 0x859b, 8);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 8);
        };
    };
    if ((SELF.GUILD) == (GIL_VLK)) {
        if ((INVENTORY_VLK) == (0)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 0x8f17, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8f17, 1);
            CREATEINVITEMS(SELF, 0x859b, 5);
        } else if ((INVENTORY_VLK) == (1)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 0x859c, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x859c, 1);
            CREATEINVITEMS(SELF, 0x859b, 6);
        } else if ((INVENTORY_VLK) == (2)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 0x859b, 9);
        } else if ((INVENTORY_VLK) == (3)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 0x859b, 11);
        } else if ((INVENTORY_VLK) == (4)) {
            INVENTORY_VLK = 0;
            CREATEINVITEMS(SELF, 0x859b, 14);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 14);
        };
    };
    if ((SELF.GUILD) == (GIL_MIL)) {
        if ((INVENTORY_MIL) == (0)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 0x8e10, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8e10, 1);
            CREATEINVITEMS(SELF, 0x859b, 5);
        } else if ((INVENTORY_MIL) == (1)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 0x859b, 6);
        } else if ((INVENTORY_MIL) == (2)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 0x955a, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x955a, 1);
            CREATEINVITEMS(SELF, 0x859b, 4);
        } else if ((INVENTORY_MIL) == (3)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 0x8437, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8437, 1);
            CREATEINVITEMS(SELF, 0x859b, 6);
        } else if ((INVENTORY_MIL) == (4)) {
            INVENTORY_MIL = 0;
            CREATEINVITEMS(SELF, 0x859b, 11);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 11);
        };
    };
    if ((SELF.GUILD) == (GIL_SLD)) {
        if ((INVENTORY_SLD) == (0)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 0x84ca, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x84ca, 1);
            CREATEINVITEMS(SELF, 0x859b, 7);
        } else if ((INVENTORY_SLD) == (1)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 0x8592, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8592, 1);
            CREATEINVITEMS(SELF, 0x859b, 5);
        } else if ((INVENTORY_SLD) == (2)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 0x9554, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x9554, 1);
            CREATEINVITEMS(SELF, 0x859b, 7);
        } else if ((INVENTORY_SLD) == (3)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 0x8438, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8438, 1);
            CREATEINVITEMS(SELF, 0x859b, 6);
        } else if ((INVENTORY_SLD) == (4)) {
            INVENTORY_SLD = 0;
            CREATEINVITEMS(SELF, 0x859b, 16);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 16);
        };
    };
    if ((SELF.GUILD) == (GIL_PIR)) {
        if ((INVENTORY_PIR) == (0)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 0x84ca, 2);
            B_GIVEINVITEMS(SELF, OTHER, 0x84ca, 2);
            CREATEINVITEMS(SELF, 0x859b, 7);
        } else if ((INVENTORY_PIR) == (1)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 0x8592, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8592, 1);
            CREATEINVITEMS(SELF, 0x859b, 8);
        } else if ((INVENTORY_PIR) == (2)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 0x9554, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x9554, 1);
            CREATEINVITEMS(SELF, 0x859b, 6);
        } else if ((INVENTORY_PIR) == (3)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 0x955a, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x955a, 1);
            CREATEINVITEMS(SELF, 0x859b, 7);
        } else if ((INVENTORY_PIR) == (4)) {
            INVENTORY_PIR = 0;
            CREATEINVITEMS(SELF, 0x859b, 21);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 21);
        };
    };
    if ((INVENTORY_OTHER) == (0)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 0x859b, 6);
    };
    if ((INVENTORY_OTHER) == (1)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 0x8592, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8592, 1);
        CREATEINVITEMS(SELF, 0x859b, 4);
    };
    if ((INVENTORY_OTHER) == (2)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 0x859b, 8);
    };
    if ((INVENTORY_OTHER) == (3)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 0x859b, 12);
    };
    if ((INVENTORY_OTHER) == (4)) {
        INVENTORY_OTHER = 0;
        CREATEINVITEMS(SELF, 0x85f8, 2);
        B_GIVEINVITEMS(SELF, OTHER, 0x85f8, 2);
        CREATEINVITEMS(SELF, 0x859b, 5);
        B_GIVEINVITEMS(SELF, OTHER, 0x859b, 5);
    };
}

var int B_PICKPOCKET_AMBIENT_TIER_1.INVENTORY_BAU = 0;
var int B_PICKPOCKET_AMBIENT_TIER_1.INVENTORY_VLK = 0;
var int B_PICKPOCKET_AMBIENT_TIER_1.INVENTORY_MIL = 0;
var int B_PICKPOCKET_AMBIENT_TIER_1.INVENTORY_SLD = 0;
var int B_PICKPOCKET_AMBIENT_TIER_1.INVENTORY_PIR = 0;
var int B_PICKPOCKET_AMBIENT_TIER_1.INVENTORY_OTHER = 0;
func void B_PICKPOCKET_AMBIENT_TIER_2() {
    if ((SELF.GUILD) == (GIL_BAU)) {
        if ((INVENTORY_BAU) == (0)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 0x85fe, 2);
            B_GIVEINVITEMS(SELF, OTHER, 0x85fe, 2);
            CREATEINVITEMS(SELF, 0x859b, 8);
        } else if ((INVENTORY_BAU) == (1)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 0x85ea, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x85ea, 1);
            CREATEINVITEMS(SELF, 0x859b, 10);
        } else if ((INVENTORY_BAU) == (2)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 0x85e4, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x85e4, 1);
            CREATEINVITEMS(SELF, 0x859b, 7);
        } else if ((INVENTORY_BAU) == (3)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 0x8f06, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8f06, 1);
            CREATEINVITEMS(SELF, 0x859b, 9);
        } else if ((INVENTORY_BAU) == (4)) {
            INVENTORY_BAU = 0;
            CREATEINVITEMS(SELF, 0x859b, 18);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 18);
        };
    };
    if ((SELF.GUILD) == (GIL_VLK)) {
        if ((INVENTORY_VLK) == (0)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 0x8efe, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8efe, 1);
            CREATEINVITEMS(SELF, 0x859b, 9);
        } else if ((INVENTORY_VLK) == (1)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 0x85a0, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x85a0, 1);
            CREATEINVITEMS(SELF, 0x859b, 8);
        } else if ((INVENTORY_VLK) == (2)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 0x859b, 19);
        } else if ((INVENTORY_VLK) == (3)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 0x87af, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x87af, 1);
            CREATEINVITEMS(SELF, 0x859b, 2);
        } else if ((INVENTORY_VLK) == (4)) {
            INVENTORY_VLK = 0;
            CREATEINVITEMS(SELF, 0x859b, 24);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 24);
        };
    };
    if ((SELF.GUILD) == (GIL_MIL)) {
        if ((INVENTORY_MIL) == (0)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 0x8f50, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8f50, 1);
            CREATEINVITEMS(SELF, 0x859b, 11);
        } else if ((INVENTORY_MIL) == (1)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 0x8630, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8630, 1);
            CREATEINVITEMS(SELF, 0x859b, 9);
        } else if ((INVENTORY_MIL) == (2)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 0x955c, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x955c, 1);
            CREATEINVITEMS(SELF, 0x859b, 11);
        } else if ((INVENTORY_MIL) == (3)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 0x8444, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8444, 1);
            CREATEINVITEMS(SELF, 0x859b, 9);
        } else if ((INVENTORY_MIL) == (4)) {
            INVENTORY_MIL = 0;
            CREATEINVITEMS(SELF, 0x859b, 22);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 22);
        };
    };
    if ((SELF.GUILD) == (GIL_SLD)) {
        if ((INVENTORY_SLD) == (0)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 0x837c, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x837c, 1);
            CREATEINVITEMS(SELF, 0x859b, 11);
        } else if ((INVENTORY_SLD) == (1)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 0x8630, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8630, 1);
            CREATEINVITEMS(SELF, 0x859b, 12);
        } else if ((INVENTORY_SLD) == (2)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 0x9556, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x9556, 1);
            CREATEINVITEMS(SELF, 0x859b, 10);
        } else if ((INVENTORY_SLD) == (3)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 0x8442, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8442, 1);
            CREATEINVITEMS(SELF, 0x859b, 11);
        } else if ((INVENTORY_SLD) == (4)) {
            INVENTORY_SLD = 0;
            CREATEINVITEMS(SELF, 0x859b, 27);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 27);
        };
    };
    if ((SELF.GUILD) == (GIL_DJG)) {
        if ((INVENTORY_DJG) == (0)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 0x904b, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x904b, 1);
            CREATEINVITEMS(SELF, 0x859b, 11);
        } else if ((INVENTORY_DJG) == (1)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 0x8443, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8443, 1);
            CREATEINVITEMS(SELF, 0x859b, 10);
        } else if ((INVENTORY_DJG) == (2)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 0x89f4, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x89f4, 1);
            CREATEINVITEMS(SELF, 0x859b, 12);
        } else if ((INVENTORY_DJG) == (3)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 0x8f00, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8f00, 1);
            CREATEINVITEMS(SELF, 0x859b, 14);
        } else if ((INVENTORY_DJG) == (4)) {
            INVENTORY_DJG = 0;
            CREATEINVITEMS(SELF, 0x859f, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x859f, 1);
            CREATEINVITEMS(SELF, 0x859b, 9);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 9);
        };
    };
    if ((SELF.GUILD) == (GIL_PIR)) {
        if ((INVENTORY_PIR) == (0)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 0x8d28, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8d28, 1);
            CREATEINVITEMS(SELF, 0x859b, 13);
        } else if ((INVENTORY_PIR) == (1)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 0x9573, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x9573, 1);
            CREATEINVITEMS(SELF, 0x859b, 16);
        } else if ((INVENTORY_PIR) == (2)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 0x844d, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x844d, 1);
            CREATEINVITEMS(SELF, 0x859b, 14);
        } else if ((INVENTORY_PIR) == (3)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 0x87af, 1);
        } else if ((INVENTORY_PIR) == (4)) {
            INVENTORY_PIR = 0;
            CREATEINVITEMS(SELF, 0x859b, 34);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 34);
        };
    };
    if ((INVENTORY_OTHER) == (0)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 0x859b, 18);
    };
    if ((INVENTORY_OTHER) == (1)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 0x859b, 27);
    };
    if ((INVENTORY_OTHER) == (2)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 0x8630, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8630, 1);
        CREATEINVITEMS(SELF, 0x859b, 10);
    };
    if ((INVENTORY_OTHER) == (3)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 0x84c4, 2);
        B_GIVEINVITEMS(SELF, OTHER, 0x84c4, 2);
        CREATEINVITEMS(SELF, 0x859b, 9);
    };
    if ((INVENTORY_OTHER) == (4)) {
        INVENTORY_OTHER = 0;
        CREATEINVITEMS(SELF, 0x859f, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x859f, 1);
        CREATEINVITEMS(SELF, 0x859b, 8);
        B_GIVEINVITEMS(SELF, OTHER, 0x859b, 8);
    };
}

var int B_PICKPOCKET_AMBIENT_TIER_2.INVENTORY_BAU = 0;
var int B_PICKPOCKET_AMBIENT_TIER_2.INVENTORY_VLK = 0;
var int B_PICKPOCKET_AMBIENT_TIER_2.INVENTORY_MIL = 0;
var int B_PICKPOCKET_AMBIENT_TIER_2.INVENTORY_SLD = 0;
var int B_PICKPOCKET_AMBIENT_TIER_2.INVENTORY_DJG = 0;
var int B_PICKPOCKET_AMBIENT_TIER_2.INVENTORY_PIR = 0;
var int B_PICKPOCKET_AMBIENT_TIER_2.INVENTORY_OTHER = 0;
func void B_PICKPOCKET_AMBIENT_TIER_3() {
    if ((SELF.GUILD) == (GIL_BAU)) {
        if ((INVENTORY_BAU) == (0)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 0x85f2, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x85f2, 1);
            CREATEINVITEMS(SELF, 0x859b, 14);
        } else if ((INVENTORY_BAU) == (1)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 0x8f6a, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8f6a, 1);
            CREATEINVITEMS(SELF, 0x859b, 16);
        } else if ((INVENTORY_BAU) == (2)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 0x8f56, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8f56, 1);
            CREATEINVITEMS(SELF, 0x859b, 17);
        } else if ((INVENTORY_BAU) == (3)) {
            INVENTORY_BAU += 1;
            CREATEINVITEMS(SELF, 0x8e39, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8e39, 1);
            CREATEINVITEMS(SELF, 0x859b, 19);
        } else if ((INVENTORY_BAU) == (4)) {
            INVENTORY_BAU = 0;
            CREATEINVITEMS(SELF, 0x859b, 37);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 37);
        };
    };
    if ((SELF.GUILD) == (GIL_VLK)) {
        if ((INVENTORY_VLK) == (0)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 0x859f, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x859f, 1);
            CREATEINVITEMS(SELF, 0x859b, 16);
        } else if ((INVENTORY_VLK) == (1)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 0x837d, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x837d, 1);
            CREATEINVITEMS(SELF, 0x859b, 15);
        } else if ((INVENTORY_VLK) == (2)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 0x859b, 35);
        } else if ((INVENTORY_VLK) == (3)) {
            INVENTORY_VLK += 1;
            CREATEINVITEMS(SELF, 0x87b1, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x87b1, 1);
            CREATEINVITEMS(SELF, 0x859b, 6);
        } else if ((INVENTORY_VLK) == (4)) {
            INVENTORY_VLK = 0;
            CREATEINVITEMS(SELF, 0x859b, 45);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 45);
        };
    };
    if ((SELF.GUILD) == (GIL_MIL)) {
        if ((INVENTORY_MIL) == (0)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 0x8f1f, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8f1f, 1);
            CREATEINVITEMS(SELF, 0x859b, 12);
        } else if ((INVENTORY_MIL) == (1)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 0x8632, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8632, 1);
            CREATEINVITEMS(SELF, 0x859b, 11);
        } else if ((INVENTORY_MIL) == (2)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 0x955e, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x955e, 1);
            CREATEINVITEMS(SELF, 0x859b, 10);
        } else if ((INVENTORY_MIL) == (3)) {
            INVENTORY_MIL += 1;
            CREATEINVITEMS(SELF, 0x9356, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x9356, 1);
            CREATEINVITEMS(SELF, 0x859b, 9);
        } else if ((INVENTORY_MIL) == (4)) {
            INVENTORY_MIL = 0;
            CREATEINVITEMS(SELF, 0x859b, 42);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 42);
        };
    };
    if ((SELF.GUILD) == (GIL_SLD)) {
        if ((INVENTORY_SLD) == (0)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 0x837c, 3);
            B_GIVEINVITEMS(SELF, OTHER, 0x837c, 3);
            CREATEINVITEMS(SELF, 0x859b, 14);
        } else if ((INVENTORY_SLD) == (1)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 0x8632, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8632, 1);
            CREATEINVITEMS(SELF, 0x859b, 16);
        } else if ((INVENTORY_SLD) == (2)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 0x9558, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x9558, 1);
            CREATEINVITEMS(SELF, 0x859b, 15);
        } else if ((INVENTORY_SLD) == (3)) {
            INVENTORY_SLD += 1;
            CREATEINVITEMS(SELF, 0x864d, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x864d, 1);
            CREATEINVITEMS(SELF, 0x859b, 19);
        } else if ((INVENTORY_SLD) == (4)) {
            INVENTORY_SLD = 0;
            CREATEINVITEMS(SELF, 0x859b, 55);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 55);
        };
    };
    if ((SELF.GUILD) == (GIL_DJG)) {
        if ((INVENTORY_DJG) == (0)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 0x904b, 3);
            B_GIVEINVITEMS(SELF, OTHER, 0x904b, 3);
            CREATEINVITEMS(SELF, 0x859b, 12);
        } else if ((INVENTORY_DJG) == (1)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 0x89fe, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x89fe, 1);
            CREATEINVITEMS(SELF, 0x859b, 14);
        } else if ((INVENTORY_DJG) == (2)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 0x859f, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x859f, 1);
            CREATEINVITEMS(SELF, 0x859b, 18);
        } else if ((INVENTORY_DJG) == (3)) {
            INVENTORY_DJG += 1;
            CREATEINVITEMS(SELF, 0x8449, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x8449, 1);
            CREATEINVITEMS(SELF, 0x859b, 12);
        } else if ((INVENTORY_DJG) == (4)) {
            INVENTORY_DJG = 0;
            CREATEINVITEMS(SELF, 0x87b1, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x87b1, 1);
        };
    };
    if ((SELF.GUILD) == (GIL_PIR)) {
        if ((INVENTORY_PIR) == (0)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 0x85a4, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x85a4, 1);
            CREATEINVITEMS(SELF, 0x859b, 19);
        } else if ((INVENTORY_PIR) == (1)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 0x837c, 2);
            B_GIVEINVITEMS(SELF, OTHER, 0x837c, 2);
            CREATEINVITEMS(SELF, 0x859b, 20);
        } else if ((INVENTORY_PIR) == (2)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 0x844b, 1);
            B_GIVEINVITEMS(SELF, OTHER, 0x844b, 1);
            CREATEINVITEMS(SELF, 0x859b, 17);
        } else if ((INVENTORY_PIR) == (3)) {
            INVENTORY_PIR += 1;
            CREATEINVITEMS(SELF, 0x87b1, 1);
        } else if ((INVENTORY_PIR) == (4)) {
            INVENTORY_PIR = 0;
            CREATEINVITEMS(SELF, 0x859b, 75);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, 75);
        };
    };
    if ((INVENTORY_OTHER) == (0)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 0x87b1, 1);
    };
    if ((INVENTORY_OTHER) == (1)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 0x859b, 33);
    };
    if ((INVENTORY_OTHER) == (2)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 0x8632, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8632, 1);
        CREATEINVITEMS(SELF, 0x859b, 13);
    };
    if ((INVENTORY_OTHER) == (3)) {
        INVENTORY_OTHER += 1;
        CREATEINVITEMS(SELF, 0x859b, 44);
    };
    if ((INVENTORY_OTHER) == (4)) {
        INVENTORY_OTHER = 0;
        CREATEINVITEMS(SELF, 0x85ad, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x85ad, 1);
        CREATEINVITEMS(SELF, 0x859b, 11);
        B_GIVEINVITEMS(SELF, OTHER, 0x859b, 11);
    };
}

var int B_PICKPOCKET_AMBIENT_TIER_3.INVENTORY_BAU = 0;
var int B_PICKPOCKET_AMBIENT_TIER_3.INVENTORY_VLK = 0;
var int B_PICKPOCKET_AMBIENT_TIER_3.INVENTORY_MIL = 0;
var int B_PICKPOCKET_AMBIENT_TIER_3.INVENTORY_SLD = 0;
var int B_PICKPOCKET_AMBIENT_TIER_3.INVENTORY_DJG = 0;
var int B_PICKPOCKET_AMBIENT_TIER_3.INVENTORY_PIR = 0;
var int B_PICKPOCKET_AMBIENT_TIER_3.INVENTORY_OTHER = 0;
