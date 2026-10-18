.class public final Lr4/d$a;
.super Ljava/lang/Object;
.source "BundledChunkExtractor.java"

# interfaces
.implements Ls3/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ln3/s0;

.field public final d:Ls3/g;

.field public e:Ln3/s0;

.field public f:Ls3/w;

.field public g:J


# direct methods
.method public constructor <init>(IILn3/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lr4/d$a;->a:I

    .line 3
    iput p2, p0, Lr4/d$a;->b:I

    .line 4
    iput-object p3, p0, Lr4/d$a;->c:Ln3/s0;

    .line 5
    new-instance p1, Ls3/g;

    invoke-direct {p1}, Ls3/g;-><init>()V

    iput-object p1, p0, Lr4/d$a;->d:Ls3/g;

    return-void
.end method


# virtual methods
.method public final a(Lm5/w;I)V
    .locals 2

    iget-object v0, p0, Lr4/d$a;->f:Ls3/w;

    sget v1, Lm5/g0;->a:I

    invoke-interface {v0, p1, p2}, Ls3/w;->f(Lm5/w;I)V

    return-void
.end method

.method public final b(Ln3/s0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr4/d$a;->c:Ln3/s0;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ln3/s0;->g(Ln3/s0;)Ln3/s0;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lr4/d$a;->e:Ln3/s0;

    .line 2
    iget-object v0, p0, Lr4/d$a;->f:Ls3/w;

    sget v1, Lm5/g0;->a:I

    invoke-interface {v0, p1}, Ls3/w;->b(Ln3/s0;)V

    return-void
.end method

.method public final c(JIIILs3/w$a;)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lr4/d$a;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lr4/d$a;->d:Ls3/g;

    iput-object v0, p0, Lr4/d$a;->f:Ls3/w;

    .line 3
    :cond_0
    iget-object v1, p0, Lr4/d$a;->f:Ls3/w;

    sget v0, Lm5/g0;->a:I

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Ls3/w;->c(JIIILs3/w$a;)V

    return-void
.end method

.method public final e(Ll5/h;IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lr4/d$a;->f:Ls3/w;

    sget v1, Lm5/g0;->a:I

    invoke-interface {v0, p1, p2, p3}, Ls3/w;->d(Ll5/h;IZ)I

    move-result p1

    return p1
.end method

.method public final g(Lr4/f$b;J)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lr4/d$a;->d:Ls3/g;

    iput-object p1, p0, Lr4/d$a;->f:Ls3/w;

    return-void

    .line 2
    :cond_0
    iput-wide p2, p0, Lr4/d$a;->g:J

    .line 3
    iget p2, p0, Lr4/d$a;->b:I

    check-cast p1, Lr4/c;

    invoke-virtual {p1, p2}, Lr4/c;->a(I)Ls3/w;

    move-result-object p1

    iput-object p1, p0, Lr4/d$a;->f:Ls3/w;

    .line 4
    iget-object p2, p0, Lr4/d$a;->e:Ln3/s0;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p1, p2}, Ls3/w;->b(Ln3/s0;)V

    :cond_1
    return-void
.end method
