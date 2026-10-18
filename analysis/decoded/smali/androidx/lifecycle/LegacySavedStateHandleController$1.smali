.class Landroidx/lifecycle/LegacySavedStateHandleController$1;
.super Ljava/lang/Object;
.source "LegacySavedStateHandleController.java"

# interfaces
.implements Landroidx/lifecycle/n;


# instance fields
.field public final synthetic h:Landroidx/lifecycle/i;

.field public final synthetic i:Lb1/b;


# virtual methods
.method public final a(Landroidx/lifecycle/q;Landroidx/lifecycle/i$b;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/lifecycle/i$b;->ON_START:Landroidx/lifecycle/i$b;

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->h:Landroidx/lifecycle/i;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/p;)V

    .line 3
    iget-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->i:Lb1/b;

    invoke-virtual {p1}, Lb1/b;->c()V

    :cond_0
    return-void
.end method
