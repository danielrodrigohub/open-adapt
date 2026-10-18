.class public final Lfa/k$i;
.super Ljava/lang/Object;
.source "FirmwareUpdateState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# direct methods
.method public static a(Lfa/k;Lfa/k;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lfa/k$b0;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lfa/k$b0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lfa/k$b0;

    .line 3
    iget p0, p0, Lfa/k$b0;->h:F

    .line 4
    check-cast p1, Lfa/k$b0;

    .line 5
    iget p1, p1, Lfa/k$b0;->h:F

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p0}, Lfa/k;->h()Lfa/k$c0;

    move-result-object p0

    .line 8
    iget p0, p0, Lfa/k$c0;->h:I

    .line 9
    invoke-interface {p1}, Lfa/k;->h()Lfa/k$c0;

    move-result-object p1

    .line 10
    iget p1, p1, Lfa/k$c0;->h:I

    .line 11
    invoke-static {p0, p1}, Lp4/h;->l(II)I

    move-result p0

    :goto_0
    return p0
.end method
