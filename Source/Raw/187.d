func int B_GETLEARNCOSTATTRIBUTE(var C_NPC OTH, var int ATTRIBUT, var int AMOUNT) {
    KOSTEN = 0;
    if ((ATTRIBUT) == (ATR_STRENGTH)) {
        if ((OTH.AIVAR[81]) >= (120)) {
            KOSTEN = (5) * (AMOUNT);
        } else if (((OTH.AIVAR[81]) + (AMOUNT)) >= (120)) {
            KOSTEN += (4) * ((120) - (OTH.AIVAR[81]));
            KOSTEN += (5) * ((AMOUNT) - ((120) - (OTH.AIVAR[81])));
        } else if ((OTH.AIVAR[81]) >= (90)) {
            KOSTEN = (4) * (AMOUNT);
        } else if (((OTH.AIVAR[81]) + (AMOUNT)) >= (90)) {
            KOSTEN += (3) * ((90) - (OTH.AIVAR[81]));
            KOSTEN += (4) * ((AMOUNT) - ((90) - (OTH.AIVAR[81])));
        } else if ((OTH.AIVAR[81]) >= (60)) {
            KOSTEN = (3) * (AMOUNT);
        } else if (((OTH.AIVAR[81]) + (AMOUNT)) >= (60)) {
            KOSTEN += (2) * ((60) - (OTH.AIVAR[81]));
            KOSTEN += (3) * ((AMOUNT) - ((60) - (OTH.AIVAR[81])));
        } else if ((OTH.AIVAR[81]) >= (30)) {
            KOSTEN = (2) * (AMOUNT);
        } else if (((OTH.AIVAR[81]) + (AMOUNT)) >= (30)) {
            KOSTEN += (1) * ((30) - (OTH.AIVAR[81]));
            KOSTEN += (2) * ((AMOUNT) - ((30) - (OTH.AIVAR[81])));
        } else {
            KOSTEN = (1) * (AMOUNT);
        };
    };
    if ((ATTRIBUT) == (ATR_DEXTERITY)) {
        if ((OTH.AIVAR[82]) >= (120)) {
            KOSTEN = (5) * (AMOUNT);
        } else if (((OTH.AIVAR[82]) + (AMOUNT)) >= (120)) {
            KOSTEN += (4) * ((120) - (OTH.AIVAR[82]));
            KOSTEN += (5) * ((AMOUNT) - ((120) - (OTH.AIVAR[82])));
        } else if ((OTH.AIVAR[82]) >= (90)) {
            KOSTEN = (4) * (AMOUNT);
        } else if (((OTH.AIVAR[82]) + (AMOUNT)) >= (90)) {
            KOSTEN += (3) * ((90) - (OTH.AIVAR[82]));
            KOSTEN += (4) * ((AMOUNT) - ((90) - (OTH.AIVAR[82])));
        } else if ((OTH.AIVAR[82]) >= (60)) {
            KOSTEN = (3) * (AMOUNT);
        } else if (((OTH.AIVAR[82]) + (AMOUNT)) >= (120)) {
            KOSTEN += (2) * ((120) - (OTH.AIVAR[82]));
            KOSTEN += (3) * ((AMOUNT) - ((120) - (OTH.AIVAR[82])));
        } else if ((OTH.AIVAR[82]) >= (30)) {
            KOSTEN = (2) * (AMOUNT);
        } else if (((OTH.AIVAR[82]) + (AMOUNT)) >= (30)) {
            KOSTEN += (1) * ((30) - (OTH.AIVAR[82]));
            KOSTEN += (2) * ((AMOUNT) - ((30) - (OTH.AIVAR[82])));
        } else {
            KOSTEN = (1) * (AMOUNT);
        };
    };
    if ((ATTRIBUT) == (ATR_MANA_MAX)) {
        if ((OTH.AIVAR[83]) >= (120)) {
            KOSTEN = (5) * (AMOUNT);
        } else if (((OTH.AIVAR[83]) + (AMOUNT)) >= (120)) {
            KOSTEN += (4) * ((120) - (OTH.AIVAR[83]));
            KOSTEN += (5) * ((AMOUNT) - ((120) - (OTH.AIVAR[83])));
        } else if ((OTH.AIVAR[83]) >= (90)) {
            KOSTEN = (4) * (AMOUNT);
        } else if (((OTH.AIVAR[83]) + (AMOUNT)) >= (90)) {
            KOSTEN += (3) * ((90) - (OTH.AIVAR[83]));
            KOSTEN += (4) * ((AMOUNT) - ((90) - (OTH.AIVAR[83])));
        } else if ((OTH.AIVAR[83]) >= (60)) {
            KOSTEN = (3) * (AMOUNT);
        } else if (((OTH.AIVAR[83]) + (AMOUNT)) >= (60)) {
            KOSTEN += (2) * ((60) - (OTH.AIVAR[83]));
            KOSTEN += (3) * ((AMOUNT) - ((60) - (OTH.AIVAR[83])));
        } else if ((OTH.AIVAR[83]) >= (30)) {
            KOSTEN = (2) * (AMOUNT);
        } else if (((OTH.AIVAR[83]) + (AMOUNT)) >= (30)) {
            KOSTEN += (1) * ((30) - (OTH.AIVAR[83]));
            KOSTEN += (2) * ((AMOUNT) - ((30) - (OTH.AIVAR[83])));
        } else {
            KOSTEN = (1) * (AMOUNT);
        };
    };
    return KOSTEN;
}

var int B_GETLEARNCOSTATTRIBUTE.KOSTEN = 0;
