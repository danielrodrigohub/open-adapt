.class public final Lab/b$b;
.super Lrd/o;
.source "AdaptKitPairedDevicesRepository.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lab/b;->a(Lv9/a;Lv9/p0;)Ljava/util/List;
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
.field public final synthetic h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/m;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lv9/a;

.field public final synthetic j:Lv9/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lv9/a;Lv9/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/m;",
            ">;",
            "Lv9/a;",
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lab/b$b;->h:Ljava/util/List;

    iput-object p2, p0, Lab/b$b;->i:Lv9/a;

    iput-object p3, p0, Lab/b$b;->j:Lv9/p0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lab/b;->b:Lab/b;

    .line 2
    invoke-virtual {v0}, Lab/b;->g()Lpa/e;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lab/b$b;->h:Ljava/util/List;

    invoke-static {v1}, Landroidx/lifecycle/o;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 4
    new-instance v2, Lab/f;

    iget-object v3, p0, Lab/b$b;->h:Ljava/util/List;

    iget-object v4, p0, Lab/b$b;->i:Lv9/a;

    iget-object v5, p0, Lab/b$b;->j:Lv9/p0;

    invoke-direct {v2, v3, v4, v5}, Lab/f;-><init>(Ljava/util/List;Lv9/a;Lv9/p0;)V

    .line 5
    invoke-interface {v0, v1, v2}, Lpa/e;->c(Ljava/util/List;Lta/a;)V

    .line 6
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
