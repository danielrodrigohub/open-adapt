.class public final Lab/k;
.super Ljava/lang/Object;
.source "AdaptKitPairedDevicesRepository.kt"

# interfaces
.implements Lv9/p0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv9/p0<",
        "Lea/p;",
        "Lea/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv9/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lv9/a;


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

    iput-object p1, p0, Lab/k;->a:Lv9/p0;

    iput-object p2, p0, Lab/k;->b:Lv9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcelable;)V
    .locals 4

    .line 1
    check-cast p1, Lea/p;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lab/b;->b:Lab/b;

    .line 4
    invoke-virtual {p1}, Lab/b;->g()Lpa/e;

    move-result-object p1

    .line 5
    new-instance v0, Lab/i;

    iget-object v1, p0, Lab/k;->a:Lv9/p0;

    iget-object v2, p0, Lab/k;->b:Lv9/a;

    invoke-direct {v0, v1, v2}, Lab/i;-><init>(Lv9/p0;Lv9/a;)V

    new-instance v1, Lab/j;

    iget-object v2, p0, Lab/k;->a:Lv9/p0;

    iget-object v3, p0, Lab/k;->b:Lv9/a;

    invoke-direct {v1, v2, v3}, Lab/j;-><init>(Lv9/p0;Lv9/a;)V

    .line 6
    new-instance v2, Lab/g;

    invoke-direct {v2, v0, v1}, Lab/g;-><init>(Lqd/l;Lqd/l;)V

    .line 7
    invoke-interface {p1, v2}, Lpa/e;->b(Lta/a;)V

    return-void
.end method

.method public final b(Lv9/m;)V
    .locals 3

    .line 1
    check-cast p1, Lea/o;

    const-string v0, "error"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lab/k;->a:Lv9/p0;

    .line 4
    new-instance v1, Lea/o;

    .line 5
    iget-object v2, p0, Lab/k;->b:Lv9/a;

    .line 6
    invoke-direct {v1, v2, p1}, Lea/o;-><init>(Lv9/a;Ljava/lang/Throwable;)V

    .line 7
    invoke-interface {v0, v1}, Lv9/p0;->b(Lv9/m;)V

    return-void
.end method
