.class public interface abstract Ls3/w;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/w$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lm5/w;I)V
.end method

.method public abstract b(Ln3/s0;)V
.end method

.method public abstract c(JIIILs3/w$a;)V
.end method

.method public d(Ll5/h;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2, p3}, Ls3/w;->e(Ll5/h;IZ)I

    move-result p1

    return p1
.end method

.method public abstract e(Ll5/h;IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public f(Lm5/w;I)V
    .locals 0

    invoke-interface {p0, p1, p2}, Ls3/w;->a(Lm5/w;I)V

    return-void
.end method
