var int DIRK_ITEMSGIVEN_HELPWITHBEER;
var int DIRK_ITEMSGIVEN_CHAPTER_5;
func void B_GIVETRADEINV_DIRK(var C_NPC SLF) {
    if (((KAPITEL) >= (4)) && ((DIRK_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 33978, 12);
        CREATEINVITEMS(SLF, 36377, 40);
        CREATEINVITEMS(SLF, 36380, 20);
        CREATEINVITEMS(SLF, 36382, 10);
        CREATEINVITEMS(SLF, 34298, 8);
        CREATEINVITEMS(SLF, 34300, 6);
        CREATEINVITEMS(SLF, 33982, 5);
        CREATEINVITEMS(SLF, 33982, 8);
        CREATEINVITEMS(SLF, 33970, 12);
        CREATEINVITEMS(SLF, 33966, 8);
        CREATEINVITEMS(SLF, 33964, 2);
        CREATEINVITEMS(SLF, 36357, 2);
        CREATEINVITEMS(SLF, 36378, 2);
        CREATEINVITEMS(SLF, 33980, 10);
        CREATEINVITEMS(SLF, 36385, 5);
        CREATEINVITEMS(SLF, 35853, 1);
        CREATEINVITEMS(SLF, 35857, 1);
        CREATEINVITEMS(SLF, 35879, 1);
        CREATEINVITEMS(SLF, 35881, 1);
        CREATEINVITEMS(SLF, 35897, 1);
        CREATEINVITEMS(SLF, 35911, 1);
        CREATEINVITEMS(SLF, 35921, 1);
        CREATEINVITEMS(SLF, 36435, 4);
        CREATEINVITEMS(SLF, 36431, 1);
        CREATEINVITEMS(SLF, 36427, 12);
        CREATEINVITEMS(SLF, 36411, 10);
        CREATEINVITEMS(SLF, 36423, 2);
        CREATEINVITEMS(SLF, 36419, 12);
        CREATEINVITEMS(SLF, 36407, 14);
        CREATEINVITEMS(SLF, 36608, 6);
        CREATEINVITEMS(SLF, 36639, 6);
        CREATEINVITEMS(SLF, 36660, 4);
        CREATEINVITEMS(SLF, 36658, 6);
        CREATEINVITEMS(SLF, 36692, 4);
        CREATEINVITEMS(SLF, 36720, 1);
        CREATEINVITEMS(SLF, 33984, 12);
        CREATEINVITEMS(SLF, 36387, 5);
        CREATEINVITEMS(SLF, 36383, 10);
        DIRK_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
    if (((LOG_GETSTATUS(MIS_SQ405)) == (LOG_SUCCESS)) && ((DIRK_ITEMSGIVEN_HELPWITHBEER) == (FALSE))) {
        CREATEINVITEMS(SLF, 36700, 1);
        CREATEINVITEMS(SLF, 36698, 1);
        CREATEINVITEMS(SLF, 36720, 1);
        CREATEINVITEMS(SLF, 35941, 1);
        CREATEINVITEMS(SLF, 35939, 1);
        CREATEINVITEMS(SLF, 35961, 1);
        DIRK_ITEMSGIVEN_HELPWITHBEER = TRUE;
    };
    if (((KAPITEL) >= (5)) && ((DIRK_ITEMSGIVEN_CHAPTER_5) == (FALSE))) {
        CREATEINVITEMS(SLF, 33984, 8);
        CREATEINVITEMS(SLF, 36387, 4);
        CREATEINVITEMS(SLF, 36383, 4);
        CREATEINVITEMS(SLF, 36377, 20);
        DIRK_ITEMSGIVEN_CHAPTER_5 = TRUE;
    };
}

