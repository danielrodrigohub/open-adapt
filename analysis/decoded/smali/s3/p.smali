.class public final Ls3/p;
.super Ljava/lang/Object;
.source "FlacStreamMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/p$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:J

.field public final k:Ls3/p$a;

.field public final l:Lf4/a;


# direct methods
.method public constructor <init>(IIIIIIIJLs3/p$a;Lf4/a;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Ls3/p;->a:I

    .line 21
    iput p2, p0, Ls3/p;->b:I

    .line 22
    iput p3, p0, Ls3/p;->c:I

    .line 23
    iput p4, p0, Ls3/p;->d:I

    .line 24
    iput p5, p0, Ls3/p;->e:I

    .line 25
    invoke-static {p5}, Ls3/p;->g(I)I

    move-result p1

    iput p1, p0, Ls3/p;->f:I

    .line 26
    iput p6, p0, Ls3/p;->g:I

    .line 27
    iput p7, p0, Ls3/p;->h:I

    .line 28
    invoke-static {p7}, Ls3/p;->b(I)I

    move-result p1

    iput p1, p0, Ls3/p;->i:I

    .line 29
    iput-wide p8, p0, Ls3/p;->j:J

    .line 30
    iput-object p10, p0, Ls3/p;->k:Ls3/p$a;

    .line 31
    iput-object p11, p0, Ls3/p;->l:Lf4/a;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm5/v;

    .line 3
    array-length v1, p1

    invoke-direct {v0, p1, v1}, Lm5/v;-><init>([BI)V

    mul-int/lit8 p2, p2, 0x8

    .line 4
    invoke-virtual {v0, p2}, Lm5/v;->k(I)V

    const/16 p1, 0x10

    .line 5
    invoke-virtual {v0, p1}, Lm5/v;->g(I)I

    move-result p2

    iput p2, p0, Ls3/p;->a:I

    .line 6
    invoke-virtual {v0, p1}, Lm5/v;->g(I)I

    move-result p1

    iput p1, p0, Ls3/p;->b:I

    const/16 p1, 0x18

    .line 7
    invoke-virtual {v0, p1}, Lm5/v;->g(I)I

    move-result p2

    iput p2, p0, Ls3/p;->c:I

    .line 8
    invoke-virtual {v0, p1}, Lm5/v;->g(I)I

    move-result p1

    iput p1, p0, Ls3/p;->d:I

    const/16 p1, 0x14

    .line 9
    invoke-virtual {v0, p1}, Lm5/v;->g(I)I

    move-result p1

    iput p1, p0, Ls3/p;->e:I

    .line 10
    invoke-static {p1}, Ls3/p;->g(I)I

    move-result p1

    iput p1, p0, Ls3/p;->f:I

    const/4 p1, 0x3

    .line 11
    invoke-virtual {v0, p1}, Lm5/v;->g(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ls3/p;->g:I

    const/4 p1, 0x5

    .line 12
    invoke-virtual {v0, p1}, Lm5/v;->g(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ls3/p;->h:I

    .line 13
    invoke-static {p1}, Ls3/p;->b(I)I

    move-result p1

    iput p1, p0, Ls3/p;->i:I

    const/16 p1, 0x20

    const/4 p2, 0x4

    .line 14
    invoke-virtual {v0, p2}, Lm5/v;->g(I)I

    move-result p2

    invoke-virtual {v0, p1}, Lm5/v;->g(I)I

    move-result v0

    .line 15
    invoke-static {p2}, Lm5/g0;->W(I)J

    move-result-wide v1

    shl-long p1, v1, p1

    invoke-static {v0}, Lm5/g0;->W(I)J

    move-result-wide v0

    or-long/2addr p1, v0

    .line 16
    iput-wide p1, p0, Ls3/p;->j:J

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Ls3/p;->k:Ls3/p$a;

    .line 18
    iput-object p1, p0, Ls3/p;->l:Lf4/a;

    return-void
.end method

.method public static b(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static g(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a(Ls3/p$a;)Ls3/p;
    .locals 13

    new-instance v12, Ls3/p;

    iget v1, p0, Ls3/p;->a:I

    iget v2, p0, Ls3/p;->b:I

    iget v3, p0, Ls3/p;->c:I

    iget v4, p0, Ls3/p;->d:I

    iget v5, p0, Ls3/p;->e:I

    iget v6, p0, Ls3/p;->g:I

    iget v7, p0, Ls3/p;->h:I

    iget-wide v8, p0, Ls3/p;->j:J

    iget-object v11, p0, Ls3/p;->l:Lf4/a;

    move-object v0, v12

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Ls3/p;-><init>(IIIIIIIJLs3/p$a;Lf4/a;)V

    return-object v12
.end method

.method public final c()J
    .locals 4

    iget-wide v0, p0, Ls3/p;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Ls3/p;->e:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public final d([BLf4/a;)Ln3/s0;
    .locals 3

    const/4 v0, 0x4

    const/16 v1, -0x80

    .line 1
    aput-byte v1, p1, v0

    .line 2
    iget v0, p0, Ls3/p;->d:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3
    :goto_0
    invoke-virtual {p0, p2}, Ls3/p;->e(Lf4/a;)Lf4/a;

    move-result-object p2

    .line 4
    new-instance v1, Ln3/s0$a;

    invoke-direct {v1}, Ln3/s0$a;-><init>()V

    const-string v2, "audio/flac"

    .line 5
    iput-object v2, v1, Ln3/s0$a;->k:Ljava/lang/String;

    .line 6
    iput v0, v1, Ln3/s0$a;->l:I

    .line 7
    iget v0, p0, Ls3/p;->g:I

    .line 8
    iput v0, v1, Ln3/s0$a;->x:I

    .line 9
    iget v0, p0, Ls3/p;->e:I

    .line 10
    iput v0, v1, Ln3/s0$a;->y:I

    .line 11
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12
    iput-object p1, v1, Ln3/s0$a;->m:Ljava/util/List;

    .line 13
    iput-object p2, v1, Ln3/s0$a;->i:Lf4/a;

    .line 14
    invoke-virtual {v1}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lf4/a;)Lf4/a;
    .locals 1

    iget-object v0, p0, Ls3/p;->l:Lf4/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lf4/a;->b(Lf4/a;)Lf4/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final f(J)J
    .locals 8

    .line 1
    iget v0, p0, Ls3/p;->e:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    .line 2
    iget-wide p1, p0, Ls3/p;->j:J

    const-wide/16 v0, 0x1

    sub-long v6, p1, v0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lm5/g0;->j(JJJ)J

    move-result-wide p1

    return-wide p1
.end method
