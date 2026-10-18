.class public final Lg1/i;
.super Ljava/lang/Object;
.source "ViewGroupOverlayApi18.java"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/i;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(La2/t;)V
    .locals 1

    iget-object v0, p0, Lg1/i;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroid/graphics/Path;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lg1/i;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Lg1/i;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/t;

    sget-object v2, Lk2/g;->a:Lk2/g$a;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v2, v1, La2/t;->a:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, v1, La2/t;->d:Lb2/d;

    .line 5
    invoke-virtual {v2}, Lb2/d;->l()F

    move-result v2

    .line 6
    iget-object v3, v1, La2/t;->e:Lb2/d;

    .line 7
    invoke-virtual {v3}, Lb2/d;->l()F

    move-result v3

    .line 8
    iget-object v1, v1, La2/t;->f:Lb2/d;

    .line 9
    invoke-virtual {v1}, Lb2/d;->l()F

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v1, v4

    .line 10
    invoke-static {p1, v2, v3, v1}, Lk2/g;->a(Landroid/graphics/Path;FFF)V

    goto :goto_0

    :cond_2
    return-void
.end method
