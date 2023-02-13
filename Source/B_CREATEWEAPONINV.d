func void B_CREATEWEAPONINV() {
    var int RND;
    if (((((((((((((((((((((((((NPC_HASITEMS(SELF, 35542)) >= (1)) || ((NPC_HASITEMS(SELF, 35543)) >= (1))) || ((NPC_HASITEMS(SELF, 35544)) >= (1))) || ((NPC_HASITEMS(SELF, 35545)) >= (1))) || ((NPC_HASITEMS(SELF, 35546)) >= (1))) || ((NPC_HASITEMS(SELF, 35547)) >= (1))) || ((NPC_HASITEMS(SELF, 35548)) >= (1))) || ((NPC_HASITEMS(SELF, 35549)) >= (1))) || ((NPC_HASITEMS(SELF, 35550)) >= (1))) || ((NPC_HASITEMS(SELF, 35551)) >= (1))) || ((NPC_HASITEMS(SELF, 35552)) >= (1))) || ((NPC_HASITEMS(SELF, 33900)) >= (1))) || ((NPC_HASITEMS(SELF, 33901)) >= (1))) || ((NPC_HASITEMS(SELF, 33902)) >= (1))) || ((NPC_HASITEMS(SELF, 35609)) >= (1))) || ((NPC_HASITEMS(SELF, 35552)) >= (1))) || ((NPC_HASITEMS(SELF, 35410)) >= (1))) || ((NPC_HASITEMS(SELF, 35411)) >= (1))) || ((NPC_HASITEMS(SELF, 35412)) >= (1))) || ((NPC_HASITEMS(SELF, 35596)) >= (1))) || ((NPC_HASITEMS(SELF, 35597)) >= (1))) || ((NPC_HASITEMS(SELF, 35598)) >= (1))) || ((NPC_HASITEMS(SELF, 35599)) >= (1))) || ((NPC_HASITEMS(SELF, 35413)) >= (1))) {
        if ((SELF.LEVEL) >= (40)) {
            EQUIPITEM(SELF, 34066);
        } else if (((SELF.LEVEL) >= (25)) && ((SELF.LEVEL) < (40))) {
            RND = HLP_RANDOM(2);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34035);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34022);
            };
        } else {
            RND = HLP_RANDOM(4);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34000);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 33999);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 39512);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 34010);
            };
        };
    };
    if (((((((((((NPC_HASITEMS(SELF, 35528)) >= (1)) || ((NPC_HASITEMS(SELF, 35529)) >= (1))) || ((NPC_HASITEMS(SELF, 35530)) >= (1))) || ((NPC_HASITEMS(SELF, 35531)) >= (1))) || ((NPC_HASITEMS(SELF, 35532)) >= (1))) || ((NPC_HASITEMS(SELF, 35533)) >= (1))) || ((NPC_HASITEMS(SELF, 35610)) >= (1))) || ((NPC_HASITEMS(SELF, 35611)) >= (1))) || ((NPC_HASITEMS(SELF, 35612)) >= (1))) || ((NPC_HASITEMS(SELF, 35613)) >= (1))) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 34012);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 39618);
        };
    };
    if (((((NPC_HASITEMS(SELF, 35398)) >= (1)) || ((NPC_HASITEMS(SELF, 35403)) >= (1))) || ((NPC_HASITEMS(SELF, 33922)) >= (1))) || ((NPC_HASITEMS(SELF, 35438)) >= (1))) {
        if ((SELF.LEVEL) >= (40)) {
            RND = HLP_RANDOM(4);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34059);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 39603);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 39575);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 39575);
            };
        } else if (((SELF.LEVEL) >= (30)) && ((SELF.LEVEL) < (40))) {
            RND = HLP_RANDOM(4);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39603);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34051);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 34046);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 39572);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (30))) {
            RND = HLP_RANDOM(5);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39590);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 39592);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 34024);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 34005);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 39572);
            };
        } else {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34021);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34016);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 34014);
            };
        };
    };
    if (((((NPC_HASITEMS(SELF, 35414)) >= (1)) || ((NPC_HASITEMS(SELF, 35417)) >= (1))) || ((NPC_HASITEMS(SELF, 33923)) >= (1))) || ((NPC_HASITEMS(SELF, 35439)) >= (1))) {
        if ((SELF.LEVEL) >= (50)) {
            RND = HLP_RANDOM(2);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39595);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34399);
                CREATEINVITEMS(SELF, 34383, 20);
            };
            if ((RND) == (2)) {
                EQUIPITEM(SELF, 39575);
            };
        } else if (((SELF.LEVEL) >= (40)) && ((SELF.LEVEL) < (50))) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34059);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34057);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 34397);
                CREATEINVITEMS(SELF, 34383, 20);
            };
        } else if (((SELF.LEVEL) >= (30)) && ((SELF.LEVEL) < (40))) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39549);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34046);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 34393);
                CREATEINVITEMS(SELF, 34383, 20);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (30))) {
            RND = HLP_RANDOM(6);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34022);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34035);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 34391);
                CREATEINVITEMS(SELF, 34383, 20);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 34023);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 34014);
            } else if ((RND) == (5)) {
                EQUIPITEM(SELF, 34389);
                CREATEINVITEMS(SELF, 34383, 20);
            };
        } else {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39512);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34016);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 34017);
            };
        };
    };
    if (((NPC_HASITEMS(SELF, 35430)) >= (1)) || ((NPC_HASITEMS(SELF, 35435)) >= (1))) {
        if ((SELF.LEVEL) >= (50)) {
            RND = HLP_RANDOM(2);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39641);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 39628);
            };
        } else if (((SELF.LEVEL) >= (35)) && ((SELF.LEVEL) < (50))) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34055);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 39636);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 33731);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (35))) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39529);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 39639);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 33731);
            };
        } else {
            EQUIPITEM(SELF, 39529);
        };
    };
    if ((NPC_HASITEMS(SELF, 35482)) >= (1)) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 34023);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 34021);
        };
    };
    if (((NPC_HASITEMS(SELF, 35488)) >= (1)) || ((NPC_HASITEMS(SELF, 35509)) >= (1))) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 34064);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 39549);
        };
    };
    if (((NPC_HASITEMS(SELF, 35493)) >= (1)) || ((NPC_HASITEMS(SELF, 35510)) >= (1))) {
        EQUIPITEM(SELF, 34386);
        CREATEINVITEMS(SELF, 34384, 20);
    };
    if ((NPC_HASITEMS(SELF, 35498)) >= (1)) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 39734);
            CREATEINVITEMS(SELF, 34384, 20);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 39723);
            CREATEINVITEMS(SELF, 34384, 20);
        };
    };
    if ((NPC_HASITEMS(SELF, 35501)) >= (1)) {
        RND = HLP_RANDOM(3);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 34051);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 34057);
        } else if ((RND) == (2)) {
            EQUIPITEM(SELF, 39489);
        };
    };
    if ((NPC_HASITEMS(SELF, 35506)) >= (1)) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 39541);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 39517);
        };
    };
    if ((NPC_HASITEMS(SELF, 35451)) >= (1)) {
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 34021);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 34023);
        } else if ((RND) == (2)) {
            EQUIPITEM(SELF, 34014);
        };
    };
    if ((NPC_HASITEMS(SELF, 35465)) >= (1)) {
        RND = HLP_RANDOM(3);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 34037);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 34064);
        } else if ((RND) == (2)) {
            EQUIPITEM(SELF, 39485);
        };
    };
    if ((NPC_HASITEMS(SELF, 35470)) >= (1)) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 34397);
            CREATEINVITEMS(SELF, 34383, 20);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 39749);
            CREATEINVITEMS(SELF, 34383, 20);
        };
    };
    if ((NPC_HASITEMS(SELF, 35475)) >= (1)) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 39751);
            CREATEINVITEMS(SELF, 34383, 20);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 39761);
            CREATEINVITEMS(SELF, 34383, 20);
        };
    };
    if ((NPC_HASITEMS(SELF, 35454)) >= (1)) {
        RND = HLP_RANDOM(4);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 39541);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 34066);
        } else if ((RND) == (2)) {
            EQUIPITEM(SELF, 34057);
        } else if ((RND) == (3)) {
            EQUIPITEM(SELF, 34062);
        };
    };
    if ((NPC_HASITEMS(SELF, 35459)) >= (1)) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 34081);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 39519);
        };
    };
    if (((NPC_HASITEMS(SELF, 33913)) >= (1)) || ((NPC_HASITEMS(SELF, 35594)) >= (1))) {
        EQUIPITEM(SELF, 34013);
    };
    if (((((NPC_HASITEMS(SELF, 35520)) >= (1)) || ((NPC_HASITEMS(SELF, 35512)) >= (1))) || ((NPC_HASITEMS(SELF, 35518)) >= (1))) || ((NPC_HASITEMS(SELF, 35521)) >= (1))) {
        if ((KAPITEL) == (6)) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39532);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 39533);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 39711);
                CREATEINVITEMS(SELF, 34384, 20);
            };
        } else {
            EQUIPITEM(SELF, 39532);
        };
    };
    if ((NPC_HASITEMS(SELF, 35581)) >= (1)) {
        EQUIPITEM(SELF, 34014);
    };
    if (((((((((((((((((((NPC_HASITEMS(SELF, 33906)) >= (1)) || ((NPC_HASITEMS(SELF, 35571)) >= (1))) || ((NPC_HASITEMS(SELF, 35572)) >= (1))) || ((NPC_HASITEMS(SELF, 35573)) >= (1))) || ((NPC_HASITEMS(SELF, 33907)) >= (1))) || ((NPC_HASITEMS(SELF, 35578)) >= (1))) || ((NPC_HASITEMS(SELF, 35579)) >= (1))) || ((NPC_HASITEMS(SELF, 35580)) >= (1))) || ((NPC_HASITEMS(SELF, 33911)) >= (1))) || ((NPC_HASITEMS(SELF, 35601)) >= (1))) || ((NPC_HASITEMS(SELF, 35602)) >= (1))) || ((NPC_HASITEMS(SELF, 35603)) >= (1))) || ((NPC_HASITEMS(SELF, 35604)) >= (1))) || ((NPC_HASITEMS(SELF, 35605)) >= (1))) || ((NPC_HASITEMS(SELF, 35606)) >= (1))) || ((NPC_HASITEMS(SELF, 35607)) >= (1))) || ((NPC_HASITEMS(SELF, 35608)) >= (1))) || ((NPC_HASITEMS(SELF, 33912)) >= (1))) {
        RND = HLP_RANDOM(4);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 34000);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 33999);
        } else if ((RND) == (2)) {
            EQUIPITEM(SELF, 39512);
        } else if ((RND) == (3)) {
            EQUIPITEM(SELF, 34010);
        };
    };
    if (((NPC_HASITEMS(SELF, 35479)) >= (1)) || ((NPC_HASITEMS(SELF, 35478)) >= (1))) {
        if ((SELF.LEVEL) >= (50)) {
            RND = HLP_RANDOM(10);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39531);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34083);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 39710);
                CREATEINVITEMS(SELF, 34384, 20);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 34074);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 34071);
            } else if ((RND) == (5)) {
                EQUIPITEM(SELF, 39595);
            } else if ((RND) == (6)) {
                EQUIPITEM(SELF, 39571);
            } else if ((RND) == (7)) {
                EQUIPITEM(SELF, 39575);
            } else if ((RND) == (8)) {
                EQUIPITEM(SELF, 39578);
            } else if ((RND) == (9)) {
                EQUIPITEM(SELF, 39572);
            };
        } else if (((SELF.LEVEL) >= (35)) && ((SELF.LEVEL) < (50))) {
            RND = HLP_RANDOM(10);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34074);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34071);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 39595);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 39571);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 39737);
                CREATEINVITEMS(SELF, 34384, 20);
            } else if ((RND) == (5)) {
                EQUIPITEM(SELF, 39710);
                CREATEINVITEMS(SELF, 34384, 20);
            } else if ((RND) == (6)) {
                EQUIPITEM(SELF, 34068);
            } else if ((RND) == (7)) {
                EQUIPITEM(SELF, 39575);
            } else if ((RND) == (8)) {
                EQUIPITEM(SELF, 39578);
            } else if ((RND) == (9)) {
                EQUIPITEM(SELF, 39572);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (35))) {
            RND = HLP_RANDOM(5);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34413);
                CREATEINVITEMS(SELF, 34384, 20);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34062);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 34066);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 39592);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 39572);
            };
        } else {
            EQUIPITEM(SELF, 39592);
        };
    };
    if ((((NPC_HASITEMS(SELF, 33570)) >= (1)) || ((NPC_HASITEMS(SELF, 33571)) >= (1))) || ((NPC_HASITEMS(SELF, 35443)) >= (1))) {
        if ((SELF.LEVEL) >= (50)) {
            RND = HLP_RANDOM(2);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39531);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34083);
            };
        } else if (((SELF.LEVEL) >= (35)) && ((SELF.LEVEL) < (50))) {
            RND = HLP_RANDOM(5);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39571);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 33738);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 34059);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 34068);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 33742);
            } else if ((RND) == (5)) {
                EQUIPITEM(SELF, 39544);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (35))) {
            RND = HLP_RANDOM(4);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34062);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 33742);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 33731);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 34049);
            };
        } else {
            EQUIPITEM(SELF, 34049);
        };
    };
    if (((NPC_HASITEMS(SELF, 35614)) >= (1)) || ((NPC_HASITEMS(SELF, 35615)) >= (1))) {
        RND = HLP_RANDOM(2);
        if ((RND) == (0)) {
            EQUIPITEM(SELF, 39541);
        } else if ((RND) == (1)) {
            EQUIPITEM(SELF, 39517);
        };
    };
    if ((((NPC_HASITEMS(SELF, 35380)) >= (1)) || ((NPC_HASITEMS(SELF, 35381)) >= (1))) || ((NPC_HASITEMS(SELF, 35382)) >= (1))) {
        if ((SELF.LEVEL) >= (20)) {
            RND = HLP_RANDOM(5);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39618);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34037);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 34391);
                CREATEINVITEMS(SELF, 34383, 20);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 39746);
                CREATEINVITEMS(SELF, 34383, 20);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 34416);
                CREATEINVITEMS(SELF, 34384, 20);
            };
        } else {
            EQUIPITEM(SELF, 39618);
        };
    };
    if (((((NPC_HASITEMS(SELF, 35422)) >= (1)) || ((NPC_HASITEMS(SELF, 35427)) >= (1))) || ((NPC_HASITEMS(SELF, 35428)) >= (1))) || ((NPC_HASITEMS(SELF, 35429)) >= (1))) {
        if ((SELF.LEVEL) >= (50)) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39552);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 39717);
                CREATEINVITEMS(SELF, 34384, 20);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 39761);
                CREATEINVITEMS(SELF, 34383, 20);
            };
        } else if (((SELF.LEVEL) >= (40)) && ((SELF.LEVEL) < (50))) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34051);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34421);
                CREATEINVITEMS(SELF, 34384, 20);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 39749);
                CREATEINVITEMS(SELF, 34383, 20);
            };
        } else if (((SELF.LEVEL) >= (30)) && ((SELF.LEVEL) < (40))) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39549);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 39726);
                CREATEINVITEMS(SELF, 34384, 20);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 34395);
                CREATEINVITEMS(SELF, 34383, 20);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (30))) {
            RND = HLP_RANDOM(5);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39618);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34037);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 34391);
                CREATEINVITEMS(SELF, 34383, 20);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 39746);
                CREATEINVITEMS(SELF, 34383, 20);
            } else if ((RND) == (4)) {
                EQUIPITEM(SELF, 34416);
                CREATEINVITEMS(SELF, 34384, 20);
            };
        } else {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39512);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 39719);
                CREATEINVITEMS(SELF, 34384, 20);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 34389);
                CREATEINVITEMS(SELF, 34383, 20);
            };
        };
    };
    if (((((NPC_HASITEMS(SELF, 35394)) >= (1)) || ((NPC_HASITEMS(SELF, 35395)) >= (1))) || ((NPC_HASITEMS(SELF, 35396)) >= (1))) || ((NPC_HASITEMS(SELF, 35397)) >= (1))) {
        if ((SELF.LEVEL) >= (15)) {
            RND = HLP_RANDOM(2);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34008);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34023);
            };
        } else {
            RND = HLP_RANDOM(4);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34000);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 33999);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 34001);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 34016);
            };
        };
    };
    if ((NPC_HASITEMS(SELF, 35407)) >= (1)) {
        if ((SELF.LEVEL) >= (40)) {
            RND = HLP_RANDOM(2);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34068);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 33729);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (40))) {
            RND = HLP_RANDOM(4);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 34051);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 34059);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 33731);
            } else if ((RND) == (3)) {
                EQUIPITEM(SELF, 39572);
            };
        } else {
            EQUIPITEM(SELF, 39549);
        };
    };
    if ((NPC_HASITEMS(SELF, 35444)) >= (1)) {
        if ((SELF.LEVEL) >= (40)) {
            RND = HLP_RANDOM(2);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39595);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 39601);
            };
        } else if (((SELF.LEVEL) >= (20)) && ((SELF.LEVEL) < (40))) {
            RND = HLP_RANDOM(3);
            if ((RND) == (0)) {
                EQUIPITEM(SELF, 39570);
            } else if ((RND) == (1)) {
                EQUIPITEM(SELF, 33738);
            } else if ((RND) == (2)) {
                EQUIPITEM(SELF, 39603);
            };
        } else {
            EQUIPITEM(SELF, 34062);
        };
    };
    RND = HLP_RANDOM(4);
    if ((RND) == (0)) {
        EQUIPITEM(SELF, 34000);
    };
    if ((RND) == (1)) {
        EQUIPITEM(SELF, 33999);
    };
    if ((RND) == (2)) {
        EQUIPITEM(SELF, 34001);
    };
    if ((RND) == (3)) {
        EQUIPITEM(SELF, 34016);
    };
}

