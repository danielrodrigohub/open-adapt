.class public final Landroidx/fragment/app/n;
.super Ljava/lang/Object;
.source "FragmentActivity.java"

# interfaces
.implements Lb1/b$b;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/p;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/p;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v2

    invoke-static {v2}, Landroidx/fragment/app/p;->e0(Landroidx/fragment/app/x;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v1, v1, Landroidx/fragment/app/p;->v:Landroidx/lifecycle/r;

    sget-object v2, Landroidx/lifecycle/i$b;->ON_STOP:Landroidx/lifecycle/i$b;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/n;->a:Landroidx/fragment/app/p;

    iget-object v1, v1, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 6
    iget-object v1, v1, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v1, v1, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {v1}, Landroidx/fragment/app/x;->Y()Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "android:support:fragments"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-object v0
.end method
