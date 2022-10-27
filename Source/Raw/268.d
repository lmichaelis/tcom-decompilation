func int B_MM_DESYNCHRONIZE() {
    MSEC = HLP_RANDOM(1000);
    AI_WAITMS(SELF, MSEC);
    return 0 /* !broken stack! */;
}

var int B_MM_DESYNCHRONIZE.MSEC = 0;
