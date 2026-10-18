.class public final Lx3/d$a;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Ls3/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx3/d;->j(Ls3/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls3/u;

.field public final synthetic b:Lx3/d;


# direct methods
.method public constructor <init>(Lx3/d;Ls3/u;)V
    .locals 0

    iput-object p1, p0, Lx3/d$a;->b:Lx3/d;

    iput-object p2, p0, Lx3/d$a;->a:Ls3/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    iget-object v0, p0, Lx3/d$a;->a:Ls3/u;

    invoke-interface {v0}, Ls3/u;->f()Z

    move-result v0

    return v0
.end method

.method public final h(J)Ls3/u$a;
    .locals 8

    .line 1
    iget-object v0, p0, Lx3/d$a;->a:Ls3/u;

    invoke-interface {v0, p1, p2}, Ls3/u;->h(J)Ls3/u$a;

    move-result-object p1

    .line 2
    new-instance p2, Ls3/u$a;

    new-instance v0, Ls3/v;

    iget-object v1, p1, Ls3/u$a;->a:Ls3/v;

    iget-wide v2, v1, Ls3/v;->a:J

    iget-wide v4, v1, Ls3/v;->b:J

    iget-object v1, p0, Lx3/d$a;->b:Lx3/d;

    .line 3
    iget-wide v6, v1, Lx3/d;->h:J

    add-long/2addr v4, v6

    .line 4
    invoke-direct {v0, v2, v3, v4, v5}, Ls3/v;-><init>(JJ)V

    new-instance v1, Ls3/v;

    iget-object p1, p1, Ls3/u$a;->b:Ls3/v;

    iget-wide v2, p1, Ls3/v;->a:J

    iget-wide v4, p1, Ls3/v;->b:J

    add-long/2addr v4, v6

    .line 5
    invoke-direct {v1, v2, v3, v4, v5}, Ls3/v;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Ls3/u$a;-><init>(Ls3/v;Ls3/v;)V

    return-object p2
.end method

.method public final i()J
    .locals 2

    iget-object v0, p0, Lx3/d$a;->a:Ls3/u;

    invoke-interface {v0}, Ls3/u;->i()J

    move-result-wide v0

    return-wide v0
.end method
