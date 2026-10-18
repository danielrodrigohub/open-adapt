.class public final Lv9/b0;
.super Lrd/o;
.source "AdaptKitPairedDevicesListener.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lea/o;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lea/o;


# direct methods
.method public constructor <init>(Lqd/l;Lea/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/l<",
            "-",
            "Lea/o;",
            "Lfd/o;",
            ">;",
            "Lea/o;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lv9/b0;->h:Lqd/l;

    iput-object p2, p0, Lv9/b0;->i:Lea/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/b0;->h:Lqd/l;

    iget-object v1, p0, Lv9/b0;->i:Lea/o;

    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
