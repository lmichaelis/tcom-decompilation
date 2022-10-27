func int COND_QA401_DESTROY() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((QA401_BLOCKDESTROYOBJECT) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_QA401_BRIDGE_BIGCRATES() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((QA401_BRIDGEBIGCRATERESULT) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_QA401_DOOR_CUTSCENE() {
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((QA401_DOOR_CUTSCENEENABLE) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_QA401_TOUCHPLATE() {
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(NONE_7004_PABLO_SEWERS))) {
        if (NPC_KNOWSINFO(HERO, 0x151ae)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

