.class public final Lcom/nike/adapt/ui/settings/AppIconsActivity$b;
.super Lrd/o;
.source "AppIconsActivity.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/settings/AppIconsActivity;->l0(Lcom/nike/adapt/ui/settings/AppIconsActivity$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic h:Lcom/nike/adapt/ui/settings/AppIconsActivity;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/settings/AppIconsActivity;II)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity$b;->h:Lcom/nike/adapt/ui/settings/AppIconsActivity;

    iput p2, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity$b;->i:I

    iput p3, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity$b;->j:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity$b;->h:Lcom/nike/adapt/ui/settings/AppIconsActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity$b;->h:Lcom/nike/adapt/ui/settings/AppIconsActivity;

    const-class v3, Lcom/nike/adapt/SplashScreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v2, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity$b;->i:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity$b;->h:Lcom/nike/adapt/ui/settings/AppIconsActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity$b;->h:Lcom/nike/adapt/ui/settings/AppIconsActivity;

    const-class v4, Lcom/nike/adapt/JordanLauncherAlias;

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v2, p0, Lcom/nike/adapt/ui/settings/AppIconsActivity$b;->j:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 5
    sget-object v0, Lcom/nike/adapt/ui/AdaptRestartActivity;->A:Lcom/nike/adapt/ui/AdaptRestartActivity$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nike/adapt/ui/AdaptRestartActivity$a;->a(ZJ)V

    .line 6
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 7
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
