.class public final Lcom/google/android/exoplayer2/source/dash/d;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/d$a;,
        Lcom/google/android/exoplayer2/source/dash/d$c;,
        Lcom/google/android/exoplayer2/source/dash/d$b;
    }
.end annotation


# instance fields
.field public final h:Ll5/b;

.field public final i:Lcom/google/android/exoplayer2/source/dash/d$b;

.field public final j:Lh4/b;

.field public final k:Landroid/os/Handler;

.field public final l:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lt4/c;

.field public n:Z

.field public o:Z

.field public p:Z


# direct methods
.method public constructor <init>(Lt4/c;Lcom/google/android/exoplayer2/source/dash/d$b;Ll5/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->m:Lt4/c;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/d;->i:Lcom/google/android/exoplayer2/source/dash/d$b;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/d;->h:Ll5/b;

    .line 5
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->l:Ljava/util/TreeMap;

    .line 6
    invoke-static {p0}, Lm5/g0;->l(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->k:Landroid/os/Handler;

    .line 7
    new-instance p1, Lh4/b;

    invoke-direct {p1}, Lh4/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->j:Lh4/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/d;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/d;->o:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/d;->n:Z

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/d;->i:Lcom/google/android/exoplayer2/source/dash/d$b;

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;

    .line 5
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Landroidx/appcompat/widget/k1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/d;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/d$a;

    .line 4
    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/d$a;->a:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/d$a;->b:J

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->l:Ljava/util/TreeMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->l:Ljava/util/TreeMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p1, v6, v2

    if-lez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d;->l:Ljava/util/TreeMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return v1
.end method
