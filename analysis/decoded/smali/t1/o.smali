.class public final Lt1/o;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1/o$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lk1/p;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroidx/work/b;

.field public f:Landroidx/work/b;

.field public g:J

.field public h:J

.field public i:J

.field public j:Lk1/c;

.field public k:I

.field public l:I

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:Z

.field public r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkSpec"

    invoke-static {v0}, Lk1/l;->e(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lk1/p;->h:Lk1/p;

    iput-object v0, p0, Lt1/o;->b:Lk1/p;

    .line 3
    sget-object v0, Landroidx/work/b;->c:Landroidx/work/b;

    iput-object v0, p0, Lt1/o;->e:Landroidx/work/b;

    .line 4
    iput-object v0, p0, Lt1/o;->f:Landroidx/work/b;

    .line 5
    sget-object v0, Lk1/c;->i:Lk1/c;

    iput-object v0, p0, Lt1/o;->j:Lk1/c;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lt1/o;->l:I

    const-wide/16 v1, 0x7530

    .line 7
    iput-wide v1, p0, Lt1/o;->m:J

    const-wide/16 v1, -0x1

    .line 8
    iput-wide v1, p0, Lt1/o;->p:J

    .line 9
    iput v0, p0, Lt1/o;->r:I

    .line 10
    iput-object p1, p0, Lt1/o;->a:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lt1/o;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lt1/o;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lk1/p;->h:Lk1/p;

    iput-object v0, p0, Lt1/o;->b:Lk1/p;

    .line 14
    sget-object v0, Landroidx/work/b;->c:Landroidx/work/b;

    iput-object v0, p0, Lt1/o;->e:Landroidx/work/b;

    .line 15
    iput-object v0, p0, Lt1/o;->f:Landroidx/work/b;

    .line 16
    sget-object v0, Lk1/c;->i:Lk1/c;

    iput-object v0, p0, Lt1/o;->j:Lk1/c;

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lt1/o;->l:I

    const-wide/16 v1, 0x7530

    .line 18
    iput-wide v1, p0, Lt1/o;->m:J

    const-wide/16 v1, -0x1

    .line 19
    iput-wide v1, p0, Lt1/o;->p:J

    .line 20
    iput v0, p0, Lt1/o;->r:I

    .line 21
    iget-object v0, p1, Lt1/o;->a:Ljava/lang/String;

    iput-object v0, p0, Lt1/o;->a:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lt1/o;->c:Ljava/lang/String;

    iput-object v0, p0, Lt1/o;->c:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lt1/o;->b:Lk1/p;

    iput-object v0, p0, Lt1/o;->b:Lk1/p;

    .line 24
    iget-object v0, p1, Lt1/o;->d:Ljava/lang/String;

    iput-object v0, p0, Lt1/o;->d:Ljava/lang/String;

    .line 25
    new-instance v0, Landroidx/work/b;

    iget-object v1, p1, Lt1/o;->e:Landroidx/work/b;

    invoke-direct {v0, v1}, Landroidx/work/b;-><init>(Landroidx/work/b;)V

    iput-object v0, p0, Lt1/o;->e:Landroidx/work/b;

    .line 26
    new-instance v0, Landroidx/work/b;

    iget-object v1, p1, Lt1/o;->f:Landroidx/work/b;

    invoke-direct {v0, v1}, Landroidx/work/b;-><init>(Landroidx/work/b;)V

    iput-object v0, p0, Lt1/o;->f:Landroidx/work/b;

    .line 27
    iget-wide v0, p1, Lt1/o;->g:J

    iput-wide v0, p0, Lt1/o;->g:J

    .line 28
    iget-wide v0, p1, Lt1/o;->h:J

    iput-wide v0, p0, Lt1/o;->h:J

    .line 29
    iget-wide v0, p1, Lt1/o;->i:J

    iput-wide v0, p0, Lt1/o;->i:J

    .line 30
    new-instance v0, Lk1/c;

    iget-object v1, p1, Lt1/o;->j:Lk1/c;

    invoke-direct {v0, v1}, Lk1/c;-><init>(Lk1/c;)V

    iput-object v0, p0, Lt1/o;->j:Lk1/c;

    .line 31
    iget v0, p1, Lt1/o;->k:I

    iput v0, p0, Lt1/o;->k:I

    .line 32
    iget v0, p1, Lt1/o;->l:I

    iput v0, p0, Lt1/o;->l:I

    .line 33
    iget-wide v0, p1, Lt1/o;->m:J

    iput-wide v0, p0, Lt1/o;->m:J

    .line 34
    iget-wide v0, p1, Lt1/o;->n:J

    iput-wide v0, p0, Lt1/o;->n:J

    .line 35
    iget-wide v0, p1, Lt1/o;->o:J

    iput-wide v0, p0, Lt1/o;->o:J

    .line 36
    iget-wide v0, p1, Lt1/o;->p:J

    iput-wide v0, p0, Lt1/o;->p:J

    .line 37
    iget-boolean v0, p1, Lt1/o;->q:Z

    iput-boolean v0, p0, Lt1/o;->q:Z

    .line 38
    iget p1, p1, Lt1/o;->r:I

    iput p1, p0, Lt1/o;->r:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 12

    .line 1
    iget-object v0, p0, Lt1/o;->b:Lk1/p;

    sget-object v1, Lk1/p;->h:Lk1/p;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lt1/o;->k:I

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    iget v0, p0, Lt1/o;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    .line 3
    iget-wide v0, p0, Lt1/o;->m:J

    iget v2, p0, Lt1/o;->k:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    goto :goto_1

    .line 4
    :cond_2
    iget-wide v0, p0, Lt1/o;->m:J

    long-to-float v0, v0

    iget v1, p0, Lt1/o;->k:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    .line 5
    :goto_1
    iget-wide v2, p0, Lt1/o;->n:J

    const-wide/32 v4, 0x112a880

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    add-long/2addr v0, v2

    return-wide v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lt1/o;->c()Z

    move-result v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_9

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    iget-wide v6, p0, Lt1/o;->n:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_4

    iget-wide v6, p0, Lt1/o;->g:J

    add-long/2addr v6, v0

    .line 9
    :cond_4
    iget-wide v0, p0, Lt1/o;->i:J

    iget-wide v9, p0, Lt1/o;->h:J

    cmp-long v11, v0, v9

    if-eqz v11, :cond_5

    move v2, v3

    :cond_5
    if-eqz v2, :cond_7

    if-nez v8, :cond_6

    const-wide/16 v2, -0x1

    mul-long v4, v0, v2

    :cond_6
    add-long/2addr v6, v9

    add-long/2addr v6, v4

    return-wide v6

    :cond_7
    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    move-wide v4, v9

    :goto_3
    add-long/2addr v6, v4

    return-wide v6

    .line 10
    :cond_9
    iget-wide v0, p0, Lt1/o;->n:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    :cond_a
    iget-wide v2, p0, Lt1/o;->g:J

    goto :goto_2
.end method

.method public final b()Z
    .locals 2

    sget-object v0, Lk1/c;->i:Lk1/c;

    iget-object v1, p0, Lt1/o;->j:Lk1/c;

    invoke-virtual {v0, v1}, Lk1/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 4

    iget-wide v0, p0, Lt1/o;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 1
    const-class v2, Lt1/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    check-cast p1, Lt1/o;

    .line 3
    iget-wide v2, p0, Lt1/o;->g:J

    iget-wide v4, p1, Lt1/o;->g:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-wide v2, p0, Lt1/o;->h:J

    iget-wide v4, p1, Lt1/o;->h:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-wide v2, p0, Lt1/o;->i:J

    iget-wide v4, p1, Lt1/o;->i:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Lt1/o;->k:I

    iget v3, p1, Lt1/o;->k:I

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget-wide v2, p0, Lt1/o;->m:J

    iget-wide v4, p1, Lt1/o;->m:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    return v1

    .line 8
    :cond_6
    iget-wide v2, p0, Lt1/o;->n:J

    iget-wide v4, p1, Lt1/o;->n:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    return v1

    .line 9
    :cond_7
    iget-wide v2, p0, Lt1/o;->o:J

    iget-wide v4, p1, Lt1/o;->o:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    return v1

    .line 10
    :cond_8
    iget-wide v2, p0, Lt1/o;->p:J

    iget-wide v4, p1, Lt1/o;->p:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    return v1

    .line 11
    :cond_9
    iget-boolean v2, p0, Lt1/o;->q:Z

    iget-boolean v3, p1, Lt1/o;->q:Z

    if-eq v2, v3, :cond_a

    return v1

    .line 12
    :cond_a
    iget-object v2, p0, Lt1/o;->a:Ljava/lang/String;

    iget-object v3, p1, Lt1/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 13
    :cond_b
    iget-object v2, p0, Lt1/o;->b:Lk1/p;

    iget-object v3, p1, Lt1/o;->b:Lk1/p;

    if-eq v2, v3, :cond_c

    return v1

    .line 14
    :cond_c
    iget-object v2, p0, Lt1/o;->c:Ljava/lang/String;

    iget-object v3, p1, Lt1/o;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 15
    :cond_d
    iget-object v2, p0, Lt1/o;->d:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lt1/o;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_e
    iget-object v2, p1, Lt1/o;->d:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_0
    return v1

    .line 16
    :cond_f
    iget-object v2, p0, Lt1/o;->e:Landroidx/work/b;

    iget-object v3, p1, Lt1/o;->e:Landroidx/work/b;

    invoke-virtual {v2, v3}, Landroidx/work/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 17
    :cond_10
    iget-object v2, p0, Lt1/o;->f:Landroidx/work/b;

    iget-object v3, p1, Lt1/o;->f:Landroidx/work/b;

    invoke-virtual {v2, v3}, Landroidx/work/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 18
    :cond_11
    iget-object v2, p0, Lt1/o;->j:Lk1/c;

    iget-object v3, p1, Lt1/o;->j:Lk1/c;

    invoke-virtual {v2, v3}, Lk1/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 19
    :cond_12
    iget v2, p0, Lt1/o;->l:I

    iget v3, p1, Lt1/o;->l:I

    if-eq v2, v3, :cond_13

    return v1

    .line 20
    :cond_13
    iget v2, p0, Lt1/o;->r:I

    iget p1, p1, Lt1/o;->r:I

    if-ne v2, p1, :cond_14

    goto :goto_1

    :cond_14
    move v0, v1

    :goto_1
    return v0

    :cond_15
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lt1/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lt1/o;->b:Lk1/p;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lt1/o;->c:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 4
    invoke-static {v0, v1, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lt1/o;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lt1/o;->e:Landroidx/work/b;

    invoke-virtual {v1}, Landroidx/work/b;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Lt1/o;->f:Landroidx/work/b;

    invoke-virtual {v0}, Landroidx/work/b;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-wide v1, p0, Lt1/o;->g:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-wide v1, p0, Lt1/o;->h:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-wide v1, p0, Lt1/o;->i:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lt1/o;->j:Lk1/c;

    invoke-virtual {v1}, Lk1/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 12
    iget v0, p0, Lt1/o;->k:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 13
    iget v0, p0, Lt1/o;->l:I

    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-wide v1, p0, Lt1/o;->m:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-wide v1, p0, Lt1/o;->n:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-wide v1, p0, Lt1/o;->o:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget-wide v1, p0, Lt1/o;->p:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-boolean v1, p0, Lt1/o;->q:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget v1, p0, Lt1/o;->r:I

    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "{WorkSpec: "

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lt1/o;->a:Ljava/lang/String;

    const-string v2, "}"

    .line 3
    invoke-static {v0, v1, v2}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
