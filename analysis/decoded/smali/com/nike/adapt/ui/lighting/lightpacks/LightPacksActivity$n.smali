.class public final Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$n;
.super Lrd/o;
.source "LightPacksActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lk9/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$n;

    invoke-direct {v0}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$n;-><init>()V

    sput-object v0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$n;->h:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lk9/a;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lk9/a;-><init>(Lh8/a;Lk9/b;ILrd/h;)V

    return-object v0
.end method
