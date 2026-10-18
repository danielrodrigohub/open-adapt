.class public final Lgc/m;
.super Lm7/w;
.source "messages.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgc/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lgc/m;",
        "Lgc/m$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field public static final BATTERY_IDLE_PERCENT_FIELD_NUMBER:I = 0x8

.field public static final BATTERY_LACING_PERCENT_FIELD_NUMBER:I = 0x7

.field public static final BATTERY_LATCHED_PERCENT_FIELD_NUMBER:I = 0xa

.field public static final BATTERY_SLEEP_PERCENT_FIELD_NUMBER:I = 0x9

.field public static final CHARGE_CT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lgc/m;

.field public static final LIFETIME_SEC_FIELD_NUMBER:I = 0x3

.field public static final ON_CHARGER_CT_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lm7/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lgc/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_CHARGING_SEC_FIELD_NUMBER:I = 0x2

.field public static final TIME_ON_CHARGER_SEC_FIELD_NUMBER:I = 0x1

.field public static final TIME_SLEEPING_SEC_FIELD_NUMBER:I = 0x6


# instance fields
.field private batteryIdlePercent_:I

.field private batteryLacingPercent_:I

.field private batteryLatchedPercent_:I

.field private batterySleepPercent_:I

.field private chargeCt_:I

.field private lifetimeSec_:I

.field private onChargerCt_:I

.field private timeChargingSec_:I

.field private timeOnChargerSec_:I

.field private timeSleepingSec_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc/m;

    invoke-direct {v0}, Lgc/m;-><init>()V

    .line 2
    sput-object v0, Lgc/m;->DEFAULT_INSTANCE:Lgc/m;

    .line 3
    const-class v1, Lgc/m;

    invoke-static {v1, v0}, Lm7/w;->w(Ljava/lang/Class;Lm7/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm7/w;-><init>()V

    return-void
.end method

.method public static C()Lgc/m;
    .locals 1

    sget-object v0, Lgc/m;->DEFAULT_INSTANCE:Lgc/m;

    return-object v0
.end method

.method public static bridge synthetic x()Lgc/m;
    .locals 1

    sget-object v0, Lgc/m;->DEFAULT_INSTANCE:Lgc/m;

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget v0, p0, Lgc/m;->batterySleepPercent_:I

    return v0
.end method

.method public final B()I
    .locals 1

    iget v0, p0, Lgc/m;->chargeCt_:I

    return v0
.end method

.method public final D()I
    .locals 1

    iget v0, p0, Lgc/m;->lifetimeSec_:I

    return v0
.end method

.method public final E()I
    .locals 1

    iget v0, p0, Lgc/m;->onChargerCt_:I

    return v0
.end method

.method public final F()I
    .locals 1

    iget v0, p0, Lgc/m;->timeChargingSec_:I

    return v0
.end method

.method public final G()I
    .locals 1

    iget v0, p0, Lgc/m;->timeOnChargerSec_:I

    return v0
.end method

.method public final H()I
    .locals 1

    iget v0, p0, Lgc/m;->timeSleepingSec_:I

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
    sget-object p1, Lgc/m;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lgc/m;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lgc/m;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lgc/m;->DEFAULT_INSTANCE:Lgc/m;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lgc/m;->PARSER:Lm7/x0;

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
    sget-object p1, Lgc/m;->DEFAULT_INSTANCE:Lgc/m;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lgc/m$a;

    invoke-direct {p1}, Lgc/m$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lgc/m;

    invoke-direct {p1}, Lgc/m;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "timeOnChargerSec_"

    aput-object v2, p1, v1

    const-string v1, "timeChargingSec_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "lifetimeSec_"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "chargeCt_"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "onChargerCt_"

    aput-object v1, p1, v0

    const/4 v0, 0x5

    const-string v1, "timeSleepingSec_"

    aput-object v1, p1, v0

    const/4 v0, 0x6

    const-string v1, "batteryLacingPercent_"

    aput-object v1, p1, v0

    const/4 v0, 0x7

    const-string v1, "batteryIdlePercent_"

    aput-object v1, p1, v0

    const/16 v0, 0x8

    const-string v1, "batterySleepPercent_"

    aput-object v1, p1, v0

    const/16 v0, 0x9

    const-string v1, "batteryLatchedPercent_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\u000b\u0005\u000b\u0006\u000b\u0007\u000b\u0008\u000b\t\u000b\n\u000b"

    .line 12
    sget-object v1, Lgc/m;->DEFAULT_INSTANCE:Lgc/m;

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

    iget v0, p0, Lgc/m;->batteryIdlePercent_:I

    return v0
.end method

.method public final z()I
    .locals 1

    iget v0, p0, Lgc/m;->batteryLacingPercent_:I

    return v0
.end method
