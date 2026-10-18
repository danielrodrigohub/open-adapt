.class public final Lgc/a;
.super Lm7/w;
.source "firmware.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgc/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lgc/a;",
        "Lgc/a$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgc/a;

.field public static final IMAGES_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lm7/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lgc/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private images_:Lm7/y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/y$d<",
            "Lgc/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc/a;

    invoke-direct {v0}, Lgc/a;-><init>()V

    .line 2
    sput-object v0, Lgc/a;->DEFAULT_INSTANCE:Lgc/a;

    .line 3
    const-class v1, Lgc/a;

    invoke-static {v1, v0}, Lm7/w;->w(Ljava/lang/Class;Lm7/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm7/w;-><init>()V

    .line 2
    sget-object v0, Lm7/a1;->k:Lm7/a1;

    .line 3
    iput-object v0, p0, Lgc/a;->images_:Lm7/y$d;

    return-void
.end method

.method public static D()Lgc/a$a;
    .locals 1

    sget-object v0, Lgc/a;->DEFAULT_INSTANCE:Lgc/a;

    invoke-virtual {v0}, Lm7/w;->n()Lm7/w$a;

    move-result-object v0

    check-cast v0, Lgc/a$a;

    return-object v0
.end method

.method public static E([B)Lgc/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm7/z;
        }
    .end annotation

    sget-object v0, Lgc/a;->DEFAULT_INSTANCE:Lgc/a;

    invoke-static {v0, p0}, Lm7/w;->v(Lm7/w;[B)Lm7/w;

    move-result-object p0

    check-cast p0, Lgc/a;

    return-object p0
.end method

.method public static x(Lgc/a;Lgc/c;)V
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v0, p0, Lgc/a;->images_:Lm7/y$d;

    .line 2
    invoke-interface {v0}, Lm7/y$d;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lm7/w;->t(Lm7/y$d;)Lm7/y$d;

    move-result-object v0

    iput-object v0, p0, Lgc/a;->images_:Lm7/y$d;

    .line 4
    :cond_0
    iget-object p0, p0, Lgc/a;->images_:Lm7/y$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic y()Lgc/a;
    .locals 1

    sget-object v0, Lgc/a;->DEFAULT_INSTANCE:Lgc/a;

    return-object v0
.end method

.method public static z()Lgc/a;
    .locals 1

    sget-object v0, Lgc/a;->DEFAULT_INSTANCE:Lgc/a;

    return-object v0
.end method


# virtual methods
.method public final A(I)Lgc/c;
    .locals 1

    iget-object v0, p0, Lgc/a;->images_:Lm7/y$d;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgc/c;

    return-object p1
.end method

.method public final B()I
    .locals 1

    iget-object v0, p0, Lgc/a;->images_:Lm7/y$d;

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
            "Lgc/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgc/a;->images_:Lm7/y$d;

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
    sget-object p1, Lgc/a;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lgc/a;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lgc/a;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lgc/a;->DEFAULT_INSTANCE:Lgc/a;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lgc/a;->PARSER:Lm7/x0;

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
    sget-object p1, Lgc/a;->DEFAULT_INSTANCE:Lgc/a;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lgc/a$a;

    invoke-direct {p1}, Lgc/a$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lgc/a;

    invoke-direct {p1}, Lgc/a;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "images_"

    aput-object v2, p1, v1

    .line 12
    const-class v1, Lgc/c;

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 13
    sget-object v1, Lgc/a;->DEFAULT_INSTANCE:Lgc/a;

    .line 14
    new-instance v2, Lm7/b1;

    invoke-direct {v2, v1, v0, p1}, Lm7/b1;-><init>(Lm7/p0;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    .line 15
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
