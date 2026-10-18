.class public final Landroidx/transition/b$a;
.super Landroidx/transition/g;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/b;->K(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/b$a;->a:Landroid/view/View;

    invoke-direct {p0}, Landroidx/transition/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroidx/transition/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/transition/b$a;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lg1/l;->c(Landroid/view/View;F)V

    .line 2
    sget-object v0, Lg1/l;->a:Lg1/p;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1, p0}, Landroidx/transition/f;->v(Landroidx/transition/f$d;)Landroidx/transition/f;

    return-void
.end method
