.class public final Lya/d$t$a;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d$t;->o()Lqd/a;
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
.field public final synthetic h:Lya/d;

.field public final synthetic i:Lya/d$t;


# direct methods
.method public constructor <init>(Lya/d;Lya/d$t;)V
    .locals 0

    iput-object p1, p0, Lya/d$t$a;->h:Lya/d;

    iput-object p2, p0, Lya/d$t$a;->i:Lya/d$t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lya/d$t$a;->h:Lya/d;

    .line 2
    iget-object v0, v0, Lya/d;->A:Lhc/l0;

    .line 3
    iget-object v1, p0, Lya/d$t$a;->i:Lya/d$t;

    invoke-interface {v0, v1}, Lhc/l0;->q(Lnc/a;)V

    .line 4
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
