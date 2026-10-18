.class public final enum Lz9/a;
.super Ljava/lang/Enum;
.source "AdaptKitExecutor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz9/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum i:Lz9/a;

.field public static final enum j:Lz9/a;

.field public static final enum k:Lz9/a;

.field public static final synthetic l:[Lz9/a;


# instance fields
.field public final h:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lz9/a;

    .line 2
    sget-object v1, Lz9/h;->d:Ljava/util/concurrent/ExecutorService;

    const-string v2, "ADAPT_DEVICE"

    const/4 v3, 0x0

    .line 3
    invoke-direct {v0, v2, v3, v1}, Lz9/a;-><init>(Ljava/lang/String;ILjava/util/concurrent/ExecutorService;)V

    sput-object v0, Lz9/a;->i:Lz9/a;

    .line 4
    new-instance v1, Lz9/a;

    .line 5
    sget-object v2, Lz9/h;->e:Ljava/util/concurrent/ExecutorService;

    const-string v4, "IO"

    const/4 v5, 0x1

    .line 6
    invoke-direct {v1, v4, v5, v2}, Lz9/a;-><init>(Ljava/lang/String;ILjava/util/concurrent/ExecutorService;)V

    sput-object v1, Lz9/a;->j:Lz9/a;

    .line 7
    new-instance v2, Lz9/a;

    .line 8
    sget-object v4, Lz9/h;->f:Ljava/util/concurrent/ExecutorService;

    const-string v6, "NETWORK"

    const/4 v7, 0x2

    .line 9
    invoke-direct {v2, v6, v7, v4}, Lz9/a;-><init>(Ljava/lang/String;ILjava/util/concurrent/ExecutorService;)V

    sput-object v2, Lz9/a;->k:Lz9/a;

    const/4 v4, 0x3

    new-array v4, v4, [Lz9/a;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lz9/a;->l:[Lz9/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lz9/a;->h:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz9/a;
    .locals 1

    const-class v0, Lz9/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz9/a;

    return-object p0
.end method

.method public static values()[Lz9/a;
    .locals 1

    sget-object v0, Lz9/a;->l:[Lz9/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz9/a;

    return-object v0
.end method


# virtual methods
.method public final b(Lqd/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lz9/a;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lv9/r0;

    invoke-direct {v1, p1}, Lv9/r0;-><init>(Lqd/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
