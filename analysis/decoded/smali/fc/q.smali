.class public final Lfc/q;
.super Lm7/w;
.source "sessions.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfc/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lfc/q;",
        "Lfc/q$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lfc/q;

.field private static volatile PARSER:Lm7/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lfc/q;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMPOFFSETMS_FIELD_NUMBER:I = 0x1


# instance fields
.field private data_:Lm7/y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/y$d<",
            "Lfc/i;",
            ">;"
        }
    .end annotation
.end field

.field private timestampOffsetMs_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfc/q;

    invoke-direct {v0}, Lfc/q;-><init>()V

    .line 2
    sput-object v0, Lfc/q;->DEFAULT_INSTANCE:Lfc/q;

    .line 3
    const-class v1, Lfc/q;

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
    iput-object v0, p0, Lfc/q;->data_:Lm7/y$d;

    return-void
.end method

.method public static A()Lfc/q$a;
    .locals 1

    sget-object v0, Lfc/q;->DEFAULT_INSTANCE:Lfc/q;

    invoke-virtual {v0}, Lm7/w;->n()Lm7/w$a;

    move-result-object v0

    check-cast v0, Lfc/q$a;

    return-object v0
.end method

.method public static x(Lfc/q;Lfc/i;)V
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v0, p0, Lfc/q;->data_:Lm7/y$d;

    .line 2
    invoke-interface {v0}, Lm7/y$d;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lm7/w;->t(Lm7/y$d;)Lm7/y$d;

    move-result-object v0

    iput-object v0, p0, Lfc/q;->data_:Lm7/y$d;

    .line 4
    :cond_0
    iget-object p0, p0, Lfc/q;->data_:Lm7/y$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static y(Lfc/q;I)V
    .locals 0

    iput p1, p0, Lfc/q;->timestampOffsetMs_:I

    return-void
.end method

.method public static bridge synthetic z()Lfc/q;
    .locals 1

    sget-object v0, Lfc/q;->DEFAULT_INSTANCE:Lfc/q;

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
    sget-object p1, Lfc/q;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lfc/q;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lfc/q;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lfc/q;->DEFAULT_INSTANCE:Lfc/q;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lfc/q;->PARSER:Lm7/x0;

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
    sget-object p1, Lfc/q;->DEFAULT_INSTANCE:Lfc/q;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lfc/q$a;

    invoke-direct {p1}, Lfc/q$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lfc/q;

    invoke-direct {p1}, Lfc/q;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "timestampOffsetMs_"

    aput-object v2, p1, v1

    const-string v1, "data_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    .line 12
    const-class v1, Lfc/i;

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 13
    sget-object v1, Lfc/q;->DEFAULT_INSTANCE:Lfc/q;

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
