var int LENNART_ITEMSGIVEN_CHAPTER_3;
var int LENNART_ITEMSGIVEN_CHAPTER_4MELEE_TIER1;
var int LENNART_ITEMSGIVEN_CHAPTER_4MELEE_TIER2;
var int LENNART_ITEMSGIVEN_CHAPTER_4RANGED_TIER1;
var int LENNART_ITEMSGIVEN_CHAPTER_4RANGED_TIER2;
func void B_GIVETRADEINV_LENNART(var C_NPC SLF) {
    if (((KAPITEL) >= (2)) && ((LENNART_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 39591, 1);
        CREATEINVITEMS(SLF, 39589, 1);
        CREATEINVITEMS(SLF, 34045, 1);
        CREATEINVITEMS(SLF, 34063, 1);
        CREATEINVITEMS(SLF, 34043, 1);
        CREATEINVITEMS(SLF, 34065, 1);
        CREATEINVITEMS(SLF, 39526, 1);
        CREATEINVITEMS(SLF, 39543, 1);
        CREATEINVITEMS(SLF, 34061, 1);
        CREATEINVITEMS(SLF, 34056, 1);
        CREATEINVITEMS(SLF, 39602, 1);
        CREATEINVITEMS(SLF, 39564, 1);
        CREATEINVITEMS(SLF, 39718, 1);
        CREATEINVITEMS(SLF, 34415, 1);
        CREATEINVITEMS(SLF, 39725, 1);
        CREATEINVITEMS(SLF, 34412, 1);
        CREATEINVITEMS(SLF, 34420, 1);
        CREATEINVITEMS(SLF, 39736, 1);
        CREATEINVITEMS(SLF, 38238, 3);
        CREATEINVITEMS(SLF, 38236, 2);
        CREATEINVITEMS(SLF, 38234, 5);
        CREATEINVITEMS(SLF, 34352, 8);
        CREATEINVITEMS(SLF, 34354, 5);
        CREATEINVITEMS(SLF, 34686, 8);
        CREATEINVITEMS(SLF, 34689, 5);
        CREATEINVITEMS(SLF, 35710, 1);
        CREATEINVITEMS(SLF, 34177, 10);
        LENNART_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((LENNART_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 34043, 1);
        CREATEINVITEMS(SLF, 33730, 1);
        CREATEINVITEMS(SLF, 34065, 1);
        CREATEINVITEMS(SLF, 34039, 1);
        CREATEINVITEMS(SLF, 34050, 1);
        CREATEINVITEMS(SLF, 34058, 1);
        CREATEINVITEMS(SLF, 34067, 1);
        CREATEINVITEMS(SLF, 34073, 1);
        CREATEINVITEMS(SLF, 34061, 1);
        CREATEINVITEMS(SLF, 34056, 1);
        CREATEINVITEMS(SLF, 39602, 1);
        CREATEINVITEMS(SLF, 39594, 1);
        CREATEINVITEMS(SLF, 39735, 1);
        CREATEINVITEMS(SLF, 39716, 1);
        CREATEINVITEMS(SLF, 38238, 1);
        CREATEINVITEMS(SLF, 38236, 2);
        CREATEINVITEMS(SLF, 38234, 3);
        CREATEINVITEMS(SLF, 34334, 2);
        CREATEINVITEMS(SLF, 34339, 1);
        CREATEINVITEMS(SLF, 34352, 6);
        CREATEINVITEMS(SLF, 34354, 4);
        CREATEINVITEMS(SLF, 34357, 3);
        CREATEINVITEMS(SLF, 34379, 4);
        CREATEINVITEMS(SLF, 37702, 1);
        CREATEINVITEMS(SLF, 37718, 1);
        CREATEINVITEMS(SLF, 37724, 1);
        LENNART_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_FIGHTER)) || ((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_MASTERFIGHTER))) {
        if ((LENNART_ITEMSGIVEN_CHAPTER_4MELEE_TIER1) == (FALSE)) {
            CREATEINVITEMS(SLF, 39530, 1);
            CREATEINVITEMS(SLF, 34078, 1);
            CREATEINVITEMS(SLF, 34082, 1);
            CREATEINVITEMS(SLF, 39642, 1);
            CREATEINVITEMS(SLF, 34379, 2);
            CREATEINVITEMS(SLF, 37730, 2);
            CREATEINVITEMS(SLF, 37702, 2);
            CREATEINVITEMS(SLF, 37710, 2);
            CREATEINVITEMS(SLF, 37718, 2);
            CREATEINVITEMS(SLF, 35719, 1);
            CREATEINVITEMS(SLF, 34371, 1);
            LENNART_ITEMSGIVEN_CHAPTER_4MELEE_TIER1 = TRUE;
        };
    };
    if (((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_MASTERFIGHTER)) && ((LENNART_ITEMSGIVEN_CHAPTER_4MELEE_TIER2) == (FALSE))) {
        CREATEINVITEMS(SLF, 34092, 1);
        CREATEINVITEMS(SLF, 34084, 1);
        CREATEINVITEMS(SLF, 39679, 1);
        CREATEINVITEMS(SLF, 39680, 1);
        CREATEINVITEMS(SLF, 34101, 1);
        CREATEINVITEMS(SLF, 34098, 1);
        CREATEINVITEMS(SLF, 39522, 1);
        CREATEINVITEMS(SLF, 34105, 1);
        CREATEINVITEMS(SLF, 39674, 1);
        CREATEINVITEMS(SLF, 39685, 1);
        CREATEINVITEMS(SLF, 39692, 1);
        CREATEINVITEMS(SLF, 39690, 1);
        CREATEINVITEMS(SLF, 37724, 1);
        CREATEINVITEMS(SLF, 34379, 2);
        CREATEINVITEMS(SLF, 37730, 1);
        CREATEINVITEMS(SLF, 37702, 1);
        CREATEINVITEMS(SLF, 37710, 1);
        CREATEINVITEMS(SLF, 37718, 1);
        CREATEINVITEMS(SLF, 35722, 1);
        LENNART_ITEMSGIVEN_CHAPTER_4MELEE_TIER2 = TRUE;
    };
    if (((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_CROSSBOWMAN)) || ((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_MASTERCROSSBOWMAN))) {
        if ((LENNART_ITEMSGIVEN_CHAPTER_4RANGED_TIER1) == (FALSE)) {
            CREATEINVITEMS(SLF, 39722, 1);
            CREATEINVITEMS(SLF, 34371, 1);
            CREATEINVITEMS(SLF, 35713, 1);
            CREATEINVITEMS(SLF, 38232, 1);
            CREATEINVITEMS(SLF, 38238, 1);
            CREATEINVITEMS(SLF, 38230, 5);
            CREATEINVITEMS(SLF, 38236, 5);
            CREATEINVITEMS(SLF, 38228, 10);
            CREATEINVITEMS(SLF, 38234, 10);
            CREATEINVITEMS(SLF, 34379, 3);
            CREATEINVITEMS(SLF, 34381, 1);
            CREATEINVITEMS(SLF, 37738, 1);
            CREATEINVITEMS(SLF, 37714, 2);
            CREATEINVITEMS(SLF, 37718, 1);
            LENNART_ITEMSGIVEN_CHAPTER_4RANGED_TIER1 = TRUE;
        };
    };
    if (((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_MASTERCROSSBOWMAN)) && ((LENNART_ITEMSGIVEN_CHAPTER_4RANGED_TIER2) == (FALSE))) {
        CREATEINVITEMS(SLF, 39738, 1);
        CREATEINVITEMS(SLF, 34423, 1);
        CREATEINVITEMS(SLF, 39729, 1);
        CREATEINVITEMS(SLF, 34373, 1);
        CREATEINVITEMS(SLF, 35716, 1);
        CREATEINVITEMS(SLF, 38232, 1);
        CREATEINVITEMS(SLF, 38238, 1);
        CREATEINVITEMS(SLF, 38230, 5);
        CREATEINVITEMS(SLF, 38236, 5);
        CREATEINVITEMS(SLF, 38228, 10);
        CREATEINVITEMS(SLF, 38234, 10);
        LENNART_ITEMSGIVEN_CHAPTER_4RANGED_TIER2 = TRUE;
    };
}

