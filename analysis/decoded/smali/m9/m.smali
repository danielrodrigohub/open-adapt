.class public final Lm9/m;
.super Lrd/o;
.source "FirmwareUpdateActivity.kt"

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
.field public final synthetic h:Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lm9/m;->h:Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "FirmwareUpdateCrumb Firmware Update Restart Retry : FW_STATS"

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lm9/m;->h:Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;

    sget-object v0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;->Q:Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity$a;

    .line 5
    iget-object v1, p1, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    new-instance v4, Lm9/l;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lm9/l;-><init>(Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;Ljd/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 7
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
