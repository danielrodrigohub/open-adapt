.class public final Lhc/l$d0;
.super Lrd/o;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->g(Lnc/d;)Lhc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lrd/u;

.field public final synthetic i:Lhc/l;

.field public final synthetic j:Lnc/d;
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

.field public final synthetic k:Lnc/d;
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
.method public constructor <init>(Lrd/u;Lhc/l;Lnc/d;Lnc/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrd/u;",
            "Lhc/l;",
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "[B",
            "Lfd/o;",
            ">;",
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "[B",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lhc/l$d0;->h:Lrd/u;

    iput-object p2, p0, Lhc/l$d0;->i:Lhc/l;

    iput-object p3, p0, Lhc/l$d0;->j:Lnc/d;

    iput-object p4, p0, Lhc/l$d0;->k:Lnc/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lhc/l$d0;->h:Lrd/u;

    iget-boolean v0, v0, Lrd/u;->h:Z

    const-string v1, "TRANSFER_FIRMWARE"

    const-string v2, " Firmware Transfer "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v5, " TRANSFER_GOLD_SLOT_START deviceId: "

    .line 3
    invoke-static {v5}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4
    iget-object v6, p0, Lhc/l$d0;->i:Lhc/l;

    .line 5
    iget-object v6, v6, Lhc/l;->h:Ljava/lang/String;

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CORE_RF"

    .line 7
    invoke-interface {v0, v5, v3, v4, v6}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lhc/l$d0;->i:Lhc/l;

    iget-object v5, p0, Lhc/l$d0;->j:Lnc/d;

    iget-object v6, p0, Lhc/l$d0;->k:Lnc/d;

    .line 9
    invoke-virtual {v0, v5, v6, v4}, Lhc/l;->a0(Lnc/d;Lnc/d;Z)V

    .line 10
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    .line 11
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 12
    iget-object v5, p0, Lhc/l$d0;->i:Lhc/l;

    .line 13
    iget-object v5, v5, Lhc/l;->h:Ljava/lang/String;

    const-string v6, ": Targeting GoldSlot!!!!"

    .line 14
    invoke-static {v2, v5, v6}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-interface {v0, v2, v3, v4, v1}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    .line 17
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18
    iget-object v5, p0, Lhc/l$d0;->i:Lhc/l;

    .line 19
    iget-object v5, v5, Lhc/l;->h:Ljava/lang/String;

    const-string v6, ": complete"

    .line 20
    invoke-static {v2, v5, v6}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-interface {v0, v2, v3, v4, v1}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 22
    iget-object v0, p0, Lhc/l$d0;->k:Lnc/d;

    sget-object v1, Lfd/o;->a:Lfd/o;

    invoke-interface {v0, v1}, Llc/a;->b(Ljava/lang/Object;)V

    .line 23
    :goto_0
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
