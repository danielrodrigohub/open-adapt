.class public final La7/a;
.super Lb7/x;
.source "AesCtrHmacStreamingKey.java"

# interfaces
.implements Lb7/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La7/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb7/x<",
        "La7/a;",
        "La7/a$a;",
        ">;",
        "Lb7/r0;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:La7/a;

.field public static final KEY_VALUE_FIELD_NUMBER:I = 0x3

.field public static final PARAMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lb7/y0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb7/y0<",
            "La7/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private keyValue_:Lb7/i;

.field private params_:La7/c;

.field private version_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La7/a;

    invoke-direct {v0}, La7/a;-><init>()V

    .line 2
    sput-object v0, La7/a;->DEFAULT_INSTANCE:La7/a;

    .line 3
    const-class v1, La7/a;

    invoke-static {v1, v0}, Lb7/x;->w(Ljava/lang/Class;Lb7/x;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb7/x;-><init>()V

    .line 2
    sget-object v0, Lb7/i;->i:Lb7/i$f;

    iput-object v0, p0, La7/a;->keyValue_:Lb7/i;

    return-void
.end method

.method public static A(La7/a;Lb7/i;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, La7/a;->keyValue_:Lb7/i;

    return-void
.end method

.method public static E()La7/a$a;
    .locals 1

    sget-object v0, La7/a;->DEFAULT_INSTANCE:La7/a;

    invoke-virtual {v0}, Lb7/x;->n()Lb7/x$a;

    move-result-object v0

    check-cast v0, La7/a$a;

    return-object v0
.end method

.method public static F(Lb7/i;Lb7/p;)La7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb7/a0;
        }
    .end annotation

    sget-object v0, La7/a;->DEFAULT_INSTANCE:La7/a;

    invoke-static {v0, p0, p1}, Lb7/x;->t(Lb7/x;Lb7/i;Lb7/p;)Lb7/x;

    move-result-object p0

    check-cast p0, La7/a;

    return-object p0
.end method

.method public static synthetic x()La7/a;
    .locals 1

    sget-object v0, La7/a;->DEFAULT_INSTANCE:La7/a;

    return-object v0
.end method

.method public static y(La7/a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La7/a;->version_:I

    return-void
.end method

.method public static z(La7/a;La7/c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, La7/a;->params_:La7/c;

    return-void
.end method


# virtual methods
.method public final B()Lb7/i;
    .locals 1

    iget-object v0, p0, La7/a;->keyValue_:Lb7/i;

    return-object v0
.end method

.method public final C()La7/c;
    .locals 1

    iget-object v0, p0, La7/a;->params_:La7/c;

    if-nez v0, :cond_0

    invoke-static {}, La7/c;->z()La7/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final D()I
    .locals 1

    iget v0, p0, La7/a;->version_:I

    return v0
.end method

.method public final o(Lb7/x$f;)Ljava/lang/Object;
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
    sget-object p1, La7/a;->PARSER:Lb7/y0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, La7/a;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, La7/a;->PARSER:Lb7/y0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lb7/x$b;

    sget-object v1, La7/a;->DEFAULT_INSTANCE:La7/a;

    invoke-direct {p1, v1}, Lb7/x$b;-><init>(Lb7/x;)V

    .line 7
    sput-object p1, La7/a;->PARSER:Lb7/y0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    .line 9
    :pswitch_1
    sget-object p1, La7/a;->DEFAULT_INSTANCE:La7/a;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, La7/a$a;

    .line 11
    invoke-direct {p1}, La7/a$a;-><init>()V

    return-object p1

    .line 12
    :pswitch_3
    new-instance p1, La7/a;

    invoke-direct {p1}, La7/a;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "version_"

    aput-object v2, p1, v1

    const-string v1, "params_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "keyValue_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    .line 13
    sget-object v1, La7/a;->DEFAULT_INSTANCE:La7/a;

    .line 14
    new-instance v2, Lb7/c1;

    invoke-direct {v2, v1, v0, p1}, Lb7/c1;-><init>(Lb7/q0;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    .line 15
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
