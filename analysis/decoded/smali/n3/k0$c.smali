.class public final Ln3/k0$c;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ln5/k;
.implements Lo5/a;
.implements Ln3/p1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public h:Ln5/k;

.field public i:Lo5/a;

.field public j:Ln5/k;

.field public k:Lo5/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$c;->k:Lo5/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lo5/a;->a(J[F)V

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/k0$c;->i:Lo5/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lo5/a;->a(J[F)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$c;->k:Lo5/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lo5/a;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/k0$c;->i:Lo5/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lo5/a;->c()V

    :cond_1
    return-void
.end method

.method public final d(JJLn3/s0;Landroid/media/MediaFormat;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/k0$c;->j:Ln5/k;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-interface/range {v0 .. v6}, Ln5/k;->d(JJLn3/s0;Landroid/media/MediaFormat;)V

    .line 3
    :cond_0
    iget-object v1, p0, Ln3/k0$c;->h:Ln5/k;

    if-eqz v1, :cond_1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 4
    invoke-interface/range {v1 .. v7}, Ln5/k;->d(JJLn3/s0;Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public final l(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    check-cast p2, Lo5/j;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln3/k0$c;->j:Ln5/k;

    .line 3
    iput-object p1, p0, Ln3/k0$c;->k:Lo5/a;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Lo5/j;->getVideoFrameMetadataListener()Ln5/k;

    move-result-object p1

    iput-object p1, p0, Ln3/k0$c;->j:Ln5/k;

    .line 5
    invoke-virtual {p2}, Lo5/j;->getCameraMotionListener()Lo5/a;

    move-result-object p1

    iput-object p1, p0, Ln3/k0$c;->k:Lo5/a;

    goto :goto_0

    .line 6
    :cond_2
    check-cast p2, Lo5/a;

    iput-object p2, p0, Ln3/k0$c;->i:Lo5/a;

    goto :goto_0

    .line 7
    :cond_3
    check-cast p2, Ln5/k;

    iput-object p2, p0, Ln3/k0$c;->h:Ln5/k;

    :goto_0
    return-void
.end method
