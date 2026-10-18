.class public final Ln3/b2$d;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final A:Ln3/y0;

.field public static final B:Ln3/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h$a<",
            "Ln3/b2$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Ljava/lang/Object;

.field public static final z:Ljava/lang/Object;


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public j:Ln3/y0;

.field public k:Ljava/lang/Object;

.field public l:J

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public r:Ln3/y0$f;

.field public s:Z

.field public t:J

.field public u:J

.field public v:I

.field public w:I

.field public x:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln3/b2$d;->y:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln3/b2$d;->z:Ljava/lang/Object;

    .line 3
    new-instance v0, Ln3/y0$b;

    invoke-direct {v0}, Ln3/y0$b;-><init>()V

    const-string v1, "com.google.android.exoplayer2.Timeline"

    .line 4
    iput-object v1, v0, Ln3/y0$b;->a:Ljava/lang/String;

    .line 5
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 6
    iput-object v1, v0, Ln3/y0$b;->b:Landroid/net/Uri;

    .line 7
    invoke-virtual {v0}, Ln3/y0$b;->a()Ln3/y0;

    move-result-object v0

    sput-object v0, Ln3/b2$d;->A:Ln3/y0;

    .line 8
    sget-object v0, Ln3/p;->d:Ln3/p;

    sput-object v0, Ln3/b2$d;->B:Ln3/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ln3/b2$d;->y:Ljava/lang/Object;

    iput-object v0, p0, Ln3/b2$d;->h:Ljava/lang/Object;

    .line 3
    sget-object v0, Ln3/b2$d;->A:Ln3/y0;

    iput-object v0, p0, Ln3/b2$d;->j:Ln3/y0;

    return-void
.end method

.method public static e(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Ln3/b2$d;->g()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Ln3/b2$d;->t:J

    invoke-static {v0, v1}, Lm5/g0;->X(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Ln3/b2$d;->u:J

    invoke-static {v0, v1}, Lm5/g0;->X(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Ln3/b2$d;->q:Z

    iget-object v1, p0, Ln3/b2$d;->r:Ln3/y0$f;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget-object v0, p0, Ln3/b2$d;->r:Ln3/y0$f;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Ln3/b2$d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Ln3/b2$d;

    .line 3
    iget-object v2, p0, Ln3/b2$d;->h:Ljava/lang/Object;

    iget-object v3, p1, Ln3/b2$d;->h:Ljava/lang/Object;

    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/b2$d;->j:Ln3/y0;

    iget-object v3, p1, Ln3/b2$d;->j:Ln3/y0;

    .line 4
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/b2$d;->k:Ljava/lang/Object;

    iget-object v3, p1, Ln3/b2$d;->k:Ljava/lang/Object;

    .line 5
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/b2$d;->r:Ln3/y0$f;

    iget-object v3, p1, Ln3/b2$d;->r:Ln3/y0$f;

    .line 6
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Ln3/b2$d;->l:J

    iget-wide v4, p1, Ln3/b2$d;->l:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Ln3/b2$d;->m:J

    iget-wide v4, p1, Ln3/b2$d;->m:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Ln3/b2$d;->n:J

    iget-wide v4, p1, Ln3/b2$d;->n:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Ln3/b2$d;->o:Z

    iget-boolean v3, p1, Ln3/b2$d;->o:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Ln3/b2$d;->p:Z

    iget-boolean v3, p1, Ln3/b2$d;->p:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Ln3/b2$d;->s:Z

    iget-boolean v3, p1, Ln3/b2$d;->s:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Ln3/b2$d;->t:J

    iget-wide v4, p1, Ln3/b2$d;->t:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Ln3/b2$d;->u:J

    iget-wide v4, p1, Ln3/b2$d;->u:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Ln3/b2$d;->v:I

    iget v3, p1, Ln3/b2$d;->v:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Ln3/b2$d;->w:I

    iget v3, p1, Ln3/b2$d;->w:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Ln3/b2$d;->x:J

    iget-wide v4, p1, Ln3/b2$d;->x:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final f(Ljava/lang/Object;Ln3/y0;Ljava/lang/Object;JJJZZLn3/y0$f;JJIIJ)Ln3/b2$d;
    .locals 5

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p12

    move-object v3, p1

    .line 1
    iput-object v3, v0, Ln3/b2$d;->h:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 2
    :cond_0
    sget-object v3, Ln3/b2$d;->A:Ln3/y0;

    :goto_0
    iput-object v3, v0, Ln3/b2$d;->j:Ln3/y0;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v1, Ln3/y0;->i:Ln3/y0$h;

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v1, Ln3/y0$g;->g:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_1
    iput-object v1, v0, Ln3/b2$d;->i:Ljava/lang/Object;

    move-object v1, p3

    .line 6
    iput-object v1, v0, Ln3/b2$d;->k:Ljava/lang/Object;

    move-wide v3, p4

    .line 7
    iput-wide v3, v0, Ln3/b2$d;->l:J

    move-wide v3, p6

    .line 8
    iput-wide v3, v0, Ln3/b2$d;->m:J

    move-wide v3, p8

    .line 9
    iput-wide v3, v0, Ln3/b2$d;->n:J

    move v1, p10

    .line 10
    iput-boolean v1, v0, Ln3/b2$d;->o:Z

    move/from16 v1, p11

    .line 11
    iput-boolean v1, v0, Ln3/b2$d;->p:Z

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v1

    .line 12
    :goto_2
    iput-boolean v3, v0, Ln3/b2$d;->q:Z

    .line 13
    iput-object v2, v0, Ln3/b2$d;->r:Ln3/y0$f;

    move-wide/from16 v2, p13

    .line 14
    iput-wide v2, v0, Ln3/b2$d;->t:J

    move-wide/from16 v2, p15

    .line 15
    iput-wide v2, v0, Ln3/b2$d;->u:J

    move/from16 v2, p17

    .line 16
    iput v2, v0, Ln3/b2$d;->v:I

    move/from16 v2, p18

    .line 17
    iput v2, v0, Ln3/b2$d;->w:I

    move-wide/from16 v2, p19

    .line 18
    iput-wide v2, v0, Ln3/b2$d;->x:J

    .line 19
    iput-boolean v1, v0, Ln3/b2$d;->s:Z

    return-object v0
.end method

.method public final g()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Ln3/b2$d;->j:Ln3/y0;

    invoke-virtual {v2}, Ln3/y0;->a()Landroid/os/Bundle;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    .line 5
    invoke-static {v1}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ln3/b2$d;->l:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ln3/b2$d;->m:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x4

    .line 7
    invoke-static {v1}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ln3/b2$d;->n:J

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x5

    .line 9
    invoke-static {v1}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Ln3/b2$d;->o:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x6

    .line 10
    invoke-static {v1}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Ln3/b2$d;->p:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget-object v1, p0, Ln3/b2$d;->r:Ln3/y0$f;

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    .line 12
    invoke-static {v2}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ln3/y0$f;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const/16 v1, 0x8

    .line 13
    invoke-static {v1}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Ln3/b2$d;->s:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x9

    .line 14
    invoke-static {v1}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ln3/b2$d;->t:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/16 v1, 0xa

    .line 15
    invoke-static {v1}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ln3/b2$d;->u:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/16 v1, 0xb

    .line 16
    invoke-static {v1}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ln3/b2$d;->v:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xc

    .line 17
    invoke-static {v1}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ln3/b2$d;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xd

    .line 18
    invoke-static {v1}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ln3/b2$d;->x:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/b2$d;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Ln3/b2$d;->j:Ln3/y0;

    invoke-virtual {v1}, Ln3/y0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Ln3/b2$d;->k:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Ln3/b2$d;->r:Ln3/y0$f;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ln3/y0$f;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-wide v2, p0, Ln3/b2$d;->l:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-wide v2, p0, Ln3/b2$d;->m:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-wide v2, p0, Ln3/b2$d;->n:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget-boolean v2, p0, Ln3/b2$d;->o:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget-boolean v2, p0, Ln3/b2$d;->p:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 10
    iget-boolean v2, p0, Ln3/b2$d;->s:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 11
    iget-wide v2, p0, Ln3/b2$d;->t:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 12
    iget-wide v2, p0, Ln3/b2$d;->u:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 13
    iget v2, p0, Ln3/b2$d;->v:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 14
    iget v2, p0, Ln3/b2$d;->w:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 15
    iget-wide v2, p0, Ln3/b2$d;->x:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
