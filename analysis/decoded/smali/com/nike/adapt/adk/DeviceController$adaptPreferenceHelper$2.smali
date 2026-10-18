.class final Lcom/nike/adapt/adk/DeviceController$adaptPreferenceHelper$2;
.super Lrd/o;
.source "DeviceController.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/DeviceController;-><init>(Landroidx/lifecycle/i;Li8/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lh8/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/adk/DeviceController$adaptPreferenceHelper$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/DeviceController$adaptPreferenceHelper$2;

    invoke-direct {v0}, Lcom/nike/adapt/adk/DeviceController$adaptPreferenceHelper$2;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/DeviceController$adaptPreferenceHelper$2;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$adaptPreferenceHelper$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lh8/a;
    .locals 1

    .line 2
    sget v0, Lh8/a;->a:I

    .line 3
    sget-object v0, Lh8/c;->b:Lh8/c;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceController$adaptPreferenceHelper$2;->invoke()Lh8/a;

    move-result-object v0

    return-object v0
.end method
