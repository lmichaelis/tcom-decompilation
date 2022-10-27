func void EVENTSMANAGER_QM303() {
    if ((LOG_GETSTATUS(MIS_QM303)) == (LOG_RUNNING)) {
        if ((QM303_FOUNDDEADMILITIA) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART4_PATHFOREST_61")) <= (700)) {
                QM303_FOUNDDEADMILITIA = TRUE;
                B_LOGENTRY(TOPIC_QM303, LOG_QM303_DEADMILITIA);
            };
        };
        if ((QM303_MEETSHADOWBEAST) == (FALSE)) {
            if ((NPC_GETDISTTONPC(HERO, SHADOWBEAST_QM303)) <= (750)) {
                QM303_MEETSHADOWBEAST = TRUE;
                if (NPC_KNOWSINFO(HERO, 0x131de)) {
                    B_LOGENTRY(TOPIC_QM303, LOG_QM303_MEETSHADOWBEAST_V1);
                };
            };
        } else if (NPC_ISDEAD(SHADOWBEAST_QM303)) {
            if ((QM303_SHADOWBEASTISDEAD) == (FALSE)) {
                QM303_SHADOWBEASTISDEAD = TRUE;
                if (NPC_KNOWSINFO(HERO, 0x131de)) {
                    B_LOGENTRY(TOPIC_QM303, LOG_QM303_SHADOWBEAST_DEAD_V1);
                };
            };
        };
        if ((QM303_FOUND3PACKET_LOGENTRY) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 0x916d)) == (3)) {
                QM303_FOUND3PACKET_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_QM303, LOG_QM303_FOUND3PACKET);
            };
        };
        if ((QM303_FOUND5PACKET_LOGENTRY) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 0x916d)) == (5)) {
                QM303_FOUND5PACKET_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_QM303, LOG_QM303_FOUND5PACKET);
            };
        };
        if ((QM303_ALLTASKDONE) == (FALSE)) {
            if ((((NPC_HASITEMS(HERO, 0x916d)) >= (3)) && (NPC_KNOWSINFO(HERO, 0x131de))) && ((QM303_FOUNDDEADMILITIA) == (TRUE))) {
                QM303_ALLTASKDONE = TRUE;
                B_LOGENTRY(TOPIC_QM303, LOG_QM303_ALLTASKDONE);
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_QM303)) == (LOG_SUCCESS)) {
        if ((QM303_GIVEMILITIAPOTION_CHECKTIME) == (TRUE)) {
            if ((QM303_GIVEMILITIAPOTION_CHECKTIME_DAY) <= ((WLD_GETDAY()) - (1))) {
                QM303_GIVEMILITIAPOTION_CHECKTIME = 2;
                B_STARTOTHERROUTINE(MIL_13589_MILITIA, "QM303_AFTERQUEST");
                NPC_REFRESH(MIL_13589_MILITIA);
                TELEPORTNPCTOWP(0xdb8f, MIL_13589_MILITIA.WP);
                MDL_REMOVEOVERLAYMDS(MIL_13589_MILITIA, "Humans_Wounded.mds");
                NPC_CHANGEARMOR(MIL_13589_MILITIA, 0x8aa0);
                NPC_REMOVEINVITEMS(MIL_13589_MILITIA, 0x8a9a, 1);
            };
        };
    };
}

var int EVENTSMANAGER_QM303.QM303_FOUND3PACKET_LOGENTRY = 0;
var int EVENTSMANAGER_QM303.QM303_FOUND5PACKET_LOGENTRY = 0;
