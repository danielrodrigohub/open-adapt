.class public final Lab/c;
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
.field public final synthetic a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lua/a;",
            "Ljava/util/List<",
            "Lea/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lv9/a;

.field public final synthetic c:Lv9/p0;
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
.method public constructor <init>(Ljava/util/Map;Lv9/a;Lv9/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lua/a;",
            "+",
            "Ljava/util/List<",
            "Lea/m;",
            ">;>;",
            "Lv9/a;",
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lab/c;->a:Ljava/util/Map;

    iput-object p2, p0, Lab/c;->b:Lv9/a;

    iput-object p3, p0, Lab/c;->c:Lv9/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Lea/p;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lab/b;->b:Lab/b;

    .line 4
    iget-object p1, p0, Lab/c;->a:Ljava/util/Map;

    .line 5
    iget-object v0, p0, Lab/c;->b:Lv9/a;

    .line 6
    iget-object v1, p0, Lab/c;->c:Lv9/p0;

    .line 7
    invoke-static {p1, v0, v1}, Lab/b;->f(Ljava/util/Map;Lv9/a;Lv9/p0;)V

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
    iget-object v0, p0, Lab/c;->c:Lv9/p0;

    .line 4
    new-instance v1, Lea/o;

    .line 5
    iget-object v2, p0, Lab/c;->b:Lv9/a;

    .line 6
    invoke-direct {v1, v2, p1}, Lea/o;-><init>(Lv9/a;Ljava/lang/Throwable;)V

    .line 7
    invoke-interface {v0, v1}, Lv9/p0;->b(Lv9/m;)V

    return-void
.end method
