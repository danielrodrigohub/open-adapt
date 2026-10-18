.class public final Lw9/u;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/j;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lw9/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw9/u;

    invoke-direct {v0}, Lw9/u;-><init>()V

    sput-object v0, Lw9/u;->h:Lw9/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lv9/j;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v0

    .line 4
    iget-object p1, p1, Lv9/j;->k:Ljava/lang/String;

    const-string v1, "AdaptKit>SelectMode"

    .line 5
    invoke-virtual {v0, v1, p1}, Lfb/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
