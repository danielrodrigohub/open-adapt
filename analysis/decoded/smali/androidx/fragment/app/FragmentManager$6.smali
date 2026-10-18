.class Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/lifecycle/n;


# virtual methods
.method public final a(Landroidx/lifecycle/q;Landroidx/lifecycle/i$b;)V
    .locals 1

    .line 1
    sget-object p1, Landroidx/lifecycle/i$b;->ON_START:Landroidx/lifecycle/i$b;

    const/4 v0, 0x0

    if-eq p2, p1, :cond_1

    .line 2
    sget-object p1, Landroidx/lifecycle/i$b;->ON_DESTROY:Landroidx/lifecycle/i$b;

    if-eq p2, p1, :cond_0

    return-void

    .line 3
    :cond_0
    throw v0

    .line 4
    :cond_1
    throw v0
.end method
