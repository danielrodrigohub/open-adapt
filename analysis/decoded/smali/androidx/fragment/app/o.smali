.class public final Landroidx/fragment/app/o;
.super Ljava/lang/Object;
.source "FragmentActivity.java"

# interfaces
.implements Ld/b;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/p;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/p;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/p;

    iget-object v0, v0, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v1, v0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2}, Landroidx/fragment/app/x;->b(Landroidx/fragment/app/u;Landroidx/fragment/app/r;Landroidx/fragment/app/m;)V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/p;

    .line 4
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->l:Lb1/c;

    .line 5
    iget-object v0, v0, Lb1/c;->b:Lb1/b;

    const-string v1, "android:support:fragments"

    .line 6
    invoke-virtual {v0, v1}, Lb1/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/p;

    iget-object v1, v1, Landroidx/fragment/app/p;->u:Landroidx/fragment/app/s;

    .line 9
    iget-object v1, v1, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    instance-of v2, v1, Landroidx/lifecycle/o0;

    if-eqz v2, :cond_0

    .line 10
    iget-object v1, v1, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/x;->X(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
