.class public final Lhc/p;
.super Ljava/lang/Object;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Lnc/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/d<",
        "Ljava/lang/Boolean;",
        "[B",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lnc/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "[B",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lhc/l;

.field public final synthetic j:Z

.field public final synthetic k:Lqd/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/p<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic l:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnc/d;Lhc/l;ZLqd/p;Lqd/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "[B",
            "Lfd/o;",
            ">;",
            "Lhc/l;",
            "Z",
            "Lqd/p<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Lfd/o;",
            ">;",
            "Lqd/a<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lhc/p;->h:Lnc/d;

    iput-object p2, p0, Lhc/p;->i:Lhc/l;

    iput-boolean p3, p0, Lhc/p;->j:Z

    iput-object p4, p0, Lhc/p;->k:Lqd/p;

    iput-object p5, p0, Lhc/p;->l:Lqd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lhc/p;->i:Lhc/l;

    .line 2
    iget-object p1, p1, Lhc/l;->o:Lhc/k0;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lhc/k0;->e()V

    .line 4
    :cond_0
    iget-object p1, p0, Lhc/p;->i:Lhc/l;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lhc/l;->o:Lhc/k0;

    .line 6
    iget-object p1, p0, Lhc/p;->l:Lqd/a;

    invoke-interface {p1}, Lqd/a;->invoke()Ljava/lang/Object;

    .line 7
    iget-boolean p1, p0, Lhc/p;->j:Z

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string v1, " TRANSFER_GOLD_SLOT_COMPLETE deviceId: "

    .line 9
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lhc/p;->i:Lhc/l;

    .line 11
    iget-object v2, v2, Lhc/l;->h:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "CORE_RF"

    .line 13
    invoke-interface {p1, v1, v0, v2, v3}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lhc/p;->h:Lnc/d;

    invoke-interface {v0}, Llc/a;->g()V

    .line 2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v1, " Firmware  Transfer started:"

    .line 3
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lhc/p;->i:Lhc/l;

    .line 5
    iget-object v2, v2, Lhc/l;->h:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "TRANSFER_FIRMWARE"

    .line 7
    invoke-interface {v0, v1, v2, v3, v4}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lhc/p;->h:Lnc/d;

    invoke-interface {v0}, Lnc/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final i(FF)V
    .locals 1

    iget-object v0, p0, Lhc/p;->k:Lqd/p;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lqd/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Lhc/p;->h:Lnc/d;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Llc/b;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 5

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/p;->i:Lhc/l;

    .line 2
    iget-object v0, v0, Lhc/l;->o:Lhc/k0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lhc/k0;->e()V

    .line 4
    :cond_0
    iget-object v0, p0, Lhc/p;->i:Lhc/l;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lhc/l;->o:Lhc/k0;

    .line 6
    iget-object v0, p0, Lhc/p;->h:Lnc/d;

    invoke-interface {v0, p1}, Llc/b;->k(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v2, " Firmware  Transfer error:"

    .line 8
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lhc/p;->i:Lhc/l;

    .line 10
    iget-object v3, v3, Lhc/l;->h:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "TRANSFER_FIRMWARE"

    .line 12
    invoke-interface {v0, v2, p1, v3, v4}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 13
    iget-boolean p1, p0, Lhc/p;->j:Z

    if-eqz p1, :cond_1

    .line 14
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string v0, " TRANSFER_GOLD_SLOT_ERROR deviceId: "

    .line 15
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16
    iget-object v2, p0, Lhc/p;->i:Lhc/l;

    .line 17
    iget-object v2, v2, Lhc/l;->h:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CORE_RF"

    .line 19
    invoke-interface {p1, v0, v1, v3, v2}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method
