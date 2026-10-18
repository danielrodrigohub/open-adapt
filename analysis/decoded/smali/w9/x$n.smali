.class public final Lw9/x$n;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;->E(Lw9/a;Lea/d;Lqd/l;)V
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
.field public final synthetic h:Lw9/x;

.field public final synthetic i:Lw9/a;

.field public final synthetic j:Lea/d;


# direct methods
.method public constructor <init>(Lw9/x;Lw9/a;Lea/d;)V
    .locals 0

    iput-object p1, p0, Lw9/x$n;->h:Lw9/x;

    iput-object p2, p0, Lw9/x$n;->i:Lw9/a;

    iput-object p3, p0, Lw9/x$n;->j:Lea/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lw9/x$n;->h:Lw9/x;

    iget-object v1, p0, Lw9/x$n;->i:Lw9/a;

    .line 2
    iget-object v2, v1, Lw9/a;->i:Lw9/u1;

    .line 3
    new-instance v3, Lw9/i0;

    iget-object v4, p0, Lw9/x$n;->j:Lea/d;

    invoke-direct {v3, v1, v4}, Lw9/i0;-><init>(Lw9/a;Lea/d;)V

    .line 4
    invoke-virtual {v0, v2, v3}, Lw9/x;->E0(Lw9/u1;Lqd/l;)V

    .line 5
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
