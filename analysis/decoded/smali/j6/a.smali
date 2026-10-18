.class public final Lj6/a;
.super Lj6/f;
.source "CancelableFontCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj6/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Typeface;

.field public final b:Lj6/a$a;

.field public c:Z


# direct methods
.method public constructor <init>(Lj6/a$a;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj6/f;-><init>()V

    .line 2
    iput-object p2, p0, Lj6/a;->a:Landroid/graphics/Typeface;

    .line 3
    iput-object p1, p0, Lj6/a;->b:Lj6/a$a;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iget-object p1, p0, Lj6/a;->a:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lj6/a;->c(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lj6/a;->c(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final c(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj6/a;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lj6/a;->b:Lj6/a$a;

    check-cast v0, Lg6/d;

    .line 3
    iget-object v0, v0, Lg6/d;->a:Lg6/e;

    .line 4
    invoke-virtual {v0, p1}, Lg6/e;->n(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lg6/e;->k(Z)V

    :cond_0
    return-void
.end method
