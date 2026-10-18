.class public final Ll5/d0;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Ll5/e0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/d0$f;,
        Ll5/d0$c;,
        Ll5/d0$b;,
        Ll5/d0$e;,
        Ll5/d0$a;,
        Ll5/d0$d;,
        Ll5/d0$g;
    }
.end annotation


# static fields
.field public static final d:Ll5/d0$b;

.field public static final e:Ll5/d0$b;

.field public static final f:Ll5/d0$b;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public b:Ll5/d0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll5/d0$c<",
            "+",
            "Ll5/d0$d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/io/IOException;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ll5/d0$b;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {v0, v1, v2, v3}, Ll5/d0$b;-><init>(IJ)V

    .line 3
    sput-object v0, Ll5/d0;->d:Ll5/d0$b;

    .line 4
    new-instance v0, Ll5/d0$b;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v3}, Ll5/d0$b;-><init>(IJ)V

    sput-object v0, Ll5/d0;->e:Ll5/d0$b;

    .line 5
    new-instance v0, Ll5/d0$b;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3}, Ll5/d0$b;-><init>(IJ)V

    sput-object v0, Ll5/d0;->f:Ll5/d0$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExoPlayer:Loader:"

    .line 2
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget v0, Lm5/g0;->a:I

    .line 4
    new-instance v0, Lm5/f0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lm5/f0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 5
    iput-object p1, p0, Ll5/d0;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ll5/d0;->b:Ll5/d0$c;

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ll5/d0$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ll5/d0$c;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Ll5/d0;->e(I)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Ll5/d0;->c:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Ll5/d0;->b:Ll5/d0$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll5/d0;->c:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Ll5/d0;->b:Ll5/d0$c;

    if-eqz v0, :cond_2

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 3
    iget p1, v0, Ll5/d0$c;->h:I

    .line 4
    :cond_0
    iget-object v1, v0, Ll5/d0$c;->l:Ljava/io/IOException;

    if-eqz v1, :cond_2

    iget v0, v0, Ll5/d0$c;->m:I

    if-gt v0, p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    throw v1

    :cond_2
    :goto_0
    return-void

    .line 6
    :cond_3
    throw v0
.end method

.method public final f(Ll5/d0$e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll5/d0;->b:Ll5/d0$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ll5/d0$c;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Ll5/d0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ll5/d0$f;

    invoke-direct {v1, p1}, Ll5/d0$f;-><init>(Ll5/d0$e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    :cond_1
    iget-object p1, p0, Ll5/d0;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final g(Ll5/d0$d;Ll5/d0$a;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ll5/d0$d;",
            ">(TT;",
            "Ll5/d0$a<",
            "TT;>;I)J"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/os/Looper;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ll5/d0;->c:Ljava/io/IOException;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 4
    new-instance v10, Ll5/d0$c;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Ll5/d0$c;-><init>(Ll5/d0;Landroid/os/Looper;Ll5/d0$d;Ll5/d0$a;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Ll5/d0$c;->b(J)V

    return-wide v8
.end method
