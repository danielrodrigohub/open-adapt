.class public final Lm9/r0;
.super Lrd/o;
.source "SupportDeleteAccountActivity.kt"

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
.field public final synthetic h:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lm9/r0;->h:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 4
    iget-object p1, p0, Lm9/r0;->h:Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;

    .line 5
    iget-object p1, p1, Lcom/nike/adapt/ui/settings/SupportDeleteAccountActivity;->A:Lq7/v;

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p1, Lq7/v;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 7
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    :cond_0
    const-string p1, "binding"

    .line 8
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
