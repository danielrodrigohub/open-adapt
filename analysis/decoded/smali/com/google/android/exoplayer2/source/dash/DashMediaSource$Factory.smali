.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lp4/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/dash/a$a;

.field public final b:Ll5/j$a;

.field public c:Lr3/m;

.field public d:Lp4/h;

.field public e:Ll5/c0;

.field public f:J


# direct methods
.method public constructor <init>(Ll5/j$a;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c$a;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/dash/c$a;-><init>(Ll5/j$a;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/dash/a$a;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->b:Ll5/j$a;

    .line 5
    new-instance p1, Lr3/c;

    invoke-direct {p1}, Lr3/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lr3/m;

    .line 6
    new-instance p1, Ll5/u;

    invoke-direct {p1}, Ll5/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e:Ll5/c0;

    const-wide/16 v0, 0x7530

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f:J

    .line 8
    new-instance p1, Lp4/h;

    invoke-direct {p1}, Lp4/h;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->d:Lp4/h;

    return-void
.end method


# virtual methods
.method public final a(Lr3/m;)Lp4/x$a;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lm5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lr3/m;

    return-object p0
.end method

.method public final b(Ll5/c0;)Lp4/x$a;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lm5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e:Ll5/c0;

    return-object p0
.end method

.method public final c(Ln3/y0;)Lp4/x;
    .locals 13

    .line 1
    iget-object v0, p1, Ln3/y0;->i:Ln3/y0$h;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lt4/d;

    invoke-direct {v0}, Lt4/d;-><init>()V

    .line 4
    iget-object v1, p1, Ln3/y0;->i:Ln3/y0$h;

    iget-object v1, v1, Ln3/y0$g;->d:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Lo4/b;

    invoke-direct {v2, v0, v1}, Lo4/b;-><init>(Ll5/f0$a;Ljava/util/List;)V

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v0

    .line 7
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->b:Ll5/j$a;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/dash/a$a;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->d:Lp4/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lr3/m;

    .line 8
    invoke-interface {v1, p1}, Lr3/m;->a(Ln3/y0;)Lr3/l;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e:Ll5/c0;

    iget-wide v11, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f:J

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Ln3/y0;Ll5/j$a;Ll5/f0$a;Lcom/google/android/exoplayer2/source/dash/a$a;Lp4/h;Lr3/l;Ll5/c0;J)V

    return-object v0
.end method
