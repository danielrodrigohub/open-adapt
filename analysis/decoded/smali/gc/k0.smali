.class public final Lgc/k0;
.super Lm7/w;
.source "messages.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgc/k0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lgc/k0;",
        "Lgc/k0$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field public static final ANIMATION_ID_FIELD_NUMBER:I = 0x1

.field public static final BLUE_OUTPUT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lgc/k0;

.field public static final ENTER_TIME_MS_FIELD_NUMBER:I = 0x6

.field public static final EXIT_TIME_MS_FIELD_NUMBER:I = 0x8

.field public static final GREEN_OUTPUT_FIELD_NUMBER:I = 0x3

.field public static final OFF_TIME_MS_FIELD_NUMBER:I = 0x9

.field public static final ON_TIME_MS_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lm7/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lgc/k0;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREQUEL_MS_FIELD_NUMBER:I = 0x5

.field public static final RED_OUTPUT_FIELD_NUMBER:I = 0x2

.field public static final SEQUEL_MS_FIELD_NUMBER:I = 0xa


# instance fields
.field private animationId_:I

.field private blueOutput_:I

.field private enterTimeMs_:I

.field private exitTimeMs_:I

.field private greenOutput_:I

.field private offTimeMs_:I

.field private onTimeMs_:I

.field private prequelMs_:I

.field private redOutput_:I

.field private sequelMs_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc/k0;

    invoke-direct {v0}, Lgc/k0;-><init>()V

    .line 2
    sput-object v0, Lgc/k0;->DEFAULT_INSTANCE:Lgc/k0;

    .line 3
    const-class v1, Lgc/k0;

    invoke-static {v1, v0}, Lm7/w;->w(Ljava/lang/Class;Lm7/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm7/w;-><init>()V

    return-void
.end method

.method public static A(Lgc/k0;I)V
    .locals 0

    iput p1, p0, Lgc/k0;->exitTimeMs_:I

    return-void
.end method

.method public static B(Lgc/k0;I)V
    .locals 0

    iput p1, p0, Lgc/k0;->greenOutput_:I

    return-void
.end method

.method public static C(Lgc/k0;I)V
    .locals 0

    iput p1, p0, Lgc/k0;->offTimeMs_:I

    return-void
.end method

.method public static D(Lgc/k0;I)V
    .locals 0

    iput p1, p0, Lgc/k0;->onTimeMs_:I

    return-void
.end method

.method public static E(Lgc/k0;I)V
    .locals 0

    iput p1, p0, Lgc/k0;->prequelMs_:I

    return-void
.end method

.method public static F(Lgc/k0;I)V
    .locals 0

    iput p1, p0, Lgc/k0;->redOutput_:I

    return-void
.end method

.method public static G(Lgc/k0;I)V
    .locals 0

    iput p1, p0, Lgc/k0;->sequelMs_:I

    return-void
.end method

.method public static bridge synthetic H()Lgc/k0;
    .locals 1

    sget-object v0, Lgc/k0;->DEFAULT_INSTANCE:Lgc/k0;

    return-object v0
.end method

.method public static I()Lgc/k0$a;
    .locals 1

    sget-object v0, Lgc/k0;->DEFAULT_INSTANCE:Lgc/k0;

    invoke-virtual {v0}, Lm7/w;->n()Lm7/w$a;

    move-result-object v0

    check-cast v0, Lgc/k0$a;

    return-object v0
.end method

.method public static x(Lgc/k0;I)V
    .locals 0

    iput p1, p0, Lgc/k0;->animationId_:I

    return-void
.end method

.method public static y(Lgc/k0;I)V
    .locals 0

    iput p1, p0, Lgc/k0;->blueOutput_:I

    return-void
.end method

.method public static z(Lgc/k0;I)V
    .locals 0

    iput p1, p0, Lgc/k0;->enterTimeMs_:I

    return-void
.end method


# virtual methods
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
    sget-object p1, Lgc/k0;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lgc/k0;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lgc/k0;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lgc/k0;->DEFAULT_INSTANCE:Lgc/k0;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lgc/k0;->PARSER:Lm7/x0;

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
    sget-object p1, Lgc/k0;->DEFAULT_INSTANCE:Lgc/k0;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lgc/k0$a;

    invoke-direct {p1}, Lgc/k0$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lgc/k0;

    invoke-direct {p1}, Lgc/k0;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "animationId_"

    aput-object v2, p1, v1

    const-string v1, "redOutput_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "greenOutput_"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "blueOutput_"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "prequelMs_"

    aput-object v1, p1, v0

    const/4 v0, 0x5

    const-string v1, "enterTimeMs_"

    aput-object v1, p1, v0

    const/4 v0, 0x6

    const-string v1, "onTimeMs_"

    aput-object v1, p1, v0

    const/4 v0, 0x7

    const-string v1, "exitTimeMs_"

    aput-object v1, p1, v0

    const/16 v0, 0x8

    const-string v1, "offTimeMs_"

    aput-object v1, p1, v0

    const/16 v0, 0x9

    const-string v1, "sequelMs_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\u000b\u0005\u000b\u0006\u000b\u0007\u000b\u0008\u000b\t\u000b\n\u000b"

    .line 12
    sget-object v1, Lgc/k0;->DEFAULT_INSTANCE:Lgc/k0;

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
