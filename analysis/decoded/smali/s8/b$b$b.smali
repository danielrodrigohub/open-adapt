.class public final Ls8/b$b$b;
.super Lld/i;
.source "DataOptInHomeFragment.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls8/b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.ui.dataoptin.DataOptInHomeFragment$onDataOptInAllow$1$2"
    f = "DataOptInHomeFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic h:Lrd/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrd/w<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Ls8/b;


# direct methods
.method public constructor <init>(Lrd/w;Ls8/b;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrd/w<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ls8/b;",
            "Ljd/d<",
            "-",
            "Ls8/b$b$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ls8/b$b$b;->h:Lrd/w;

    iput-object p2, p0, Ls8/b$b$b;->i:Ls8/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance p1, Ls8/b$b$b;

    iget-object v0, p0, Ls8/b$b$b;->h:Lrd/w;

    iget-object v1, p0, Ls8/b$b$b;->i:Ls8/b;

    invoke-direct {p1, v0, v1, p2}, Ls8/b$b$b;-><init>(Lrd/w;Ls8/b;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Ls8/b$b$b;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Ls8/b$b$b;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Ls8/b$b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Ls8/b$b$b;->h:Lrd/w;

    iget-object p1, p1, Lrd/w;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Ls8/b$b$b;->i:Ls8/b;

    .line 4
    iget-object p1, p1, Ls8/b;->d0:Lq7/s0;

    const-string v1, "binding"

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p1, Lq7/s0;->a:Landroid/widget/Button;

    const v2, 0x7f1101e8

    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Ls8/b$b$b;->i:Ls8/b;

    .line 7
    iget-object p1, p1, Ls8/b;->d0:Lq7/s0;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p1, Lq7/s0;->b:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    sget-object p1, Ls9/y;->a:Ls9/y;

    iget-object v0, p0, Ls8/b$b$b;->i:Ls8/b;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    new-instance v1, Ls8/b$b$b$a;

    iget-object v2, p0, Ls8/b$b$b;->i:Ls8/b;

    invoke-direct {v1, v2}, Ls8/b$b$b$a;-><init>(Ls8/b;)V

    new-instance v2, Ls8/b$b$b$b;

    iget-object v3, p0, Ls8/b$b$b;->i:Ls8/b;

    invoke-direct {v2, v3}, Ls8/b$b$b$b;-><init>(Ls8/b;)V

    invoke-virtual {p1, v0, v1, v2}, Ls9/y;->b(Landroid/app/Activity;Lqd/l;Lqd/l;)Landroidx/appcompat/app/d;

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    iget-object p1, p0, Ls8/b$b$b;->i:Ls8/b;

    .line 13
    iget-object p1, p1, Ls8/b;->e0:Lfd/d;

    invoke-interface {p1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/a;

    const/4 v1, 0x1

    .line 14
    invoke-interface {p1, v1}, Lh8/a;->w(Z)V

    .line 15
    iget-object p1, p0, Ls8/b$b$b;->i:Ls8/b;

    .line 16
    iget-object p1, p1, Ls8/b;->f0:Ls8/d;

    if-eqz p1, :cond_3

    .line 17
    sget-object v0, Ls8/c;->i:Ls8/c;

    invoke-interface {p1, v0}, Ls8/d;->M(Ls8/c;)V

    .line 18
    :goto_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    :cond_3
    const-string p1, "listener"

    .line 19
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0
.end method
