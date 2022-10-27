func void B_CHAPTERCHANGE(var int NEUES_KAPITEL, var int AKTUELLES_LEVEL_ZEN, var int SHOWSPLASH) {
    KAPITEL = NEUES_KAPITEL;
    if ((NEUES_KAPITEL) == (1)) {
        if (SHOWSPLASH) {
            ARMOR = NPC_GETEQUIPPEDARMOR(HERO);
            if (HLP_ISITEM(ARMOR, 0x8a44)) {
                INTRODUCECHAPTER(CHAPTER_1, CHAPTER_1_TEXT, "KM_CHAPTER_01_A.tga", "NEXT_CHAPTER.wav", 0x1770);
            } else {
                INTRODUCECHAPTER(CHAPTER_1, CHAPTER_1_TEXT, "KM_CHAPTER_01_B.tga", "NEXT_CHAPTER.wav", 0x1770);
            };
        };
        if ((AKTUELLES_LEVEL_ZEN) == (ARCHOLOS_ZEN)) {
            B_ENTER_ARCHOLOS_KAPITEL_1();
            B_CHAPTER1EVENTS();
        };
    };
    if ((NEUES_KAPITEL) == (2)) {
        if (SHOWSPLASH) {
            INTRODUCECHAPTER(CHAPTER_2, CHAPTER_2_TEXT, "KM_CHAPTER_02.tga", "NEXT_CHAPTER.wav", 0x1770);
        };
        if ((AKTUELLES_LEVEL_ZEN) == (ARCHOLOS_ZEN)) {
            B_ENTER_ARCHOLOS_KAPITEL_2();
            B_CHAPTER2EVENTS();
        };
    };
    if ((NEUES_KAPITEL) == (3)) {
        if (SHOWSPLASH) {
            INTRODUCECHAPTER(CHAPTER_3, CHAPTER_3_TEXT, "KM_CHAPTER_03.tga", "NEXT_CHAPTER.wav", 0x1770);
        };
        if ((AKTUELLES_LEVEL_ZEN) == (ARCHOLOS_ZEN)) {
            B_ENTER_ARCHOLOS_KAPITEL_3();
            B_CHAPTER3EVENTS();
        };
    };
    if ((NEUES_KAPITEL) == (4)) {
        if (SHOWSPLASH) {
            INTRODUCECHAPTER(CHAPTER_4, CHAPTER_4_TEXT, "KM_CHAPTER_04.tga", "NEXT_CHAPTER.wav", 0x1770);
        };
        if ((AKTUELLES_LEVEL_ZEN) == (ARCHOLOS_ZEN)) {
            B_ENTER_ARCHOLOS_KAPITEL_4();
            B_CHAPTER4EVENTS();
        };
    };
    if ((NEUES_KAPITEL) == (5)) {
        if (SHOWSPLASH) {
            INTRODUCECHAPTER(CHAPTER_5, CHAPTER_5_TEXT, "KM_CHAPTER_05.tga", "NEXT_CHAPTER.wav", 0x1770);
        };
        if ((AKTUELLES_LEVEL_ZEN) == (ARCHOLOS_ZEN)) {
            B_ENTER_ARCHOLOS_KAPITEL_5();
            B_CHAPTER5EVENTS();
        };
    };
    if ((NEUES_KAPITEL) == (6)) {
        if (SHOWSPLASH) {
            INTRODUCECHAPTER(CHAPTER_6, CHAPTER_6_TEXT, "KM_CHAPTER_06.tga", "NEXT_CHAPTER.wav", 0x1770);
        };
        if ((AKTUELLES_LEVEL_ZEN) == (ARCHOLOS_ZEN)) {
            B_ENTER_ARCHOLOS_KAPITEL_6();
            B_CHAPTER6EVENTS();
        };
    };
}

instance B_CHAPTERCHANGE.ARMOR(C_ITEM)
