.class public final Lgc/j0;
.super Lm7/w;
.source "messages.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgc/j0$a;,
        Lgc/j0$b;,
        Lgc/j0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lgc/j0;",
        "Lgc/j0$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field public static final ANIMATION_ID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgc/j0;

.field public static final END_STATUS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lm7/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lgc/j0;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_FIELD_NUMBER:I = 0x3

.field public static final TIME_REMAINING_SEC_FIELD_NUMBER:I = 0x2


# instance fields
.field private animationId_:I

.field private endStatus_:I

.field private state_:I

.field private timeRemainingSec_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc/j0;

    invoke-direct {v0}, Lgc/j0;-><init>()V

    .line 2
    sput-object v0, Lgc/j0;->DEFAULT_INSTANCE:Lgc/j0;

    .line 3
    const-class v1, Lgc/j0;

    invoke-static {v1, v0}, Lm7/w;->w(Ljava/lang/Class;Lm7/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm7/w;-><init>()V

    return-void
.end method

.method public static C([B)Lgc/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm7/z;
        }
    .end annotation

    sget-object v0, Lgc/j0;->DEFAULT_INSTANCE:Lgc/j0;

    invoke-static {v0, p0}, Lm7/w;->v(Lm7/w;[B)Lm7/w;

    move-result-object p0

    check-cast p0, Lgc/j0;

    return-object p0
.end method

.method public static bridge synthetic x()Lgc/j0;
    .locals 1

    sget-object v0, Lgc/j0;->DEFAULT_INSTANCE:Lgc/j0;

    return-object v0
.end method


# virtual methods
.method public final A()Lgc/j0$c;
    .locals 1

    .line 1
    iget v0, p0, Lgc/j0;->state_:I

    invoke-static {v0}, Lgc/j0$c;->b(I)Lgc/j0$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lgc/j0$c;->m:Lgc/j0$c;

    :cond_0
    return-object v0
.end method

.method public final B()I
    .locals 1

    iget v0, p0, Lgc/j0;->timeRemainingSec_:I

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
    sget-object p1, Lgc/j0;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lgc/j0;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lgc/j0;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lgc/j0;->DEFAULT_INSTANCE:Lgc/j0;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lgc/j0;->PARSER:Lm7/x0;

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
    sget-object p1, Lgc/j0;->DEFAULT_INSTANCE:Lgc/j0;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lgc/j0$a;

    invoke-direct {p1}, Lgc/j0$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lgc/j0;

    invoke-direct {p1}, Lgc/j0;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "animationId_"

    aput-object v2, p1, v1

    const-string v1, "timeRemainingSec_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "state_"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "endStatus_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000c\u0004\u000c"

    .line 12
    sget-object v1, Lgc/j0;->DEFAULT_INSTANCE:Lgc/j0;

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

    iget v0, p0, Lgc/j0;->animationId_:I

    return v0
.end method

.method public final z()Lgc/j0$b;
    .locals 1

    .line 1
    iget v0, p0, Lgc/j0;->endStatus_:I

    invoke-static {v0}, Lgc/j0$b;->b(I)Lgc/j0$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lgc/j0$b;->n:Lgc/j0$b;

    :cond_0
    return-object v0
.end method
