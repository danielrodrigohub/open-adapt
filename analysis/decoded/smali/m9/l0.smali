.class public final Lm9/l0;
.super Lrd/o;
.source "ShoeProfileActivity.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroidx/appcompat/app/d;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/settings/ShoeProfileActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/settings/ShoeProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lm9/l0;->h:Lcom/nike/adapt/ui/settings/ShoeProfileActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "dialog"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lm9/l0;->h:Lcom/nike/adapt/ui/settings/ShoeProfileActivity;

    sget v1, Lcom/nike/adapt/ui/settings/ShoeProfileActivity;->V:I

    .line 4
    iget-object v2, v0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    new-instance v5, Lm9/k0;

    const/4 v1, 0x0

    invoke-direct {v5, v0, p1, v1}, Lm9/k0;-><init>(Lcom/nike/adapt/ui/settings/ShoeProfileActivity;Landroidx/appcompat/app/d;Ljd/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
