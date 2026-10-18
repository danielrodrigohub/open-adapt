.class public final Lz9/h;
.super Ljava/lang/Object;
.source "AdaptKitExecutor.kt"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final d:Ljava/util/concurrent/ExecutorService;

.field public static final e:Ljava/util/concurrent/ExecutorService;

.field public static final f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lz9/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lz9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lz9/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    sget-object v0, Lo7/w;->c:Lo7/w;

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newFixedThreadPool(MAX_A\u2026   }\n            })\n    }"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lz9/h;->d:Ljava/util/concurrent/ExecutorService;

    .line 5
    sget-object v0, Lz9/b;->a:Lz9/b;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newCachedThreadPool {\n  \u2026ement()}\"\n        )\n    }"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lz9/h;->e:Ljava/util/concurrent/ExecutorService;

    .line 6
    sget-object v0, Lz9/c;->b:Lz9/c;

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newFixedThreadPool(MAX_N\u2026ement()}\"\n        )\n    }"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lz9/h;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Lv9/t;->a:Lv9/t;

    .line 2
    sget-object v0, Lv9/t;->i:Leb/f;

    const/4 v1, 0x1

    new-array v1, v1, [Leb/g;

    .line 3
    new-instance v2, Leb/b;

    new-instance v3, Lz9/g;

    invoke-direct {v3, p0}, Lz9/g;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v2, v3}, Leb/b;-><init>(Leb/d;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    invoke-virtual {v0, v1}, Leb/f;->a([Leb/g;)V

    return-void
.end method
