.class public final Lw9/n0;
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


# direct methods
.method public constructor <init>(Lw9/a;)V
    .locals 0

    iput-object p1, p0, Lw9/n0;->h:Lw9/a;

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
    iget-object v0, p0, Lw9/n0;->h:Lw9/a;

    .line 4
    iget-object v0, v0, Lw9/a;->h:Lv9/a;

    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v0, v1}, Lya/b;->m(Lv9/a;Z)V

    .line 6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
