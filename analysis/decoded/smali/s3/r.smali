.class public final Ls3/r;
.super Ljava/lang/Object;
.source "Id3Peeker.java"


# instance fields
.field public final a:Lm5/w;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm5/w;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lm5/w;-><init>(I)V

    iput-object v0, p0, Ls3/r;->a:Lm5/w;

    return-void
.end method


# virtual methods
.method public final a(Ls3/i;Lk4/g$a;)Lf4/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 1
    :goto_0
    :try_start_0
    iget-object v3, p0, Ls3/r;->a:Lm5/w;

    .line 2
    iget-object v3, v3, Lm5/w;->a:[B

    const/16 v4, 0xa

    .line 3
    invoke-interface {p1, v3, v0, v4}, Ls3/i;->s([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-object v3, p0, Ls3/r;->a:Lm5/w;

    invoke-virtual {v3, v0}, Lm5/w;->D(I)V

    .line 5
    iget-object v3, p0, Ls3/r;->a:Lm5/w;

    invoke-virtual {v3}, Lm5/w;->v()I

    move-result v3

    const v5, 0x494433

    if-eq v3, v5, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    iget-object v3, p0, Ls3/r;->a:Lm5/w;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lm5/w;->E(I)V

    .line 7
    iget-object v3, p0, Ls3/r;->a:Lm5/w;

    invoke-virtual {v3}, Lm5/w;->s()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    if-nez v1, :cond_1

    .line 8
    new-array v1, v5, [B

    .line 9
    iget-object v6, p0, Ls3/r;->a:Lm5/w;

    .line 10
    iget-object v6, v6, Lm5/w;->a:[B

    .line 11
    invoke-static {v6, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    invoke-interface {p1, v1, v4, v3}, Ls3/i;->s([BII)V

    .line 13
    new-instance v3, Lk4/g;

    invoke-direct {v3, p2}, Lk4/g;-><init>(Lk4/g$a;)V

    invoke-virtual {v3, v1, v5}, Lk4/g;->l([BI)Lf4/a;

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_1
    invoke-interface {p1, v3}, Ls3/i;->t(I)V

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 15
    :catch_0
    :goto_2
    invoke-interface {p1}, Ls3/i;->i()V

    .line 16
    invoke-interface {p1, v2}, Ls3/i;->t(I)V

    return-object v1
.end method
