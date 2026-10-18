.class public final Lx3/d;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Ls3/j;


# instance fields
.field public final h:J

.field public final i:Ls3/j;


# direct methods
.method public constructor <init>(JLs3/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lx3/d;->h:J

    .line 3
    iput-object p3, p0, Lx3/d;->i:Ls3/j;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lx3/d;->i:Ls3/j;

    invoke-interface {v0}, Ls3/j;->b()V

    return-void
.end method

.method public final j(Ls3/u;)V
    .locals 2

    iget-object v0, p0, Lx3/d;->i:Ls3/j;

    new-instance v1, Lx3/d$a;

    invoke-direct {v1, p0, p1}, Lx3/d$a;-><init>(Lx3/d;Ls3/u;)V

    invoke-interface {v0, v1}, Ls3/j;->j(Ls3/u;)V

    return-void
.end method

.method public final p(II)Ls3/w;
    .locals 1

    iget-object v0, p0, Lx3/d;->i:Ls3/j;

    invoke-interface {v0, p1, p2}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    return-object p1
.end method
