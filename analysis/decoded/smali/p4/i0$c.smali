.class public final Lp4/i0$c;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lp4/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final h:I

.field public final synthetic i:Lp4/i0;


# direct methods
.method public constructor <init>(Lp4/i0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp4/i0$c;->i:Lp4/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lp4/i0$c;->h:I

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp4/i0$c;->i:Lp4/i0;

    iget v1, p0, Lp4/i0$c;->h:I

    .line 2
    iget-object v2, v0, Lp4/i0;->z:[Lp4/l0;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lp4/l0;->w()V

    .line 3
    iget-object v1, v0, Lp4/i0;->r:Ll5/d0;

    iget-object v2, v0, Lp4/i0;->k:Ll5/c0;

    iget v0, v0, Lp4/i0;->I:I

    invoke-interface {v2, v0}, Ll5/c0;->c(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ll5/d0;->e(I)V

    return-void
.end method

.method public final isReady()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lp4/i0$c;->i:Lp4/i0;

    iget v1, p0, Lp4/i0$c;->h:I

    .line 2
    invoke-virtual {v0}, Lp4/i0;->E()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lp4/i0;->z:[Lp4/l0;

    aget-object v1, v2, v1

    iget-boolean v0, v0, Lp4/i0;->R:Z

    invoke-virtual {v1, v0}, Lp4/l0;->u(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(Ly0/r;Lq3/g;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lp4/i0$c;->i:Lp4/i0;

    iget v1, p0, Lp4/i0$c;->h:I

    .line 2
    invoke-virtual {v0}, Lp4/i0;->E()Z

    move-result v2

    const/4 v3, -0x3

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lp4/i0;->A(I)V

    .line 4
    iget-object v2, v0, Lp4/i0;->z:[Lp4/l0;

    aget-object v2, v2, v1

    iget-boolean v4, v0, Lp4/i0;->R:Z

    .line 5
    invoke-virtual {v2, p1, p2, p3, v4}, Lp4/l0;->A(Ly0/r;Lq3/g;IZ)I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Lp4/i0;->B(I)V

    :cond_1
    move v3, p1

    :goto_0
    return v3
.end method

.method public final p(J)I
    .locals 4

    .line 1
    iget-object v0, p0, Lp4/i0$c;->i:Lp4/i0;

    iget v1, p0, Lp4/i0$c;->h:I

    .line 2
    invoke-virtual {v0}, Lp4/i0;->E()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lp4/i0;->A(I)V

    .line 4
    iget-object v2, v0, Lp4/i0;->z:[Lp4/l0;

    aget-object v2, v2, v1

    .line 5
    iget-boolean v3, v0, Lp4/i0;->R:Z

    invoke-virtual {v2, p1, p2, v3}, Lp4/l0;->r(JZ)I

    move-result p1

    .line 6
    invoke-virtual {v2, p1}, Lp4/l0;->F(I)V

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Lp4/i0;->B(I)V

    :cond_1
    :goto_0
    return p1
.end method
