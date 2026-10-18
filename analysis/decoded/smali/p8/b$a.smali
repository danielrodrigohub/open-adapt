.class public final Lp8/b$a;
.super Lrd/o;
.source "AdaptPairFragment.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp8/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "[",
        "Ljava/lang/String;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lp8/b;


# direct methods
.method public constructor <init>(Lp8/b;)V
    .locals 0

    iput-object p1, p0, Lp8/b$a;->h:Lp8/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/String;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lp8/b$a;->h:Lp8/b;

    invoke-virtual {p1}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lp8/b$a;->h:Lp8/b;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/m;->U:Landroidx/lifecycle/r;

    .line 6
    iget-object v0, v0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    .line 7
    sget-object v1, Landroidx/lifecycle/i$c;->k:Landroidx/lifecycle/i$c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i$c;->b(Landroidx/lifecycle/i$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 8
    sget-object v0, Lh9/c;->c:Lh9/c;

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 9
    :cond_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
