func void B_CREATEWEAPONINV() {
    if (((((((((((((((((((((((((NPC_HASITEMS(SELF, 0x8ad6)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8ad7)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8ad8)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8ad9)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8ada)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8adb)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8adc)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8add)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8ade)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8adf)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8ae0)) >= (1))) || ((NPC_HASITEMS(SELF, 0x846c)) >= (1))) || ((NPC_HASITEMS(SELF, 0x846d)) >= (1))) || ((NPC_HASITEMS(SELF, 0x846e)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b19)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8ae0)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8a52)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8a53)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8a54)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b0c)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b0d)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b0e)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b0f)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8a55)) >= (1))) {
        if ((SELF.LEVEL) >= (40)) {
            EQUIPITEM(SELF, 0x8512);
        } else if (((SELF.LEVEL) >= (25)) && ((SELF.LEVEL) < (40))) {
            RND = HLP_RANDOM(2);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x84f3);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x84e6);
            };
        } else {
            RND = HLP_RANDOM(4);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x84d0);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x84cf);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x9a58);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 0x84da);
            };
        } else {
            /* set_instance(0) */;
        };
    };
    if (((((((((((NPC_HASITEMS(SELF, 0x8ac8)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8ac9)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8aca)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8acb)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8acc)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8acd)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b1a)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b1b)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b1c)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b1d)) >= (1))) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 0x84dc);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 0x9ac2);
        };
    };
    if (((((NPC_HASITEMS(SELF, 0x8a46)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8a4b)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8482)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8a6e)) >= (1))) {
        if ((SELF.LEVEL) >= (40)) {
            RND = HLP_RANDOM(4);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x850b);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x9ab3);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x9a97);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 0x9a97);
            };
        } else if (((SELF.LEVEL) >= (30)) && ((SELF.LEVEL) < (40))) {
            RND = HLP_RANDOM(4);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9ab3);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x8503);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x84fe);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 0x9a94);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (30))) {
            RND = HLP_RANDOM(5);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9aa6);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x9aa8);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x84e8);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 0x84d5);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 0x9a94);
            };
        } else {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x84e5);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x84e0);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x84de);
            };
        } else {
            /* set_instance(0) */;
        };
    };
    if (((((NPC_HASITEMS(SELF, 0x8a56)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8a59)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8483)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8a6f)) >= (1))) {
        if ((SELF.LEVEL) >= (50)) {
            RND = HLP_RANDOM(2);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9aab);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x865f);
                CREATEINVITEMS(SELF, 0x864f, 20);
            };
            if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x9a97);
            };
        } else if (((SELF.LEVEL) >= (40)) && ((SELF.LEVEL) < (50))) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x850b);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x8509);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x865d);
                CREATEINVITEMS(SELF, 0x864f, 20);
            };
        } else if (((SELF.LEVEL) >= (30)) && ((SELF.LEVEL) < (40))) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9a7d);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x84fe);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x8659);
                CREATEINVITEMS(SELF, 0x864f, 20);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (30))) {
            RND = HLP_RANDOM(6);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x84e6);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x84f3);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x8657);
                CREATEINVITEMS(SELF, 0x864f, 20);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 0x84e7);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 0x84de);
            } else if ((RND) == (5)) {
                EQUIPITEM(SELF, 0x8655);
                CREATEINVITEMS(SELF, 0x864f, 20);
            };
        } else {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9a58);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x84e0);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x84e1);
            };
        } else {
            /* set_instance(0) */;
        };
    };
    if (((NPC_HASITEMS(SELF, 0x8a66)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8a6b)) >= (1))) {
        if ((SELF.LEVEL) >= (50)) {
            RND = HLP_RANDOM(2);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9ad9);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x9acc);
            };
        } else if (((SELF.LEVEL) >= (35)) && ((SELF.LEVEL) < (50))) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x8507);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x9ad4);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x83c3);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (35))) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9a69);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x9ad7);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x83c3);
            };
        } else {
            EQUIPITEM(SELF, 0x9a69);
        } else {
            /* set_instance(0) */;
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8a9a)) >= (1)) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 0x84e7);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 0x84e5);
        };
    };
    if (((NPC_HASITEMS(SELF, 0x8aa0)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8ab5)) >= (1))) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 0x8510);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 0x9a7d);
        };
    };
    if (((NPC_HASITEMS(SELF, 0x8aa5)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8ab6)) >= (1))) {
        EQUIPITEM(SELF, 0x8652);
        CREATEINVITEMS(SELF, 0x8650, 20);
    };
    if ((NPC_HASITEMS(SELF, 0x8aaa)) >= (1)) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 0x9b36);
            CREATEINVITEMS(SELF, 0x8650, 20);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 0x9b2b);
            CREATEINVITEMS(SELF, 0x8650, 20);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8aad)) >= (1)) {
        RND = HLP_RANDOM(3);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 0x8503);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 0x8509);
        } else if ((RND) == (2)) {
            EQUIPITEM(SELF, 0x9a41);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8ab2)) >= (1)) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 0x9a75);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 0x9a5d);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8a7b)) >= (1)) {
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 0x84e5);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 0x84e7);
        } else if ((RND) == (2)) {
            EQUIPITEM(SELF, 0x84de);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8a89)) >= (1)) {
        RND = HLP_RANDOM(3);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 0x84f5);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 0x8510);
        } else if ((RND) == (2)) {
            EQUIPITEM(SELF, 0x9a3d);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8a8e)) >= (1)) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 0x865d);
            CREATEINVITEMS(SELF, 0x864f, 20);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 0x9b45);
            CREATEINVITEMS(SELF, 0x864f, 20);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8a93)) >= (1)) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 0x9b47);
            CREATEINVITEMS(SELF, 0x864f, 20);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 0x9b51);
            CREATEINVITEMS(SELF, 0x864f, 20);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8a7e)) >= (1)) {
        RND = HLP_RANDOM(4);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 0x9a75);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 0x8512);
        } else if ((RND) == (2)) {
            EQUIPITEM(SELF, 0x8509);
        } else if ((RND) == (3)) {
            EQUIPITEM(SELF, 0x850e);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8a83)) >= (1)) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 0x8521);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 0x9a5f);
        };
    };
    if (((NPC_HASITEMS(SELF, 0x8479)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8b0a)) >= (1))) {
        EQUIPITEM(SELF, 0x84dd);
    };
    if (((((NPC_HASITEMS(SELF, 0x8ac0)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8ab8)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8abe)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8ac1)) >= (1))) {
        if ((KAPITEL) == (6)) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9a6c);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x9a6d);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x9b1f);
                CREATEINVITEMS(SELF, 0x8650, 20);
            };
        } else {
            EQUIPITEM(SELF, 0x9a6c);
        } else {
            /* set_instance(0) */;
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8afd)) >= (1)) {
        EQUIPITEM(SELF, 0x84de);
    };
    if (((((((((((((((((((NPC_HASITEMS(SELF, 0x8472)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8af3)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8af4)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8af5)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8473)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8afa)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8afb)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8afc)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8477)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b11)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b12)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b13)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b14)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b15)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b16)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b17)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8b18)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8478)) >= (1))) {
        RND = HLP_RANDOM(4);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 0x84d0);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 0x84cf);
        } else if ((RND) == (2)) {
            EQUIPITEM(SELF, 0x9a58);
        } else if ((RND) == (3)) {
            EQUIPITEM(SELF, 0x84da);
        };
    };
    if (((NPC_HASITEMS(SELF, 0x8a97)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8a96)) >= (1))) {
        if ((SELF.LEVEL) >= (50)) {
            RND = HLP_RANDOM(10);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9a6b);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x8523);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x9b1e);
                CREATEINVITEMS(SELF, 0x8650, 20);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 0x851a);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 0x8517);
            } else if ((RND) == (5)) {
                EQUIPITEM(SELF, 0x9aab);
            } else if ((RND) == (6)) {
                EQUIPITEM(SELF, 0x9a93);
            } else if ((RND) == (7)) {
                EQUIPITEM(SELF, 0x9a97);
            } else if ((RND) == (8)) {
                EQUIPITEM(SELF, 0x9a9a);
            } else if ((RND) == (9)) {
                EQUIPITEM(SELF, 0x9a94);
            };
        } else if (((SELF.LEVEL) >= (35)) && ((SELF.LEVEL) < (50))) {
            RND = HLP_RANDOM(10);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x851a);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x8517);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x9aab);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 0x9a93);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 0x9b39);
                CREATEINVITEMS(SELF, 0x8650, 20);
            } else if ((RND) == (5)) {
                EQUIPITEM(SELF, 0x9b1e);
                CREATEINVITEMS(SELF, 0x8650, 20);
            } else if ((RND) == (6)) {
                EQUIPITEM(SELF, 0x8514);
            } else if ((RND) == (7)) {
                EQUIPITEM(SELF, 0x9a97);
            } else if ((RND) == (8)) {
                EQUIPITEM(SELF, 0x9a9a);
            } else if ((RND) == (9)) {
                EQUIPITEM(SELF, 0x9a94);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (35))) {
            RND = HLP_RANDOM(5);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x866d);
                CREATEINVITEMS(SELF, 0x8650, 20);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x850e);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x8512);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 0x9aa8);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 0x9a94);
            };
        } else {
            EQUIPITEM(SELF, 0x9aa8);
        } else {
            /* set_instance(0) */;
        };
    };
    if ((((NPC_HASITEMS(SELF, 0x8322)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8323)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8a73)) >= (1))) {
        if ((SELF.LEVEL) >= (50)) {
            RND = HLP_RANDOM(2);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9a6b);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x8523);
            };
        } else if (((SELF.LEVEL) >= (35)) && ((SELF.LEVEL) < (50))) {
            RND = HLP_RANDOM(5);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9a93);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x83ca);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x850b);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 0x8514);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 0x83ce);
            } else if ((RND) == (5)) {
                EQUIPITEM(SELF, 0x9a78);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (35))) {
            RND = HLP_RANDOM(4);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x850e);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x83ce);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x83c3);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 0x8501);
            };
        } else {
            EQUIPITEM(SELF, 0x8501);
        } else {
            /* set_instance(0) */;
        };
    };
    if (((NPC_HASITEMS(SELF, 0x8b1e)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8b1f)) >= (1))) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 0x9a75);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 0x9a5d);
        };
    };
    if ((((NPC_HASITEMS(SELF, 0x8a34)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8a35)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8a36)) >= (1))) {
        if ((SELF.LEVEL) >= (20)) {
            RND = HLP_RANDOM(5);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9ac2);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x84f5);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x8657);
                CREATEINVITEMS(SELF, 0x864f, 20);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 0x9b42);
                CREATEINVITEMS(SELF, 0x864f, 20);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 0x8670);
                CREATEINVITEMS(SELF, 0x8650, 20);
            };
        } else {
            EQUIPITEM(SELF, 0x9ac2);
        } else {
            /* set_instance(0) */;
        };
    };
    if (((((NPC_HASITEMS(SELF, 0x8a5e)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8a63)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8a64)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8a65)) >= (1))) {
        if ((SELF.LEVEL) >= (50)) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9a80);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x9b25);
                CREATEINVITEMS(SELF, 0x8650, 20);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x9b51);
                CREATEINVITEMS(SELF, 0x864f, 20);
            };
        } else if (((SELF.LEVEL) >= (40)) && ((SELF.LEVEL) < (50))) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x8503);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x8675);
                CREATEINVITEMS(SELF, 0x8650, 20);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x9b45);
                CREATEINVITEMS(SELF, 0x864f, 20);
            };
        } else if (((SELF.LEVEL) >= (30)) && ((SELF.LEVEL) < (40))) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9a7d);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x9b2e);
                CREATEINVITEMS(SELF, 0x8650, 20);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x865b);
                CREATEINVITEMS(SELF, 0x864f, 20);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (30))) {
            RND = HLP_RANDOM(5);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9ac2);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x84f5);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x8657);
                CREATEINVITEMS(SELF, 0x864f, 20);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 0x9b42);
                CREATEINVITEMS(SELF, 0x864f, 20);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 0x8670);
                CREATEINVITEMS(SELF, 0x8650, 20);
            };
        } else {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9a58);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x9b27);
                CREATEINVITEMS(SELF, 0x8650, 20);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x8655);
                CREATEINVITEMS(SELF, 0x864f, 20);
            };
        } else {
            /* set_instance(0) */;
        };
    };
    if (((((NPC_HASITEMS(SELF, 0x8a42)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8a43)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8a44)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8a45)) >= (1))) {
        if ((SELF.LEVEL) >= (15)) {
            RND = HLP_RANDOM(2);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x84d8);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x84e7);
            };
        } else {
            RND = HLP_RANDOM(4);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x84d0);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x84cf);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x84d1);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 0x84e0);
            };
        } else {
            /* set_instance(0) */;
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8a4f)) >= (1)) {
        if ((SELF.LEVEL) >= (40)) {
            RND = HLP_RANDOM(2);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x8514);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x83c1);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (40))) {
            RND = HLP_RANDOM(4);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x8503);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x850b);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x83c3);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 0x9a94);
            };
        } else {
            EQUIPITEM(SELF, 0x9a7d);
        } else {
            /* set_instance(0) */;
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8a74)) >= (1)) {
        if ((SELF.LEVEL) >= (40)) {
            RND = HLP_RANDOM(2);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9aab);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x9ab1);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (40))) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 0x9a92);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 0x83ca);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 0x9ab3);
            };
        } else {
            EQUIPITEM(SELF, 0x850e);
        } else {
            /* set_instance(0) */;
        };
    };
    RND = HLP_RANDOM(4);
    if ((RND) == (0)) {
        EQUIPITEM(SELF, 0x84d0);
    };
    if ((RND) == (1)) {
        EQUIPITEM(SELF, 0x84cf);
    };
    if ((RND) == (2)) {
        EQUIPITEM(SELF, 0x84d1);
    };
    if ((RND) == (3)) {
        EQUIPITEM(SELF, 0x84e0);
    };
}

var int B_CREATEWEAPONINV.RND = 0;
