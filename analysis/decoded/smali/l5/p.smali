.class public final Ll5/p;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"

# interfaces
.implements Ll5/e;
.implements Ll5/j0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/p$b;
    }
.end annotation


# static fields
.field public static final n:Lu6/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lu6/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Lu6/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:Lu6/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Lu6/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Lu6/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static t:Ll5/p;


# instance fields
.field public final a:Lu6/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/x<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ll5/e$a$a;

.field public final c:Ll5/h0;

.field public final d:Lm5/c;

.field public final e:Z

.field public f:I

.field public g:J

.field public h:J

.field public i:I

.field public j:J

.field public k:J

.field public l:J

.field public m:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-wide/32 v0, 0x493e00

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0x2f4d60

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v2, 0x200b20

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v3, 0x16e360

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0xc3500

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lu6/v;->x(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lu6/v;

    move-result-object v0

    check-cast v0, Lu6/p0;

    sput-object v0, Ll5/p;->n:Lu6/p0;

    const-wide/32 v0, 0xf4240

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0xb2390

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v4, 0x6b6c0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v4, 0x29810

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v0, v1, v2, v4}, Lu6/v;->x(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lu6/v;

    move-result-object v1

    check-cast v1, Lu6/p0;

    sput-object v1, Ll5/p;->o:Lu6/p0;

    const-wide/32 v1, 0x2191c0

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v2, 0x155cc0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v3, 0x10c8e0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0xde2b0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v5, 0x975e0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lu6/v;->x(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lu6/v;

    move-result-object v1

    check-cast v1, Lu6/p0;

    sput-object v1, Ll5/p;->p:Lu6/p0;

    const-wide/32 v4, 0x2dc6c0

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v4, 0x1cfde0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v5, 0xa1220

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v2, v0, v5}, Lu6/v;->x(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lu6/v;

    move-result-object v1

    check-cast v1, Lu6/p0;

    sput-object v1, Ll5/p;->q:Lu6/p0;

    const-wide/32 v1, 0x5b8d80

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v4, 0x3e8fa0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v4, 0x30d400

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v5, 0x1b7740

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2, v4, v5, v0}, Lu6/v;->x(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lu6/v;

    move-result-object v0

    check-cast v0, Lu6/p0;

    sput-object v0, Ll5/p;->r:Lu6/p0;

    const-wide/32 v0, 0x2ab980

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0x249f00

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v4, 0x186a00

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v4, 0xe7ef0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lu6/v;->x(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lu6/v;

    move-result-object v0

    check-cast v0, Lu6/p0;

    sput-object v0, Ll5/p;->s:Lu6/p0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;ILm5/c;ZLl5/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lu6/x;->a(Ljava/util/Map;)Lu6/x;

    move-result-object p2

    iput-object p2, p0, Ll5/p;->a:Lu6/x;

    .line 3
    new-instance p2, Ll5/e$a$a;

    invoke-direct {p2}, Ll5/e$a$a;-><init>()V

    iput-object p2, p0, Ll5/p;->b:Ll5/e$a$a;

    .line 4
    new-instance p2, Ll5/h0;

    invoke-direct {p2, p3}, Ll5/h0;-><init>(I)V

    iput-object p2, p0, Ll5/p;->c:Ll5/h0;

    .line 5
    iput-object p4, p0, Ll5/p;->d:Lm5/c;

    .line 6
    iput-boolean p5, p0, Ll5/p;->e:Z

    if-eqz p1, :cond_2

    .line 7
    invoke-static {p1}, Lm5/u;->b(Landroid/content/Context;)Lm5/u;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lm5/u;->c()I

    move-result p2

    iput p2, p0, Ll5/p;->i:I

    .line 9
    invoke-virtual {p0, p2}, Ll5/p;->j(I)J

    move-result-wide p2

    iput-wide p2, p0, Ll5/p;->l:J

    .line 10
    new-instance p2, Ll5/o;

    invoke-direct {p2, p0}, Ll5/o;-><init>(Ll5/p;)V

    .line 11
    iget-object p3, p1, Lm5/u;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p5

    if-nez p5, :cond_0

    .line 13
    iget-object p5, p1, Lm5/u;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p5, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    iget-object p3, p1, Lm5/u;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p3, p1, Lm5/u;->a:Landroid/os/Handler;

    new-instance p4, Landroidx/lifecycle/c;

    const/4 p5, 0x3

    invoke-direct {p4, p1, p2, p5}, Landroidx/lifecycle/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Ll5/p;->i:I

    .line 17
    invoke-virtual {p0, p1}, Ll5/p;->j(I)J

    move-result-wide p1

    iput-wide p1, p0, Ll5/p;->l:J

    :goto_1
    return-void
.end method

.method public static k(Ll5/m;Z)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    iget p0, p0, Ll5/m;->i:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method


# virtual methods
.method public final a()Ll5/j0;
    .locals 0

    return-object p0
.end method

.method public final b(Landroid/os/Handler;Ll5/e$a;)V
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ll5/p;->b:Ll5/e$a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p2}, Ll5/e$a$a;->a(Ll5/e$a;)V

    .line 4
    iget-object v0, v0, Ll5/e$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ll5/e$a$a$a;

    invoke-direct {v1, p1, p2}, Ll5/e$a$a$a;-><init>(Landroid/os/Handler;Ll5/e$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Ll5/e$a;)V
    .locals 1

    iget-object v0, p0, Ll5/p;->b:Ll5/e$a$a;

    invoke-virtual {v0, p1}, Ll5/e$a$a;->a(Ll5/e$a;)V

    return-void
.end method

.method public final declared-synchronized e()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ll5/p;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(Ll5/m;Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Ll5/p;->k(Ll5/m;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget p1, p0, Ll5/p;->f:I

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Ll5/p;->d:Lm5/c;

    invoke-interface {p1}, Lm5/c;->d()J

    move-result-wide p1

    iput-wide p1, p0, Ll5/p;->g:J

    .line 5
    :cond_1
    iget p1, p0, Ll5/p;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ll5/p;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized h(Ll5/m;Z)V
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Ll5/p;->k(Ll5/m;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget p1, p0, Ll5/p;->f:I

    const/4 p2, 0x1

    if-lez p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lm5/a;->e(Z)V

    .line 4
    iget-object p1, p0, Ll5/p;->d:Lm5/c;

    invoke-interface {p1}, Lm5/c;->d()J

    move-result-wide v0

    .line 5
    iget-wide v2, p0, Ll5/p;->g:J

    sub-long v2, v0, v2

    long-to-int v5, v2

    .line 6
    iget-wide v2, p0, Ll5/p;->j:J

    int-to-long v6, v5

    add-long/2addr v2, v6

    iput-wide v2, p0, Ll5/p;->j:J

    .line 7
    iget-wide v2, p0, Ll5/p;->k:J

    iget-wide v6, p0, Ll5/p;->h:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Ll5/p;->k:J

    if-lez v5, :cond_4

    long-to-float p1, v6

    const/high16 v2, 0x45fa0000    # 8000.0f

    mul-float/2addr p1, v2

    int-to-float v2, v5

    div-float/2addr p1, v2

    .line 8
    iget-object v2, p0, Ll5/p;->c:Ll5/h0;

    long-to-double v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3, p1}, Ll5/h0;->a(IF)V

    .line 9
    iget-wide v2, p0, Ll5/p;->j:J

    const-wide/16 v6, 0x7d0

    cmp-long p1, v2, v6

    if-gez p1, :cond_2

    iget-wide v2, p0, Ll5/p;->k:J

    const-wide/32 v6, 0x80000

    cmp-long p1, v2, v6

    if-ltz p1, :cond_3

    .line 10
    :cond_2
    iget-object p1, p0, Ll5/p;->c:Ll5/h0;

    invoke-virtual {p1}, Ll5/h0;->b()F

    move-result p1

    float-to-long v2, p1

    iput-wide v2, p0, Ll5/p;->l:J

    .line 11
    :cond_3
    iget-wide v6, p0, Ll5/p;->h:J

    iget-wide v8, p0, Ll5/p;->l:J

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Ll5/p;->l(IJJ)V

    .line 12
    iput-wide v0, p0, Ll5/p;->g:J

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Ll5/p;->h:J

    .line 14
    :cond_4
    iget p1, p0, Ll5/p;->f:I

    sub-int/2addr p1, p2

    iput p1, p0, Ll5/p;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(Ll5/m;ZI)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Ll5/p;->k(Ll5/m;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-wide p1, p0, Ll5/p;->h:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ll5/p;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Ll5/p;->a:Lu6/x;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu6/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Ll5/p;->a:Lu6/x;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu6/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :cond_0
    if-nez p1, :cond_1

    const-wide/32 v0, 0xf4240

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l(IJJ)V
    .locals 10

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 1
    iget-wide v0, p0, Ll5/p;->m:J

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-wide p4, p0, Ll5/p;->m:J

    .line 3
    iget-object v0, p0, Ll5/p;->b:Ll5/e$a$a;

    .line 4
    iget-object v0, v0, Ll5/e$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ll5/e$a$a$a;

    .line 5
    iget-boolean v1, v3, Ll5/e$a$a$a;->c:Z

    if-nez v1, :cond_1

    .line 6
    iget-object v1, v3, Ll5/e$a$a$a;->a:Landroid/os/Handler;

    .line 7
    new-instance v9, Ll5/d;

    move-object v2, v9

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Ll5/d;-><init>(Ll5/e$a$a$a;IJJ)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
