func void ZS_RAMHASLEEP() {
    if (((SQ121_HELPINGRIORDIAN) == (1)) && ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(BAU_706_LOKVAR)))) {
        if ((SQ121_CHANGELOKVARRTN) == (0)) {
            SQ121_CHANGELOKVARRTN = 1;
            B_STARTOTHERROUTINE(BAU_706_LOKVAR, "SQ121_DEEPSLEEP");
            NPC_REFRESH(BAU_706_LOKVAR);
            SQ121_CHECKLOKVARSLEEPING();
        };
    };
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(SLD_13713_GUARD))) {
        if ((QA306_CHANGEGUARDRTN) == (FALSE)) {
            QA306_CHANGEGUARDRTN = TRUE;
            B_STARTOTHERROUTINE(SLD_13713_GUARD, "QA306_DEEPSLEEP");
            NPC_REFRESH(SLD_13713_GUARD);
        };
    };
    PERCEPTION_SET_NONE();
    AI_PLAYANIBS(SELF, "T_STAND_2_VICTIM_SLE", BS_LIE);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_RAMHASLEEP_LOOP() {
    if ((QA202_RAMHAAFTERPLANT) == (0)) {
        if ((SELF.AIVAR[19]) == (NOTINPOS)) {
            AI_PLAYANIBS(SELF, "S_VICTIM_SLE", BS_LIE);
            SELF.AIVAR[19] = ISINPOS;
        };
        return LOOP_CONTINUE;
    };
    return LOOP_END;
}

func void ZS_RAMHASLEEP_END() {
    AI_PLAYANIBS(SELF, "T_VICTIM_SLE_2_STAND", BS_STAND);
}
