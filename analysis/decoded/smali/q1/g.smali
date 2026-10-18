.class public final Lq1/g;
.super Lq1/c;
.source "NetworkUnmeteredController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq1/c<",
        "Lp1/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lw1/a;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lr1/g;->a(Landroid/content/Context;Lw1/a;)Lr1/g;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lr1/g;->c:Lr1/e;

    .line 3
    invoke-direct {p0, p1}, Lq1/c;-><init>(Lr1/d;)V

    return-void
.end method


# virtual methods
.method public final b(Lt1/o;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Lt1/o;->j:Lk1/c;

    .line 2
    iget-object p1, p1, Lk1/c;->a:Lk1/m;

    .line 3
    sget-object v0, Lk1/m;->j:Lk1/m;

    if-eq p1, v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 4
    sget-object v0, Lk1/m;->m:Lk1/m;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lp1/b;

    .line 2
    iget-boolean v0, p1, Lp1/b;->a:Z

    if-eqz v0, :cond_1

    .line 3
    iget-boolean p1, p1, Lp1/b;->c:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
