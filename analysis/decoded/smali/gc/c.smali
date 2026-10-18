.class public final Lgc/c;
.super Lm7/w;
.source "firmware.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgc/c$a;,
        Lgc/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lgc/c;",
        "Lgc/c$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field public static final BYTEOFFSET_FIELD_NUMBER:I = 0x3

.field public static final CRC_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lgc/c;

.field private static volatile PARSER:Lm7/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lgc/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final VERSIONSTRING_FIELD_NUMBER:I = 0x2


# instance fields
.field private byteOffset_:I

.field private crc_:I

.field private size_:I

.field private type_:I

.field private versionString_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc/c;

    invoke-direct {v0}, Lgc/c;-><init>()V

    .line 2
    sput-object v0, Lgc/c;->DEFAULT_INSTANCE:Lgc/c;

    .line 3
    const-class v1, Lgc/c;

    invoke-static {v1, v0}, Lm7/w;->w(Ljava/lang/Class;Lm7/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm7/w;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lgc/c;->versionString_:Ljava/lang/String;

    return-void
.end method

.method public static A(Lgc/c;)V
    .locals 1

    sget-object v0, Lgc/c$b;->n:Lgc/c$b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lgc/c$b;->a()I

    move-result v0

    iput v0, p0, Lgc/c;->type_:I

    return-void
.end method

.method public static B(Lgc/c;)V
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "1.0.0"

    iput-object v0, p0, Lgc/c;->versionString_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic C()Lgc/c;
    .locals 1

    sget-object v0, Lgc/c;->DEFAULT_INSTANCE:Lgc/c;

    return-object v0
.end method

.method public static H()Lgc/c$a;
    .locals 1

    sget-object v0, Lgc/c;->DEFAULT_INSTANCE:Lgc/c;

    invoke-virtual {v0}, Lm7/w;->n()Lm7/w$a;

    move-result-object v0

    check-cast v0, Lgc/c$a;

    return-object v0
.end method

.method public static x(Lgc/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lgc/c;->byteOffset_:I

    return-void
.end method

.method public static y(Lgc/c;I)V
    .locals 0

    iput p1, p0, Lgc/c;->crc_:I

    return-void
.end method

.method public static z(Lgc/c;I)V
    .locals 0

    iput p1, p0, Lgc/c;->size_:I

    return-void
.end method


# virtual methods
.method public final D()I
    .locals 1

    iget v0, p0, Lgc/c;->byteOffset_:I

    return v0
.end method

.method public final E()I
    .locals 1

    iget v0, p0, Lgc/c;->size_:I

    return v0
.end method

.method public final F()Lgc/c$b;
    .locals 1

    .line 1
    iget v0, p0, Lgc/c;->type_:I

    invoke-static {v0}, Lgc/c$b;->b(I)Lgc/c$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lgc/c$b;->t:Lgc/c$b;

    :cond_0
    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgc/c;->versionString_:Ljava/lang/String;

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
    sget-object p1, Lgc/c;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lgc/c;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lgc/c;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lgc/c;->DEFAULT_INSTANCE:Lgc/c;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lgc/c;->PARSER:Lm7/x0;

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
    sget-object p1, Lgc/c;->DEFAULT_INSTANCE:Lgc/c;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lgc/c$a;

    invoke-direct {p1}, Lgc/c$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lgc/c;

    invoke-direct {p1}, Lgc/c;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "type_"

    aput-object v2, p1, v1

    const-string v1, "versionString_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "byteOffset_"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "size_"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "crc_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u000c\u0002\u0208\u0003\u0006\u0004\u000b\u0005\u000b"

    .line 12
    sget-object v1, Lgc/c;->DEFAULT_INSTANCE:Lgc/c;

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
