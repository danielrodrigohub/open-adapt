.class public final Lm5/z;
.super Ljava/lang/Object;
.source "StandaloneMediaClock.java"

# interfaces
.implements Lm5/r;


# instance fields
.field public final h:Lm5/c;

.field public i:Z

.field public j:J

.field public k:J

.field public l:Ln3/m1;


# direct methods
.method public constructor <init>(Lm5/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm5/z;->h:Lm5/c;

    .line 3
    sget-object p1, Ln3/m1;->k:Ln3/m1;

    iput-object p1, p0, Lm5/z;->l:Ln3/m1;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lm5/z;->j:J

    .line 2
    iget-boolean p1, p0, Lm5/z;->i:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lm5/z;->h:Lm5/c;

    invoke-interface {p1}, Lm5/c;->d()J

    move-result-wide p1

    iput-wide p1, p0, Lm5/z;->k:J

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lm5/z;->i:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm5/z;->h:Lm5/c;

    invoke-interface {v0}, Lm5/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lm5/z;->k:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lm5/z;->i:Z

    :cond_0
    return-void
.end method

.method public final d()Ln3/m1;
    .locals 1

    iget-object v0, p0, Lm5/z;->l:Ln3/m1;

    return-object v0
.end method

.method public final f(Ln3/m1;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lm5/z;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lm5/z;->w()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lm5/z;->a(J)V

    .line 3
    :cond_0
    iput-object p1, p0, Lm5/z;->l:Ln3/m1;

    return-void
.end method

.method public final w()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lm5/z;->j:J

    .line 2
    iget-boolean v2, p0, Lm5/z;->i:Z

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lm5/z;->h:Lm5/c;

    invoke-interface {v2}, Lm5/c;->d()J

    move-result-wide v2

    iget-wide v4, p0, Lm5/z;->k:J

    sub-long/2addr v2, v4

    .line 4
    iget-object v4, p0, Lm5/z;->l:Ln3/m1;

    iget v5, v4, Ln3/m1;->h:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 5
    invoke-static {v2, v3}, Lm5/g0;->L(J)J

    move-result-wide v2

    goto :goto_0

    .line 6
    :cond_0
    iget v4, v4, Ln3/m1;->j:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method
