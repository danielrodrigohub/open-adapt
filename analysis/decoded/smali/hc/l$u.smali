.class public final Lhc/l$u;
.super Ljava/lang/Object;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Llc/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->a0(Lnc/d;Lnc/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llc/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lhc/k0;

.field public final synthetic i:Lnc/d;
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

.field public final synthetic j:Lhc/l;

.field public final synthetic k:Z

.field public final synthetic l:Lnc/d;
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


# direct methods
.method public constructor <init>(Lhc/k0;Lnc/d;Lhc/l;ZLnc/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhc/k0;",
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "[B",
            "Lfd/o;",
            ">;",
            "Lhc/l;",
            "Z",
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "[B",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lhc/l$u;->h:Lhc/k0;

    iput-object p2, p0, Lhc/l$u;->i:Lnc/d;

    iput-object p3, p0, Lhc/l$u;->j:Lhc/l;

    iput-boolean p4, p0, Lhc/l$u;->k:Z

    iput-object p5, p0, Lhc/l$u;->l:Lnc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lhc/l$u;->h:Lhc/k0;

    iget-object v0, p0, Lhc/l$u;->i:Lnc/d;

    invoke-interface {v0}, Lnc/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Lhc/k0;->b([B)V

    .line 3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string v0, " Firmware  Transfer "

    .line 4
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lhc/l$u;->j:Lhc/l;

    .line 6
    iget-object v1, v1, Lhc/l;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": targetGoldSlot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lhc/l$u;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "TRANSFER_FIRMWARE"

    .line 8
    invoke-interface {p1, v0, v1, v2, v3}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 9
    iget-object p1, p0, Lhc/l$u;->j:Lhc/l;

    iget-object v0, p0, Lhc/l$u;->h:Lhc/k0;

    .line 10
    iput-object v0, p1, Lhc/l;->o:Lhc/k0;

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lhc/l$u;->l:Lnc/d;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Unable to set the proper slot before transfer"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    return-void
.end method
