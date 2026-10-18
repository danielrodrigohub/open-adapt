.class public final Lt/o$a;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls/d;Lq/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p1, Ls/d;->J:Ls/c;

    invoke-virtual {p2, v0}, Lq/d;->o(Ljava/lang/Object;)I

    .line 4
    iget-object v0, p1, Ls/d;->K:Ls/c;

    invoke-virtual {p2, v0}, Lq/d;->o(Ljava/lang/Object;)I

    .line 5
    iget-object v0, p1, Ls/d;->L:Ls/c;

    invoke-virtual {p2, v0}, Lq/d;->o(Ljava/lang/Object;)I

    .line 6
    iget-object v0, p1, Ls/d;->M:Ls/c;

    invoke-virtual {p2, v0}, Lq/d;->o(Ljava/lang/Object;)I

    .line 7
    iget-object p1, p1, Ls/d;->N:Ls/c;

    invoke-virtual {p2, p1}, Lq/d;->o(Ljava/lang/Object;)I

    return-void
.end method
