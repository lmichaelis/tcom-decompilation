var int BASTIAN_ITEMSGIVEN_CHAPTER_2;
var int BASTIAN_ITEMSGIVEN_CHAPTER_3;
var int BASTIAN_ITEMSGIVEN_CHAPTER_3_QUESTMIST;
func void B_GIVETRADEINV_BASTIAN(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((BASTIAN_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 36383, 3);
        CREATEINVITEMS(SLF, 36387, 2);
        CREATEINVITEMS(SLF, 36393, 3);
        CREATEINVITEMS(SLF, 36385, 3);
        CREATEINVITEMS(SLF, 33964, 2);
        CREATEINVITEMS(SLF, 36357, 2);
        CREATEINVITEMS(SLF, 33966, 10);
        CREATEINVITEMS(SLF, 33972, 10);
        CREATEINVITEMS(SLF, 33978, 10);
        CREATEINVITEMS(SLF, 33980, 12);
        CREATEINVITEMS(SLF, 36427, 2);
        CREATEINVITEMS(SLF, 36429, 8);
        CREATEINVITEMS(SLF, 36377, 22);
        CREATEINVITEMS(SLF, 36378, 2);
        CREATEINVITEMS(SLF, 36380, 30);
        CREATEINVITEMS(SLF, 36382, 18);
        CREATEINVITEMS(SLF, 37055, 3);
        CREATEINVITEMS(SLF, 33968, 10);
        CREATEINVITEMS(SLF, 36447, 4);
        CREATEINVITEMS(SLF, 36942, 2);
        CREATEINVITEMS(SLF, 35983, 2);
        CREATEINVITEMS(SLF, 33656, 2);
        CREATEINVITEMS(SLF, 34270, 30);
        CREATEINVITEMS(SLF, 34292, 8);
        CREATEINVITEMS(SLF, 34294, 8);
        CREATEINVITEMS(SLF, 34298, 8);
        CREATEINVITEMS(SLF, 34300, 8);
        CREATEINVITEMS(SLF, 34296, 8);
        CREATEINVITEMS(SLF, 36380, 5);
        CREATEINVITEMS(SLF, 33982, 15);
        CREATEINVITEMS(SLF, 33984, 18);
        CREATEINVITEMS(SLF, 33990, 12);
        CREATEINVITEMS(SLF, 33986, 2);
        CREATEINVITEMS(SLF, 33988, 10);
        CREATEINVITEMS(SLF, 36385, 4);
        CREATEINVITEMS(SLF, 34178, 2);
        CREATEINVITEMS(SLF, 34742, 8);
        CREATEINVITEMS(SLF, 39822, 1);
        CREATEINVITEMS(SLF, 39824, 1);
        CREATEINVITEMS(SLF, 39812, 1);
        CREATEINVITEMS(SLF, 39810, 1);
        CREATEINVITEMS(SLF, 35986, 1);
        CREATEINVITEMS(SLF, 33847, 5);
        CREATEINVITEMS(SLF, 35847, 1);
        CREATEINVITEMS(SLF, 35849, 1);
        CREATEINVITEMS(SLF, 35861, 1);
        CREATEINVITEMS(SLF, 35873, 1);
        CREATEINVITEMS(SLF, 35913, 1);
        BASTIAN_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (2)) && ((BASTIAN_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 36383, 3);
        CREATEINVITEMS(SLF, 36387, 2);
        CREATEINVITEMS(SLF, 36393, 3);
        CREATEINVITEMS(SLF, 36385, 1);
        CREATEINVITEMS(SLF, 33964, 2);
        CREATEINVITEMS(SLF, 36357, 2);
        CREATEINVITEMS(SLF, 33966, 5);
        CREATEINVITEMS(SLF, 33970, 5);
        CREATEINVITEMS(SLF, 33972, 5);
        CREATEINVITEMS(SLF, 33978, 5);
        CREATEINVITEMS(SLF, 33980, 10);
        CREATEINVITEMS(SLF, 36411, 4);
        CREATEINVITEMS(SLF, 36413, 6);
        CREATEINVITEMS(SLF, 36427, 2);
        CREATEINVITEMS(SLF, 36429, 4);
        CREATEINVITEMS(SLF, 36377, 10);
        CREATEINVITEMS(SLF, 36378, 2);
        CREATEINVITEMS(SLF, 36380, 24);
        CREATEINVITEMS(SLF, 36382, 16);
        CREATEINVITEMS(SLF, 33982, 6);
        CREATEINVITEMS(SLF, 33984, 12);
        CREATEINVITEMS(SLF, 33990, 4);
        CREATEINVITEMS(SLF, 33986, 5);
        CREATEINVITEMS(SLF, 33988, 12);
        CREATEINVITEMS(SLF, 34178, 2);
        CREATEINVITEMS(SLF, 34742, 4);
        CREATEINVITEMS(SLF, 33847, 3);
        CREATEINVITEMS(SLF, 35865, 1);
        BASTIAN_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((BASTIAN_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        BASTIAN_ITEMSGIVEN_CHAPTER_3 = TRUE;
        CREATEINVITEMS(SLF, 36378, 2);
        CREATEINVITEMS(SLF, 33964, 2);
        CREATEINVITEMS(SLF, 36357, 2);
        CREATEINVITEMS(SLF, 33966, 10);
        CREATEINVITEMS(SLF, 33972, 10);
        CREATEINVITEMS(SLF, 33978, 10);
        CREATEINVITEMS(SLF, 33980, 8);
        CREATEINVITEMS(SLF, 36377, 12);
        CREATEINVITEMS(SLF, 36380, 20);
        CREATEINVITEMS(SLF, 36382, 10);
        CREATEINVITEMS(SLF, 37055, 1);
        CREATEINVITEMS(SLF, 33847, 2);
    };
    if (((SQ213_BASTIANVINE) == (TRUE)) && ((BASTIAN_ITEMSGIVEN_CHAPTER_3_QUESTMIST) == (FALSE))) {
        CREATEINVITEMS(SLF, 37420, 1);
        BASTIAN_ITEMSGIVEN_CHAPTER_3_QUESTMIST = TRUE;
    };
}

