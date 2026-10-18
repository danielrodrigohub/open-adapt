.class public final Lp4/n$b;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"

# interfaces
.implements Ls3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ln3/s0;


# direct methods
.method public constructor <init>(Ln3/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/n$b;->a:Ln3/s0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(JJ)V
    .locals 0

    return-void
.end method

.method public final e(Ls3/i;Ls3/t;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const p2, 0x7fffffff

    invoke-interface {p1, p2}, Ls3/i;->d(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Ls3/j;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-interface {p1, v0, v1}, Ls3/j;->p(II)Ls3/w;

    move-result-object v0

    .line 2
    new-instance v1, Ls3/u$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Ls3/u$b;-><init>(J)V

    invoke-interface {p1, v1}, Ls3/j;->j(Ls3/u;)V

    .line 3
    invoke-interface {p1}, Ls3/j;->b()V

    .line 4
    iget-object p1, p0, Lp4/n$b;->a:Ln3/s0;

    .line 5
    invoke-virtual {p1}, Ln3/s0;->b()Ln3/s0$a;

    move-result-object p1

    const-string v1, "text/x-unknown"

    .line 6
    iput-object v1, p1, Ln3/s0$a;->k:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lp4/n$b;->a:Ln3/s0;

    iget-object v1, v1, Ln3/s0;->s:Ljava/lang/String;

    .line 8
    iput-object v1, p1, Ln3/s0$a;->h:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Ls3/w;->b(Ln3/s0;)V

    return-void
.end method

.method public final j(Ls3/i;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
