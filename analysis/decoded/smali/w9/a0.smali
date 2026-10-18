.class public final Lw9/a0;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lya/b;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lw9/a;

.field public final synthetic i:Lv9/x0;


# direct methods
.method public constructor <init>(Lw9/a;Lv9/x0;)V
    .locals 0

    iput-object p1, p0, Lw9/a0;->h:Lw9/a;

    iput-object p2, p0, Lw9/a0;->i:Lv9/x0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lya/b;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lw9/a0;->h:Lw9/a;

    .line 4
    iget-object v0, v0, Lw9/a;->h:Lv9/a;

    .line 5
    iget-object v1, p0, Lw9/a0;->i:Lv9/x0;

    .line 6
    iget-object v1, v1, Lv9/x0;->b:Lba/h;

    .line 7
    invoke-interface {p1, v0, v1}, Lya/b;->K(Lv9/a;Lba/h;)V

    .line 8
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
