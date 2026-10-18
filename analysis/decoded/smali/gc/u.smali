.class public final Lgc/u;
.super Lm7/w;
.source "messages.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgc/u$a;,
        Lgc/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lgc/u;",
        "Lgc/u$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgc/u;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lm7/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lgc/u;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERIALNUMBER_FIELD_NUMBER:I = 0x2


# instance fields
.field private id_:I

.field private serialNumber_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc/u;

    invoke-direct {v0}, Lgc/u;-><init>()V

    .line 2
    sput-object v0, Lgc/u;->DEFAULT_INSTANCE:Lgc/u;

    .line 3
    const-class v1, Lgc/u;

    invoke-static {v1, v0}, Lm7/w;->w(Ljava/lang/Class;Lm7/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm7/w;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lgc/u;->serialNumber_:Ljava/lang/String;

    return-void
.end method

.method public static A()Lgc/u$a;
    .locals 1

    sget-object v0, Lgc/u;->DEFAULT_INSTANCE:Lgc/u;

    invoke-virtual {v0}, Lm7/w;->n()Lm7/w$a;

    move-result-object v0

    check-cast v0, Lgc/u$a;

    return-object v0
.end method

.method public static B([B)Lgc/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm7/z;
        }
    .end annotation

    sget-object v0, Lgc/u;->DEFAULT_INSTANCE:Lgc/u;

    invoke-static {v0, p0}, Lm7/w;->v(Lm7/w;[B)Lm7/w;

    move-result-object p0

    check-cast p0, Lgc/u;

    return-object p0
.end method

.method public static x(Lgc/u;Lgc/u$b;)V
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lgc/u$b;->a()I

    move-result p1

    iput p1, p0, Lgc/u;->id_:I

    return-void
.end method

.method public static bridge synthetic y()Lgc/u;
    .locals 1

    sget-object v0, Lgc/u;->DEFAULT_INSTANCE:Lgc/u;

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
    sget-object p1, Lgc/u;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lgc/u;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lgc/u;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lgc/u;->DEFAULT_INSTANCE:Lgc/u;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lgc/u;->PARSER:Lm7/x0;

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
    sget-object p1, Lgc/u;->DEFAULT_INSTANCE:Lgc/u;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lgc/u$a;

    invoke-direct {p1}, Lgc/u$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lgc/u;

    invoke-direct {p1}, Lgc/u;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "id_"

    aput-object v2, p1, v1

    const-string v1, "serialNumber_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002\u0208"

    .line 12
    sget-object v1, Lgc/u;->DEFAULT_INSTANCE:Lgc/u;

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

.method public final z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgc/u;->serialNumber_:Ljava/lang/String;

    return-object v0
.end method
