.class public final Lm9/a0;
.super Lrd/o;
.source "SettingsNotificationsActivity.kt"

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
.field public final synthetic h:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    iput-object p1, p0, Lm9/a0;->h:Landroidx/appcompat/widget/SwitchCompat;

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
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->allowNotificationsDismissSelected()V

    .line 4
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 5
    iget-object p1, p0, Lm9/a0;->h:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
