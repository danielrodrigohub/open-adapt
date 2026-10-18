.class public final Lgc/i;
.super Lm7/w;
.source "messages.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgc/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lgc/i;",
        "Lgc/i$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field public static final BLUE_OUTPUT_FIELD_NUMBER:I = 0x4

.field public static final COLOR_ID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgc/i;

.field public static final GREEN_OUTPUT_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lm7/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lgc/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final RED_OUTPUT_FIELD_NUMBER:I = 0x2


# instance fields
.field private blueOutput_:I

.field private colorId_:I

.field private greenOutput_:I

.field private redOutput_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc/i;

    invoke-direct {v0}, Lgc/i;-><init>()V

    .line 2
    sput-object v0, Lgc/i;->DEFAULT_INSTANCE:Lgc/i;

    .line 3
    const-class v1, Lgc/i;

    invoke-static {v1, v0}, Lm7/w;->w(Ljava/lang/Class;Lm7/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm7/w;-><init>()V

    return-void
.end method

.method public static A(Lgc/i;I)V
    .locals 0

    iput p1, p0, Lgc/i;->redOutput_:I

    return-void
.end method

.method public static bridge synthetic B()Lgc/i;
    .locals 1

    sget-object v0, Lgc/i;->DEFAULT_INSTANCE:Lgc/i;

    return-object v0
.end method

.method public static F()Lgc/i$a;
    .locals 1

    sget-object v0, Lgc/i;->DEFAULT_INSTANCE:Lgc/i;

    invoke-virtual {v0}, Lm7/w;->n()Lm7/w$a;

    move-result-object v0

    check-cast v0, Lgc/i$a;

    return-object v0
.end method

.method public static G([B)Lgc/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm7/z;
        }
    .end annotation

    sget-object v0, Lgc/i;->DEFAULT_INSTANCE:Lgc/i;

    invoke-static {v0, p0}, Lm7/w;->v(Lm7/w;[B)Lm7/w;

    move-result-object p0

    check-cast p0, Lgc/i;

    return-object p0
.end method

.method public static x(Lgc/i;I)V
    .locals 0

    iput p1, p0, Lgc/i;->blueOutput_:I

    return-void
.end method

.method public static y(Lgc/i;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lgc/i;->colorId_:I

    return-void
.end method

.method public static z(Lgc/i;I)V
    .locals 0

    iput p1, p0, Lgc/i;->greenOutput_:I

    return-void
.end method


# virtual methods
.method public final C()I
    .locals 1

    iget v0, p0, Lgc/i;->blueOutput_:I

    return v0
.end method

.method public final D()I
    .locals 1

    iget v0, p0, Lgc/i;->greenOutput_:I

    return v0
.end method

.method public final E()I
    .locals 1

    iget v0, p0, Lgc/i;->redOutput_:I

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
    sget-object p1, Lgc/i;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lgc/i;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lgc/i;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lgc/i;->DEFAULT_INSTANCE:Lgc/i;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lgc/i;->PARSER:Lm7/x0;

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
    sget-object p1, Lgc/i;->DEFAULT_INSTANCE:Lgc/i;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lgc/i$a;

    invoke-direct {p1}, Lgc/i$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lgc/i;

    invoke-direct {p1}, Lgc/i;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "colorId_"

    aput-object v2, p1, v1

    const-string v1, "redOutput_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "greenOutput_"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "blueOutput_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\u000b"

    .line 12
    sget-object v1, Lgc/i;->DEFAULT_INSTANCE:Lgc/i;

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
