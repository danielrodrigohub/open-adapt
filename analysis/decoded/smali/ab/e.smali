.class public final Lab/e;
.super Lrd/o;
.source "AdaptKitPairedDevicesRepository.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Ljava/lang/Throwable;",
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

    iput-object p1, p0, Lab/e;->h:Lv9/p0;

    iput-object p2, p0, Lab/e;->i:Lv9/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lab/e;->h:Lv9/p0;

    .line 4
    new-instance v1, Lea/o;

    .line 5
    iget-object v2, p0, Lab/e;->i:Lv9/a;

    .line 6
    invoke-direct {v1, v2, p1}, Lea/o;-><init>(Lv9/a;Ljava/lang/Throwable;)V

    .line 7
    invoke-interface {v0, v1}, Lv9/p0;->b(Lv9/m;)V

    .line 8
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
