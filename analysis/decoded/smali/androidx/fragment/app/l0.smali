.class public final Landroidx/fragment/app/l0;
.super Ljava/lang/Object;
.source "FragmentViewLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/g;
.implements Lb1/d;
.implements Landroidx/lifecycle/o0;


# instance fields
.field public final h:Landroidx/lifecycle/n0;

.field public i:Landroidx/lifecycle/r;

.field public j:Lb1/c;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/n0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/fragment/app/l0;->i:Landroidx/lifecycle/r;

    .line 3
    iput-object v0, p0, Landroidx/fragment/app/l0;->j:Lb1/c;

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/l0;->h:Landroidx/lifecycle/n0;

    return-void
.end method


# virtual methods
.method public final P()Landroidx/lifecycle/n0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->c()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/l0;->h:Landroidx/lifecycle/n0;

    return-object v0
.end method

.method public final a()Landroidx/lifecycle/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->c()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/l0;->i:Landroidx/lifecycle/r;

    return-object v0
.end method

.method public final b(Landroidx/lifecycle/i$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/l0;->i:Landroidx/lifecycle/r;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/l0;->i:Landroidx/lifecycle/r;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0, p0}, Landroidx/lifecycle/r;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Landroidx/fragment/app/l0;->i:Landroidx/lifecycle/r;

    .line 3
    invoke-static {p0}, Lb1/c;->a(Lb1/d;)Lb1/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/l0;->j:Lb1/c;

    :cond_0
    return-void
.end method

.method public final f()Lb1/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->c()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/l0;->j:Lb1/c;

    .line 3
    iget-object v0, v0, Lb1/c;->b:Lb1/b;

    return-object v0
.end method
