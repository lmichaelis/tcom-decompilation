func int COND_VOLFZACKEFIRSTGATE() {
    if ((Q514_VOLFZACKEBRIDGE_CUTSCENE) >= (3)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_VOLFZACKESECONDGATE() {
    if ((Q514_SECONDGATE_FOUNDALLSWORDS) >= (1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_VOLFZACKEPUZZLECHAMBER() {
    if ((Q514_PUZZLECHAMBER_FINISH) == (0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_VOLFZACKEKICKWALL() {
    if ((Q514_SWORD_KICKBROKENWALL) == (1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_VOLFZACKEARMORROOM() {
    if ((Q514_ARMORROOM_CANTUSELEVERS) == (0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_THRONE_GIANTSKELETON() {
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(SKELETON_VZ_BOSS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int COND_RIORDIANDOOR() {
    if (((Q514_VOLFZACKEBRIDGE_CUTSCENE) == (3)) && ((Q514_CRAWLER_FINISH) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

