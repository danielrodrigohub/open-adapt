.class public final Lz3/a;
.super Ls3/d;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Lz3/e;


# direct methods
.method public constructor <init>(JJLp3/b0$a;Z)V
    .locals 8

    iget v5, p5, Lp3/b0$a;->f:I

    iget v6, p5, Lp3/b0$a;->c:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v7, p6

    invoke-direct/range {v0 .. v7}, Ls3/d;-><init>(JJIIZ)V

    return-void
.end method


# virtual methods
.method public final c(J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Ls3/d;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final d()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
