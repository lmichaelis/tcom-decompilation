func int B_MM_DESYNCHRONIZE() {
    var int MSEC;
    MSEC = HLP_RANDOM(1000);
    AI_WAITMS(SELF, MSEC);
    return 0 /* !broken stack! */;
}

