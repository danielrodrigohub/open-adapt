.class public final Lq5/b$a;
.super Ljava/lang/Object;
.source "HeaderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final h:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final i:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final synthetic j:Lq5/b;


# direct methods
.method public constructor <init>(Lq5/b;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq5/b$a;->j:Lq5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lq5/b$a;->h:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3
    iput-object p3, p0, Lq5/b$a;->i:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq5/b$a;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq5/b$a;->j:Lq5/b;

    iget-object v0, v0, Lq5/b;->d:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lq5/b$a;->j:Lq5/b;

    iget-object v1, p0, Lq5/b$a;->h:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lq5/b$a;->i:Landroid/view/View;

    iget-object v3, v0, Lq5/b;->d:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lq5/b;->B(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 4
    iget-object v0, p0, Lq5/b$a;->i:Landroid/view/View;

    sget-object v1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v0, p0}, Lj0/a0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lq5/b$a;->j:Lq5/b;

    iget-object v1, p0, Lq5/b$a;->h:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lq5/b$a;->i:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lq5/b;->z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
