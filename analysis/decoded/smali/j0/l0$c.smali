.class public Lj0/l0$c;
.super Lj0/l0$e;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final b:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj0/l0$e;-><init>()V

    .line 2
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Lj0/l0$c;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lj0/l0;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lj0/l0$e;-><init>(Lj0/l0;)V

    .line 4
    invoke-virtual {p1}, Lj0/l0;->k()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Lj0/l0$c;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Lj0/l0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lj0/l0$e;->a()V

    .line 2
    iget-object v0, p0, Lj0/l0$c;->b:Landroid/view/WindowInsets$Builder;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lj0/l0;->l(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/l0;

    move-result-object v0

    .line 5
    iget-object v2, v0, Lj0/l0;->a:Lj0/l0$k;

    invoke-virtual {v2, v1}, Lj0/l0$k;->o([La0/c;)V

    return-object v0
.end method

.method public c(La0/c;)V
    .locals 1

    iget-object v0, p0, Lj0/l0$c;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, La0/c;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public d(La0/c;)V
    .locals 1

    iget-object v0, p0, Lj0/l0$c;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, La0/c;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
