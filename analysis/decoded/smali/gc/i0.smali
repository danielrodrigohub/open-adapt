.class public final Lgc/i0;
.super Lm7/w;
.source "messages.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgc/i0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lgc/i0;",
        "Lgc/i0$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgc/i0;

.field private static volatile PARSER:Lm7/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lgc/i0;",
            ">;"
        }
    .end annotation
.end field

.field public static final TURNFPSON_FIELD_NUMBER:I = 0x1


# instance fields
.field private turnFpsOn_:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc/i0;

    invoke-direct {v0}, Lgc/i0;-><init>()V

    .line 2
    sput-object v0, Lgc/i0;->DEFAULT_INSTANCE:Lgc/i0;

    .line 3
    const-class v1, Lgc/i0;

    invoke-static {v1, v0}, Lm7/w;->w(Ljava/lang/Class;Lm7/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm7/w;-><init>()V

    return-void
.end method

.method public static x(Lgc/i0;Z)V
    .locals 0

    iput-boolean p1, p0, Lgc/i0;->turnFpsOn_:Z

    return-void
.end method

.method public static bridge synthetic y()Lgc/i0;
    .locals 1

    sget-object v0, Lgc/i0;->DEFAULT_INSTANCE:Lgc/i0;

    return-object v0
.end method

.method public static z()Lgc/i0$a;
    .locals 1

    sget-object v0, Lgc/i0;->DEFAULT_INSTANCE:Lgc/i0;

    invoke-virtual {v0}, Lm7/w;->n()Lm7/w$a;

    move-result-object v0

    check-cast v0, Lgc/i0$a;

    return-object v0
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
    sget-object p1, Lgc/i0;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lgc/i0;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lgc/i0;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lgc/i0;->DEFAULT_INSTANCE:Lgc/i0;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lgc/i0;->PARSER:Lm7/x0;

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
    sget-object p1, Lgc/i0;->DEFAULT_INSTANCE:Lgc/i0;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lgc/i0$a;

    invoke-direct {p1}, Lgc/i0$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lgc/i0;

    invoke-direct {p1}, Lgc/i0;-><init>()V

    return-object p1

    :pswitch_4
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "turnFpsOn_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0007"

    .line 12
    sget-object v1, Lgc/i0;->DEFAULT_INSTANCE:Lgc/i0;

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
