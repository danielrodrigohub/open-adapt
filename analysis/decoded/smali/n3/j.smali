.class public final Ln3/j;
.super Ljava/lang/Object;
.source "DefaultLivePlaybackSpeedControl.java"

# interfaces
.implements Ln3/w0;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:F

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:F

.field public k:F

.field public l:F

.field public m:J

.field public n:J

.field public o:J


# direct methods
.method public constructor <init>(JJF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Ln3/j;->a:J

    .line 3
    iput-wide p3, p0, Ln3/j;->b:J

    .line 4
    iput p5, p0, Ln3/j;->c:F

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide p1, p0, Ln3/j;->d:J

    .line 6
    iput-wide p1, p0, Ln3/j;->e:J

    .line 7
    iput-wide p1, p0, Ln3/j;->g:J

    .line 8
    iput-wide p1, p0, Ln3/j;->h:J

    const p3, 0x3f7851ec

    .line 9
    iput p3, p0, Ln3/j;->k:F

    const p3, 0x3f83d70a

    .line 10
    iput p3, p0, Ln3/j;->j:F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 11
    iput p3, p0, Ln3/j;->l:F

    .line 12
    iput-wide p1, p0, Ln3/j;->m:J

    .line 13
    iput-wide p1, p0, Ln3/j;->f:J

    .line 14
    iput-wide p1, p0, Ln3/j;->i:J

    .line 15
    iput-wide p1, p0, Ln3/j;->n:J

    .line 16
    iput-wide p1, p0, Ln3/j;->o:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-wide v0, p0, Ln3/j;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 2
    iget-wide v4, p0, Ln3/j;->e:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    move-wide v0, v4

    .line 3
    :cond_0
    iget-wide v4, p0, Ln3/j;->g:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    .line 4
    :cond_1
    iget-wide v4, p0, Ln3/j;->h:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 5
    :cond_3
    :goto_0
    iget-wide v4, p0, Ln3/j;->f:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_4

    return-void

    .line 6
    :cond_4
    iput-wide v0, p0, Ln3/j;->f:J

    .line 7
    iput-wide v0, p0, Ln3/j;->i:J

    .line 8
    iput-wide v2, p0, Ln3/j;->n:J

    .line 9
    iput-wide v2, p0, Ln3/j;->o:J

    .line 10
    iput-wide v2, p0, Ln3/j;->m:J

    return-void
.end method
