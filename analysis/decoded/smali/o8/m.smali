.class public final Lo8/m;
.super Lrd/o;
.source "PairingActivity.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Ljava/lang/Throwable;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/PairingActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/PairingActivity;)V
    .locals 0

    iput-object p1, p0, Lo8/m;->h:Lcom/nike/adapt/ui/PairingActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lo8/m;->h:Lcom/nike/adapt/ui/PairingActivity;

    .line 3
    iget-object p1, p1, Lcom/nike/adapt/ui/PairingActivity;->N:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->start()Z

    .line 5
    :cond_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
