.class public final Lgc/z;
.super Lm7/w;
.source "messages.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgc/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lgc/z;",
        "Lgc/z$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field public static final AUTOLACE_LOOSEN_CT_FIELD_NUMBER:I = 0x9

.field public static final AUTOLACE_TIGHTEN_CT_FIELD_NUMBER:I = 0x8

.field public static final BLE_MANUAL_LOOSEN_CT_FIELD_NUMBER:I = 0x5

.field public static final BLE_MANUAL_TIGHTEN_CT_FIELD_NUMBER:I = 0x4

.field public static final BLE_SERVO_FAULT_CT_FIELD_NUMBER:I = 0xa

.field public static final BUTTON_MANUAL_LOOSEN_CT_FIELD_NUMBER:I = 0x7

.field public static final BUTTON_MANUAL_TIGHTEN_CT_FIELD_NUMBER:I = 0x6

.field public static final BUTTON_SERVO_FAULT_CT_FIELD_NUMBER:I = 0xb

.field private static final DEFAULT_INSTANCE:Lgc/z;

.field public static final HOMING_ROUTINE_CT_FIELD_NUMBER:I = 0x3

.field public static final IDLE_TIME_SEC_FIELD_NUMBER:I = 0x1

.field public static final LACED_TIME_SEC_FIELD_NUMBER:I = 0x2

.field public static final LOOSEN_SPOOL_DEG_FIELD_NUMBER:I = 0xf

.field public static final MAX_TIGHTEN_CT_FIELD_NUMBER:I = 0xc

.field public static final OVER_CURRENT_EVENT_CT_FIELD_NUMBER:I = 0x10

.field private static volatile PARSER:Lm7/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lgc/z;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRESET_CHANGE_CT_FIELD_NUMBER:I = 0xd

.field public static final TIGHTEN_SPOOL_DEG_FIELD_NUMBER:I = 0xe


# instance fields
.field private autolaceLoosenCt_:I

.field private autolaceTightenCt_:I

.field private bLEManualLoosenCt_:I

.field private bLEManualTightenCt_:I

.field private bLEServoFaultCt_:I

.field private buttonManualLoosenCt_:I

.field private buttonManualTightenCt_:I

.field private buttonServoFaultCt_:I

.field private homingRoutineCt_:I

.field private idleTimeSec_:I

.field private lacedTimeSec_:I

.field private loosenSpoolDeg_:I

.field private maxTightenCt_:I

.field private overCurrentEventCt_:I

.field private presetChangeCt_:I

.field private tightenSpoolDeg_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc/z;

    invoke-direct {v0}, Lgc/z;-><init>()V

    .line 2
    sput-object v0, Lgc/z;->DEFAULT_INSTANCE:Lgc/z;

    .line 3
    const-class v1, Lgc/z;

    invoke-static {v1, v0}, Lm7/w;->w(Ljava/lang/Class;Lm7/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm7/w;-><init>()V

    return-void
.end method

.method public static B()Lgc/z;
    .locals 1

    sget-object v0, Lgc/z;->DEFAULT_INSTANCE:Lgc/z;

    return-object v0
.end method

.method public static bridge synthetic x()Lgc/z;
    .locals 1

    sget-object v0, Lgc/z;->DEFAULT_INSTANCE:Lgc/z;

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget v0, p0, Lgc/z;->buttonManualTightenCt_:I

    return v0
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lgc/z;->idleTimeSec_:I

    return v0
.end method

.method public final D()I
    .locals 1

    iget v0, p0, Lgc/z;->lacedTimeSec_:I

    return v0
.end method

.method public final E()I
    .locals 1

    iget v0, p0, Lgc/z;->loosenSpoolDeg_:I

    return v0
.end method

.method public final F()I
    .locals 1

    iget v0, p0, Lgc/z;->maxTightenCt_:I

    return v0
.end method

.method public final G()I
    .locals 1

    iget v0, p0, Lgc/z;->presetChangeCt_:I

    return v0
.end method

.method public final H()I
    .locals 1

    iget v0, p0, Lgc/z;->tightenSpoolDeg_:I

    return v0
.end method

.method public final o(Lm7/w$f;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lgc/z;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lgc/z;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lgc/z;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lgc/z;->DEFAULT_INSTANCE:Lgc/z;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lgc/z;->PARSER:Lm7/x0;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 9
    :pswitch_1
    sget-object p1, Lgc/z;->DEFAULT_INSTANCE:Lgc/z;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lgc/z$a;

    invoke-direct {p1}, Lgc/z$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lgc/z;

    invoke-direct {p1}, Lgc/z;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "idleTimeSec_"

    aput-object v2, p1, v1

    const-string v1, "lacedTimeSec_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "homingRoutineCt_"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "bLEManualTightenCt_"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "bLEManualLoosenCt_"

    aput-object v1, p1, v0

    const/4 v0, 0x5

    const-string v1, "buttonManualTightenCt_"

    aput-object v1, p1, v0

    const/4 v0, 0x6

    const-string v1, "buttonManualLoosenCt_"

    aput-object v1, p1, v0

    const/4 v0, 0x7

    const-string v1, "autolaceTightenCt_"

    aput-object v1, p1, v0

    const/16 v0, 0x8

    const-string v1, "autolaceLoosenCt_"

    aput-object v1, p1, v0

    const/16 v0, 0x9

    const-string v1, "bLEServoFaultCt_"

    aput-object v1, p1, v0

    const/16 v0, 0xa

    const-string v1, "buttonServoFaultCt_"

    aput-object v1, p1, v0

    const/16 v0, 0xb

    const-string v1, "maxTightenCt_"

    aput-object v1, p1, v0

    const/16 v0, 0xc

    const-string v1, "presetChangeCt_"

    aput-object v1, p1, v0

    const/16 v0, 0xd

    const-string v1, "tightenSpoolDeg_"

    aput-object v1, p1, v0

    const/16 v0, 0xe

    const-string v1, "loosenSpoolDeg_"

    aput-object v1, p1, v0

    const/16 v0, 0xf

    const-string v1, "overCurrentEventCt_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0010\u0000\u0000\u0001\u0010\u0010\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\u000b\u0005\u000b\u0006\u000b\u0007\u000b\u0008\u000b\t\u000b\n\u000b\u000b\u000b\u000c\u000b\r\u000b\u000e\u000b\u000f\u000b\u0010\u000b"

    .line 12
    sget-object v1, Lgc/z;->DEFAULT_INSTANCE:Lgc/z;

    .line 13
    new-instance v2, Lm7/b1;

    invoke-direct {v2, v1, v0, p1}, Lm7/b1;-><init>(Lm7/p0;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    .line 14
    :pswitch_6
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Lgc/z;->autolaceTightenCt_:I

    return v0
.end method

.method public final z()I
    .locals 1

    iget v0, p0, Lgc/z;->buttonManualLoosenCt_:I

    return v0
.end method
