func void ZS_MM_ALLSCHEDULER() {
    SELF.AIVAR[29] = PRIO_EAT;
    if ((WLD_ISTIME(SELF.AIVAR[30], 0, SELF.AIVAR[31], 0)) || ((SELF.AIVAR[30]) == (ONLYROUTINE))) {
        AI_STARTSTATE(SELF, 0x16606, 1, "");
    };
    if ((WLD_ISTIME(SELF.AIVAR[32], 0, SELF.AIVAR[33], 0)) || ((SELF.AIVAR[32]) == (ONLYROUTINE))) {
        AI_STARTSTATE(SELF, 0x165fc, 1, "");
    };
    if ((WLD_ISTIME(SELF.AIVAR[34], 0, SELF.AIVAR[35], 0)) || ((SELF.AIVAR[34]) == (ONLYROUTINE))) {
        AI_STARTSTATE(SELF, 0x16600, 1, "");
    };
    if ((WLD_ISTIME(SELF.AIVAR[36], 0, SELF.AIVAR[37], 0)) || ((SELF.AIVAR[36]) == (ONLYROUTINE))) {
        AI_STARTSTATE(SELF, 0x165f2, 1, "");
    };
    if ((WLD_ISTIME(SELF.AIVAR[38], 0, SELF.AIVAR[39], 0)) || ((SELF.AIVAR[38]) == (ONLYROUTINE))) {
        AI_STARTSTATE(SELF, 0x1660d, 1, "");
    };
    if ((WLD_ISTIME(SELF.AIVAR[40], 0, SELF.AIVAR[41], 0)) || ((SELF.AIVAR[40]) == (ONLYROUTINE))) {
        AI_STARTSTATE(SELF, 0x165f9, 1, "");
    };
    if ((WLD_ISTIME(SELF.AIVAR[45], 0, SELF.AIVAR[46], 0)) || ((SELF.AIVAR[45]) == (ONLYROUTINE))) {
        AI_STARTSTATE(SELF, 0x16610, 1, "");
    };
    if ((WLD_ISTIME(SELF.AIVAR[47], 0, SELF.AIVAR[48], 0)) || ((SELF.AIVAR[47]) == (ONLYROUTINE))) {
        AI_STARTSTATE(SELF, 0x16615, 1, "");
    };
    AI_STARTSTATE(SELF, 0x165fc, 1, "");
}

