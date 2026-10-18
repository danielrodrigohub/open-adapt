.class public final Lhc/l$a0;
.super Ljava/lang/Object;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Lrc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->g(Lnc/d;)Lhc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrd/u;

.field public final synthetic b:Lhc/l;

.field public final synthetic c:Lnc/d;
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

.field public final synthetic d:Lnc/d;
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

    iput-object p1, p0, Lhc/l$a0;->a:Lrd/u;

    iput-object p2, p0, Lhc/l$a0;->b:Lhc/l;

    iput-object p3, p0, Lhc/l$a0;->c:Lnc/d;

    iput-object p4, p0, Lhc/l$a0;->d:Lnc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lhc/l$a0;->a:Lrd/u;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    iput-boolean p1, v0, Lrd/u;->h:Z

    .line 2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string v0, " for device "

    .line 3
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lhc/l$a0;->b:Lhc/l;

    .line 5
    iget-object v2, v2, Lhc/l;->h:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isGoldSlotFixNeeded is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhc/l$a0;->a:Lrd/u;

    iget-boolean v2, v2, Lrd/u;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "TRANSFER_FIRMWARE"

    .line 7
    invoke-interface {p1, v0, v2, v1, v3}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lhc/l$a0;->b:Lhc/l;

    iget-object v0, p0, Lhc/l$a0;->c:Lnc/d;

    iget-object v1, p0, Lhc/l$a0;->d:Lnc/d;

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lhc/l;->a0(Lnc/d;Lnc/d;Z)V

    return-void
.end method
