.class public final Lhc/l$e0;
.super Lrd/o;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Lqd/p;


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
        "Lqd/p<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lrd/u;

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


# direct methods
.method public constructor <init>(Lrd/u;Lnc/d;Lhc/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrd/u;",
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "[B",
            "Lfd/o;",
            ">;",
            "Lhc/l;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lhc/l$e0;->h:Lrd/u;

    iput-object p2, p0, Lhc/l$e0;->i:Lnc/d;

    iput-object p3, p0, Lhc/l$e0;->j:Lhc/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 2
    iget-object v0, p0, Lhc/l$e0;->h:Lrd/u;

    iget-boolean v0, v0, Lrd/u;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr p2, v0

    .line 3
    :cond_0
    iget-object v0, p0, Lhc/l$e0;->i:Lnc/d;

    invoke-interface {v0, p1, p2}, Llc/a;->i(FF)V

    .line 4
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v1, " Firmware Transfer progress "

    .line 5
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lhc/l$e0;->j:Lhc/l;

    .line 7
    iget-object v2, v2, Lhc/l;->h:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    const-string v2, "TRANSFERFIRMWARE_PROGRESS"

    .line 9
    invoke-interface {v0, p1, p2, v1, v2}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 10
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
