.class public final Lq1/b;
.super Lq1/c;
.source "BatteryNotLowController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq1/c<",
        "Ljava/lang/Boolean;",
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
    iget-object p1, p1, Lr1/g;->b:Lr1/b;

    .line 3
    invoke-direct {p0, p1}, Lq1/c;-><init>(Lr1/d;)V

    return-void
.end method


# virtual methods
.method public final b(Lt1/o;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lt1/o;->j:Lk1/c;

    .line 2
    iget-boolean p1, p1, Lk1/c;->d:Z

    return p1
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
