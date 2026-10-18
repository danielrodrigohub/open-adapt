.class public final Lv4/b;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lv4/j;
.implements Ll5/d0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv4/b$a;,
        Lv4/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv4/j;",
        "Ll5/d0$a<",
        "Ll5/f0<",
        "Lv4/g;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final v:Ly0/h;


# instance fields
.field public final h:Lu4/h;

.field public final i:Lv4/i;

.field public final j:Ll5/c0;

.field public final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lv4/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lv4/j$a;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lp4/e0$a;

.field public n:Ll5/d0;

.field public o:Landroid/os/Handler;

.field public p:Lv4/j$d;

.field public q:Lv4/f;

.field public r:Landroid/net/Uri;

.field public s:Lv4/e;

.field public t:Z

.field public u:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ly0/h;->i:Ly0/h;

    sput-object v0, Lv4/b;->v:Ly0/h;

    return-void
.end method

.method public constructor <init>(Lu4/h;Ll5/c0;Lv4/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv4/b;->h:Lu4/h;

    .line 3
    iput-object p3, p0, Lv4/b;->i:Lv4/i;

    .line 4
    iput-object p2, p0, Lv4/b;->j:Ll5/c0;

    .line 5
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lv4/b;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lv4/b;->k:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Lv4/b;->u:J

    return-void
.end method

.method public static p(Lv4/b;Landroid/net/Uri;Ll5/c0$c;Z)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lv4/b;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv4/j$a;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lv4/j$a;->b(Landroid/net/Uri;Ll5/c0$c;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static q(Lv4/e;Lv4/e;)Lv4/e$c;
    .locals 4

    .line 1
    iget-wide v0, p1, Lv4/e;->k:J

    iget-wide v2, p0, Lv4/e;->k:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 2
    iget-object p0, p0, Lv4/e;->r:Lu6/v;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv4/e$c;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lv4/b;->t:Z

    return v0
.end method

.method public final b()Lv4/f;
    .locals 1

    iget-object v0, p0, Lv4/b;->q:Lv4/f;

    return-object v0
.end method

.method public final c(Landroid/net/Uri;J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/b;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv4/b$b;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1, p2, p3}, Lv4/b$b;->a(Lv4/b$b;J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lv4/j$a;)V
    .locals 1

    iget-object v0, p0, Lv4/b;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Landroid/net/Uri;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lv4/b;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv4/b$b;

    .line 2
    iget-object v0, p1, Lv4/b$b;->k:Lv4/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    .line 4
    iget-object v0, p1, Lv4/b$b;->k:Lv4/e;

    iget-wide v6, v0, Lv4/e;->u:J

    invoke-static {v6, v7}, Lm5/g0;->X(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 5
    iget-object v0, p1, Lv4/b$b;->k:Lv4/e;

    iget-boolean v6, v0, Lv4/e;->o:Z

    const/4 v7, 0x1

    if-nez v6, :cond_1

    iget v0, v0, Lv4/e;->d:I

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    iget-wide v8, p1, Lv4/b$b;->l:J

    add-long/2addr v8, v4

    cmp-long p1, v8, v2

    if-lez p1, :cond_2

    :cond_1
    move v1, v7

    :cond_2
    :goto_0
    return v1
.end method

.method public final f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv4/b;->n:Ll5/d0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ll5/d0;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Lv4/b;->r:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lv4/b;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/b$b;

    .line 5
    iget-object v1, v0, Lv4/b$b;->i:Ll5/d0;

    invoke-virtual {v1}, Ll5/d0;->b()V

    .line 6
    iget-object v0, v0, Lv4/b$b;->q:Ljava/io/IOException;

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final g(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv4/b;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv4/b$b;

    .line 2
    iget-object v0, p1, Lv4/b$b;->i:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->b()V

    .line 3
    iget-object p1, p1, Lv4/b$b;->q:Ljava/io/IOException;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    throw p1
.end method

.method public final h(Ll5/d0$d;JJ)V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ll5/f0;

    .line 2
    iget-object v2, v1, Ll5/f0;->f:Ljava/lang/Object;

    .line 3
    check-cast v2, Lv4/g;

    .line 4
    instance-of v3, v2, Lv4/e;

    if-eqz v3, :cond_0

    .line 5
    iget-object v4, v2, Lv4/g;->a:Ljava/lang/String;

    .line 6
    sget-object v5, Lv4/f;->n:Lv4/f;

    .line 7
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 8
    new-instance v4, Ln3/s0$a;

    invoke-direct {v4}, Ln3/s0$a;-><init>()V

    const-string v5, "0"

    .line 9
    iput-object v5, v4, Ln3/s0$a;->a:Ljava/lang/String;

    const-string v5, "application/x-mpegURL"

    .line 10
    iput-object v5, v4, Ln3/s0$a;->j:Ljava/lang/String;

    .line 11
    new-instance v8, Ln3/s0;

    invoke-direct {v8, v4}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 12
    new-instance v4, Lv4/f$b;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lv4/f$b;-><init>(Landroid/net/Uri;Ln3/s0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    .line 14
    new-instance v4, Lv4/f;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v24

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v25

    const-string v14, ""

    move-object v13, v4

    invoke-direct/range {v13 .. v25}, Lv4/f;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ln3/s0;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    goto :goto_0

    .line 22
    :cond_0
    move-object v4, v2

    check-cast v4, Lv4/f;

    .line 23
    :goto_0
    iput-object v4, v0, Lv4/b;->q:Lv4/f;

    .line 24
    iget-object v5, v4, Lv4/f;->e:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv4/f$b;

    iget-object v5, v5, Lv4/f$b;->a:Landroid/net/Uri;

    iput-object v5, v0, Lv4/b;->r:Landroid/net/Uri;

    .line 25
    iget-object v5, v0, Lv4/b;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v7, Lv4/b$a;

    invoke-direct {v7, v0}, Lv4/b$a;-><init>(Lv4/b;)V

    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v4, v4, Lv4/f;->d:Ljava/util/List;

    .line 27
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v6, v5, :cond_1

    .line 28
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 29
    new-instance v8, Lv4/b$b;

    invoke-direct {v8, v0, v7}, Lv4/b$b;-><init>(Lv4/b;Landroid/net/Uri;)V

    .line 30
    iget-object v9, v0, Lv4/b;->k:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 31
    :cond_1
    new-instance v4, Lp4/r;

    .line 32
    iget-object v1, v1, Ll5/f0;->d:Ll5/i0;

    .line 33
    iget-object v5, v1, Ll5/i0;->c:Landroid/net/Uri;

    .line 34
    iget-object v1, v1, Ll5/i0;->d:Ljava/util/Map;

    .line 35
    invoke-direct {v4, v1}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 36
    iget-object v1, v0, Lv4/b;->k:Ljava/util/HashMap;

    iget-object v5, v0, Lv4/b;->r:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv4/b$b;

    if-eqz v3, :cond_2

    .line 37
    check-cast v2, Lv4/e;

    .line 38
    invoke-virtual {v1, v2, v4}, Lv4/b$b;->e(Lv4/e;Lp4/r;)V

    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {v1}, Lv4/b$b;->b()V

    .line 40
    :goto_2
    iget-object v1, v0, Lv4/b;->j:Ll5/c0;

    invoke-interface {v1}, Ll5/c0;->d()V

    .line 41
    iget-object v1, v0, Lv4/b;->m:Lp4/e0$a;

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v2}, Lp4/e0$a;->g(Lp4/r;I)V

    return-void
.end method

.method public final i(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lv4/b;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv4/b$b;

    invoke-virtual {p1}, Lv4/b$b;->b()V

    return-void
.end method

.method public final j(Landroid/net/Uri;Z)Lv4/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lv4/b;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/b$b;

    .line 2
    iget-object v0, v0, Lv4/b$b;->k:Lv4/e;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 3
    iget-object p2, p0, Lv4/b;->r:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 4
    iget-object p2, p0, Lv4/b;->q:Lv4/f;

    iget-object p2, p2, Lv4/f;->e:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/f$b;

    iget-object v3, v3, Lv4/f$b;->a:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    .line 7
    iget-object p2, p0, Lv4/b;->s:Lv4/e;

    if-eqz p2, :cond_2

    iget-boolean p2, p2, Lv4/e;->o:Z

    if-eqz p2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iput-object p1, p0, Lv4/b;->r:Landroid/net/Uri;

    .line 9
    iget-object p2, p0, Lv4/b;->k:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv4/b$b;

    .line 10
    iget-object v1, p2, Lv4/b$b;->k:Lv4/e;

    if-eqz v1, :cond_3

    .line 11
    iget-boolean v2, v1, Lv4/e;->o:Z

    if-eqz v2, :cond_3

    .line 12
    iput-object v1, p0, Lv4/b;->s:Lv4/e;

    .line 13
    iget-object p1, p0, Lv4/b;->p:Lv4/j$d;

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->z(Lv4/e;)V

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p0, p1}, Lv4/b;->r(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 15
    invoke-virtual {p2, p1}, Lv4/b$b;->d(Landroid/net/Uri;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public final k(Ll5/d0$d;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Ll5/f0;

    .line 2
    new-instance p2, Lp4/r;

    iget-wide p3, p1, Ll5/f0;->a:J

    .line 3
    iget-object p1, p1, Ll5/f0;->d:Ll5/i0;

    .line 4
    iget-object p3, p1, Ll5/i0;->c:Landroid/net/Uri;

    .line 5
    iget-object p1, p1, Ll5/i0;->d:Ljava/util/Map;

    .line 6
    invoke-direct {p2, p1}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 7
    iget-object p1, p0, Lv4/b;->j:Ll5/c0;

    invoke-interface {p1}, Ll5/c0;->d()V

    .line 8
    iget-object p1, p0, Lv4/b;->m:Lp4/e0$a;

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Lp4/e0$a;->d(Lp4/r;I)V

    return-void
.end method

.method public final l(Landroid/net/Uri;Lp4/e0$a;Lv4/j$d;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lm5/g0;->l(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lv4/b;->o:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lv4/b;->m:Lp4/e0$a;

    .line 4
    iput-object p3, p0, Lv4/b;->p:Lv4/j$d;

    .line 5
    new-instance p3, Ll5/f0;

    iget-object v0, p0, Lv4/b;->h:Lu4/h;

    .line 6
    invoke-interface {v0}, Lu4/h;->a()Ll5/j;

    move-result-object v0

    iget-object v1, p0, Lv4/b;->i:Lv4/i;

    .line 7
    invoke-interface {v1}, Lv4/i;->b()Ll5/f0$a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p3, v0, p1, v2, v1}, Ll5/f0;-><init>(Ll5/j;Landroid/net/Uri;ILl5/f0$a;)V

    .line 8
    iget-object p1, p0, Lv4/b;->n:Ll5/d0;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lm5/a;->e(Z)V

    .line 9
    new-instance p1, Ll5/d0;

    const-string v0, "DefaultHlsPlaylistTracker:MultivariantPlaylist"

    invoke-direct {p1, v0}, Ll5/d0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lv4/b;->n:Ll5/d0;

    .line 10
    iget-object v0, p0, Lv4/b;->j:Ll5/c0;

    iget v1, p3, Ll5/f0;->c:I

    .line 11
    invoke-interface {v0, v1}, Ll5/c0;->c(I)I

    move-result v0

    .line 12
    invoke-virtual {p1, p3, p0, v0}, Ll5/d0;->g(Ll5/d0$d;Ll5/d0$a;I)J

    move-result-wide v5

    .line 13
    new-instance p1, Lp4/r;

    iget-wide v2, p3, Ll5/f0;->a:J

    iget-object v4, p3, Ll5/f0;->b:Ll5/m;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lp4/r;-><init>(JLl5/m;J)V

    iget p3, p3, Ll5/f0;->c:I

    invoke-virtual {p2, p1, p3}, Lp4/e0$a;->m(Lp4/r;I)V

    return-void
.end method

.method public final m(Ll5/d0$d;JJLjava/io/IOException;I)Ll5/d0$b;
    .locals 2

    .line 1
    check-cast p1, Ll5/f0;

    .line 2
    new-instance p2, Lp4/r;

    iget-wide p3, p1, Ll5/f0;->a:J

    .line 3
    iget-object p3, p1, Ll5/f0;->d:Ll5/i0;

    .line 4
    iget-object p4, p3, Ll5/i0;->c:Landroid/net/Uri;

    .line 5
    iget-object p3, p3, Ll5/i0;->d:Ljava/util/Map;

    .line 6
    invoke-direct {p2, p3}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 7
    iget-object p3, p0, Lv4/b;->j:Ll5/c0;

    new-instance p4, Ll5/c0$c;

    invoke-direct {p4, p6, p7}, Ll5/c0$c;-><init>(Ljava/io/IOException;I)V

    .line 8
    invoke-interface {p3, p4}, Ll5/c0;->b(Ll5/c0$c;)J

    move-result-wide p3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p3, v0

    const/4 p7, 0x0

    if-nez p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    move p5, p7

    .line 9
    :goto_0
    iget-object v0, p0, Lv4/b;->m:Lp4/e0$a;

    iget p1, p1, Ll5/f0;->c:I

    invoke-virtual {v0, p2, p1, p6, p5}, Lp4/e0$a;->k(Lp4/r;ILjava/io/IOException;Z)V

    if-eqz p5, :cond_1

    .line 10
    iget-object p1, p0, Lv4/b;->j:Ll5/c0;

    invoke-interface {p1}, Ll5/c0;->d()V

    :cond_1
    if-eqz p5, :cond_2

    .line 11
    sget-object p1, Ll5/d0;->f:Ll5/d0$b;

    goto :goto_1

    .line 12
    :cond_2
    new-instance p1, Ll5/d0$b;

    .line 13
    invoke-direct {p1, p7, p3, p4}, Ll5/d0$b;-><init>(IJ)V

    :goto_1
    return-object p1
.end method

.method public final n(Lv4/j$a;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lv4/b;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lv4/b;->u:J

    return-wide v0
.end method

.method public final r(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/b;->s:Lv4/e;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lv4/e;->v:Lv4/e$e;

    iget-boolean v1, v1, Lv4/e$e;->e:Z

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, Lv4/e;->t:Lu6/x;

    .line 3
    check-cast v0, Lu6/q0;

    invoke-virtual {v0, p1}, Lu6/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/e$b;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 5
    iget-wide v1, v0, Lv4/e$b;->b:J

    .line 6
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_HLS_msn"

    .line 7
    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 8
    iget v0, v0, Lv4/e$b;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_HLS_part"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final stop()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lv4/b;->r:Landroid/net/Uri;

    .line 2
    iput-object v0, p0, Lv4/b;->s:Lv4/e;

    .line 3
    iput-object v0, p0, Lv4/b;->q:Lv4/f;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v1, p0, Lv4/b;->u:J

    .line 5
    iget-object v1, p0, Lv4/b;->n:Ll5/d0;

    .line 6
    invoke-virtual {v1, v0}, Ll5/d0;->f(Ll5/d0$e;)V

    .line 7
    iput-object v0, p0, Lv4/b;->n:Ll5/d0;

    .line 8
    iget-object v1, p0, Lv4/b;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/b$b;

    .line 9
    iget-object v2, v2, Lv4/b$b;->i:Ll5/d0;

    .line 10
    invoke-virtual {v2, v0}, Ll5/d0;->f(Ll5/d0$e;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lv4/b;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    iput-object v0, p0, Lv4/b;->o:Landroid/os/Handler;

    .line 13
    iget-object v0, p0, Lv4/b;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
