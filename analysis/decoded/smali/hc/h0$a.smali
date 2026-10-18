.class public final Lhc/h0$a;
.super Lrd/o;
.source "CoreRFModule.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhc/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Landroid/app/Application;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lhc/h0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhc/h0$a;

    invoke-direct {v0}, Lhc/h0$a;-><init>()V

    sput-object v0, Lhc/h0$a;->h:Lhc/h0$a;

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
    .locals 1

    .line 1
    sget-object v0, Lhc/h0;->d:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "internalApplication"

    .line 2
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
