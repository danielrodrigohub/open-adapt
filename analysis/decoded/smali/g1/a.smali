.class public final Lg1/a;
.super Landroidx/transition/i;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/transition/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/transition/i;->F:Z

    .line 3
    new-instance v0, Landroidx/transition/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/transition/b;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/transition/i;->H(Landroidx/transition/f;)Landroidx/transition/i;

    new-instance v0, Landroidx/transition/a;

    invoke-direct {v0}, Landroidx/transition/a;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/transition/i;->H(Landroidx/transition/f;)Landroidx/transition/i;

    new-instance v0, Landroidx/transition/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/transition/b;-><init>(I)V

    .line 5
    invoke-virtual {p0, v0}, Landroidx/transition/i;->H(Landroidx/transition/f;)Landroidx/transition/i;

    return-void
.end method
