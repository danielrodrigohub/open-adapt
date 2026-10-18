.class public final Lgc/h0;
.super Lm7/w;
.source "messages.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgc/h0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lgc/h0;",
        "Lgc/h0$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field public static final BATTERYSTATS_FIELD_NUMBER:I = 0x1

.field public static final BLESTATS_FIELD_NUMBER:I = 0x6

.field public static final CURRENTSTATS_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lgc/h0;

.field public static final GESTURESTATS_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lm7/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lgc/h0;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVOSTATS_FIELD_NUMBER:I = 0x4

.field public static final STATESTATS_FIELD_NUMBER:I = 0x3

.field public static final WAKEUPSTATS_FIELD_NUMBER:I = 0x2


# instance fields
.field private batteryStats_:Lgc/m;

.field private bleStats_:Lgc/n;

.field private currentStats_:Lgc/o;

.field private gestureStats_:Lgc/t;

.field private servoStats_:Lgc/z;

.field private stateStats_:Lgc/f0;

.field private wakeupStats_:Lgc/m0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc/h0;

    invoke-direct {v0}, Lgc/h0;-><init>()V

    .line 2
    sput-object v0, Lgc/h0;->DEFAULT_INSTANCE:Lgc/h0;

    .line 3
    const-class v1, Lgc/h0;

    invoke-static {v1, v0}, Lm7/w;->w(Ljava/lang/Class;Lm7/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm7/w;-><init>()V

    return-void
.end method

.method public static G()Lgc/h0$a;
    .locals 1

    sget-object v0, Lgc/h0;->DEFAULT_INSTANCE:Lgc/h0;

    invoke-virtual {v0}, Lm7/w;->n()Lm7/w$a;

    move-result-object v0

    check-cast v0, Lgc/h0$a;

    return-object v0
.end method

.method public static H([B)Lgc/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm7/z;
        }
    .end annotation

    sget-object v0, Lgc/h0;->DEFAULT_INSTANCE:Lgc/h0;

    invoke-static {v0, p0}, Lm7/w;->v(Lm7/w;[B)Lm7/w;

    move-result-object p0

    check-cast p0, Lgc/h0;

    return-object p0
.end method

.method public static x(Lgc/h0;Lgc/f0;)V
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lgc/h0;->stateStats_:Lgc/f0;

    return-void
.end method

.method public static bridge synthetic y()Lgc/h0;
    .locals 1

    sget-object v0, Lgc/h0;->DEFAULT_INSTANCE:Lgc/h0;

    return-object v0
.end method


# virtual methods
.method public final A()Lgc/n;
    .locals 1

    iget-object v0, p0, Lgc/h0;->bleStats_:Lgc/n;

    if-nez v0, :cond_0

    invoke-static {}, Lgc/n;->y()Lgc/n;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final B()Lgc/o;
    .locals 1

    iget-object v0, p0, Lgc/h0;->currentStats_:Lgc/o;

    if-nez v0, :cond_0

    invoke-static {}, Lgc/o;->y()Lgc/o;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final C()Lgc/t;
    .locals 1

    iget-object v0, p0, Lgc/h0;->gestureStats_:Lgc/t;

    if-nez v0, :cond_0

    invoke-static {}, Lgc/t;->y()Lgc/t;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final D()Lgc/z;
    .locals 1

    iget-object v0, p0, Lgc/h0;->servoStats_:Lgc/z;

    if-nez v0, :cond_0

    invoke-static {}, Lgc/z;->B()Lgc/z;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final E()Lgc/f0;
    .locals 1

    iget-object v0, p0, Lgc/h0;->stateStats_:Lgc/f0;

    if-nez v0, :cond_0

    invoke-static {}, Lgc/f0;->y()Lgc/f0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final F()Lgc/m0;
    .locals 1

    iget-object v0, p0, Lgc/h0;->wakeupStats_:Lgc/m0;

    if-nez v0, :cond_0

    invoke-static {}, Lgc/m0;->C()Lgc/m0;

    move-result-object v0

    :cond_0
    return-object v0
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
    sget-object p1, Lgc/h0;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lgc/h0;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lgc/h0;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lgc/h0;->DEFAULT_INSTANCE:Lgc/h0;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lgc/h0;->PARSER:Lm7/x0;

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
    sget-object p1, Lgc/h0;->DEFAULT_INSTANCE:Lgc/h0;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lgc/h0$a;

    invoke-direct {p1}, Lgc/h0$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lgc/h0;

    invoke-direct {p1}, Lgc/h0;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "batteryStats_"

    aput-object v2, p1, v1

    const-string v1, "wakeupStats_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "stateStats_"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "servoStats_"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "currentStats_"

    aput-object v1, p1, v0

    const/4 v0, 0x5

    const-string v1, "bleStats_"

    aput-object v1, p1, v0

    const/4 v0, 0x6

    const-string v1, "gestureStats_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\t\u0002\t\u0003\t\u0004\t\u0005\t\u0006\t\u0007\t"

    .line 12
    sget-object v1, Lgc/h0;->DEFAULT_INSTANCE:Lgc/h0;

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

.method public final z()Lgc/m;
    .locals 1

    iget-object v0, p0, Lgc/h0;->batteryStats_:Lgc/m;

    if-nez v0, :cond_0

    invoke-static {}, Lgc/m;->C()Lgc/m;

    move-result-object v0

    :cond_0
    return-object v0
.end method
