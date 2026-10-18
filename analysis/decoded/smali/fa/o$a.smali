.class public final Lfa/o$a;
.super Ljava/lang/Object;
.source "UpgradeSlotCheck.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lfa/o;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lfa/o;->y()Lfa/l$d;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lfa/l$d;->h:Lfa/l$c;

    .line 3
    sget-object v1, Lfa/l$c$f;->h:Lfa/l$c$f;

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p0}, Lfa/o;->p()Lfa/l$a;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lfa/l$a;->h:Lfa/l$c;

    .line 6
    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p0}, Lfa/o;->o()Lfa/l$b;

    move-result-object p0

    .line 8
    iget-object p0, p0, Lfa/l$b;->h:Lfa/l$c;

    .line 9
    invoke-static {p0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
