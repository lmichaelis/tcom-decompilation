func void B_HATEFROMSLUMS() {
    SLUMSGUARDIAN_PROTECTIONPAID = FALSE;
    SLUMSGUARDIAN_NEWTRAPS = TRUE;
    B_SETATTITUDE(NONE_11253_SLUMSGUARDIAN, ATT_ANGRY);
    B_SETATTITUDE(NONE_11254_SLUMSGUARDIAN, ATT_ANGRY);
    B_SETATTITUDE(NONE_11255_SLUMSGUARDIAN, ATT_ANGRY);
    B_SETATTITUDE(NONE_11256_SLUMSGUARDIAN, ATT_ANGRY);
    SLUMSGUARDIAN_PAYDAY = WLD_GETDAY();
}

