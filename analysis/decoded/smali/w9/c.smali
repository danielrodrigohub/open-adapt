.class public final Lw9/c;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/z;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lea/m;


# direct methods
.method public constructor <init>(Lea/m;)V
    .locals 0

    iput-object p1, p0, Lw9/c;->h:Lea/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lv9/z;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v0

    .line 4
    iget-object p1, p1, Lv9/z;->k:Ljava/lang/String;

    const-string v1, "AdaptKit>PairNoLongerExists"

    .line 5
    invoke-virtual {v0, v1, p1}, Lfb/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lw9/d$a;->b:Ljava/util/LinkedHashMap;

    .line 7
    iget-object v0, p0, Lw9/c;->h:Lea/m;

    .line 8
    iget-object v0, v0, Lea/m;->h:Ljava/lang/String;

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
