.class public final Lq1/f;
.super Lq1/c;
.source "NetworkNotRoamingController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq1/c<",
        "Lp1/b;",
        ">;"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkNotRoamingCtrlr"

    invoke-static {v0}, Lk1/l;->e(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

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
    .locals 1

    .line 1
    iget-object p1, p1, Lt1/o;->j:Lk1/c;

    .line 2
    iget-object p1, p1, Lk1/c;->a:Lk1/m;

    .line 3
    sget-object v0, Lk1/m;->k:Lk1/m;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
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
    iget-boolean p1, p1, Lp1/b;->d:Z

    if-nez p1, :cond_0

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
