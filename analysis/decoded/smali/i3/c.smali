.class public abstract Li3/c;
.super Ljava/lang/Object;
.source "CustomTarget.java"

# interfaces
.implements Li3/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li3/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final h:I

.field public final i:I

.field public j:Lh3/d;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x80000000

    .line 2
    invoke-static {p1, p1}, Ll3/l;->j(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iput p1, p0, Li3/c;->h:I

    .line 4
    iput p1, p0, Li3/c;->i:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final b(Li3/h;)V
    .locals 2

    iget v0, p0, Li3/c;->h:I

    iget v1, p0, Li3/c;->i:I

    invoke-interface {p1, v0, v1}, Li3/h;->a(II)V

    return-void
.end method

.method public final c(Li3/h;)V
    .locals 0

    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final e()Lh3/d;
    .locals 1

    iget-object v0, p0, Li3/c;->j:Lh3/d;

    return-object v0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i(Lh3/d;)V
    .locals 0

    iput-object p1, p0, Li3/c;->j:Lh3/d;

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method
