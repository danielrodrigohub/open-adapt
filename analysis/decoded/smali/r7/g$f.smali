.class public final Lr7/g$f;
.super Lrd/o;
.source "DeepLinkActions.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr7/g;->a(Lp8/l;Lp8/l;)V
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
.field public final synthetic h:Lp8/l;


# direct methods
.method public constructor <init>(Lp8/l;)V
    .locals 0

    iput-object p1, p0, Lr7/g$f;->h:Lp8/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lr7/g;->b:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    iget-object v2, p0, Lr7/g$f;->h:Lp8/l;

    invoke-interface {v0, v1, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 3
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0

    :cond_0
    const-string v0, "deviceController"

    .line 4
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
