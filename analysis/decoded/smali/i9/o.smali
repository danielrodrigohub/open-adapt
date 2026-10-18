.class public final Li9/o;
.super Lrd/o;
.source "AdaptShoesOnboardingFragment.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/p<",
        "Lx8/d0;",
        "Lx8/k0;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Li9/g;


# direct methods
.method public constructor <init>(Li9/g;)V
    .locals 0

    iput-object p1, p0, Li9/o;->h:Li9/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lx8/d0;

    check-cast p2, Lx8/k0;

    const-string v0, "$this$$receiver"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p2, Lx8/d0;->l:Lx8/d0;

    if-eq p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Li9/o;->h:Li9/g;

    sget-object p2, Li9/g;->K0:Li9/g$a;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
