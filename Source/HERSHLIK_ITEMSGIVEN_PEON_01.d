var int HERSHLIK_ITEMSGIVEN_PEON_01;
var int HERSHLIK_ITEMSGIVEN_CHAPTER_3;
var int HERSHLIK_ITEMSGIVEN_CHAPTER_4;
var int HERSHLIK_ITEMSGIVEN_CHAPTER_5;
func void B_GIVETRADEINV_HERSHLIK(var C_NPC SLF) {
    if (((KAPITEL) >= (2)) && ((HERSHLIK_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 37647, 8);
        CREATEINVITEMS(SLF, 37655, 2);
        CREATEINVITEMS(SLF, 34292, 4);
        CREATEINVITEMS(SLF, 34294, 4);
        CREATEINVITEMS(SLF, 34290, 4);
        CREATEINVITEMS(SLF, 34302, 10);
        CREATEINVITEMS(SLF, 34280, 10);
        CREATEINVITEMS(SLF, 34282, 8);
        CREATEINVITEMS(SLF, 34284, 5);
        CREATEINVITEMS(SLF, 34274, 8);
        CREATEINVITEMS(SLF, 34276, 4);
        CREATEINVITEMS(SLF, 34278, 2);
        CREATEINVITEMS(SLF, 34177, 14);
        CREATEINVITEMS(SLF, 34224, 2);
        CREATEINVITEMS(SLF, 34174, 1);
        CREATEINVITEMS(SLF, 34225, 5);
        CREATEINVITEMS(SLF, 34223, 8);
        CREATEINVITEMS(SLF, 34222, 8);
        CREATEINVITEMS(SLF, 36403, 12);
        CREATEINVITEMS(SLF, 34974, 1);
        CREATEINVITEMS(SLF, 35044, 1);
        CREATEINVITEMS(SLF, 35042, 1);
        CREATEINVITEMS(SLF, 35046, 1);
        CREATEINVITEMS(SLF, 35048, 1);
        CREATEINVITEMS(SLF, 35016, 1);
        CREATEINVITEMS(SLF, 35018, 1);
        CREATEINVITEMS(SLF, 35020, 1);
        CREATEINVITEMS(SLF, 35022, 1);
        CREATEINVITEMS(SLF, 35024, 1);
        CREATEINVITEMS(SLF, 35026, 1);
        CREATEINVITEMS(SLF, 35028, 1);
        CREATEINVITEMS(SLF, 34352, 8);
        CREATEINVITEMS(SLF, 34354, 6);
        CREATEINVITEMS(SLF, 34357, 4);
        CREATEINVITEMS(SLF, 37698, 6);
        CREATEINVITEMS(SLF, 34334, 8);
        CREATEINVITEMS(SLF, 34339, 6);
        CREATEINVITEMS(SLF, 34344, 4);
        CREATEINVITEMS(SLF, 34379, 4);
        CREATEINVITEMS(SLF, 34381, 2);
        CREATEINVITEMS(SLF, 37738, 1);
        CREATEINVITEMS(SLF, 37730, 1);
        CREATEINVITEMS(SLF, 37734, 1);
        CREATEINVITEMS(SLF, 37702, 1);
        CREATEINVITEMS(SLF, 37706, 1);
        CREATEINVITEMS(SLF, 37710, 1);
        CREATEINVITEMS(SLF, 37714, 1);
        CREATEINVITEMS(SLF, 37718, 1);
        CREATEINVITEMS(SLF, 34371, 1);
        CREATEINVITEMS(SLF, 34373, 1);
        CREATEINVITEMS(SLF, 37724, 1);
        CREATEINVITEMS(SLF, 34375, 1);
        CREATEINVITEMS(SLF, 34377, 1);
        CREATEINVITEMS(SLF, 35895, 1);
        CREATEINVITEMS(SLF, 35929, 1);
        HERSHLIK_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((PEON_HERSHLIK) == (TRUE)) && ((HERSHLIK_ITEMSGIVEN_PEON_01) == (FALSE))) {
        CREATEINVITEMS(SLF, 34379, 4);
        CREATEINVITEMS(SLF, 37718, 2);
        CREATEINVITEMS(SLF, 37738, 2);
        CREATEINVITEMS(SLF, 37730, 2);
        CREATEINVITEMS(SLF, 37734, 2);
        CREATEINVITEMS(SLF, 37702, 2);
        CREATEINVITEMS(SLF, 37706, 2);
        CREATEINVITEMS(SLF, 37710, 2);
        CREATEINVITEMS(SLF, 37714, 2);
        CREATEINVITEMS(SLF, 37718, 2);
        CREATEINVITEMS(SLF, 33678, 2);
        CREATEINVITEMS(SLF, 33680, 2);
        CREATEINVITEMS(SLF, 35012, 1);
        CREATEINVITEMS(SLF, 35014, 1);
        CREATEINVITEMS(SLF, 35010, 1);
        CREATEINVITEMS(SLF, 35008, 1);
        CREATEINVITEMS(SLF, 35040, 1);
        CREATEINVITEMS(SLF, 35030, 1);
        CREATEINVITEMS(SLF, 35032, 1);
        CREATEINVITEMS(SLF, 35034, 1);
        CREATEINVITEMS(SLF, 35036, 1);
        CREATEINVITEMS(SLF, 35038, 1);
        CREATEINVITEMS(SLF, 35050, 1);
        CREATEINVITEMS(SLF, 35052, 1);
        CREATEINVITEMS(SLF, 34371, 1);
        CREATEINVITEMS(SLF, 34373, 1);
        CREATEINVITEMS(SLF, 37724, 1);
        CREATEINVITEMS(SLF, 34375, 1);
        CREATEINVITEMS(SLF, 34377, 1);
        CREATEINVITEMS(SLF, 34731, 1);
        CREATEINVITEMS(SLF, 34303, 1);
        CREATEINVITEMS(SLF, 34288, 1);
        CREATEINVITEMS(SLF, 34286, 1);
        CREATEINVITEMS(SLF, 37650, 1);
        CREATEINVITEMS(SLF, 37653, 2);
        CREATEINVITEMS(SLF, 34177, 20);
        CREATEINVITEMS(SLF, 34290, 6);
        CREATEINVITEMS(SLF, 34302, 20);
        HERSHLIK_ITEMSGIVEN_PEON_01 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((HERSHLIK_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 37647, 4);
        CREATEINVITEMS(SLF, 37655, 2);
        CREATEINVITEMS(SLF, 34292, 4);
        CREATEINVITEMS(SLF, 34294, 4);
        CREATEINVITEMS(SLF, 34290, 4);
        CREATEINVITEMS(SLF, 34302, 10);
        CREATEINVITEMS(SLF, 34280, 5);
        CREATEINVITEMS(SLF, 34282, 4);
        CREATEINVITEMS(SLF, 34284, 3);
        CREATEINVITEMS(SLF, 34274, 4);
        CREATEINVITEMS(SLF, 34276, 2);
        CREATEINVITEMS(SLF, 34278, 1);
        CREATEINVITEMS(SLF, 35012, 1);
        CREATEINVITEMS(SLF, 35014, 1);
        CREATEINVITEMS(SLF, 35010, 1);
        CREATEINVITEMS(SLF, 35008, 1);
        CREATEINVITEMS(SLF, 34177, 10);
        CREATEINVITEMS(SLF, 34352, 4);
        CREATEINVITEMS(SLF, 34354, 3);
        CREATEINVITEMS(SLF, 34357, 2);
        CREATEINVITEMS(SLF, 33678, 1);
        CREATEINVITEMS(SLF, 37698, 3);
        CREATEINVITEMS(SLF, 34334, 4);
        CREATEINVITEMS(SLF, 34339, 3);
        CREATEINVITEMS(SLF, 34344, 2);
        CREATEINVITEMS(SLF, 33680, 1);
        CREATEINVITEMS(SLF, 34379, 2);
        CREATEINVITEMS(SLF, 34381, 2);
        CREATEINVITEMS(SLF, 37718, 2);
        CREATEINVITEMS(SLF, 37738, 2);
        CREATEINVITEMS(SLF, 37730, 2);
        CREATEINVITEMS(SLF, 37734, 2);
        CREATEINVITEMS(SLF, 37702, 2);
        CREATEINVITEMS(SLF, 37706, 2);
        CREATEINVITEMS(SLF, 37710, 2);
        CREATEINVITEMS(SLF, 37714, 2);
        CREATEINVITEMS(SLF, 37718, 2);
        HERSHLIK_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((HERSHLIK_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 37647, 4);
        CREATEINVITEMS(SLF, 37655, 2);
        CREATEINVITEMS(SLF, 34292, 4);
        CREATEINVITEMS(SLF, 34294, 4);
        CREATEINVITEMS(SLF, 34290, 4);
        CREATEINVITEMS(SLF, 34302, 10);
        CREATEINVITEMS(SLF, 34280, 5);
        CREATEINVITEMS(SLF, 34282, 4);
        CREATEINVITEMS(SLF, 34284, 3);
        CREATEINVITEMS(SLF, 34274, 4);
        CREATEINVITEMS(SLF, 34276, 2);
        CREATEINVITEMS(SLF, 34278, 1);
        CREATEINVITEMS(SLF, 34177, 10);
        CREATEINVITEMS(SLF, 36403, 12);
        CREATEINVITEMS(SLF, 34352, 4);
        CREATEINVITEMS(SLF, 34354, 3);
        CREATEINVITEMS(SLF, 34357, 2);
        CREATEINVITEMS(SLF, 33678, 1);
        CREATEINVITEMS(SLF, 37698, 3);
        CREATEINVITEMS(SLF, 34334, 4);
        CREATEINVITEMS(SLF, 34339, 3);
        CREATEINVITEMS(SLF, 34344, 2);
        CREATEINVITEMS(SLF, 33680, 1);
        CREATEINVITEMS(SLF, 34371, 1);
        CREATEINVITEMS(SLF, 34373, 1);
        CREATEINVITEMS(SLF, 37724, 1);
        CREATEINVITEMS(SLF, 34375, 1);
        CREATEINVITEMS(SLF, 34377, 1);
        CREATEINVITEMS(SLF, 34381, 2);
        CREATEINVITEMS(SLF, 37704, 2);
        CREATEINVITEMS(SLF, 37708, 2);
        CREATEINVITEMS(SLF, 37712, 1);
        CREATEINVITEMS(SLF, 37716, 1);
        CREATEINVITEMS(SLF, 37720, 1);
        CREATEINVITEMS(SLF, 37732, 2);
        CREATEINVITEMS(SLF, 37736, 2);
        if ((PEON_HERSHLIK) == (TRUE)) {
            CREATEINVITEMS(SLF, 34303, 2);
            CREATEINVITEMS(SLF, 34288, 2);
            CREATEINVITEMS(SLF, 34286, 2);
            CREATEINVITEMS(SLF, 37650, 2);
            CREATEINVITEMS(SLF, 37653, 4);
            CREATEINVITEMS(SLF, 34375, 1);
            CREATEINVITEMS(SLF, 34377, 1);
            CREATEINVITEMS(SLF, 34381, 2);
            CREATEINVITEMS(SLF, 34177, 30);
            CREATEINVITEMS(SLF, 34290, 8);
            CREATEINVITEMS(SLF, 34302, 25);
        };
        HERSHLIK_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
    if (((KAPITEL) >= (5)) && ((HERSHLIK_ITEMSGIVEN_CHAPTER_5) == (FALSE))) {
        CREATEINVITEMS(SLF, 37647, 2);
        CREATEINVITEMS(SLF, 37655, 1);
        CREATEINVITEMS(SLF, 34292, 2);
        CREATEINVITEMS(SLF, 34294, 2);
        CREATEINVITEMS(SLF, 34290, 2);
        CREATEINVITEMS(SLF, 34302, 5);
        CREATEINVITEMS(SLF, 34280, 2);
        CREATEINVITEMS(SLF, 34282, 2);
        CREATEINVITEMS(SLF, 34284, 1);
        CREATEINVITEMS(SLF, 34274, 2);
        CREATEINVITEMS(SLF, 34276, 1);
        CREATEINVITEMS(SLF, 34278, 1);
        CREATEINVITEMS(SLF, 34177, 10);
        CREATEINVITEMS(SLF, 34352, 8);
        CREATEINVITEMS(SLF, 34354, 5);
        CREATEINVITEMS(SLF, 34357, 5);
        CREATEINVITEMS(SLF, 33678, 4);
        CREATEINVITEMS(SLF, 37698, 5);
        CREATEINVITEMS(SLF, 34334, 6);
        CREATEINVITEMS(SLF, 34339, 5);
        CREATEINVITEMS(SLF, 34344, 4);
        CREATEINVITEMS(SLF, 33680, 2);
        CREATEINVITEMS(SLF, 34381, 2);
        CREATEINVITEMS(SLF, 37704, 1);
        CREATEINVITEMS(SLF, 37708, 1);
        CREATEINVITEMS(SLF, 37712, 1);
        CREATEINVITEMS(SLF, 37716, 1);
        CREATEINVITEMS(SLF, 37720, 1);
        CREATEINVITEMS(SLF, 37730, 2);
        CREATEINVITEMS(SLF, 37734, 2);
        CREATEINVITEMS(SLF, 37732, 1);
        CREATEINVITEMS(SLF, 37736, 1);
        HERSHLIK_ITEMSGIVEN_CHAPTER_5 = TRUE;
    };
}

