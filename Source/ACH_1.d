const string ACH_1 = "ACHIEVEMENT_1";
const string ACH_2 = "ACHIEVEMENT_2";
const string ACH_3 = "ACHIEVEMENT_3";
const string ACH_4 = "ACHIEVEMENT_4";
const string ACH_5 = "ACHIEVEMENT_5";
const string ACH_6 = "ACHIEVEMENT_6";
const string ACH_7 = "ACHIEVEMENT_7";
const string ACH_8 = "ACHIEVEMENT_8";
const string ACH_9 = "ACHIEVEMENT_9";
const string ACH_10 = "ACHIEVEMENT_10";
const string ACH_11 = "ACHIEVEMENT_11";
const string ACH_12 = "ACHIEVEMENT_12";
const string ACH_13 = "ACHIEVEMENT_13";
const string ACH_14 = "ACHIEVEMENT_14";
const string ACH_15 = "ACHIEVEMENT_15";
const string ACH_16 = "ACHIEVEMENT_16";
const string ACH_17 = "ACHIEVEMENT_17";
const string ACH_18 = "ACHIEVEMENT_18";
const string ACH_19 = "ACHIEVEMENT_19";
const string ACH_20 = "ACHIEVEMENT_20";
const string ACH_21 = "ACHIEVEMENT_21";
const string ACH_22 = "ACHIEVEMENT_22";
const string ACH_23 = "ACHIEVEMENT_23";
const string ACH_24 = "ACHIEVEMENT_24";
const string ACH_25 = "ACHIEVEMENT_25";
const string ACH_26 = "ACHIEVEMENT_26";
const string ACH_27 = "ACHIEVEMENT_27";
const string ACH_28 = "ACHIEVEMENT_28";
const string ACH_29 = "ACHIEVEMENT_29";
const string ACH_30 = "ACHIEVEMENT_30";
const string ACH_31 = "ACHIEVEMENT_31";
const string ACH_32 = "ACHIEVEMENT_32";
const string ACH_33 = "ACHIEVEMENT_33";
const string ACH_34 = "ACHIEVEMENT_34";
const string ACH_35 = "ACHIEVEMENT_35";
const string ACH_36 = "ACHIEVEMENT_36";
const string ACH_37 = "ACHIEVEMENT_37";
const string ACH_38 = "ACHIEVEMENT_38";
const string ACH_39 = "ACHIEVEMENT_39";
const string ACH_40 = "ACHIEVEMENT_40";
const string STAT_ACH_18 = "STAT_ACHIEVEMENT_18";
const string STAT_ACH_20 = "STAT_ACHIEVEMENT_20";
const string STAT_ACH_28 = "STAT_ACHIEVEMENT_28";
const int STAT_ACH_18_REQUIRED = 5;
const int STAT_ACH_20_REQUIRED = 50;
const int STAT_ACH_28_REQUIRED = 6;
const int _KMLIB_GAMESERVICES_UNLOCKACHIEVEMENT_PTR = 0;
const int _KMLIB_GAMESERVICES_GETSTAT_PTR = 0;
const int _KMLIB_GAMESERVICES_INCREMENTSTAT_PTR = 0;
func void INIT_ACHIEVEMENTS_GAMESTART() {
    _KMLIB_GAMESERVICES_UNLOCKACHIEVEMENT_PTR = KMLIB_GETPROCADDRESS("GameServices_UnlockAchievement");
    _KMLIB_GAMESERVICES_GETSTAT_PTR = KMLIB_GETPROCADDRESS("GameServices_GetStat");
    _KMLIB_GAMESERVICES_INCREMENTSTAT_PTR = KMLIB_GETPROCADDRESS("GameServices_IncrementStat");
    FF_APPLYONCEEXT(95023, 10000, -(1));
}

func void GAMESERVICES_UNLOCKACHIEVEMENT(var string ACHIEVEMENT) {
    PRINTD(CS2("GameServices_UnlockAchievement: ", ACHIEVEMENT));
    CALL_CSTRINGPTRPARAM(ACHIEVEMENT);
    CALL__CDECL(_KMLIB_GAMESERVICES_UNLOCKACHIEVEMENT_PTR);
}

func int GAMESERVICES_GETSTAT(var string STAT) {
    PRINTD(CS2("GameServices_GetStat: ", STAT));
    CALL_CSTRINGPTRPARAM(STAT);
    CALL__CDECL(_KMLIB_GAMESERVICES_GETSTAT_PTR);
    return CALL_RETVALASINT();
}

func void GAMESERVICES_INCREMENTSTAT(var string STAT, var int VALUE) {
    PRINTD(CS2("GameServices_IncrementStat: ", STAT));
    CALL_INTPARAM(VALUE);
    CALL_CSTRINGPTRPARAM(STAT);
    CALL__CDECL(_KMLIB_GAMESERVICES_INCREMENTSTAT_PTR);
}

func void GAMESERVICES_INCREMENTSTATANDCHECKACHIEVEMENT(var string STAT, var int VALUE, var string ACHIEVEMENT, var int REQUIREDVALUE) {
    var int STATVALUE;
    PRINTD(CS2("GameServices_IncrementStatAndCheckAchievement: stat to increase ", STAT));
    STATVALUE = GAMESERVICES_GETSTAT(STAT);
    if ((STATVALUE) == (-(1))) {
        return;
    };
    PRINTD(CS2("GameServices_IncrementStatAndCheckAchievement: current value ", I2S(STATVALUE)));
    GAMESERVICES_INCREMENTSTAT(STAT, VALUE);
    if (((STATVALUE) + (VALUE)) >= (REQUIREDVALUE)) {
        GAMESERVICES_UNLOCKACHIEVEMENT(ACHIEVEMENT);
    };
}

var int ACH_1_UNLOCKED;
var int ACH_2_UNLOCKED;
var int ACH_3_COUNTER;
var int ACH_3_UNLOCKED;
var int ACH_4_CANJOIN_MILITIA;
var int ACH_5_UNLOCKED;
var int ACH_6_STONE;
var int ACH_6_RIORDIAN;
var int ACH_6_KYLE;
var int ACH_6_HOMER;
var int ACH_6_BLOODWYN;
var int ACH_6_NEK;
var int ACH_6_UNLOCKED;
var int ACH_7_SLD_FASTTRAVEL;
var int ACH_7_BAU_FASTTRAVEL;
var int ACH_7_RUNE_FASTTRAVEL;
var int ACH_7_UNLOCKED;
var int ACH_8_UNLOCKED;
var int ACH_9_UNLOCKED;
var int ACH_14_BELIAR;
var int ACH_14_ADANOS;
var int ACH_14_INNOS;
var int ACH_14_UNLOCKED;
var int ACH_15_UNLOCKED;
var int ACH_16_IRON;
var int ACH_16_ORE;
var int ACH_16_SILVER;
var int ACH_16_GOLD;
var int ACH_16_UNLOCKED;
var int ACH_19_UNLOCKED;
var int ACH_21_UNLOCKED;
var int ACH_22_UNLOCKED;
var int ACH_23_UNLOCKED;
var int ACH_25_UNLOCKED;
