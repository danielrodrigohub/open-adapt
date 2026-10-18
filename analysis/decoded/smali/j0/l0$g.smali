.class public Lj0/l0$g;
.super Lj0/l0$f;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public m:La0/c;


# direct methods
.method public constructor <init>(Lj0/l0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lj0/l0$f;-><init>(Lj0/l0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lj0/l0$g;->m:La0/c;

    return-void
.end method


# virtual methods
.method public b()Lj0/l0;
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/l0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lj0/l0;->l(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/l0;

    move-result-object v0

    return-object v0
.end method

.method public c()Lj0/l0;
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/l0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lj0/l0;->l(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/l0;

    move-result-object v0

    return-object v0
.end method

.method public final h()La0/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lj0/l0$g;->m:La0/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lj0/l0$f;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Lj0/l0$f;->c:Landroid/view/WindowInsets;

    .line 4
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Lj0/l0$f;->c:Landroid/view/WindowInsets;

    .line 5
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Lj0/l0$f;->c:Landroid/view/WindowInsets;

    .line 6
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    .line 7
    invoke-static {v0, v1, v2, v3}, La0/c;->b(IIII)La0/c;

    move-result-object v0

    iput-object v0, p0, Lj0/l0$g;->m:La0/c;

    .line 8
    :cond_0
    iget-object v0, p0, Lj0/l0$g;->m:La0/c;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lj0/l0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public q(La0/c;)V
    .locals 0

    iput-object p1, p0, Lj0/l0$g;->m:La0/c;

    return-void
.end method
