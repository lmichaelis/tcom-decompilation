func int COND_BARRELTRANSPORT() {
    if ((SQ201_SALZER_CANUSEBARREL) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

