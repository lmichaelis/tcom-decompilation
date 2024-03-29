instance PC_COOKINGPREFS(C_INFO) {
    NPC = 50091;
    CONDITION = PC_COOKINGPREFS_CONDITION;
    INFORMATION = PC_COOKINGPREFS_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_COOKINGPREFS;
    NR = 99;
}

func int PC_COOKINGPREFS_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_COOKING)) {
        if ((COOKINGMEALS_MODE) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void PC_COOKINGPREFS_INFO() {
    INFO_CLEARCHOICES(48781);
    INFO_ADDCHOICE(48781, FOODNAME_MEAT, 48785);
    INFO_ADDCHOICE(48781, FOODNAME_VEGETABLES, 48809);
    INFO_ADDCHOICE(48781, DIALOG_BACK, 48784);
}

func void PC_COOKINGPREFS_BACK() {
    INFO_CLEARCHOICES(48781);
}

func void PC_COOKINGPREFS_MEAT() {
    INFO_CLEARCHOICES(48781);
    if ((ITEMGROUP_MEAT_IGNOREMASK[0]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_MEATBUGFLESH, DIALOG_COOKINGPREFS_NO), 48786);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_MEATBUGFLESH, DIALOG_COOKINGPREFS_YES), 48786);
    if ((ITEMGROUP_MEAT_IGNOREMASK[11]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_MEATBUGFLESH_FRIED, DIALOG_COOKINGPREFS_NO), 48797);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_MEATBUGFLESH_FRIED, DIALOG_COOKINGPREFS_YES), 48797);
    if ((ITEMGROUP_MEAT_IGNOREMASK[1]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_RATRAW, DIALOG_COOKINGPREFS_NO), 48787);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_RATRAW, DIALOG_COOKINGPREFS_YES), 48787);
    if ((ITEMGROUP_MEAT_IGNOREMASK[12]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_RATFRIED, DIALOG_COOKINGPREFS_NO), 48798);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_RATFRIED, DIALOG_COOKINGPREFS_YES), 48798);
    if ((ITEMGROUP_MEAT_IGNOREMASK[2]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_BOARRAW, DIALOG_COOKINGPREFS_NO), 48788);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_BOARRAW, DIALOG_COOKINGPREFS_YES), 48788);
    if ((ITEMGROUP_MEAT_IGNOREMASK[13]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_BOARFRIED, DIALOG_COOKINGPREFS_NO), 48799);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_BOARFRIED, DIALOG_COOKINGPREFS_YES), 48799);
    if ((ITEMGROUP_MEAT_IGNOREMASK[3]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_SHEEPRAW, DIALOG_COOKINGPREFS_NO), 48789);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_SHEEPRAW, DIALOG_COOKINGPREFS_YES), 48789);
    if ((ITEMGROUP_MEAT_IGNOREMASK[14]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_SHEEPFRIED, DIALOG_COOKINGPREFS_NO), 48800);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_SHEEPFRIED, DIALOG_COOKINGPREFS_YES), 48800);
    if ((ITEMGROUP_MEAT_IGNOREMASK[4]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_MOLERATRAW, DIALOG_COOKINGPREFS_NO), 48790);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_MOLERATRAW, DIALOG_COOKINGPREFS_YES), 48790);
    if ((ITEMGROUP_MEAT_IGNOREMASK[15]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_MOLERATFRIED, DIALOG_COOKINGPREFS_NO), 48801);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_MOLERATFRIED, DIALOG_COOKINGPREFS_YES), 48801);
    if ((ITEMGROUP_MEAT_IGNOREMASK[5]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_WOLFRAW, DIALOG_COOKINGPREFS_NO), 48791);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_WOLFRAW, DIALOG_COOKINGPREFS_YES), 48791);
    if ((ITEMGROUP_MEAT_IGNOREMASK[16]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_WOLFFRIED, DIALOG_COOKINGPREFS_NO), 48802);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_WOLFFRIED, DIALOG_COOKINGPREFS_YES), 48802);
    if ((ITEMGROUP_MEAT_IGNOREMASK[6]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_SCAVENGERRAW, DIALOG_COOKINGPREFS_NO), 48792);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_SCAVENGERRAW, DIALOG_COOKINGPREFS_YES), 48792);
    if ((ITEMGROUP_MEAT_IGNOREMASK[17]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_SCAVENGERFRIED, DIALOG_COOKINGPREFS_NO), 48803);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_SCAVENGERFRIED, DIALOG_COOKINGPREFS_YES), 48803);
    if ((ITEMGROUP_MEAT_IGNOREMASK[7]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_CRABRAW, DIALOG_COOKINGPREFS_NO), 48793);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_CRABRAW, DIALOG_COOKINGPREFS_YES), 48793);
    if ((ITEMGROUP_MEAT_IGNOREMASK[18]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_CRABFRIED, DIALOG_COOKINGPREFS_NO), 48804);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_CRABFRIED, DIALOG_COOKINGPREFS_YES), 48804);
    if ((ITEMGROUP_MEAT_IGNOREMASK[8]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_SHADOWRAW, DIALOG_COOKINGPREFS_NO), 48794);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_SHADOWRAW, DIALOG_COOKINGPREFS_YES), 48794);
    if ((ITEMGROUP_MEAT_IGNOREMASK[19]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_SHADOWFRIED, DIALOG_COOKINGPREFS_NO), 48805);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_SHADOWFRIED, DIALOG_COOKINGPREFS_YES), 48805);
    if ((ITEMGROUP_MEAT_IGNOREMASK[9]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_BEARRAW, DIALOG_COOKINGPREFS_NO), 48795);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_BEARRAW, DIALOG_COOKINGPREFS_YES), 48795);
    if ((ITEMGROUP_MEAT_IGNOREMASK[20]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_BEARFRIED, DIALOG_COOKINGPREFS_NO), 48806);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_BEARFRIED, DIALOG_COOKINGPREFS_YES), 48806);
    if ((ITEMGROUP_MEAT_IGNOREMASK[10]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_TROLLRAW, DIALOG_COOKINGPREFS_NO), 48796);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_TROLLRAW, DIALOG_COOKINGPREFS_YES), 48796);
    if ((ITEMGROUP_MEAT_IGNOREMASK[21]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_TROLLFRIED, DIALOG_COOKINGPREFS_NO), 48807);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_TROLLFRIED, DIALOG_COOKINGPREFS_YES), 48807);
    INFO_ADDCHOICE(48781, DIALOG_BACK, 48808);
}

func void PC_COOKINGPREFS_MEATBUGRAW() {
    ITEMGROUP_MEAT_IGNOREMASK[0] = !(ITEMGROUP_MEAT_IGNOREMASK[0]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_RATRAW() {
    ITEMGROUP_MEAT_IGNOREMASK[1] = !(ITEMGROUP_MEAT_IGNOREMASK[1]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_BOARRAW() {
    ITEMGROUP_MEAT_IGNOREMASK[2] = !(ITEMGROUP_MEAT_IGNOREMASK[2]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_SHEEPRAW() {
    ITEMGROUP_MEAT_IGNOREMASK[3] = !(ITEMGROUP_MEAT_IGNOREMASK[3]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_MOLERATRAW() {
    ITEMGROUP_MEAT_IGNOREMASK[4] = !(ITEMGROUP_MEAT_IGNOREMASK[4]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_WOLFRAW() {
    ITEMGROUP_MEAT_IGNOREMASK[5] = !(ITEMGROUP_MEAT_IGNOREMASK[5]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_SCAVENGERRAW() {
    ITEMGROUP_MEAT_IGNOREMASK[6] = !(ITEMGROUP_MEAT_IGNOREMASK[6]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_CRABRAW() {
    ITEMGROUP_MEAT_IGNOREMASK[7] = !(ITEMGROUP_MEAT_IGNOREMASK[7]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_SHADOWRAW() {
    ITEMGROUP_MEAT_IGNOREMASK[8] = !(ITEMGROUP_MEAT_IGNOREMASK[8]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_BEARRAW() {
    ITEMGROUP_MEAT_IGNOREMASK[9] = !(ITEMGROUP_MEAT_IGNOREMASK[9]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_TROLLRAW() {
    ITEMGROUP_MEAT_IGNOREMASK[10] = !(ITEMGROUP_MEAT_IGNOREMASK[10]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_MEATBUGFRIED() {
    ITEMGROUP_MEAT_IGNOREMASK[11] = !(ITEMGROUP_MEAT_IGNOREMASK[11]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_RATFRIED() {
    ITEMGROUP_MEAT_IGNOREMASK[12] = !(ITEMGROUP_MEAT_IGNOREMASK[12]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_BOARFRIED() {
    ITEMGROUP_MEAT_IGNOREMASK[13] = !(ITEMGROUP_MEAT_IGNOREMASK[13]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_SHEEPFRIED() {
    ITEMGROUP_MEAT_IGNOREMASK[14] = !(ITEMGROUP_MEAT_IGNOREMASK[14]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_MOLERATFRIED() {
    ITEMGROUP_MEAT_IGNOREMASK[15] = !(ITEMGROUP_MEAT_IGNOREMASK[15]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_WOLFFRIED() {
    ITEMGROUP_MEAT_IGNOREMASK[16] = !(ITEMGROUP_MEAT_IGNOREMASK[16]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_SCAVENGERFRIED() {
    ITEMGROUP_MEAT_IGNOREMASK[17] = !(ITEMGROUP_MEAT_IGNOREMASK[17]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_CRABFRIED() {
    ITEMGROUP_MEAT_IGNOREMASK[18] = !(ITEMGROUP_MEAT_IGNOREMASK[18]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_SHADOWFRIED() {
    ITEMGROUP_MEAT_IGNOREMASK[19] = !(ITEMGROUP_MEAT_IGNOREMASK[19]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_BEARFRIED() {
    ITEMGROUP_MEAT_IGNOREMASK[20] = !(ITEMGROUP_MEAT_IGNOREMASK[20]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_TROLLFRIED() {
    ITEMGROUP_MEAT_IGNOREMASK[21] = !(ITEMGROUP_MEAT_IGNOREMASK[21]);
    PC_COOKINGPREFS_MEAT();
}

func void PC_COOKINGPREFS_MEAT_BACK() {
    PC_COOKINGPREFS_INFO();
}

func void PC_COOKINGPREFS_VEGETABLES() {
    INFO_CLEARCHOICES(48781);
    if ((ITEMGROUP_VEGETABLE_IGNOREMASK[0]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(PLANTNAME_BEET, DIALOG_COOKINGPREFS_NO), 48810);
    };
    INFO_ADDCHOICE(48781, CS2(PLANTNAME_BEET, DIALOG_COOKINGPREFS_YES), 48810);
    if ((ITEMGROUP_VEGETABLE_IGNOREMASK[1]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_PARSLEY, DIALOG_COOKINGPREFS_NO), 48811);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_PARSLEY, DIALOG_COOKINGPREFS_YES), 48811);
    if ((ITEMGROUP_VEGETABLE_IGNOREMASK[2]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_CARROT, DIALOG_COOKINGPREFS_NO), 48812);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_CARROT, DIALOG_COOKINGPREFS_YES), 48812);
    if ((ITEMGROUP_VEGETABLE_IGNOREMASK[3]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_CABBAGE, DIALOG_COOKINGPREFS_NO), 48813);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_CABBAGE, DIALOG_COOKINGPREFS_YES), 48813);
    if ((ITEMGROUP_VEGETABLE_IGNOREMASK[4]) == (TRUE)) {
        INFO_ADDCHOICE(48781, CS2(FOODNAME_PUMPKIN, DIALOG_COOKINGPREFS_NO), 48814);
    };
    INFO_ADDCHOICE(48781, CS2(FOODNAME_PUMPKIN, DIALOG_COOKINGPREFS_YES), 48814);
    INFO_ADDCHOICE(48781, DIALOG_BACK, 48808);
}

func void PC_COOKINGPREFS_BEET() {
    ITEMGROUP_VEGETABLE_IGNOREMASK[0] = !(ITEMGROUP_VEGETABLE_IGNOREMASK[0]);
    PC_COOKINGPREFS_VEGETABLES();
}

func void PC_COOKINGPREFS_PARSLEY() {
    ITEMGROUP_VEGETABLE_IGNOREMASK[1] = !(ITEMGROUP_VEGETABLE_IGNOREMASK[1]);
    PC_COOKINGPREFS_VEGETABLES();
}

func void PC_COOKINGPREFS_CARROT() {
    ITEMGROUP_VEGETABLE_IGNOREMASK[2] = !(ITEMGROUP_VEGETABLE_IGNOREMASK[2]);
    PC_COOKINGPREFS_VEGETABLES();
}

func void PC_COOKINGPREFS_CABBAGE() {
    ITEMGROUP_VEGETABLE_IGNOREMASK[3] = !(ITEMGROUP_VEGETABLE_IGNOREMASK[3]);
    PC_COOKINGPREFS_VEGETABLES();
}

func void PC_COOKINGPREFS_PUMPKIN() {
    ITEMGROUP_VEGETABLE_IGNOREMASK[4] = !(ITEMGROUP_VEGETABLE_IGNOREMASK[4]);
    PC_COOKINGPREFS_VEGETABLES();
}

