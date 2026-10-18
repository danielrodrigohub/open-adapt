.class public final enum Lhc/d;
.super Ljava/lang/Enum;
.source "BigfootOperationCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhc/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lhc/d;

.field public static final enum B:Lhc/d;

.field public static final enum C:Lhc/d;

.field public static final enum D:Lhc/d;

.field public static final enum E:Lhc/d;

.field public static final enum F:Lhc/d;

.field public static final enum G:Lhc/d;

.field public static final enum H:Lhc/d;

.field public static final enum I:Lhc/d;

.field public static final enum J:Lhc/d;

.field public static final enum K:Lhc/d;

.field public static final enum L:Lhc/d;

.field public static final enum M:Lhc/d;

.field public static final enum N:Lhc/d;

.field public static final enum O:Lhc/d;

.field public static final enum P:Lhc/d;

.field public static final enum Q:Lhc/d;

.field public static final enum R:Lhc/d;

.field public static final enum S:Lhc/d;

.field public static final enum T:Lhc/d;

.field public static final enum U:Lhc/d;

.field public static final enum V:Lhc/d;

.field public static final enum W:Lhc/d;

.field public static final enum X:Lhc/d;

.field public static final enum Y:Lhc/d;

.field public static final enum Z:Lhc/d;

.field public static final enum a0:Lhc/d;

.field public static final enum b0:Lhc/d;

.field public static final enum c0:Lhc/d;

.field public static final enum d0:Lhc/d;

.field public static final enum e0:Lhc/d;

.field public static final enum f0:Lhc/d;

.field public static final enum g0:Lhc/d;

.field public static final enum h0:Lhc/d;

.field public static final enum i:Lhc/d;

.field public static final enum i0:Lhc/d;

.field public static final enum j:Lhc/d;

.field public static final enum j0:Lhc/d;

.field public static final enum k:Lhc/d;

.field public static final enum k0:Lhc/d;

.field public static final enum l:Lhc/d;

.field public static final enum l0:Lhc/d;

.field public static final enum m:Lhc/d;

.field public static final enum m0:Lhc/d;

.field public static final enum n:Lhc/d;

.field public static final enum n0:Lhc/d;

.field public static final enum o:Lhc/d;

.field public static final enum o0:Lhc/d;

.field public static final enum p:Lhc/d;

.field public static final enum p0:Lhc/d;

.field public static final enum q:Lhc/d;

.field public static final enum q0:Lhc/d;

.field public static final enum r:Lhc/d;

.field public static final enum r0:Lhc/d;

.field public static final enum s:Lhc/d;

.field public static final enum s0:Lhc/d;

.field public static final enum t:Lhc/d;

.field public static final t0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lhc/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum u:Lhc/d;

.field public static final synthetic u0:[Lhc/d;

.field public static final enum v:Lhc/d;

.field public static final enum w:Lhc/d;

.field public static final enum x:Lhc/d;

.field public static final enum y:Lhc/d;

.field public static final enum z:Lhc/d;


# instance fields
.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 136

    .line 1
    new-instance v0, Lhc/d;

    const-string v1, "SERVO_MOVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhc/d;->i:Lhc/d;

    .line 2
    new-instance v1, Lhc/d;

    const-string v2, "SERVO_PRESET_SET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lhc/d;->j:Lhc/d;

    .line 3
    new-instance v2, Lhc/d;

    const-string v3, "SERVO_PRESET_GET"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lhc/d;->k:Lhc/d;

    .line 4
    new-instance v3, Lhc/d;

    const-string v4, "SERVO_POSITION_SET"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lhc/d;->l:Lhc/d;

    .line 5
    new-instance v4, Lhc/d;

    const-string v5, "SERVO_POSITION_GET"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lhc/d;->m:Lhc/d;

    .line 6
    new-instance v5, Lhc/d;

    const-string v6, "SERVO_MOVE_COMPLETE_EVENT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lhc/d;->n:Lhc/d;

    .line 7
    new-instance v6, Lhc/d;

    const-string v7, "SERVO_SET_MAX_SEGS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 8
    new-instance v7, Lhc/d;

    const-string v8, "SERVO_SET_SEG_DIST"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 9
    new-instance v8, Lhc/d;

    const-string v9, "SERVO_GET_PARAMS"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 10
    new-instance v9, Lhc/d;

    const-string v10, "FIRMWARE_AVAILABLE"

    const/16 v11, 0x9

    const/16 v12, 0xa

    invoke-direct {v9, v10, v11, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lhc/d;->o:Lhc/d;

    .line 11
    new-instance v10, Lhc/d;

    const-string v11, "FIRMWARE_PULL"

    const/16 v13, 0xb

    invoke-direct {v10, v11, v12, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lhc/d;->p:Lhc/d;

    .line 12
    new-instance v11, Lhc/d;

    const-string v12, "FIRMWARE_DOWNLOAD_STATUS_GET"

    const/16 v14, 0xc

    invoke-direct {v11, v12, v13, v14}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 13
    new-instance v12, Lhc/d;

    const-string v13, "FIRMWARE_DOWNLOAD_COMPLETE"

    const/16 v15, 0xd

    invoke-direct {v12, v13, v14, v15}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->q:Lhc/d;

    .line 14
    new-instance v13, Lhc/d;

    const-string v14, "FIRMWARE_UPGRADE"

    move-object/from16 v16, v12

    const/16 v12, 0xe

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->r:Lhc/d;

    .line 15
    new-instance v14, Lhc/d;

    const-string v15, "FIRMWARE_TRANSMIT_SEGMENT"

    move-object/from16 v17, v13

    const/16 v13, 0xf

    invoke-direct {v14, v15, v12, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lhc/d;->s:Lhc/d;

    .line 16
    new-instance v12, Lhc/d;

    const-string v15, "FIRMWARE_RETRANSMIT_SEGMENT"

    move-object/from16 v18, v14

    const/16 v14, 0x10

    invoke-direct {v12, v15, v13, v14}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->t:Lhc/d;

    .line 17
    new-instance v13, Lhc/d;

    const-string v15, "FIRMWARE_STOP_TRANSFER"

    move-object/from16 v19, v12

    const/16 v12, 0x11

    invoke-direct {v13, v15, v14, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->u:Lhc/d;

    .line 18
    new-instance v14, Lhc/d;

    const-string v15, "FIRMWARE_UPLOAD"

    move-object/from16 v20, v13

    const/16 v13, 0x12

    invoke-direct {v14, v15, v12, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 19
    new-instance v12, Lhc/d;

    const-string v15, "FIRMWARE_GET_IMAGE_STATS"

    move-object/from16 v21, v14

    const/16 v14, 0x13

    invoke-direct {v12, v15, v13, v14}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->v:Lhc/d;

    .line 20
    new-instance v13, Lhc/d;

    const-string v15, "IDENTIFY"

    move-object/from16 v22, v12

    const/16 v12, 0x14

    invoke-direct {v13, v15, v14, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->w:Lhc/d;

    .line 21
    new-instance v14, Lhc/d;

    const-string v15, "FIRMWARE_DOWNLOAD_PAUSE"

    move-object/from16 v23, v13

    const/16 v13, 0x15

    invoke-direct {v14, v15, v12, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 22
    new-instance v12, Lhc/d;

    const-string v15, "FIRMWARE_DOWNLOAD_RESUME"

    move-object/from16 v24, v14

    const/16 v14, 0x16

    invoke-direct {v12, v15, v13, v14}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 23
    new-instance v13, Lhc/d;

    const-string v15, "FIRMWARE_UPGRADE_STATUS_GET"

    move-object/from16 v25, v12

    const/16 v12, 0x17

    invoke-direct {v13, v15, v14, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 24
    new-instance v14, Lhc/d;

    const-string v15, "GET_DEVICE_LOGS"

    move-object/from16 v26, v13

    const/16 v13, 0x1e

    invoke-direct {v14, v15, v12, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 25
    new-instance v15, Lhc/d;

    const-string v12, "GET_LOG_COUNT"

    const/16 v13, 0x18

    move-object/from16 v27, v14

    const/16 v14, 0x1f

    invoke-direct {v15, v12, v13, v14}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 26
    new-instance v12, Lhc/d;

    const-string v13, "LFT_PULL"

    const/16 v14, 0x19

    move-object/from16 v28, v15

    const/16 v15, 0x20

    invoke-direct {v12, v13, v14, v15}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 27
    new-instance v13, Lhc/d;

    const-string v14, "LFT_TRANSMIT_SEGMENT"

    const/16 v15, 0x1a

    move-object/from16 v29, v12

    const/16 v12, 0x21

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 28
    new-instance v14, Lhc/d;

    const-string v15, "LFT_RETRANSMIT_SEGMENT"

    const/16 v12, 0x1b

    move-object/from16 v30, v13

    const/16 v13, 0x22

    invoke-direct {v14, v15, v12, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 29
    new-instance v12, Lhc/d;

    const-string v15, "LFT_STOP_TRANSFER"

    const/16 v13, 0x1c

    move-object/from16 v31, v14

    const/16 v14, 0x23

    invoke-direct {v12, v15, v13, v14}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 30
    new-instance v13, Lhc/d;

    const-string v15, "RTC_TIME_SET"

    const/16 v14, 0x1d

    move-object/from16 v32, v12

    const/16 v12, 0x28

    invoke-direct {v13, v15, v14, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 31
    new-instance v14, Lhc/d;

    const-string v15, "RTC_TIME_GET"

    const/16 v12, 0x29

    move-object/from16 v33, v13

    const/16 v13, 0x1e

    invoke-direct {v14, v15, v13, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 32
    new-instance v13, Lhc/d;

    const-string v15, "RTC_TIME_SET_UTC"

    const/16 v12, 0x2a

    move-object/from16 v34, v14

    const/16 v14, 0x1f

    invoke-direct {v13, v15, v14, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->x:Lhc/d;

    .line 33
    new-instance v14, Lhc/d;

    const-string v15, "RTC_TIME_GET_UTC"

    const/16 v12, 0x2b

    move-object/from16 v35, v13

    const/16 v13, 0x20

    invoke-direct {v14, v15, v13, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 34
    new-instance v13, Lhc/d;

    const-string v15, "SERIAL_NUMBER_GET"

    const/16 v12, 0x32

    move-object/from16 v36, v14

    const/16 v14, 0x21

    invoke-direct {v13, v15, v14, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->y:Lhc/d;

    .line 35
    new-instance v14, Lhc/d;

    const-string v15, "FACTORY_RESET"

    const/16 v12, 0x46

    move-object/from16 v37, v13

    const/16 v13, 0x22

    invoke-direct {v14, v15, v13, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 36
    new-instance v13, Lhc/d;

    const-string v15, "SOFT_RESET"

    const/16 v12, 0x47

    move-object/from16 v38, v14

    const/16 v14, 0x23

    invoke-direct {v13, v15, v14, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 37
    new-instance v14, Lhc/d;

    const-string v15, "BATTERY_LEVEL_GET"

    const/16 v12, 0x24

    move-object/from16 v39, v13

    const/16 v13, 0x4f

    invoke-direct {v14, v15, v12, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 38
    new-instance v12, Lhc/d;

    const-string v15, "BATTERY_LATCH"

    const/16 v13, 0x25

    move-object/from16 v40, v14

    const/16 v14, 0x50

    invoke-direct {v12, v15, v13, v14}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 39
    new-instance v13, Lhc/d;

    const-string v15, "BATTERY_CHARGER_STATE_GET"

    const/16 v14, 0x26

    move-object/from16 v41, v12

    const/16 v12, 0x51

    invoke-direct {v13, v15, v14, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->z:Lhc/d;

    .line 40
    new-instance v14, Lhc/d;

    const-string v15, "TOGGLE_FPS"

    const/16 v12, 0x27

    move-object/from16 v42, v13

    const/16 v13, 0x52

    invoke-direct {v14, v15, v12, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lhc/d;->A:Lhc/d;

    .line 41
    new-instance v12, Lhc/d;

    const-string v15, "POWER_SLEEP"

    const/16 v13, 0x53

    move-object/from16 v43, v14

    const/16 v14, 0x28

    invoke-direct {v12, v15, v14, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 42
    new-instance v14, Lhc/d;

    const-string v15, "FPS_VALUE_GET"

    const/16 v13, 0x54

    move-object/from16 v44, v12

    const/16 v12, 0x29

    invoke-direct {v14, v15, v12, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 43
    new-instance v12, Lhc/d;

    const-string v15, "FPS_CALIBRATE"

    const/16 v13, 0x55

    move-object/from16 v45, v14

    const/16 v14, 0x2a

    invoke-direct {v12, v15, v14, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->B:Lhc/d;

    .line 44
    new-instance v14, Lhc/d;

    const-string v15, "FPS_ISSUE_RESET"

    const/16 v13, 0x56

    move-object/from16 v46, v12

    const/16 v12, 0x2b

    invoke-direct {v14, v15, v12, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 45
    new-instance v12, Lhc/d;

    const-string v15, "FPS_STATUS_GET"

    const/16 v13, 0x2c

    move-object/from16 v47, v14

    const/16 v14, 0x57

    invoke-direct {v12, v15, v13, v14}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 46
    new-instance v13, Lhc/d;

    const-string v14, "BLE_DISCONNECT"

    const/16 v15, 0x2d

    move-object/from16 v48, v12

    const/16 v12, 0x5a

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 47
    new-instance v12, Lhc/d;

    const-string v14, "USER_STATS_GET"

    const/16 v15, 0x2e

    move-object/from16 v49, v13

    const/16 v13, 0x64

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 48
    new-instance v13, Lhc/d;

    const-string v14, "START_AUTH_KEY_GENERATION"

    const/16 v15, 0x2f

    move-object/from16 v50, v12

    const/16 v12, 0x6e

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->C:Lhc/d;

    .line 49
    new-instance v12, Lhc/d;

    const-string v14, "EXCHANGE_PUBLIC_KEY"

    const/16 v15, 0x30

    move-object/from16 v51, v13

    const/16 v13, 0x6f

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->D:Lhc/d;

    .line 50
    new-instance v13, Lhc/d;

    const-string v14, "START_AUTHENTICATION"

    const/16 v15, 0x31

    move-object/from16 v52, v12

    const/16 v12, 0x70

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->E:Lhc/d;

    .line 51
    new-instance v12, Lhc/d;

    const-string v14, "AUTHENTICATION_CHALLENGE"

    const/16 v15, 0x71

    move-object/from16 v53, v13

    const/16 v13, 0x32

    invoke-direct {v12, v14, v13, v15}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->F:Lhc/d;

    .line 52
    new-instance v13, Lhc/d;

    const-string v14, "SELF_TEST"

    const/16 v15, 0x33

    move-object/from16 v54, v12

    const/16 v12, 0x78

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 53
    new-instance v12, Lhc/d;

    const-string v14, "SYSTEM_STATS_GET"

    const/16 v15, 0x34

    move-object/from16 v55, v13

    const/16 v13, 0x79

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->G:Lhc/d;

    .line 54
    new-instance v13, Lhc/d;

    const-string v14, "SELF_TEST_TEST_DRIVERS"

    const/16 v15, 0x35

    move-object/from16 v56, v12

    const/16 v12, 0x7a

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 55
    new-instance v12, Lhc/d;

    const-string v14, "SELF_TEST_GET_HARDFAULT_LOG"

    const/16 v15, 0x36

    move-object/from16 v57, v13

    const/16 v13, 0x7b

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 56
    new-instance v13, Lhc/d;

    const-string v14, "SELF_TEST_CLEAR_HARDFAULT_LOG"

    const/16 v15, 0x37

    move-object/from16 v58, v12

    const/16 v12, 0x7c

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 57
    new-instance v12, Lhc/d;

    const-string v14, "SET_LED_BASE"

    const/16 v15, 0x38

    move-object/from16 v59, v13

    const/16 v13, 0x82

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->H:Lhc/d;

    .line 58
    new-instance v13, Lhc/d;

    const-string v14, "GET_LED_BASE"

    const/16 v15, 0x39

    move-object/from16 v60, v12

    const/16 v12, 0x83

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->I:Lhc/d;

    .line 59
    new-instance v12, Lhc/d;

    const-string v14, "LOG_GET_NUM_AVAIL_ENTRIES"

    const/16 v15, 0x3a

    move-object/from16 v61, v13

    const/16 v13, 0x8c

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 60
    new-instance v13, Lhc/d;

    const-string v14, "LOG_GET_LOG_ENTRIES"

    const/16 v15, 0x3b

    move-object/from16 v62, v12

    const/16 v12, 0x8d

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 61
    new-instance v12, Lhc/d;

    const-string v14, "LOG_TRANSMIT_DATA"

    const/16 v15, 0x3c

    move-object/from16 v63, v13

    const/16 v13, 0x8e

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 62
    new-instance v13, Lhc/d;

    const-string v14, "LOG_TRANSMIT_DATA_COMPLETE"

    const/16 v15, 0x3d

    move-object/from16 v64, v12

    const/16 v12, 0x8f

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 63
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_START"

    const/16 v15, 0x3e

    move-object/from16 v65, v13

    const/16 v13, 0x96

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->J:Lhc/d;

    .line 64
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_STOP"

    const/16 v15, 0x3f

    move-object/from16 v66, v12

    const/16 v12, 0x97

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->K:Lhc/d;

    .line 65
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_ENDED"

    const/16 v15, 0x40

    move-object/from16 v67, v13

    const/16 v13, 0x98

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->L:Lhc/d;

    .line 66
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_GET_ID_LIST"

    const/16 v15, 0x41

    move-object/from16 v68, v12

    const/16 v12, 0x99

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->M:Lhc/d;

    .line 67
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_GET_INFO"

    const/16 v15, 0x42

    move-object/from16 v69, v13

    const/16 v13, 0x9a

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->N:Lhc/d;

    .line 68
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_GET_CONFIGURATION"

    const/16 v15, 0x43

    move-object/from16 v70, v12

    const/16 v12, 0x9b

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 69
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_SET_CONFIGURATION"

    const/16 v15, 0x44

    move-object/from16 v71, v13

    const/16 v13, 0x9c

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 70
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_GET_MEMS_RATE"

    const/16 v15, 0x45

    move-object/from16 v72, v12

    const/16 v12, 0x9d

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 71
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_SET_MEMS_RATE"

    const/16 v15, 0x9e

    move-object/from16 v73, v13

    const/16 v13, 0x46

    invoke-direct {v12, v14, v13, v15}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 72
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_DATA_METRICS_NOTIFICATION"

    const/16 v15, 0x9f

    move-object/from16 v74, v12

    const/16 v12, 0x47

    invoke-direct {v13, v14, v12, v15}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->O:Lhc/d;

    .line 73
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_DATA_AGGREGATE_NOTIFICATION"

    const/16 v15, 0x48

    move-object/from16 v75, v13

    const/16 v13, 0xa0

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->P:Lhc/d;

    .line 74
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_PULL_REQUEST"

    const/16 v15, 0x49

    move-object/from16 v76, v12

    const/16 v12, 0xa1

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->Q:Lhc/d;

    .line 75
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_GET_STORAGE_SIZE"

    const/16 v15, 0x4a

    move-object/from16 v77, v13

    const/16 v13, 0xa2

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 76
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_PAUSE"

    const/16 v15, 0x4b

    move-object/from16 v78, v12

    const/16 v12, 0xa3

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->R:Lhc/d;

    .line 77
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_RESUME"

    const/16 v15, 0x4c

    move-object/from16 v79, v13

    const/16 v13, 0xa4

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->S:Lhc/d;

    .line 78
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_DATA_MEMS_NOTIFICATION"

    const/16 v15, 0x4d

    move-object/from16 v80, v12

    const/16 v12, 0xa5

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->T:Lhc/d;

    .line 79
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_GET_ACTIVE_ID"

    const/16 v15, 0x4e

    move-object/from16 v81, v13

    const/16 v13, 0xa6

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->U:Lhc/d;

    .line 80
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_AUTOADAPT_ENABLE"

    const/16 v15, 0xa7

    move-object/from16 v82, v12

    const/16 v12, 0x4f

    invoke-direct {v13, v14, v12, v15}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->V:Lhc/d;

    .line 81
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_AUTOADAPT_DISABLE"

    const/16 v15, 0xa8

    move-object/from16 v83, v13

    const/16 v13, 0x50

    invoke-direct {v12, v14, v13, v15}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->W:Lhc/d;

    .line 82
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_GET_AUTOADAPT_CONFIG"

    const/16 v15, 0xa9

    move-object/from16 v84, v12

    const/16 v12, 0x51

    invoke-direct {v13, v14, v12, v15}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 83
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_SET_AUTOADAPT_CONFIG"

    const/16 v15, 0xaa

    move-object/from16 v85, v13

    const/16 v13, 0x52

    invoke-direct {v12, v14, v13, v15}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->X:Lhc/d;

    .line 84
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_ACTIVITY_NOTIFICATION"

    const/16 v15, 0xab

    move-object/from16 v86, v12

    const/16 v12, 0x53

    invoke-direct {v13, v14, v12, v15}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->Y:Lhc/d;

    .line 85
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_GET_ACTIVITY_STATE"

    const/16 v15, 0xac

    move-object/from16 v87, v13

    const/16 v13, 0x54

    invoke-direct {v12, v14, v13, v15}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->Z:Lhc/d;

    .line 86
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_AUTOADAPT_GET_CURRENT_STATE"

    const/16 v15, 0xad

    move-object/from16 v88, v12

    const/16 v12, 0x55

    invoke-direct {v13, v14, v12, v15}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->a0:Lhc/d;

    .line 87
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_GET_CAPSENSE_RATE"

    const/16 v15, 0xae

    move-object/from16 v89, v13

    const/16 v13, 0x56

    invoke-direct {v12, v14, v13, v15}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 88
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_SET_CAPSENSE_RATE"

    const/16 v15, 0x57

    move-object/from16 v90, v12

    const/16 v12, 0xaf

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 89
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_DATA_CAPSENSE_NOTIFICATION"

    const/16 v15, 0x58

    move-object/from16 v91, v13

    const/16 v13, 0xb0

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->b0:Lhc/d;

    .line 90
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_DATA_TEMP_NOTIFICATION"

    const/16 v15, 0x59

    move-object/from16 v92, v12

    const/16 v12, 0xb1

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->c0:Lhc/d;

    .line 91
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_SET_GESTURE_CONFIGURATION"

    const/16 v15, 0x5a

    move-object/from16 v93, v13

    const/16 v13, 0xb2

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->d0:Lhc/d;

    .line 92
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_GET_GESTURE_CONFIGURATION"

    const/16 v15, 0x5b

    move-object/from16 v94, v12

    const/16 v12, 0xb3

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->e0:Lhc/d;

    .line 93
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_CLEAR_GESTURE_DETECTION_COUNT"

    const/16 v15, 0x5c

    move-object/from16 v95, v13

    const/16 v13, 0xb4

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->f0:Lhc/d;

    .line 94
    new-instance v13, Lhc/d;

    const-string v14, "SESSION_GET_GESTURE_DETECTION_COUNT"

    const/16 v15, 0x5d

    move-object/from16 v96, v12

    const/16 v12, 0xb5

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->g0:Lhc/d;

    .line 95
    new-instance v12, Lhc/d;

    const-string v14, "SESSION_GESTURE_EVENT_NOTIFICATION"

    const/16 v15, 0x5e

    move-object/from16 v97, v13

    const/16 v13, 0xb6

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->h0:Lhc/d;

    .line 96
    new-instance v13, Lhc/d;

    const-string v14, "ASCII_COMMAND"

    const/16 v15, 0x5f

    move-object/from16 v98, v12

    const/16 v12, 0xc8

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->i0:Lhc/d;

    .line 97
    new-instance v12, Lhc/d;

    const-string v14, "STORAGE_RESET_DATA"

    const/16 v15, 0x60

    move-object/from16 v99, v13

    const/16 v13, 0xc9

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 98
    new-instance v13, Lhc/d;

    const-string v14, "STORAGE_GET_SELFTEST_STATS"

    const/16 v15, 0x61

    move-object/from16 v100, v12

    const/16 v12, 0xca

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 99
    new-instance v12, Lhc/d;

    const-string v14, "STORAGE_SAVE_DATA"

    const/16 v15, 0x62

    move-object/from16 v101, v13

    const/16 v13, 0xcb

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 100
    new-instance v13, Lhc/d;

    const-string v14, "SYS_CONFIG_SET_FPS_AUTOLACE_TARGET"

    const/16 v15, 0x63

    move-object/from16 v102, v12

    const/16 v12, 0xcc

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 101
    new-instance v12, Lhc/d;

    const-string v14, "SYS_CONFIG_GET_FPS_AUTOLACE_TARGET"

    const/16 v15, 0x64

    move-object/from16 v103, v13

    const/16 v13, 0xcd

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 102
    new-instance v13, Lhc/d;

    const-string v14, "SYS_CONFIG_GET_MFG_DATE"

    const/16 v15, 0x65

    move-object/from16 v104, v12

    const/16 v12, 0xce

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 103
    new-instance v12, Lhc/d;

    const-string v14, "SYS_CONFIG_GET_IMP_DATE"

    const/16 v15, 0x66

    move-object/from16 v105, v13

    const/16 v13, 0xcf

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 104
    new-instance v13, Lhc/d;

    const-string v14, "SYS_CONFIG_GET_RL"

    const/16 v15, 0x67

    move-object/from16 v106, v12

    const/16 v12, 0xd0

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 105
    new-instance v12, Lhc/d;

    const-string v14, "SYS_CONFIG_GET_SMART_SN_SHOE"

    const/16 v15, 0x68

    move-object/from16 v107, v13

    const/16 v13, 0xd1

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 106
    new-instance v13, Lhc/d;

    const-string v14, "SYS_CONFIG_GET_SMART_SN_ENG"

    const/16 v15, 0x69

    move-object/from16 v108, v12

    const/16 v12, 0xd2

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 107
    new-instance v12, Lhc/d;

    const-string v14, "SYS_CONFIG_SET_LED_INTENSITY"

    const/16 v15, 0x6a

    move-object/from16 v109, v13

    const/16 v13, 0xd3

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 108
    new-instance v13, Lhc/d;

    const-string v14, "SYS_CONFIG_GET_LED_INTENSITY"

    const/16 v15, 0x6b

    move-object/from16 v110, v12

    const/16 v12, 0xd4

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 109
    new-instance v12, Lhc/d;

    const-string v14, "SYS_CONFIG_GET_BLE_FW_VERSION"

    const/16 v15, 0x6c

    move-object/from16 v111, v13

    const/16 v13, 0xd5

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 110
    new-instance v13, Lhc/d;

    const-string v14, "SYS_CONFIG_GET_MCU_FW_VERSION"

    const/16 v15, 0x6d

    move-object/from16 v112, v12

    const/16 v12, 0xd6

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->j0:Lhc/d;

    .line 111
    new-instance v12, Lhc/d;

    const-string v14, "SYS_CONFIG_GET_CAPSENSE_FW_VERSION"

    const/16 v15, 0x6e

    move-object/from16 v113, v13

    const/16 v13, 0xd7

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 112
    new-instance v13, Lhc/d;

    const-string v14, "LED_CLEAR"

    const/16 v15, 0x6f

    move-object/from16 v114, v12

    const/16 v12, 0xd8

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 113
    new-instance v12, Lhc/d;

    const-string v14, "MOTOR_STOP"

    const/16 v15, 0x70

    move-object/from16 v115, v13

    const/16 v13, 0xd9

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 114
    new-instance v13, Lhc/d;

    const-string v14, "ANIMATION_EXECUTE"

    const/16 v15, 0x71

    move-object/from16 v116, v12

    const/16 v12, 0xda

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 115
    new-instance v12, Lhc/d;

    const-string v14, "ANIMATION_SAVE_DATA"

    const/16 v15, 0x72

    move-object/from16 v117, v13

    const/16 v13, 0xdb

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 116
    new-instance v13, Lhc/d;

    const-string v14, "ANIMATION_LEVEL_COLORS"

    const/16 v15, 0x73

    move-object/from16 v118, v12

    const/16 v12, 0xdc

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 117
    new-instance v12, Lhc/d;

    const-string v14, "ANIMATION_GET_COLOR"

    const/16 v15, 0x74

    move-object/from16 v119, v13

    const/16 v13, 0xdd

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->k0:Lhc/d;

    .line 118
    new-instance v13, Lhc/d;

    const-string v14, "ANIMATION_SET_COLOR"

    const/16 v15, 0x75

    move-object/from16 v120, v12

    const/16 v12, 0xde

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->l0:Lhc/d;

    .line 119
    new-instance v12, Lhc/d;

    const-string v14, "ANIMATION_SET_PULSE_CYCLE"

    const/16 v15, 0x76

    move-object/from16 v121, v13

    const/16 v13, 0xdf

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 120
    new-instance v13, Lhc/d;

    const-string v14, "ANIMATION_SET_ANIMATION"

    const/16 v15, 0x77

    move-object/from16 v122, v12

    const/16 v12, 0xe0

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 121
    new-instance v12, Lhc/d;

    const-string v14, "ANIMATION_SET_ALL_DEFAULTS"

    const/16 v15, 0x78

    move-object/from16 v123, v13

    const/16 v13, 0xe1

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 122
    new-instance v13, Lhc/d;

    const-string v14, "ANIMATION_SET_BRIGHTNESS"

    const/16 v15, 0x79

    move-object/from16 v124, v12

    const/16 v12, 0xe2

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 123
    new-instance v12, Lhc/d;

    const-string v14, "MSERVO_GET_CURRENT_HISTOGRAM"

    const/16 v15, 0x7a

    move-object/from16 v125, v13

    const/16 v13, 0xe4

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 124
    new-instance v13, Lhc/d;

    const-string v14, "ENTER_PLAY_MODE"

    const/16 v15, 0x7b

    move-object/from16 v126, v12

    const/16 v12, 0xe5

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 125
    new-instance v12, Lhc/d;

    const-string v14, "EXIT_PLAY_MODE"

    const/16 v15, 0x7c

    move-object/from16 v127, v13

    const/16 v13, 0xe6

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 126
    new-instance v13, Lhc/d;

    const-string v14, "SYS_CONFIG_GET_MFG_PRODUCT_ID"

    const/16 v15, 0x7d

    move-object/from16 v128, v12

    const/16 v12, 0xe7

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->m0:Lhc/d;

    .line 127
    new-instance v12, Lhc/d;

    const-string v14, "SYS_CONFIG_SET_MFG_PRODUCT_ID"

    const/16 v15, 0x7e

    move-object/from16 v129, v13

    const/16 v13, 0xe8

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->n0:Lhc/d;

    .line 128
    new-instance v13, Lhc/d;

    const-string v14, "BATTERY_GET_HEALTH_METRICS"

    const/16 v15, 0x7f

    move-object/from16 v130, v12

    const/16 v12, 0xe9

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    .line 129
    new-instance v12, Lhc/d;

    const-string v14, "USER_ANIMATION_SET_ANIMATION"

    const/16 v15, 0x80

    move-object/from16 v131, v13

    const/16 v13, 0xea

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->o0:Lhc/d;

    .line 130
    new-instance v13, Lhc/d;

    const-string v14, "USER_ANIMATION_GET_ANIMATION"

    const/16 v15, 0x81

    move-object/from16 v132, v12

    const/16 v12, 0xeb

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->p0:Lhc/d;

    .line 131
    new-instance v12, Lhc/d;

    const-string v14, "USER_ANIMATION_START_ANIMATION"

    const/16 v15, 0x82

    move-object/from16 v133, v13

    const/16 v13, 0xec

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->q0:Lhc/d;

    .line 132
    new-instance v13, Lhc/d;

    const-string v14, "USER_ANIMATION_STOP_ANIMATION"

    const/16 v15, 0x83

    move-object/from16 v134, v12

    const/16 v12, 0xed

    invoke-direct {v13, v14, v15, v12}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lhc/d;->r0:Lhc/d;

    .line 133
    new-instance v12, Lhc/d;

    const-string v14, "CUSTOM_ANIMATION_GET_ANIMATION"

    const/16 v15, 0x84

    move-object/from16 v135, v13

    const/16 v13, 0xee

    invoke-direct {v12, v14, v15, v13}, Lhc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lhc/d;->s0:Lhc/d;

    const/16 v13, 0x85

    new-array v13, v13, [Lhc/d;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v0, 0x2

    aput-object v2, v13, v0

    const/4 v0, 0x3

    aput-object v3, v13, v0

    const/4 v0, 0x4

    aput-object v4, v13, v0

    const/4 v0, 0x5

    aput-object v5, v13, v0

    const/4 v0, 0x6

    aput-object v6, v13, v0

    const/4 v0, 0x7

    aput-object v7, v13, v0

    const/16 v0, 0x8

    aput-object v8, v13, v0

    const/16 v0, 0x9

    aput-object v9, v13, v0

    const/16 v0, 0xa

    aput-object v10, v13, v0

    const/16 v0, 0xb

    aput-object v11, v13, v0

    const/16 v0, 0xc

    aput-object v16, v13, v0

    const/16 v0, 0xd

    aput-object v17, v13, v0

    const/16 v0, 0xe

    aput-object v18, v13, v0

    const/16 v0, 0xf

    aput-object v19, v13, v0

    const/16 v0, 0x10

    aput-object v20, v13, v0

    const/16 v0, 0x11

    aput-object v21, v13, v0

    const/16 v0, 0x12

    aput-object v22, v13, v0

    const/16 v0, 0x13

    aput-object v23, v13, v0

    const/16 v0, 0x14

    aput-object v24, v13, v0

    const/16 v0, 0x15

    aput-object v25, v13, v0

    const/16 v0, 0x16

    aput-object v26, v13, v0

    const/16 v0, 0x17

    aput-object v27, v13, v0

    const/16 v0, 0x18

    aput-object v28, v13, v0

    const/16 v0, 0x19

    aput-object v29, v13, v0

    const/16 v0, 0x1a

    aput-object v30, v13, v0

    const/16 v0, 0x1b

    aput-object v31, v13, v0

    const/16 v0, 0x1c

    aput-object v32, v13, v0

    const/16 v0, 0x1d

    aput-object v33, v13, v0

    const/16 v0, 0x1e

    aput-object v34, v13, v0

    const/16 v0, 0x1f

    aput-object v35, v13, v0

    const/16 v0, 0x20

    aput-object v36, v13, v0

    const/16 v0, 0x21

    aput-object v37, v13, v0

    const/16 v0, 0x22

    aput-object v38, v13, v0

    const/16 v0, 0x23

    aput-object v39, v13, v0

    const/16 v0, 0x24

    aput-object v40, v13, v0

    const/16 v0, 0x25

    aput-object v41, v13, v0

    const/16 v0, 0x26

    aput-object v42, v13, v0

    const/16 v0, 0x27

    aput-object v43, v13, v0

    const/16 v0, 0x28

    aput-object v44, v13, v0

    const/16 v0, 0x29

    aput-object v45, v13, v0

    const/16 v0, 0x2a

    aput-object v46, v13, v0

    const/16 v0, 0x2b

    aput-object v47, v13, v0

    const/16 v0, 0x2c

    aput-object v48, v13, v0

    const/16 v0, 0x2d

    aput-object v49, v13, v0

    const/16 v0, 0x2e

    aput-object v50, v13, v0

    const/16 v0, 0x2f

    aput-object v51, v13, v0

    const/16 v0, 0x30

    aput-object v52, v13, v0

    const/16 v0, 0x31

    aput-object v53, v13, v0

    const/16 v0, 0x32

    aput-object v54, v13, v0

    const/16 v0, 0x33

    aput-object v55, v13, v0

    const/16 v0, 0x34

    aput-object v56, v13, v0

    const/16 v0, 0x35

    aput-object v57, v13, v0

    const/16 v0, 0x36

    aput-object v58, v13, v0

    const/16 v0, 0x37

    aput-object v59, v13, v0

    const/16 v0, 0x38

    aput-object v60, v13, v0

    const/16 v0, 0x39

    aput-object v61, v13, v0

    const/16 v0, 0x3a

    aput-object v62, v13, v0

    const/16 v0, 0x3b

    aput-object v63, v13, v0

    const/16 v0, 0x3c

    aput-object v64, v13, v0

    const/16 v0, 0x3d

    aput-object v65, v13, v0

    const/16 v0, 0x3e

    aput-object v66, v13, v0

    const/16 v0, 0x3f

    aput-object v67, v13, v0

    const/16 v0, 0x40

    aput-object v68, v13, v0

    const/16 v0, 0x41

    aput-object v69, v13, v0

    const/16 v0, 0x42

    aput-object v70, v13, v0

    const/16 v0, 0x43

    aput-object v71, v13, v0

    const/16 v0, 0x44

    aput-object v72, v13, v0

    const/16 v0, 0x45

    aput-object v73, v13, v0

    const/16 v0, 0x46

    aput-object v74, v13, v0

    const/16 v0, 0x47

    aput-object v75, v13, v0

    const/16 v0, 0x48

    aput-object v76, v13, v0

    const/16 v0, 0x49

    aput-object v77, v13, v0

    const/16 v0, 0x4a

    aput-object v78, v13, v0

    const/16 v0, 0x4b

    aput-object v79, v13, v0

    const/16 v0, 0x4c

    aput-object v80, v13, v0

    const/16 v0, 0x4d

    aput-object v81, v13, v0

    const/16 v0, 0x4e

    aput-object v82, v13, v0

    const/16 v0, 0x4f

    aput-object v83, v13, v0

    const/16 v0, 0x50

    aput-object v84, v13, v0

    const/16 v0, 0x51

    aput-object v85, v13, v0

    const/16 v0, 0x52

    aput-object v86, v13, v0

    const/16 v0, 0x53

    aput-object v87, v13, v0

    const/16 v0, 0x54

    aput-object v88, v13, v0

    const/16 v0, 0x55

    aput-object v89, v13, v0

    const/16 v0, 0x56

    aput-object v90, v13, v0

    const/16 v0, 0x57

    aput-object v91, v13, v0

    const/16 v0, 0x58

    aput-object v92, v13, v0

    const/16 v0, 0x59

    aput-object v93, v13, v0

    const/16 v0, 0x5a

    aput-object v94, v13, v0

    const/16 v0, 0x5b

    aput-object v95, v13, v0

    const/16 v0, 0x5c

    aput-object v96, v13, v0

    const/16 v0, 0x5d

    aput-object v97, v13, v0

    const/16 v0, 0x5e

    aput-object v98, v13, v0

    const/16 v0, 0x5f

    aput-object v99, v13, v0

    const/16 v0, 0x60

    aput-object v100, v13, v0

    const/16 v0, 0x61

    aput-object v101, v13, v0

    const/16 v0, 0x62

    aput-object v102, v13, v0

    const/16 v0, 0x63

    aput-object v103, v13, v0

    const/16 v0, 0x64

    aput-object v104, v13, v0

    const/16 v0, 0x65

    aput-object v105, v13, v0

    const/16 v0, 0x66

    aput-object v106, v13, v0

    const/16 v0, 0x67

    aput-object v107, v13, v0

    const/16 v0, 0x68

    aput-object v108, v13, v0

    const/16 v0, 0x69

    aput-object v109, v13, v0

    const/16 v0, 0x6a

    aput-object v110, v13, v0

    const/16 v0, 0x6b

    aput-object v111, v13, v0

    const/16 v0, 0x6c

    aput-object v112, v13, v0

    const/16 v0, 0x6d

    aput-object v113, v13, v0

    const/16 v0, 0x6e

    aput-object v114, v13, v0

    const/16 v0, 0x6f

    aput-object v115, v13, v0

    const/16 v0, 0x70

    aput-object v116, v13, v0

    const/16 v0, 0x71

    aput-object v117, v13, v0

    const/16 v0, 0x72

    aput-object v118, v13, v0

    const/16 v0, 0x73

    aput-object v119, v13, v0

    const/16 v0, 0x74

    aput-object v120, v13, v0

    const/16 v0, 0x75

    aput-object v121, v13, v0

    const/16 v0, 0x76

    aput-object v122, v13, v0

    const/16 v0, 0x77

    aput-object v123, v13, v0

    const/16 v0, 0x78

    aput-object v124, v13, v0

    const/16 v0, 0x79

    aput-object v125, v13, v0

    const/16 v0, 0x7a

    aput-object v126, v13, v0

    const/16 v0, 0x7b

    aput-object v127, v13, v0

    const/16 v0, 0x7c

    aput-object v128, v13, v0

    const/16 v0, 0x7d

    aput-object v129, v13, v0

    const/16 v0, 0x7e

    aput-object v130, v13, v0

    const/16 v0, 0x7f

    aput-object v131, v13, v0

    const/16 v0, 0x80

    aput-object v132, v13, v0

    const/16 v0, 0x81

    aput-object v133, v13, v0

    const/16 v0, 0x82

    aput-object v134, v13, v0

    const/16 v0, 0x83

    aput-object v135, v13, v0

    const/16 v0, 0x84

    aput-object v12, v13, v0

    .line 134
    sput-object v13, Lhc/d;->u0:[Lhc/d;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhc/d;->t0:Ljava/util/HashMap;

    .line 136
    const-class v0, Lhc/d;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhc/d;

    .line 137
    sget-object v2, Lhc/d;->t0:Ljava/util/HashMap;

    iget v3, v1, Lhc/d;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lhc/d;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhc/d;
    .locals 1

    const-class v0, Lhc/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhc/d;

    return-object p0
.end method

.method public static values()[Lhc/d;
    .locals 1

    sget-object v0, Lhc/d;->u0:[Lhc/d;

    invoke-virtual {v0}, [Lhc/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhc/d;

    return-object v0
.end method
