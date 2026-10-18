.class public final Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity$a;
.super Lrd/o;
.source "SettingsNotificationsActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;->onCreate(Landroid/os/Bundle;)V
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
.field public final synthetic h:Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity$a;->h:Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lo7/l;->a:Lo7/l;

    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity$a;->h:Lcom/nike/adapt/ui/settings/SettingsNotificationsActivity;

    invoke-virtual {v0, v1}, Lo7/l;->b(Landroid/app/Activity;)V

    .line 2
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
