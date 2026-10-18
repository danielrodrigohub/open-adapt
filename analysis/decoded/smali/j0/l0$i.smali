.class public Lj0/l0$i;
.super Lj0/l0$h;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public n:La0/c;

.field public o:La0/c;

.field public p:La0/c;


# direct methods
.method public constructor <init>(Lj0/l0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lj0/l0$h;-><init>(Lj0/l0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lj0/l0$i;->n:La0/c;

    .line 3
    iput-object p1, p0, Lj0/l0$i;->o:La0/c;

    .line 4
    iput-object p1, p0, Lj0/l0$i;->p:La0/c;

    return-void
.end method


# virtual methods
.method public g()La0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l0$i;->o:La0/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lj0/l0$f;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, La0/c;->d(Landroid/graphics/Insets;)La0/c;

    move-result-object v0

    iput-object v0, p0, Lj0/l0$i;->o:La0/c;

    .line 4
    :cond_0
    iget-object v0, p0, Lj0/l0$i;->o:La0/c;

    return-object v0
.end method

.method public i()La0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l0$i;->n:La0/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lj0/l0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, La0/c;->d(Landroid/graphics/Insets;)La0/c;

    move-result-object v0

    iput-object v0, p0, Lj0/l0$i;->n:La0/c;

    .line 3
    :cond_0
    iget-object v0, p0, Lj0/l0$i;->n:La0/c;

    return-object v0
.end method

.method public k()La0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l0$i;->p:La0/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lj0/l0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, La0/c;->d(Landroid/graphics/Insets;)La0/c;

    move-result-object v0

    iput-object v0, p0, Lj0/l0$i;->p:La0/c;

    .line 3
    :cond_0
    iget-object v0, p0, Lj0/l0$i;->p:La0/c;

    return-object v0
.end method

.method public l(IIII)Lj0/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Lj0/l0;->l(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/l0;

    move-result-object p1

    return-object p1
.end method

.method public q(La0/c;)V
    .locals 0

    return-void
.end method
