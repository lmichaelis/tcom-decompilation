var int INGOR_ITEMSGIVEN_CHAPTER_3;
var int INGOR_ITEMSGIVEN_CHAPTER_4MELEE_TIER1;
var int INGOR_ITEMSGIVEN_CHAPTER_4MELEE_TIER2;
var int INGOR_ITEMSGIVEN_CHAPTER_4RANGED_TIER1;
var int INGOR_ITEMSGIVEN_CHAPTER_4RANGED_TIER2;
func void B_GIVETRADEINV_INGOR(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((INGOR_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 39591, 1);
        CREATEINVITEMS(SLF, 39589, 1);
        CREATEINVITEMS(SLF, 34045, 1);
        CREATEINVITEMS(SLF, 34063, 1);
        CREATEINVITEMS(SLF, 34043, 1);
        CREATEINVITEMS(SLF, 34065, 1);
        CREATEINVITEMS(SLF, 39526, 1);
        CREATEINVITEMS(SLF, 39543, 1);
        CREATEINVITEMS(SLF, 39548, 1);
        CREATEINVITEMS(SLF, 39540, 1);
        CREATEINVITEMS(SLF, 34043, 1);
        CREATEINVITEMS(SLF, 34065, 1);
        CREATEINVITEMS(SLF, 39686, 1);
        CREATEINVITEMS(SLF, 39634, 1);
        CREATEINVITEMS(SLF, 39650, 1);
        CREATEINVITEMS(SLF, 39638, 1);
        CREATEINVITEMS(SLF, 39693, 1);
        CREATEINVITEMS(SLF, 39763, 1);
        CREATEINVITEMS(SLF, 39748, 1);
        CREATEINVITEMS(SLF, 34392, 1);
        CREATEINVITEMS(SLF, 34394, 1);
        CREATEINVITEMS(SLF, 39754, 1);
        CREATEINVITEMS(SLF, 35725, 1);
        CREATEINVITEMS(SLF, 34334, 4);
        CREATEINVITEMS(SLF, 34339, 2);
        CREATEINVITEMS(SLF, 34352, 7);
        CREATEINVITEMS(SLF, 34354, 3);
        CREATEINVITEMS(SLF, 34686, 8);
        CREATEINVITEMS(SLF, 34689, 5);
        CREATEINVITEMS(SLF, 34177, 5);
        CREATEINVITEMS(SLF, 34182, 1);
        CREATEINVITEMS(SLF, 38228, 5);
        CREATEINVITEMS(SLF, 38230, 2);
        CREATEINVITEMS(SLF, 38232, 3);
        INGOR_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((INGOR_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 38228, 3);
        CREATEINVITEMS(SLF, 38230, 1);
        CREATEINVITEMS(SLF, 38232, 2);
        CREATEINVITEMS(SLF, 34334, 4);
        CREATEINVITEMS(SLF, 34339, 2);
        CREATEINVITEMS(SLF, 34352, 7);
        CREATEINVITEMS(SLF, 34354, 3);
        CREATEINVITEMS(SLF, 34357, 3);
        CREATEINVITEMS(SLF, 34379, 3);
        CREATEINVITEMS(SLF, 34381, 2);
        CREATEINVITEMS(SLF, 37738, 1);
        CREATEINVITEMS(SLF, 34375, 1);
        INGOR_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_FIGHTER)) || ((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_MASTERFIGHTER))) {
        if ((INGOR_ITEMSGIVEN_CHAPTER_4MELEE_TIER1) == (FALSE)) {
            CREATEINVITEMS(SLF, 34073, 1);
            CREATEINVITEMS(SLF, 34095, 1);
            CREATEINVITEMS(SLF, 39486, 1);
            CREATEINVITEMS(SLF, 34054, 1);
            CREATEINVITEMS(SLF, 37724, 1);
            CREATEINVITEMS(SLF, 34379, 2);
            CREATEINVITEMS(SLF, 37730, 2);
            CREATEINVITEMS(SLF, 37702, 2);
            CREATEINVITEMS(SLF, 37710, 2);
            CREATEINVITEMS(SLF, 37718, 2);
            CREATEINVITEMS(SLF, 38236, 2);
            CREATEINVITEMS(SLF, 38234, 3);
            CREATEINVITEMS(SLF, 35728, 1);
            INGOR_ITEMSGIVEN_CHAPTER_4MELEE_TIER1 = TRUE;
        };
    };
    if (((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_MASTERFIGHTER)) && ((INGOR_ITEMSGIVEN_CHAPTER_4MELEE_TIER2) == (FALSE))) {
        CREATEINVITEMS(SLF, 34092, 1);
        CREATEINVITEMS(SLF, 34084, 1);
        CREATEINVITEMS(SLF, 39679, 1);
        CREATEINVITEMS(SLF, 39680, 1);
        CREATEINVITEMS(SLF, 34101, 1);
        CREATEINVITEMS(SLF, 39522, 1);
        CREATEINVITEMS(SLF, 34107, 1);
        CREATEINVITEMS(SLF, 34105, 1);
        CREATEINVITEMS(SLF, 39674, 1);
        CREATEINVITEMS(SLF, 39676, 1);
        CREATEINVITEMS(SLF, 39677, 1);
        CREATEINVITEMS(SLF, 39685, 1);
        CREATEINVITEMS(SLF, 34054, 1);
        CREATEINVITEMS(SLF, 39624, 1);
        CREATEINVITEMS(SLF, 39646, 1);
        CREATEINVITEMS(SLF, 39692, 1);
        CREATEINVITEMS(SLF, 39690, 1);
        CREATEINVITEMS(SLF, 34371, 1);
        CREATEINVITEMS(SLF, 34379, 2);
        CREATEINVITEMS(SLF, 37730, 1);
        CREATEINVITEMS(SLF, 37702, 1);
        CREATEINVITEMS(SLF, 37710, 1);
        CREATEINVITEMS(SLF, 37718, 1);
        CREATEINVITEMS(SLF, 38236, 2);
        CREATEINVITEMS(SLF, 38234, 3);
        CREATEINVITEMS(SLF, 35731, 1);
        INGOR_ITEMSGIVEN_CHAPTER_4MELEE_TIER2 = TRUE;
    };
    if (((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_ARCHER)) || ((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_MASTERARCHER))) {
        if ((INGOR_ITEMSGIVEN_CHAPTER_4RANGED_TIER1) == (FALSE)) {
            CREATEINVITEMS(SLF, 34401, 1);
            CREATEINVITEMS(SLF, 34371, 1);
            CREATEINVITEMS(SLF, 34379, 5);
            CREATEINVITEMS(SLF, 34381, 5);
            CREATEINVITEMS(SLF, 37738, 1);
            CREATEINVITEMS(SLF, 37734, 1);
            CREATEINVITEMS(SLF, 37706, 1);
            CREATEINVITEMS(SLF, 37714, 1);
            CREATEINVITEMS(SLF, 35734, 1);
            CREATEINVITEMS(SLF, 37718, 1);
            CREATEINVITEMS(SLF, 38232, 3);
            CREATEINVITEMS(SLF, 38230, 5);
            CREATEINVITEMS(SLF, 38228, 10);
            INGOR_ITEMSGIVEN_CHAPTER_4RANGED_TIER1 = TRUE;
        };
    };
    if (((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_MASTERARCHER)) && ((INGOR_ITEMSGIVEN_CHAPTER_4RANGED_TIER2) == (FALSE))) {
        CREATEINVITEMS(SLF, 34407, 1);
        CREATEINVITEMS(SLF, 34406, 1);
        CREATEINVITEMS(SLF, 34408, 1);
        CREATEINVITEMS(SLF, 34410, 1);
        CREATEINVITEMS(SLF, 34373, 1);
        CREATEINVITEMS(SLF, 34379, 3);
        CREATEINVITEMS(SLF, 34381, 2);
        CREATEINVITEMS(SLF, 37738, 1);
        CREATEINVITEMS(SLF, 37734, 1);
        CREATEINVITEMS(SLF, 37706, 1);
        CREATEINVITEMS(SLF, 37714, 1);
        CREATEINVITEMS(SLF, 35737, 1);
        CREATEINVITEMS(SLF, 38232, 5);
        CREATEINVITEMS(SLF, 38230, 3);
        CREATEINVITEMS(SLF, 38228, 10);
        INGOR_ITEMSGIVEN_CHAPTER_4RANGED_TIER2 = TRUE;
    };
}

