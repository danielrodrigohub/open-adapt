.class public final Lc4/a0$a;
.super Ljava/lang/Object;
.source "TsBinarySearchSeeker.java"

# interfaces
.implements Ls3/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lm5/d0;

.field public final b:Lm5/w;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(ILm5/d0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc4/a0$a;->c:I

    .line 3
    iput-object p2, p0, Lc4/a0$a;->a:Lm5/d0;

    .line 4
    iput p3, p0, Lc4/a0$a;->d:I

    .line 5
    new-instance p1, Lm5/w;

    invoke-direct {p1}, Lm5/w;-><init>()V

    iput-object p1, p0, Lc4/a0$a;->b:Lm5/w;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc4/a0$a;->b:Lm5/w;

    sget-object v1, Lm5/g0;->f:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lm5/w;->B([BI)V

    return-void
.end method

.method public final b(Ls3/i;J)Ls3/a$e;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v1

    .line 2
    iget v3, v0, Lc4/a0$a;->d:I

    int-to-long v3, v3

    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 3
    iget-object v4, v0, Lc4/a0$a;->b:Lm5/w;

    invoke-virtual {v4, v3}, Lm5/w;->A(I)V

    .line 4
    iget-object v4, v0, Lc4/a0$a;->b:Lm5/w;

    .line 5
    iget-object v4, v4, Lm5/w;->a:[B

    const/4 v5, 0x0

    move-object/from16 v6, p1

    .line 6
    invoke-interface {v6, v4, v5, v3}, Ls3/i;->s([BII)V

    .line 7
    iget-object v3, v0, Lc4/a0$a;->b:Lm5/w;

    .line 8
    iget v4, v3, Lm5/w;->c:I

    const-wide/16 v5, -0x1

    move-wide v9, v5

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    :goto_0
    iget v13, v3, Lm5/w;->c:I

    iget v14, v3, Lm5/w;->b:I

    sub-int/2addr v13, v14

    const/16 v15, 0xbc

    if-lt v13, v15, :cond_6

    .line 10
    iget-object v13, v3, Lm5/w;->a:[B

    :goto_1
    if-ge v14, v4, :cond_0

    .line 11
    aget-byte v15, v13, v14

    const/16 v7, 0x47

    if-eq v15, v7, :cond_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    add-int/lit16 v7, v14, 0xbc

    if-le v7, v4, :cond_1

    goto :goto_2

    .line 12
    :cond_1
    iget v5, v0, Lc4/a0$a;->c:I

    invoke-static {v3, v14, v5}, Ld3/e;->o(Lm5/w;II)J

    move-result-wide v5

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v5, v15

    if-eqz v8, :cond_5

    .line 13
    iget-object v8, v0, Lc4/a0$a;->a:Lm5/d0;

    invoke-virtual {v8, v5, v6}, Lm5/d0;->b(J)J

    move-result-wide v5

    cmp-long v8, v5, p2

    if-lez v8, :cond_3

    cmp-long v3, v11, v15

    if-nez v3, :cond_2

    .line 14
    invoke-static {v5, v6, v1, v2}, Ls3/a$e;->a(JJ)Ls3/a$e;

    move-result-object v1

    goto :goto_3

    :cond_2
    add-long/2addr v1, v9

    .line 15
    invoke-static {v1, v2}, Ls3/a$e;->b(J)Ls3/a$e;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-wide/32 v8, 0x186a0

    add-long/2addr v8, v5

    cmp-long v8, v8, p2

    if-lez v8, :cond_4

    int-to-long v3, v14

    add-long/2addr v1, v3

    .line 16
    invoke-static {v1, v2}, Ls3/a$e;->b(J)Ls3/a$e;

    move-result-object v1

    goto :goto_3

    :cond_4
    int-to-long v8, v14

    move-wide v11, v5

    move-wide v9, v8

    .line 17
    :cond_5
    invoke-virtual {v3, v7}, Lm5/w;->D(I)V

    int-to-long v5, v7

    goto :goto_0

    :cond_6
    :goto_2
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v11, v3

    if-eqz v3, :cond_7

    add-long/2addr v1, v5

    .line 18
    invoke-static {v11, v12, v1, v2}, Ls3/a$e;->c(JJ)Ls3/a$e;

    move-result-object v1

    goto :goto_3

    .line 19
    :cond_7
    sget-object v1, Ls3/a$e;->d:Ls3/a$e;

    :goto_3
    return-object v1
.end method
