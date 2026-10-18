.class public final Lp4/q0$a;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lp4/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public h:I

.field public i:Z

.field public final synthetic j:Lp4/q0;


# direct methods
.method public constructor <init>(Lp4/q0;)V
    .locals 0

    iput-object p1, p0, Lp4/q0$a;->j:Lp4/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lp4/q0$a;->i:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lp4/q0$a;->j:Lp4/q0;

    .line 3
    iget-object v1, v0, Lp4/q0;->l:Lp4/e0$a;

    .line 4
    iget-object v0, v0, Lp4/q0;->q:Ln3/s0;

    iget-object v0, v0, Ln3/s0;->s:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lm5/s;->i(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lp4/q0$a;->j:Lp4/q0;

    iget-object v3, v0, Lp4/q0;->q:Ln3/s0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 6
    invoke-virtual/range {v1 .. v7}, Lp4/e0$a;->b(ILn3/s0;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lp4/q0$a;->i:Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp4/q0$a;->j:Lp4/q0;

    iget-boolean v1, v0, Lp4/q0;->r:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lp4/q0;->p:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->b()V

    :cond_0
    return-void
.end method

.method public final isReady()Z
    .locals 1

    iget-object v0, p0, Lp4/q0$a;->j:Lp4/q0;

    iget-boolean v0, v0, Lp4/q0;->s:Z

    return v0
.end method

.method public final j(Ly0/r;Lq3/g;I)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lp4/q0$a;->a()V

    .line 2
    iget-object v0, p0, Lp4/q0$a;->j:Lp4/q0;

    iget-boolean v1, v0, Lp4/q0;->s:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    iget-object v3, v0, Lp4/q0;->t:[B

    if-nez v3, :cond_0

    .line 3
    iput v2, p0, Lp4/q0$a;->h:I

    .line 4
    :cond_0
    iget v3, p0, Lp4/q0$a;->h:I

    const/4 v4, -0x4

    if-ne v3, v2, :cond_1

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p2, p1}, Lq3/a;->k(I)V

    return v4

    :cond_1
    and-int/lit8 v5, p3, 0x2

    const/4 v6, 0x1

    if-nez v5, :cond_6

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, -0x3

    return p1

    .line 6
    :cond_3
    iget-object p1, v0, Lp4/q0;->t:[B

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, v6}, Lq3/a;->k(I)V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p2, Lq3/g;->l:J

    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lp4/q0$a;->j:Lp4/q0;

    iget p1, p1, Lp4/q0;->u:I

    invoke-virtual {p2, p1}, Lq3/g;->q(I)V

    .line 11
    iget-object p1, p2, Lq3/g;->j:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lp4/q0$a;->j:Lp4/q0;

    iget-object v0, p2, Lp4/q0;->t:[B

    const/4 v1, 0x0

    iget p2, p2, Lp4/q0;->u:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_4
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_5

    .line 12
    iput v2, p0, Lp4/q0$a;->h:I

    :cond_5
    return v4

    .line 13
    :cond_6
    :goto_0
    iget-object p2, v0, Lp4/q0;->q:Ln3/s0;

    iput-object p2, p1, Ly0/r;->c:Ljava/lang/Object;

    .line 14
    iput v6, p0, Lp4/q0$a;->h:I

    const/4 p1, -0x5

    return p1
.end method

.method public final p(J)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp4/q0$a;->a()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 2
    iget p1, p0, Lp4/q0$a;->h:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 3
    iput p2, p0, Lp4/q0$a;->h:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
