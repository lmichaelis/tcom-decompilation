var int GUMBERT_ITEMSGIVEN_CHAPTER_2;
var int GUMBERT_ITEMSGIVEN_CHAPTER_3;
var int GUMBERT_ITEMSGIVEN_AFTERHISQUEST;
func void B_GIVETRADEINV_GUMBERT(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((GUMBERT_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 36752, 25);
        CREATEINVITEMS(SLF, 34298, 14);
        CREATEINVITEMS(SLF, 34300, 14);
        CREATEINVITEMS(SLF, 33982, 15);
        CREATEINVITEMS(SLF, 33970, 12);
        CREATEINVITEMS(SLF, 33966, 8);
        CREATEINVITEMS(SLF, 33980, 4);
        CREATEINVITEMS(SLF, 36385, 2);
        CREATEINVITEMS(SLF, 36357, 8);
        CREATEINVITEMS(SLF, 36427, 4);
        CREATEINVITEMS(SLF, 36411, 12);
        CREATEINVITEMS(SLF, 36407, 4);
        CREATEINVITEMS(SLF, 36608, 6);
        CREATEINVITEMS(SLF, 36660, 4);
        CREATEINVITEMS(SLF, 36351, 2);
        CREATEINVITEMS(SLF, 36664, 3);
        CREATEINVITEMS(SLF, 36631, 2);
        CREATEINVITEMS(SLF, 36710, 6);
        CREATEINVITEMS(SLF, 36708, 4);
        CREATEINVITEMS(SLF, 36706, 2);
        CREATEINVITEMS(SLF, 36704, 3);
        CREATEINVITEMS(SLF, 36696, 2);
        CREATEINVITEMS(SLF, 35851, 1);
        CREATEINVITEMS(SLF, 35899, 1);
        CREATEINVITEMS(SLF, 35903, 1);
        CREATEINVITEMS(SLF, 35871, 1);
        CREATEINVITEMS(SLF, 35951, 1);
        CREATEINVITEMS(SLF, 35949, 1);
        CREATEINVITEMS(SLF, 35947, 1);
        CREATEINVITEMS(SLF, 35945, 1);
        CREATEINVITEMS(SLF, 35937, 1);
        CREATEINVITEMS(SLF, 35865, 1);
        CREATEINVITEMS(SLF, 35913, 1);
        CREATEINVITEMS(SLF, 35955, 1);
        CREATEINVITEMS(SLF, 33988, 24);
        CREATEINVITEMS(SLF, 36372, 14);
        CREATEINVITEMS(SLF, 36387, 8);
        CREATEINVITEMS(SLF, 36383, 5);
        CREATEINVITEMS(SLF, 36385, 5);
        CREATEINVITEMS(SLF, 40374, 1);
        CREATEINVITEMS(SLF, 40385, 1);
        CREATEINVITEMS(SLF, 40388, 1);
        CREATEINVITEMS(SLF, 40391, 1);
        CREATEINVITEMS(SLF, 40394, 1);
        CREATEINVITEMS(SLF, 40397, 1);
        GUMBERT_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((LOG_GETSTATUS(MIS_SQ127)) == (LOG_SUCCESS)) && ((GUMBERT_ITEMSGIVEN_AFTERHISQUEST) == (FALSE))) {
        CREATEINVITEMS(SLF, 36752, 10);
        CREATEINVITEMS(SLF, 36361, 20);
        GUMBERT_ITEMSGIVEN_AFTERHISQUEST = TRUE;
    };
    if (((KAPITEL) >= (2)) && ((GUMBERT_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 36752, 5);
        CREATEINVITEMS(SLF, 34298, 4);
        CREATEINVITEMS(SLF, 34300, 4);
        CREATEINVITEMS(SLF, 33982, 3);
        CREATEINVITEMS(SLF, 33970, 2);
        CREATEINVITEMS(SLF, 33966, 2);
        CREATEINVITEMS(SLF, 33964, 1);
        CREATEINVITEMS(SLF, 36357, 1);
        CREATEINVITEMS(SLF, 33980, 1);
        CREATEINVITEMS(SLF, 36427, 1);
        CREATEINVITEMS(SLF, 36411, 4);
        CREATEINVITEMS(SLF, 36407, 1);
        CREATEINVITEMS(SLF, 36608, 2);
        CREATEINVITEMS(SLF, 36660, 1);
        CREATEINVITEMS(SLF, 36351, 1);
        CREATEINVITEMS(SLF, 36664, 1);
        CREATEINVITEMS(SLF, 36631, 1);
        CREATEINVITEMS(SLF, 36710, 2);
        CREATEINVITEMS(SLF, 36708, 1);
        CREATEINVITEMS(SLF, 36706, 1);
        CREATEINVITEMS(SLF, 36704, 1);
        CREATEINVITEMS(SLF, 36696, 1);
        CREATEINVITEMS(SLF, 33988, 10);
        CREATEINVITEMS(SLF, 36372, 8);
        CREATEINVITEMS(SLF, 36387, 6);
        CREATEINVITEMS(SLF, 36383, 4);
        CREATEINVITEMS(SLF, 36385, 4);
        GUMBERT_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((GUMBERT_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 36752, 5);
        CREATEINVITEMS(SLF, 34298, 4);
        CREATEINVITEMS(SLF, 34300, 4);
        CREATEINVITEMS(SLF, 33982, 3);
        CREATEINVITEMS(SLF, 33970, 2);
        CREATEINVITEMS(SLF, 33966, 2);
        CREATEINVITEMS(SLF, 33964, 1);
        CREATEINVITEMS(SLF, 36357, 1);
        CREATEINVITEMS(SLF, 33980, 1);
        CREATEINVITEMS(SLF, 36427, 1);
        CREATEINVITEMS(SLF, 36411, 4);
        CREATEINVITEMS(SLF, 36407, 1);
        CREATEINVITEMS(SLF, 36608, 2);
        CREATEINVITEMS(SLF, 36660, 1);
        CREATEINVITEMS(SLF, 36351, 1);
        CREATEINVITEMS(SLF, 36664, 1);
        CREATEINVITEMS(SLF, 36631, 1);
        CREATEINVITEMS(SLF, 36710, 2);
        CREATEINVITEMS(SLF, 36708, 1);
        CREATEINVITEMS(SLF, 36706, 1);
        CREATEINVITEMS(SLF, 36704, 1);
        CREATEINVITEMS(SLF, 36696, 1);
        CREATEINVITEMS(SLF, 36372, 12);
        CREATEINVITEMS(SLF, 36387, 6);
        CREATEINVITEMS(SLF, 36383, 4);
        CREATEINVITEMS(SLF, 36385, 4);
        GUMBERT_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
}
