.class public final La7/n;
.super Lb7/x;
.source "Keyset.java"

# interfaces
.implements Lb7/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La7/n$a;,
        La7/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb7/x<",
        "La7/n;",
        "La7/n$a;",
        ">;",
        "Lb7/r0;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:La7/n;

.field public static final KEY_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lb7/y0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb7/y0<",
            "La7/n;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIMARY_KEY_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private key_:Lb7/z$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb7/z$c<",
            "La7/n$b;",
            ">;"
        }
    .end annotation
.end field

.field private primaryKeyId_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La7/n;

    invoke-direct {v0}, La7/n;-><init>()V

    .line 2
    sput-object v0, La7/n;->DEFAULT_INSTANCE:La7/n;

    .line 3
    const-class v1, La7/n;

    invoke-static {v1, v0}, Lb7/x;->w(Ljava/lang/Class;Lb7/x;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb7/x;-><init>()V

    .line 2
    sget-object v0, Lb7/b1;->k:Lb7/b1;

    .line 3
    iput-object v0, p0, La7/n;->key_:Lb7/z$c;

    return-void
.end method

.method public static E()La7/n$a;
    .locals 1

    sget-object v0, La7/n;->DEFAULT_INSTANCE:La7/n;

    invoke-virtual {v0}, Lb7/x;->n()Lb7/x$a;

    move-result-object v0

    check-cast v0, La7/n$a;

    return-object v0
.end method

.method public static F([BLb7/p;)La7/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb7/a0;
        }
    .end annotation

    sget-object v0, La7/n;->DEFAULT_INSTANCE:La7/n;

    invoke-static {v0, p0, p1}, Lb7/x;->u(Lb7/x;[BLb7/p;)Lb7/x;

    move-result-object p0

    check-cast p0, La7/n;

    return-object p0
.end method

.method public static synthetic x()La7/n;
    .locals 1

    sget-object v0, La7/n;->DEFAULT_INSTANCE:La7/n;

    return-object v0
.end method

.method public static y(La7/n;I)V
    .locals 0

    iput p1, p0, La7/n;->primaryKeyId_:I

    return-void
.end method

.method public static z(La7/n;La7/n$b;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, La7/n;->key_:Lb7/z$c;

    invoke-interface {v0}, Lb7/z$c;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, La7/n;->key_:Lb7/z$c;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 5
    :goto_0
    invoke-interface {v0, v1}, Lb7/z$c;->b(I)Lb7/z$c;

    move-result-object v0

    .line 6
    iput-object v0, p0, La7/n;->key_:Lb7/z$c;

    .line 7
    :cond_1
    iget-object p0, p0, La7/n;->key_:Lb7/z$c;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final A(I)La7/n$b;
    .locals 1

    iget-object v0, p0, La7/n;->key_:Lb7/z$c;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La7/n$b;

    return-object p1
.end method

.method public final B()I
    .locals 1

    iget-object v0, p0, La7/n;->key_:Lb7/z$c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "La7/n$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La7/n;->key_:Lb7/z$c;

    return-object v0
.end method

.method public final D()I
    .locals 1

    iget v0, p0, La7/n;->primaryKeyId_:I

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
    sget-object p1, La7/n;->PARSER:Lb7/y0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, La7/n;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, La7/n;->PARSER:Lb7/y0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lb7/x$b;

    sget-object v1, La7/n;->DEFAULT_INSTANCE:La7/n;

    invoke-direct {p1, v1}, Lb7/x$b;-><init>(Lb7/x;)V

    .line 7
    sput-object p1, La7/n;->PARSER:Lb7/y0;

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
    sget-object p1, La7/n;->DEFAULT_INSTANCE:La7/n;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, La7/n$a;

    .line 11
    invoke-direct {p1}, La7/n$a;-><init>()V

    return-object p1

    .line 12
    :pswitch_3
    new-instance p1, La7/n;

    invoke-direct {p1}, La7/n;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "primaryKeyId_"

    aput-object v2, p1, v1

    const-string v1, "key_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    .line 13
    const-class v1, La7/n$b;

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 14
    sget-object v1, La7/n;->DEFAULT_INSTANCE:La7/n;

    .line 15
    new-instance v2, Lb7/c1;

    invoke-direct {v2, v1, v0, p1}, Lb7/c1;-><init>(Lb7/q0;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    .line 16
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
