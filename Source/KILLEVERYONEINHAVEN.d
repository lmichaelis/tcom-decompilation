func void KILLEVERYONEINHAVEN() {
    if ((Q307_POISONWAY) == (1)) {
        B_STARTOTHERROUTINE(PIR_1308_SIMON, "SQ503_TIRED");
        B_REMOVENPC(58726);
        B_REMOVENPC(58734);
        if ((LOG_GETSTATUS(MIS_SQ316)) == (LOG_RUNNING)) {
            SQ316_HOLLYSHITDUDE = TRUE;
            if ((NPC_ISDEAD(VLK_6126_LENA)) == (FALSE)) {
                B_REMOVENPC(58835);
            };
            if ((NPC_ISDEAD(VLK_13570_NADINE)) == (FALSE)) {
                B_STARTOTHERROUTINE(VLK_13570_NADINE, "HOLLYSHIT");
            };
        };
        if (((LOG_GETSTATUS(MIS_SQ316)) != (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_SQ316)) != (LOG_SUCCESS))) {
            B_REMOVENPC(58835);
            B_REMOVENPC(53059);
        };
        if ((NPC_ISDEAD(PIR_6354_GUARD)) == (FALSE)) {
            B_REMOVENPC(58509);
        };
        if ((NPC_ISDEAD(PIR_6322_GHOST)) == (FALSE)) {
            B_REMOVENPC(58497);
        };
        if ((NPC_ISDEAD(PIR_1330_ALVAREZ)) == (FALSE)) {
            B_REMOVENPC(58828);
        };
        if ((NPC_ISDEAD(PIR_1329_SAUL)) == (FALSE)) {
            B_REMOVENPC(58818);
        };
        if ((NPC_ISDEAD(PIR_1312_LARRY)) == (FALSE)) {
            B_REMOVENPC(58758);
        };
        if ((NPC_ISDEAD(PIR_1307_PROXIMO)) == (FALSE)) {
            B_REMOVENPC(58696);
        };
        if ((NPC_ISDEAD(PIR_1305_OTIS)) == (FALSE)) {
            B_REMOVENPC(58664);
            B_CLEARRUNEINV(PIR_1305_OTIS);
            B_CLEARFAKEITEMS(PIR_1305_OTIS);
            B_CLEARDEADTRADER(PIR_1305_OTIS);
        };
        if ((NPC_ISDEAD(PIR_1302_MORTY)) == (FALSE)) {
            B_REMOVENPC(58638);
        };
        if ((NPC_ISDEAD(PIR_1301_GREGOR)) == (FALSE)) {
            B_REMOVENPC(58633);
        };
        if ((NPC_ISDEAD(NONE_1315_ROSITA)) == (FALSE)) {
            B_REMOVENPC(58520);
        };
        if ((NPC_ISDEAD(NONE_1316_TARA)) == (FALSE)) {
            B_REMOVENPC(58528);
        };
        if ((Q305_HERDIS_FINISHWAY) == (1)) {
            if ((NPC_ISDEAD(NONE_6334_HERDIS)) == (FALSE)) {
                B_REMOVENPC(57876);
            };
            if ((NPC_ISDEAD(NONE_6335_MILLIE)) == (FALSE)) {
                B_REMOVENPC(57888);
            };
        };
        if ((Q305_HARRISTATUS) == (4)) {
            if ((NPC_ISDEAD(NONE_6333_HARRI)) == (FALSE)) {
                B_REMOVENPC(58592);
            };
        };
        if ((NPC_ISDEAD(PIR_13550_PIRATE)) == (FALSE)) {
            B_REMOVENPC(58875);
        };
        if ((NPC_ISDEAD(PIR_13551_PIRATE)) == (FALSE)) {
            B_REMOVENPC(58879);
        };
        if ((NPC_ISDEAD(PIR_13552_PIRATE)) == (FALSE)) {
            B_REMOVENPC(58883);
        };
        if ((NPC_ISDEAD(PIR_13553_DINKEL)) == (FALSE)) {
            B_REMOVENPC(58858);
        };
        if ((NPC_ISDEAD(PIR_13554_PIRATE)) == (FALSE)) {
            B_REMOVENPC(58887);
        };
        if ((NPC_ISDEAD(PIR_13555_PIRATE)) == (FALSE)) {
            B_REMOVENPC(58891);
        };
        if ((NPC_ISDEAD(PIR_13556_PIRATE)) == (FALSE)) {
            B_REMOVENPC(58895);
        };
        if ((NPC_ISDEAD(PIR_13557_PIRATETRADER)) == (FALSE)) {
            B_REMOVENPC(58898);
            B_CLEARRUNEINV(PIR_13557_PIRATETRADER);
            B_CLEARFAKEITEMS(PIR_13557_PIRATETRADER);
            B_CLEARDEADTRADER(PIR_13557_PIRATETRADER);
        };
    };
}

