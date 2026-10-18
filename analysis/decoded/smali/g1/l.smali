.class public final Lg1/l;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field public static final a:Lg1/p;

.field public static final b:Lg1/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lg1/q;

    invoke-direct {v0}, Lg1/q;-><init>()V

    sput-object v0, Lg1/l;->a:Lg1/p;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lg1/p;

    invoke-direct {v0}, Lg1/p;-><init>()V

    sput-object v0, Lg1/l;->a:Lg1/p;

    .line 4
    :goto_0
    new-instance v0, Lg1/l$a;

    invoke-direct {v0}, Lg1/l$a;-><init>()V

    sput-object v0, Lg1/l;->b:Lg1/l$a;

    .line 5
    new-instance v0, Lg1/l$b;

    const-class v1, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lg1/l$b;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Landroid/view/View;)F
    .locals 1

    sget-object v0, Lg1/l;->a:Lg1/p;

    invoke-virtual {v0, p0}, Lg1/m;->b(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Lg1/l;->a:Lg1/p;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lg1/o;->f(Landroid/view/View;IIII)V

    return-void
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Lg1/l;->a:Lg1/p;

    invoke-virtual {v0, p0, p1}, Lg1/m;->c(Landroid/view/View;F)V

    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Lg1/l;->a:Lg1/p;

    invoke-virtual {v0, p0, p1}, Lg1/p;->a(Landroid/view/View;I)V

    return-void
.end method
