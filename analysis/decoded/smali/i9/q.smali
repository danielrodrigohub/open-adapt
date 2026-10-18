.class public final Li9/q;
.super Lrd/o;
.source "AdaptShoesOnboardingFragment.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Li9/g;


# direct methods
.method public constructor <init>(Li9/g;)V
    .locals 0

    iput-object p1, p0, Li9/q;->h:Li9/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Li9/q;->h:Li9/g;

    .line 2
    iget-object v0, v0, Li9/g;->i0:Lq7/o0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lq7/o0;->j:Lq7/n1;

    iget-object v0, v0, Lq7/n1;->a:Landroid/widget/LinearLayout;

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
