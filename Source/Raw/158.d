func int B_GETDAYPLUS() {
    if (WLD_ISTIME(22, 0, 23, 59)) {
        return (WLD_GETDAY()) + (1);
    };
    return WLD_GETDAY();
}

