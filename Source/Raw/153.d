func int B_COUNTDUELSQ302() {
    Q302WON = 0;
    if ((Q302_PLAYERDUELWITHMORTYSTATE) == (2)) {
        Q302WON += 1;
    };
    if ((Q302_PLAYERDUELWITHOTISSTATE) == (2)) {
        Q302WON += 1;
    };
    if ((Q302_PLAYERDUELWITHRODRIGOSTATE) == (2)) {
        Q302WON += 1;
    };
    if ((Q302_PLAYERDUELWITHVICENTESTATE) == (2)) {
        Q302WON += 1;
    };
    if ((Q302_PLAYERDUELWITHLARRYSTATE) == (2)) {
        Q302WON += 1;
    };
    if ((Q302_PLAYERDUELWITHGETTERSTATE) == (2)) {
        Q302WON += 1;
    };
    if ((Q302_PLAYERDUELWITHDANSTATE) == (2)) {
        Q302WON += 3;
    };
    return Q302WON;
}

var int B_COUNTDUELSQ302.Q302WON = 0;
