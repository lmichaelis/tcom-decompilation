func void EVENTSMANAGER_FMQ001() {
    if ((LOG_GETSTATUS(MIS_FMQ001)) == (LOG_RUNNING)) {
        if ((FMQ001_INSTRUCTORRUN) == (1)) {
            if ((FMQ001_INSTRUCTORRUN_TELEPORT) == (FALSE)) {
                if ((((NPC_GETDISTTONPC(HERO, MIL_4040_RECRUIT)) >= (FMQ001_MAXDISTANCE)) || ((NPC_GETDISTTONPC(HERO, MIL_4041_RECRUIT)) >= (FMQ001_MAXDISTANCE))) || ((NPC_GETDISTTONPC(HERO, MIL_4042_RECRUIT)) >= (FMQ001_MAXDISTANCE))) {
                    if ((((NPC_ISINSTATE(MIL_4040_RECRUIT, 0xf09f)) == (FALSE)) && ((NPC_ISINSTATE(MIL_4041_RECRUIT, 0xf09f)) == (FALSE))) && ((NPC_ISINSTATE(MIL_4042_RECRUIT, 0xf09f)) == (FALSE))) {
                        FMQ001_INSTRUCTORRUN_TELEPORT = TRUE;
                        CLOSEINVENTORY();
                        FADESCREENTOBLACKF(1, 0xf54c, 1000);
                    };
                };
            };
        } else if ((FMQ001_INSTRUCTORRUN) == (2)) {
            if ((FMQ001_INSTRUCTORRUN_TELEPORT) == (FALSE)) {
                if ((NPC_GETDISTTONPC(HERO, MIL_4043_INSTRUCTOR)) >= (FMQ001_MAXDISTANCE)) {
                    if ((NPC_ISINSTATE(MIL_4043_INSTRUCTOR, 0xf09f)) == (FALSE)) {
                        FMQ001_INSTRUCTORRUN_TELEPORT = TRUE;
                        CLOSEINVENTORY();
                        FADESCREENTOBLACKF(1, 0xf54d, 1000);
                    };
                };
            };
        };
        if (((FMQ001_RODEIRCHSENTTOTRAINING_DAY) == ((WLD_GETDAY()) - (1))) && ((FMQ001_SPAWNRECRUITS) == (FALSE))) {
            WLD_INSERTNPC(0xce96, "PARTM3_RECRUIT_01");
            WLD_INSERTNPC(0xceaf, "PARTM3_RECRUIT_02");
            WLD_INSERTNPC(0xcec5, "PARTM3_RECRUIT_03");
            FMQ001_SPAWNRECRUITS = TRUE;
            PRINTD("Rekruci stworzeni!");
        };
        if ((FMQ001_FIRSTFIGHTCHECK) == (TRUE)) {
            if (HLP_ISVALIDNPC(MIL_4040_RECRUIT)) {
                if ((NPC_ISINSTATE(MIL_4040_RECRUIT, 0xf0a3)) && ((FMQ001_TRAININGFIRSTFIGHTRESULT) == (2))) {
                    NPC_SETATTITUDE(MIL_4040_RECRUIT, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(MIL_4040_RECRUIT, ATT_NEUTRAL);
                    MIL_4040_RECRUIT.AIVAR[1] = CRIME_NONE;
                    MIL_4040_RECRUIT.AIVAR[0] = FIGHT_NONE;
                    MDL_STARTFACEANI(MIL_4040_RECRUIT, S_NEUTRAL, 0x3f800000, -1082130432);
                    B_LOGENTRY(TOPIC_FMQ001, LOG_FMQ001_TRAINING_FIRSTFIGHT_V1);
                    PRINTD("Bravo!");
                    FMQ001_FIRSTFIGHTCHECK = FALSE;
                    MIL_4040_RECRUIT.AIVAR[94] = FALSE;
                    MIL_4040_RECRUIT.AIVAR[96] = 1;
                    FMQ001_TRAININGFIRSTFIGHTRESULT = 3;
                };
            };
            if ((NPC_ISINSTATE(HERO, 0xf0a3)) && ((FMQ001_TRAININGFIRSTFIGHTRESULT) == (2))) {
                if (HLP_ISVALIDNPC(MIL_4040_RECRUIT)) {
                    NPC_SETATTITUDE(MIL_4040_RECRUIT, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(MIL_4040_RECRUIT, ATT_NEUTRAL);
                    MIL_4040_RECRUIT.AIVAR[1] = CRIME_NONE;
                    MIL_4040_RECRUIT.AIVAR[0] = FIGHT_NONE;
                    MDL_STARTFACEANI(MIL_4040_RECRUIT, S_NEUTRAL, 0x3f800000, -1082130432);
                    NPC_CLEARAIQUEUE(MIL_4040_RECRUIT);
                    AI_REMOVEWEAPON(MIL_4040_RECRUIT);
                };
                B_LOGENTRY(TOPIC_FMQ001, LOG_FMQ001_TRAINING_FIRSTFIGHT_V2);
                PRINTD("Przegra�e�!");
                FMQ001_FIRSTFIGHTCHECK = FALSE;
                HERO.AIVAR[96] = 1;
                MIL_4040_RECRUIT.AIVAR[94] = FALSE;
                FMQ001_TRAININGFIRSTFIGHTRESULT = 4;
            };
        };
        if ((FMQ001_REMATCHFIGHTCHECK) == (TRUE)) {
            if (HLP_ISVALIDNPC(MIL_4040_RECRUIT)) {
                if ((NPC_ISINSTATE(MIL_4040_RECRUIT, 0xf0a3)) && ((FMQ001_TRAININGREMATCHFIGHTRESULT) == (2))) {
                    NPC_SETATTITUDE(MIL_4040_RECRUIT, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(MIL_4040_RECRUIT, ATT_NEUTRAL);
                    MIL_4040_RECRUIT.AIVAR[1] = CRIME_NONE;
                    MIL_4040_RECRUIT.AIVAR[0] = FIGHT_NONE;
                    MDL_STARTFACEANI(MIL_4040_RECRUIT, S_NEUTRAL, 0x3f800000, -1082130432);
                    B_LOGENTRY(TOPIC_FMQ001, LOG_FMQ001_TRAINING_REMATCH_V1);
                    PRINTD("Brawo");
                    FMQ001_REMATCHFIGHTCHECK = FALSE;
                    MIL_4040_RECRUIT.AIVAR[96] = 1;
                    MIL_4040_RECRUIT.AIVAR[94] = FALSE;
                    FMQ001_TRAININGREMATCHFIGHTRESULT = 3;
                };
            };
            if ((NPC_ISINSTATE(HERO, 0xf0a3)) && ((FMQ001_TRAININGREMATCHFIGHTRESULT) == (2))) {
                if (HLP_ISVALIDNPC(MIL_4040_RECRUIT)) {
                    NPC_SETATTITUDE(MIL_4040_RECRUIT, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(MIL_4040_RECRUIT, ATT_NEUTRAL);
                    MIL_4040_RECRUIT.AIVAR[1] = CRIME_NONE;
                    MIL_4040_RECRUIT.AIVAR[0] = FIGHT_NONE;
                    MDL_STARTFACEANI(MIL_4040_RECRUIT, S_NEUTRAL, 0x3f800000, -1082130432);
                    NPC_CLEARAIQUEUE(MIL_4040_RECRUIT);
                    AI_REMOVEWEAPON(MIL_4040_RECRUIT);
                };
                B_LOGENTRY(TOPIC_FMQ001, LOG_FMQ001_TRAINING_REMATCH_V2);
                PRINTD("LMAO");
                FMQ001_REMATCHFIGHTCHECK = FALSE;
                MIL_4040_RECRUIT.AIVAR[94] = FALSE;
                HERO.AIVAR[96] = 1;
                FMQ001_TRAININGREMATCHFIGHTRESULT = 4;
            };
        };
        if ((FMQ001_SECONDFIGHTCHECK) == (TRUE)) {
            if (HLP_ISVALIDNPC(MIL_4041_RECRUIT)) {
                if ((NPC_ISINSTATE(MIL_4041_RECRUIT, 0xf0a3)) && ((FMQ001_RECRUIT02DOWN) == (FALSE))) {
                    FMQ001_RECRUIDDOWNCOUNT = (FMQ001_RECRUIDDOWNCOUNT) + (1);
                    PRINTD("Pad� 41");
                    FMQ001_RECRUIT02DOWN = TRUE;
                };
            };
            if (HLP_ISVALIDNPC(MIL_4042_RECRUIT)) {
                if ((NPC_ISINSTATE(MIL_4042_RECRUIT, 0xf0a3)) && ((FMQ001_RECRUIT03DOWN) == (FALSE))) {
                    FMQ001_RECRUIDDOWNCOUNT = (FMQ001_RECRUIDDOWNCOUNT) + (1);
                    PRINTD("Pad� 42");
                    FMQ001_RECRUIT03DOWN = TRUE;
                };
            };
            if ((FMQ001_RECRUIDDOWNCOUNT) == (2)) {
                FMQ001_RECRUIDDOWNCOUNT = 0;
                NPC_SETATTITUDE(MIL_4041_RECRUIT, ATT_NEUTRAL);
                NPC_SETTEMPATTITUDE(MIL_4041_RECRUIT, ATT_NEUTRAL);
                MIL_4041_RECRUIT.AIVAR[1] = CRIME_NONE;
                MIL_4041_RECRUIT.AIVAR[0] = FIGHT_NONE;
                MDL_STARTFACEANI(MIL_4041_RECRUIT, S_NEUTRAL, 0x3f800000, -1082130432);
                NPC_SETATTITUDE(MIL_4042_RECRUIT, ATT_NEUTRAL);
                NPC_SETTEMPATTITUDE(MIL_4042_RECRUIT, ATT_NEUTRAL);
                MIL_4042_RECRUIT.AIVAR[1] = CRIME_NONE;
                MIL_4042_RECRUIT.AIVAR[0] = FIGHT_NONE;
                MDL_STARTFACEANI(MIL_4042_RECRUIT, S_NEUTRAL, 0x3f800000, -1082130432);
                PRINTD("Wszyscy padli 2 vs 2");
                FMQ001_SECONDFIGHTCHECK = FALSE;
                B_LOGENTRY(TOPIC_FMQ001, LOG_FMQ001_TRAINING_SECONDFIGHT_V1);
                FMQ001_TRAINING2VS1FIGHTRESULT = 3;
                FMQ001_RECRUIT02DOWN = FALSE;
                FMQ001_RECRUIT03DOWN = FALSE;
                MIL_4041_RECRUIT.AIVAR[94] = FALSE;
                MIL_4042_RECRUIT.AIVAR[94] = FALSE;
                MIL_4041_RECRUIT.AIVAR[96] = 1;
                MIL_4042_RECRUIT.AIVAR[96] = 1;
            };
            if ((NPC_ISINSTATE(HERO, 0xf0a3)) && ((FMQ001_TRAINING2VS1FIGHTRESULT) == (2))) {
                NPC_SETATTITUDE(MIL_4041_RECRUIT, ATT_NEUTRAL);
                NPC_SETTEMPATTITUDE(MIL_4041_RECRUIT, ATT_NEUTRAL);
                MIL_4041_RECRUIT.AIVAR[1] = CRIME_NONE;
                MIL_4041_RECRUIT.AIVAR[0] = FIGHT_NONE;
                MDL_STARTFACEANI(MIL_4041_RECRUIT, S_NEUTRAL, 0x3f800000, -1082130432);
                NPC_CLEARAIQUEUE(MIL_4041_RECRUIT);
                AI_REMOVEWEAPON(MIL_4041_RECRUIT);
                MIL_4041_RECRUIT.AIVAR[94] = FALSE;
                MIL_4041_RECRUIT.AIVAR[96] = 1;
                NPC_SETATTITUDE(MIL_4042_RECRUIT, ATT_NEUTRAL);
                NPC_SETTEMPATTITUDE(MIL_4042_RECRUIT, ATT_NEUTRAL);
                MIL_4042_RECRUIT.AIVAR[1] = CRIME_NONE;
                MIL_4042_RECRUIT.AIVAR[0] = FIGHT_NONE;
                MDL_STARTFACEANI(MIL_4042_RECRUIT, S_NEUTRAL, 0x3f800000, -1082130432);
                NPC_CLEARAIQUEUE(MIL_4042_RECRUIT);
                AI_REMOVEWEAPON(MIL_4042_RECRUIT);
                MIL_4042_RECRUIT.AIVAR[94] = FALSE;
                MIL_4042_RECRUIT.AIVAR[96] = 1;
                FMQ001_SECONDFIGHTCHECK = FALSE;
                B_LOGENTRY(TOPIC_FMQ001, LOG_FMQ001_TRAINING_SECONDFIGHT_V2);
                PRINTD("Pad�e�, powsta�, pa�erejt");
                HERO.AIVAR[96] = 1;
                FMQ001_TRAINING2VS1FIGHTRESULT = 4;
            };
        };
        if ((FMQ001_THIRDFIGHTCHECK) == (TRUE)) {
            if (HLP_ISVALIDNPC(MIL_4040_RECRUIT)) {
                if ((NPC_ISINSTATE(MIL_4040_RECRUIT, 0xf0a3)) && ((FMQ001_RECRUIT01DOWN) == (FALSE))) {
                    FMQ001_RECRUIT01DOWN = TRUE;
                    FMQ001_RECRUIDDOWNCOUNT = (FMQ001_RECRUIDDOWNCOUNT) + (1);
                    PRINTD("Pad� 40");
                };
            };
            if (HLP_ISVALIDNPC(MIL_4041_RECRUIT)) {
                if ((NPC_ISINSTATE(MIL_4041_RECRUIT, 0xf0a3)) && ((FMQ001_RECRUIT02DOWN) == (FALSE))) {
                    FMQ001_RECRUIT02DOWN = TRUE;
                    FMQ001_RECRUIDDOWNCOUNT = (FMQ001_RECRUIDDOWNCOUNT) + (1);
                    PRINTD("Pad� 41");
                };
            };
            if (HLP_ISVALIDNPC(MIL_4042_RECRUIT)) {
                if ((NPC_ISINSTATE(MIL_4042_RECRUIT, 0xf0a3)) && ((FMQ001_RECRUIT03DOWN) == (FALSE))) {
                    FMQ001_RECRUIT03DOWN = TRUE;
                    FMQ001_RECRUIDDOWNCOUNT = (FMQ001_RECRUIDDOWNCOUNT) + (1);
                    PRINTD("Pad� 42");
                };
            };
            if ((FMQ001_RECRUIDDOWNCOUNT) == (3)) {
                FMQ001_RECRUIDDOWNCOUNT = 0;
                if (HLP_ISVALIDNPC(MIL_4040_RECRUIT)) {
                    NPC_SETATTITUDE(MIL_4040_RECRUIT, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(MIL_4040_RECRUIT, ATT_NEUTRAL);
                    MIL_4040_RECRUIT.AIVAR[1] = CRIME_NONE;
                    MIL_4040_RECRUIT.AIVAR[0] = FIGHT_NONE;
                    MDL_STARTFACEANI(MIL_4040_RECRUIT, S_NEUTRAL, 0x3f800000, -1082130432);
                };
                if (HLP_ISVALIDNPC(MIL_4041_RECRUIT)) {
                    NPC_SETATTITUDE(MIL_4041_RECRUIT, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(MIL_4041_RECRUIT, ATT_NEUTRAL);
                    MIL_4041_RECRUIT.AIVAR[1] = CRIME_NONE;
                    MIL_4041_RECRUIT.AIVAR[0] = FIGHT_NONE;
                    MDL_STARTFACEANI(MIL_4041_RECRUIT, S_NEUTRAL, 0x3f800000, -1082130432);
                };
                if (HLP_ISVALIDNPC(MIL_4042_RECRUIT)) {
                    NPC_SETATTITUDE(MIL_4042_RECRUIT, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(MIL_4042_RECRUIT, ATT_NEUTRAL);
                    MIL_4042_RECRUIT.AIVAR[1] = CRIME_NONE;
                    MIL_4042_RECRUIT.AIVAR[0] = FIGHT_NONE;
                    MDL_STARTFACEANI(MIL_4042_RECRUIT, S_NEUTRAL, 0x3f800000, -1082130432);
                };
                FMQ001_THIRDFIGHTCHECK = FALSE;
                B_LOGENTRY(TOPIC_FMQ001, LOG_FMQ001_TRAINING_THIRDFIGHT_V1);
                PRINTD("Wszyscy padli 3 vs 1");
                TRAINING3VS1FIGHTRESULT = 3;
                FMQ001_RECRUIT01DOWN = FALSE;
                FMQ001_RECRUIT02DOWN = FALSE;
                FMQ001_RECRUIT03DOWN = FALSE;
                MIL_4040_RECRUIT.AIVAR[94] = FALSE;
                MIL_4041_RECRUIT.AIVAR[94] = FALSE;
                MIL_4042_RECRUIT.AIVAR[94] = FALSE;
                MIL_4040_RECRUIT.AIVAR[96] = 1;
                MIL_4041_RECRUIT.AIVAR[96] = 1;
                MIL_4042_RECRUIT.AIVAR[96] = 1;
            };
            if ((NPC_ISINSTATE(HERO, 0xf0a3)) && ((TRAINING3VS1FIGHTRESULT) == (2))) {
                if (HLP_ISVALIDNPC(MIL_4040_RECRUIT)) {
                    NPC_SETATTITUDE(MIL_4040_RECRUIT, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(MIL_4040_RECRUIT, ATT_NEUTRAL);
                    MIL_4040_RECRUIT.AIVAR[1] = CRIME_NONE;
                    MIL_4040_RECRUIT.AIVAR[0] = FIGHT_NONE;
                    MDL_STARTFACEANI(MIL_4040_RECRUIT, S_NEUTRAL, 0x3f800000, -1082130432);
                    NPC_CLEARAIQUEUE(MIL_4040_RECRUIT);
                    AI_REMOVEWEAPON(MIL_4040_RECRUIT);
                };
                if (HLP_ISVALIDNPC(MIL_4041_RECRUIT)) {
                    NPC_SETATTITUDE(MIL_4041_RECRUIT, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(MIL_4041_RECRUIT, ATT_NEUTRAL);
                    MIL_4041_RECRUIT.AIVAR[1] = CRIME_NONE;
                    MIL_4041_RECRUIT.AIVAR[0] = FIGHT_NONE;
                    MDL_STARTFACEANI(MIL_4041_RECRUIT, S_NEUTRAL, 0x3f800000, -1082130432);
                    NPC_CLEARAIQUEUE(MIL_4041_RECRUIT);
                    AI_REMOVEWEAPON(MIL_4041_RECRUIT);
                };
                if (HLP_ISVALIDNPC(MIL_4042_RECRUIT)) {
                    NPC_SETATTITUDE(MIL_4042_RECRUIT, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(MIL_4042_RECRUIT, ATT_NEUTRAL);
                    MIL_4042_RECRUIT.AIVAR[1] = CRIME_NONE;
                    MIL_4042_RECRUIT.AIVAR[0] = FIGHT_NONE;
                    MDL_STARTFACEANI(MIL_4042_RECRUIT, S_NEUTRAL, 0x3f800000, -1082130432);
                    NPC_CLEARAIQUEUE(MIL_4042_RECRUIT);
                    AI_REMOVEWEAPON(MIL_4042_RECRUIT);
                };
                FMQ001_THIRDFIGHTCHECK = FALSE;
                B_LOGENTRY(TOPIC_FMQ001, LOG_FMQ001_TRAINING_THIRDFIGHT_V2);
                PRINTD("Pad�e�, powsta�, pa�erejt");
                MIL_4040_RECRUIT.AIVAR[94] = FALSE;
                MIL_4041_RECRUIT.AIVAR[94] = FALSE;
                MIL_4042_RECRUIT.AIVAR[94] = FALSE;
                MIL_4040_RECRUIT.AIVAR[96] = 1;
                MIL_4041_RECRUIT.AIVAR[96] = 1;
                MIL_4042_RECRUIT.AIVAR[96] = 1;
                HERO.AIVAR[96] = 1;
                TRAINING3VS1FIGHTRESULT = 4;
            };
        };
        if (HLP_ISVALIDNPC(MIL_4043_INSTRUCTOR)) {
            if ((((FMQ001_INSTRUCTORREADYFORACTION) == (FALSE)) && ((NPC_GETDISTTOWP(MIL_4043_INSTRUCTOR, "PART3_PATH_10")) <= (300))) && ((NPC_ISINSTATE(MIL_4043_INSTRUCTOR, 0xf09f)) == (FALSE))) {
                FMQ001_INSTRUCTORREADYFORACTION = TRUE;
                B_STARTOTHERROUTINE(MIL_4043_INSTRUCTOR, "WaitRun");
                NPC_REFRESH(MIL_4043_INSTRUCTOR);
            };
        };
        if (HLP_ISVALIDNPC(MIL_4040_RECRUIT)) {
            if (((((FMQ001_RECRUIT01FMQ001_RACEDONE) == (FALSE)) && ((FMQ001_RUNNINGTOTREE) == (TRUE))) && ((NPC_GETDISTTOWP(MIL_4040_RECRUIT, "PART3_PATH_09")) <= (300))) && ((NPC_ISINSTATE(MIL_4040_RECRUIT, 0xf09f)) == (FALSE))) {
                B_STARTOTHERROUTINE(MIL_4040_RECRUIT, "WaitRun");
                NPC_REFRESH(MIL_4040_RECRUIT);
                FMQ001_RECRUIT01FMQ001_RACEDONE = TRUE;
            };
        };
        if (HLP_ISVALIDNPC(MIL_4041_RECRUIT)) {
            if (((((FMQ001_RECRUIT02FMQ001_RACEDONE) == (FALSE)) && ((FMQ001_RUNNINGTOTREE) == (TRUE))) && ((NPC_GETDISTTOWP(MIL_4041_RECRUIT, "PART3_PATH_09")) <= (300))) && ((NPC_ISINSTATE(MIL_4041_RECRUIT, 0xf09f)) == (FALSE))) {
                B_STARTOTHERROUTINE(MIL_4041_RECRUIT, "WaitRun");
                NPC_REFRESH(MIL_4041_RECRUIT);
                FMQ001_RECRUIT02FMQ001_RACEDONE = TRUE;
            };
        };
        if (HLP_ISVALIDNPC(MIL_4042_RECRUIT)) {
            if (((((FMQ001_RECRUIT03FMQ001_RACEDONE) == (FALSE)) && ((FMQ001_RUNNINGTOTREE) == (TRUE))) && ((NPC_GETDISTTOWP(MIL_4042_RECRUIT, "PART3_PATH_09")) <= (300))) && ((NPC_ISINSTATE(MIL_4042_RECRUIT, 0xf09f)) == (FALSE))) {
                B_STARTOTHERROUTINE(MIL_4042_RECRUIT, "WaitRun");
                NPC_REFRESH(MIL_4042_RECRUIT);
                FMQ001_RECRUIT03FMQ001_RACEDONE = TRUE;
            };
        };
        if ((((FMQ001_CHECKMARVINCHEAT) == (TRUE)) && ((FMQ001_APPLESHOTED) == (FALSE))) && ((NPC_GETDISTTOWP(HERO, "RECRUIT_CHECK")) <= (600))) {
            WLD_SENDTRIGGER("MILITIA_TARGET");
            WLD_SENDTRIGGER("MILITIA_APPLE");
            FMQ001_CHECKMARVINCHEAT = FALSE;
            B_LOGENTRY(TOPIC_FMQ001, LOG_FMQ001_SHOOTING_FAILED);
            if (HLP_ISVALIDNPC(MIL_4041_RECRUIT)) {
                SND_PLAY3D(MIL_4041_RECRUIT, "CrossbowShoot");
                SND_PLAY3D(HERO, "CS_IAM_ME_FL");
            };
            FMQ001_REFRESHRECRUITSAFTERSHOOTING();
            FMQ001_APPLESTATUS = 1;
        } else if ((((FMQ001_APPLESHOTED) == (TRUE)) && ((FMQ001_CHECKMARVINCHEAT) == (FALSE))) && ((FMQ001_APPLESTATUS) == (0))) {
            FMQ001_REFRESHRECRUITSAFTERSHOOTING();
            WLD_SENDTRIGGER("MILITIA_TARGET");
            B_LOGENTRY(TOPIC_FMQ001, LOG_FMQ001_SHOOTING_SUCCESS);
            FMQ001_APPLESTATUS = 2;
        };
        if ((FMQ001_STARTKANSAIDRIFTO) == (TRUE)) {
            if (((NPC_GETDISTTOWP(MIL_4041_RECRUIT, "PART2_PATH_19")) <= (750)) && ((FMQ001_DEJAVUIJUSTBEENINTHISPLACEBEFOREHIGHERONTHESTREET) == (FALSE))) {
                MDL_APPLYOVERLAYMDSTIMED(MIL_4041_RECRUIT, HUMANSSPRINTMDS, 0x57e40);
                FMQ001_DEJAVUIJUSTBEENINTHISPLACEBEFOREHIGHERONTHESTREET = TRUE;
            };
            if (((((NPC_GETDISTTOWP(MIL_4040_RECRUIT, "PART2_BRIDGE_PATH_02")) <= (300)) && ((FMQ001_STARTKANSAIDRIFTO) == (TRUE))) && ((FMQ001_RECRUIT01FMQ001_RACEDONE) == (FALSE))) && ((NPC_ISINSTATE(MIL_4040_RECRUIT, 0xf09f)) == (FALSE))) {
                MDL_APPLYOVERLAYMDSTIMED(MIL_4040_RECRUIT, HUMANSTIREDMDS, 0x57e40);
                B_STARTOTHERROUTINE(MIL_4040_RECRUIT, "AfterRace");
                NPC_REFRESH(MIL_4040_RECRUIT);
                FMQ001_RECRUIT01FMQ001_RACEDONE = TRUE;
                FMQ001_TELEPORTWINSTAN();
            };
            if ((((NPC_GETDISTTOWP(MIL_4041_RECRUIT, "PART2_BRIDGE_PATH_02")) <= (300)) && ((FMQ001_RECRUIT02FMQ001_RACEDONE) == (FALSE))) && ((NPC_ISINSTATE(MIL_4041_RECRUIT, 0xf09f)) == (FALSE))) {
                MDL_APPLYOVERLAYMDSTIMED(MIL_4041_RECRUIT, HUMANSTIREDMDS, 0x57e40);
                B_STARTOTHERROUTINE(MIL_4041_RECRUIT, "AfterRace");
                NPC_REFRESH(MIL_4041_RECRUIT);
                FMQ001_RECRUIT02FMQ001_RACEDONE = TRUE;
                FMQ001_TELEPORTWINSTAN();
            };
            if ((((NPC_GETDISTTOWP(MIL_4042_RECRUIT, "PART2_BRIDGE_PATH_02")) <= (300)) && ((FMQ001_RECRUIT03FMQ001_RACEDONE) == (FALSE))) && ((NPC_ISINSTATE(MIL_4042_RECRUIT, 0xf09f)) == (FALSE))) {
                MDL_APPLYOVERLAYMDSTIMED(MIL_4042_RECRUIT, HUMANSTIREDMDS, 0x57e40);
                B_STARTOTHERROUTINE(MIL_4042_RECRUIT, "AfterRace");
                NPC_REFRESH(MIL_4042_RECRUIT);
                FMQ001_RECRUIT03FMQ001_RACEDONE = TRUE;
                FMQ001_TELEPORTWINSTAN();
            };
            if (((NPC_GETDISTTOWP(HERO, "PART2_BRIDGE_PATH_02")) <= (300)) && ((FMQ001_MARVINFINISHRACE) == (FALSE))) {
                FMQ001_MARVINFINISHRACE = TRUE;
                FMQ001_TELEPORTWINSTAN();
            };
        };
    };
}

const int EVENTSMANAGER_FMQ001.FMQ001_MAXDISTANCE = 3000;
