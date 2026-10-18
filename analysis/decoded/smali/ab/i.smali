.class public final Lab/i;
.super Lrd/o;
.source "AdaptKitPairedDevicesRepository.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Ljava/util/List<",
        "+",
        "Lva/d;",
        ">;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lv9/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lv9/a;


# direct methods
.method public constructor <init>(Lv9/p0;Lv9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;",
            "Lv9/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lab/i;->h:Lv9/p0;

    iput-object p2, p0, Lab/i;->i:Lv9/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPairedDevices about to send "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in onResult pushedChanges=true"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "AdaptKitPairedDevicesRepositoryImpl"

    .line 5
    invoke-static/range {v1 .. v6}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lab/i;->h:Lv9/p0;

    .line 7
    new-instance v0, Lea/x;

    .line 8
    iget-object v1, p0, Lab/i;->i:Lv9/a;

    .line 9
    sget-object v2, Lab/b;->b:Lab/b;

    .line 10
    invoke-virtual {v2}, Lab/b;->h()Ldb/a;

    move-result-object v2

    const/4 v3, 0x0

    .line 11
    invoke-interface {v2, v3}, Ldb/a;->c(Z)Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-static {v2}, Lp4/h;->y(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 13
    invoke-direct {v0, v1, v2}, Lea/x;-><init>(Lv9/a;Ljava/util/List;)V

    .line 14
    invoke-interface {p1, v0}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    .line 15
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
