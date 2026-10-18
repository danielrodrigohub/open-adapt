.class public final Lp4/f0$c;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lp4/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final h:Lp4/m0;

.field public final i:J


# direct methods
.method public constructor <init>(Lp4/m0;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/f0$c;->h:Lp4/m0;

    .line 3
    iput-wide p2, p0, Lp4/f0$c;->i:J

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lp4/f0$c;->h:Lp4/m0;

    invoke-interface {v0}, Lp4/m0;->b()V

    return-void
.end method

.method public final isReady()Z
    .locals 1

    iget-object v0, p0, Lp4/f0$c;->h:Lp4/m0;

    invoke-interface {v0}, Lp4/m0;->isReady()Z

    move-result v0

    return v0
.end method

.method public final j(Ly0/r;Lq3/g;I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lp4/f0$c;->h:Lp4/m0;

    invoke-interface {v0, p1, p2, p3}, Lp4/m0;->j(Ly0/r;Lq3/g;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    iget-wide v2, p2, Lq3/g;->l:J

    iget-wide v4, p0, Lp4/f0$c;->i:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lq3/g;->l:J

    :cond_0
    return p1
.end method

.method public final p(J)I
    .locals 3

    iget-object v0, p0, Lp4/f0$c;->h:Lp4/m0;

    iget-wide v1, p0, Lp4/f0$c;->i:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lp4/m0;->p(J)I

    move-result p1

    return p1
.end method
