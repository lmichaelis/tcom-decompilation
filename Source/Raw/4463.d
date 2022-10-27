func void EVT_SQ114_BEVINCORPSE() {
    if ((SQ114_FOUNDBEVINCORPSE) == (FALSE)) {
        SQ114_FOUNDBEVINCORPSE = TRUE;
        B_SAY(HERO, HERO, "$MARVIN_6ChapterReaction");
    };
}

