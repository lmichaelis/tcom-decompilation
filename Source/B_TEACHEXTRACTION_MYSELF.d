func void B_TEACHEXTRACTION_MYSELF() {
    var int EXTRACTION_LEARNBYDOING_COUNT;
    if ((HERO_HACKCHANCE) < (100)) {
        EXTRACTION_LEARNBYDOING_COUNT = (EXTRACTION_LEARNBYDOING_COUNT) + (1);
        if ((EXTRACTION_LEARNBYDOING_COUNT) >= (5)) {
            EXTRACTION_LEARNBYDOING_COUNT = 0;
            if ((HERO_HACKCHANCE) == (99)) {
                B_UPGRADE_HERO_HACKCHANCE(1);
            } else {
                B_UPGRADE_HERO_HACKCHANCE(2);
            };
        };
    };
}

