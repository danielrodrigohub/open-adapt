.class public final enum Lnb/b;
.super Ljava/lang/Enum;
.source "TelemetryExecutors.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnb/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum i:Lnb/b;

.field public static final synthetic j:[Lnb/b;


# instance fields
.field public final h:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnb/b;

    sget-object v1, Lz9/c;->c:Lz9/c;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "newSingleThreadExecutor \u2026     ) { it.run() }\n    }"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnb/b;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Lnb/b;->i:Lnb/b;

    const/4 v1, 0x1

    new-array v1, v1, [Lnb/b;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lnb/b;->j:[Lnb/b;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    const-string v0, "INSERT"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lnb/b;->h:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnb/b;
    .locals 1

    const-class v0, Lnb/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnb/b;

    return-object p0
.end method

.method public static values()[Lnb/b;
    .locals 1

    sget-object v0, Lnb/b;->j:[Lnb/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnb/b;

    return-object v0
.end method
