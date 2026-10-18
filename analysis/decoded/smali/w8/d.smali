.class public final Lw8/d;
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


# static fields
.field public static final h:Lw8/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw8/d;

    invoke-direct {v0}, Lw8/d;-><init>()V

    sput-object v0, Lw8/d;->h:Lw8/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "alertDialog"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 4
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->gesturesErrorUserSelectsOk()V

    .line 5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
