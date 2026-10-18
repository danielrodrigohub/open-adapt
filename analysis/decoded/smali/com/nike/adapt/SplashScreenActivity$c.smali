.class public final Lcom/nike/adapt/SplashScreenActivity$c;
.super Lrd/o;
.source "SplashScreenActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/SplashScreenActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lk8/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/SplashScreenActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/SplashScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/SplashScreenActivity$c;->h:Lcom/nike/adapt/SplashScreenActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget v0, Lk8/h;->e:I

    new-instance v0, Li8/d;

    iget-object v1, p0, Lcom/nike/adapt/SplashScreenActivity$c;->h:Lcom/nike/adapt/SplashScreenActivity;

    .line 2
    iget-object v2, v1, Lcom/nike/adapt/SplashScreenActivity;->E:Ljava/lang/String;

    .line 3
    iget-object v1, v1, Lcom/nike/adapt/SplashScreenActivity;->F:Ljava/util/UUID;

    .line 4
    invoke-direct {v0, v2, v1}, Li8/d;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    .line 5
    new-instance v1, Lk8/a;

    invoke-direct {v1, v0}, Lk8/a;-><init>(Li8/d;)V

    return-object v1
.end method
