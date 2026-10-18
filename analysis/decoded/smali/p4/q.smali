.class public final Lp4/q;
.super Ljava/lang/Object;
.source "IcyDataSource.java"

# interfaces
.implements Ll5/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/q$a;
    }
.end annotation


# instance fields
.field public final a:Ll5/j;

.field public final b:I

.field public final c:Lp4/q$a;

.field public final d:[B

.field public e:I


# direct methods
.method public constructor <init>(Ll5/j;ILp4/q$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lm5/a;->a(Z)V

    .line 3
    iput-object p1, p0, Lp4/q;->a:Ll5/j;

    .line 4
    iput p2, p0, Lp4/q;->b:I

    .line 5
    iput-object p3, p0, Lp4/q;->c:Lp4/q$a;

    new-array p1, v0, [B

    .line 6
    iput-object p1, p0, Lp4/q;->d:[B

    .line 7
    iput p2, p0, Lp4/q;->e:I

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lp4/q;->e:I

    const/4 v2, -0x1

    if-nez v1, :cond_8

    .line 2
    iget-object v1, v0, Lp4/q;->a:Ll5/j;

    iget-object v3, v0, Lp4/q;->d:[B

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v3, v4, v5}, Ll5/h;->b([BII)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_4

    .line 3
    :cond_0
    iget-object v1, v0, Lp4/q;->d:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    new-array v3, v1, [B

    move v6, v1

    move v7, v4

    :goto_0
    if-lez v6, :cond_3

    .line 5
    iget-object v8, v0, Lp4/q;->a:Ll5/j;

    invoke-interface {v8, v3, v7, v6}, Ll5/h;->b([BII)I

    move-result v8

    if-ne v8, v2, :cond_2

    goto :goto_4

    :cond_2
    add-int/2addr v7, v8

    sub-int/2addr v6, v8

    goto :goto_0

    :cond_3
    :goto_1
    if-lez v1, :cond_4

    add-int/lit8 v4, v1, -0x1

    .line 6
    aget-byte v6, v3, v4

    if-nez v6, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    if-lez v1, :cond_6

    .line 7
    iget-object v4, v0, Lp4/q;->c:Lp4/q$a;

    new-instance v6, Lm5/w;

    invoke-direct {v6, v3, v1}, Lm5/w;-><init>([BI)V

    check-cast v4, Lp4/i0$a;

    .line 8
    iget-boolean v1, v4, Lp4/i0$a;->m:Z

    if-nez v1, :cond_5

    .line 9
    iget-wide v7, v4, Lp4/i0$a;->j:J

    goto :goto_2

    .line 10
    :cond_5
    iget-object v1, v4, Lp4/i0$a;->n:Lp4/i0;

    sget-object v3, Lp4/i0;->T:Ljava/util/Map;

    .line 11
    invoke-virtual {v1, v5}, Lp4/i0;->x(Z)J

    move-result-wide v7

    .line 12
    iget-wide v9, v4, Lp4/i0$a;->j:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :goto_2
    move-wide v10, v7

    .line 13
    iget v1, v6, Lm5/w;->c:I

    iget v3, v6, Lm5/w;->b:I

    sub-int v13, v1, v3

    .line 14
    iget-object v9, v4, Lp4/i0$a;->l:Ls3/w;

    .line 15
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v9, v6, v13}, Ls3/w;->f(Lm5/w;I)V

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 17
    invoke-interface/range {v9 .. v15}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 18
    iput-boolean v5, v4, Lp4/i0$a;->m:Z

    :cond_6
    :goto_3
    move v4, v5

    :goto_4
    if-eqz v4, :cond_7

    .line 19
    iget v1, v0, Lp4/q;->b:I

    iput v1, v0, Lp4/q;->e:I

    goto :goto_5

    :cond_7
    return v2

    .line 20
    :cond_8
    :goto_5
    iget-object v1, v0, Lp4/q;->a:Ll5/j;

    iget v3, v0, Lp4/q;->e:I

    move/from16 v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-interface {v1, v4, v5, v3}, Ll5/h;->b([BII)I

    move-result v1

    if-eq v1, v2, :cond_9

    .line 21
    iget v2, v0, Lp4/q;->e:I

    sub-int/2addr v2, v1

    iput v2, v0, Lp4/q;->e:I

    :cond_9
    return v1
.end method

.method public final close()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lp4/q;->a:Ll5/j;

    invoke-interface {v0}, Ll5/j;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final j(Ll5/j0;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lp4/q;->a:Ll5/j;

    invoke-interface {v0, p1}, Ll5/j;->j(Ll5/j0;)V

    return-void
.end method

.method public final l(Ll5/m;)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final o()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lp4/q;->a:Ll5/j;

    invoke-interface {v0}, Ll5/j;->o()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
