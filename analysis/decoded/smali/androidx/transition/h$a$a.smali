.class public final Landroidx/transition/h$a$a;
.super Landroidx/transition/g;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/h$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp/a;

.field public final synthetic b:Landroidx/transition/h$a;


# direct methods
.method public constructor <init>(Landroidx/transition/h$a;Lp/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/h$a$a;->b:Landroidx/transition/h$a;

    iput-object p2, p0, Landroidx/transition/h$a$a;->a:Lp/a;

    invoke-direct {p0}, Landroidx/transition/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroidx/transition/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/transition/h$a$a;->a:Lp/a;

    iget-object v1, p0, Landroidx/transition/h$a$a;->b:Landroidx/transition/h$a;

    iget-object v1, v1, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p1, p0}, Landroidx/transition/f;->v(Landroidx/transition/f$d;)Landroidx/transition/f;

    return-void
.end method
