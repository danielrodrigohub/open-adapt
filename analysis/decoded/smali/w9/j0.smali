.class public final Lw9/j0;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/j;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lw9/a;

.field public final synthetic i:Lw9/x;


# direct methods
.method public constructor <init>(Lw9/a;Lw9/x;)V
    .locals 0

    iput-object p1, p0, Lw9/j0;->h:Lw9/a;

    iput-object p2, p0, Lw9/j0;->i:Lw9/x;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lv9/j;

    const-string v0, "$this$generateConnectionRequiredConditionalCheck"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lw9/j0;->h:Lw9/a;

    .line 4
    iget-object p1, p1, Lw9/a;->i:Lw9/u1;

    .line 5
    sget-object v0, Lw9/u1;->j:Lw9/u1;

    if-ne p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lw9/j0;->i:Lw9/x;

    .line 7
    invoke-virtual {p1}, Lw9/x;->A0()Lya/b;

    move-result-object p1

    .line 8
    sget-object v0, Lfa/k$m;->h:Lfa/k$m;

    invoke-interface {p1, v0}, Lya/b;->i(Lfa/k;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lw9/u1;->k:Lw9/u1;

    if-ne p1, v0, :cond_1

    .line 10
    iget-object p1, p0, Lw9/j0;->i:Lw9/x;

    .line 11
    invoke-virtual {p1}, Lw9/x;->B0()Lya/b;

    move-result-object p1

    .line 12
    sget-object v0, Lfa/k$m;->h:Lfa/k$m;

    invoke-interface {p1, v0}, Lya/b;->i(Lfa/k;)V

    .line 13
    :cond_1
    :goto_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
