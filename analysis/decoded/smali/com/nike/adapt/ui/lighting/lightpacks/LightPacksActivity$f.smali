.class public final Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$f;
.super Lrd/o;
.source "LightPacksActivity.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->u0()V
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
.field public final synthetic h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$f;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$f;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->d0:Z

    .line 5
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
