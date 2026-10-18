.class public final enum Lo7/b;
.super Ljava/lang/Enum;
.source "AdaptExecutor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo7/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum i:Lo7/b;

.field public static final enum j:Lo7/b;

.field public static final synthetic k:[Lo7/b;


# instance fields
.field public final h:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lo7/b;

    .line 2
    sget-object v1, Lo7/e;->c:Ljava/util/concurrent/ExecutorService;

    const-string v2, "IO"

    const/4 v3, 0x0

    .line 3
    invoke-direct {v0, v2, v3, v1}, Lo7/b;-><init>(Ljava/lang/String;ILjava/util/concurrent/ExecutorService;)V

    sput-object v0, Lo7/b;->i:Lo7/b;

    .line 4
    new-instance v1, Lo7/b;

    .line 5
    sget-object v2, Lo7/e;->d:Ljava/util/concurrent/ExecutorService;

    const-string v4, "NETWORK"

    const/4 v5, 0x1

    .line 6
    invoke-direct {v1, v4, v5, v2}, Lo7/b;-><init>(Ljava/lang/String;ILjava/util/concurrent/ExecutorService;)V

    sput-object v1, Lo7/b;->j:Lo7/b;

    const/4 v2, 0x2

    new-array v2, v2, [Lo7/b;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lo7/b;->k:[Lo7/b;

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

    iput-object p3, p0, Lo7/b;->h:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo7/b;
    .locals 1

    const-class v0, Lo7/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo7/b;

    return-object p0
.end method

.method public static values()[Lo7/b;
    .locals 1

    sget-object v0, Lo7/b;->k:[Lo7/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo7/b;

    return-object v0
.end method
