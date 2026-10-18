.class public final Landroidx/transition/i$a;
.super Landroidx/transition/g;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/i;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/transition/f;


# direct methods
.method public constructor <init>(Landroidx/transition/f;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/i$a;->a:Landroidx/transition/f;

    invoke-direct {p0}, Landroidx/transition/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroidx/transition/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/i$a;->a:Landroidx/transition/f;

    invoke-virtual {v0}, Landroidx/transition/f;->y()V

    .line 2
    invoke-virtual {p1, p0}, Landroidx/transition/f;->v(Landroidx/transition/f$d;)Landroidx/transition/f;

    return-void
.end method
