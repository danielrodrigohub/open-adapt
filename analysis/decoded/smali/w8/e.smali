.class public final Lw8/e;
.super Lrd/o;
.source "GestureKtx.kt"

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
.field public final synthetic h:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lw8/e;->h:Landroid/app/Activity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "alertDialog"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lh9/o;->c:Lh9/o;

    iget-object v1, p0, Lw8/e;->h:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 4
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 5
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->gesturesErrorUserSelectsSettings()V

    .line 6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
