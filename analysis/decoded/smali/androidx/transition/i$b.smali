.class public final Landroidx/transition/i$b;
.super Landroidx/transition/g;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroidx/transition/i;


# direct methods
.method public constructor <init>(Landroidx/transition/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/transition/g;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/transition/i$b;->a:Landroidx/transition/i;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/transition/f;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/transition/i$b;->a:Landroidx/transition/i;

    iget-boolean v0, p1, Landroidx/transition/i;->H:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/transition/f;->F()V

    .line 3
    iget-object p1, p0, Landroidx/transition/i$b;->a:Landroidx/transition/i;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/transition/i;->H:Z

    :cond_0
    return-void
.end method

.method public final e(Landroidx/transition/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/transition/i$b;->a:Landroidx/transition/i;

    iget v1, v0, Landroidx/transition/i;->G:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/transition/i;->G:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Landroidx/transition/i;->H:Z

    .line 3
    invoke-virtual {v0}, Landroidx/transition/f;->m()V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/f;->v(Landroidx/transition/f$d;)Landroidx/transition/f;

    return-void
.end method
