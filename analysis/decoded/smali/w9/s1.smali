.class public final Lw9/s1;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/g2<",
        "Lv9/w1;",
        ">;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic i:Lv9/a;

.field public final synthetic j:Ljd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd/d<",
            "Lba/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lv9/a;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lv9/a;",
            "Ljd/d<",
            "-",
            "Lba/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw9/s1;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lw9/s1;->i:Lv9/a;

    iput-object p3, p0, Lw9/s1;->j:Ljd/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lv9/g2;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lw9/r1;

    iget-object v1, p0, Lw9/s1;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lw9/s1;->i:Lv9/a;

    iget-object v3, p0, Lw9/s1;->j:Ljd/d;

    invoke-direct {v0, v1, v2, v3}, Lw9/r1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lv9/a;Ljd/d;)V

    .line 4
    iput-object v0, p1, Lv9/g2;->b:Lqd/l;

    .line 5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
