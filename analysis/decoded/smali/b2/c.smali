.class public final Lb2/c;
.super Ljava/lang/Object;
.source "DropShadowKeyframeAnimation.java"

# interfaces
.implements Lb2/a$a;


# instance fields
.field public final a:Lb2/a$a;

.field public final b:Lb2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Lb2/a$a;Lg2/b;Li2/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb2/c;->g:Z

    .line 3
    iput-object p1, p0, Lb2/c;->a:Lb2/a$a;

    .line 4
    iget-object p1, p3, Li2/j;->a:Le2/a;

    .line 5
    invoke-virtual {p1}, Le2/a;->a()Lb2/a;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lb2/b;

    iput-object v0, p0, Lb2/c;->b:Lb2/b;

    .line 6
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 7
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 8
    iget-object p1, p3, Li2/j;->b:Le2/b;

    .line 9
    invoke-virtual {p1}, Le2/b;->a()Lb2/a;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lb2/d;

    iput-object v0, p0, Lb2/c;->c:Lb2/d;

    .line 10
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 11
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 12
    iget-object p1, p3, Li2/j;->c:Le2/b;

    .line 13
    invoke-virtual {p1}, Le2/b;->a()Lb2/a;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lb2/d;

    iput-object v0, p0, Lb2/c;->d:Lb2/d;

    .line 14
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 15
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 16
    iget-object p1, p3, Li2/j;->d:Le2/b;

    .line 17
    invoke-virtual {p1}, Le2/b;->a()Lb2/a;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lb2/d;

    iput-object v0, p0, Lb2/c;->e:Lb2/d;

    .line 18
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 19
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    .line 20
    iget-object p1, p3, Li2/j;->e:Le2/b;

    .line 21
    invoke-virtual {p1}, Le2/b;->a()Lb2/a;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lb2/d;

    iput-object p3, p0, Lb2/c;->f:Lb2/d;

    .line 22
    invoke-virtual {p1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 23
    invoke-virtual {p2, p1}, Lg2/b;->f(Lb2/a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Paint;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lb2/c;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb2/c;->g:Z

    .line 3
    iget-object v0, p0, Lb2/c;->d:Lb2/d;

    invoke-virtual {v0}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    .line 4
    iget-object v2, p0, Lb2/c;->e:Lb2/d;

    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v4

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v2

    .line 7
    iget-object v1, p0, Lb2/c;->b:Lb2/b;

    invoke-virtual {v1}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8
    iget-object v2, p0, Lb2/c;->c:Lb2/d;

    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 9
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 10
    iget-object v2, p0, Lb2/c;->f:Lb2/d;

    invoke-virtual {v2}, Lb2/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 11
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public final b(Ll2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/c<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lb2/c;->b:Lb2/b;

    invoke-virtual {v0, p1}, Lb2/a;->k(Ll2/c;)V

    return-void
.end method

.method public final c(Ll2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/c<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lb2/c;->d:Lb2/d;

    invoke-virtual {v0, p1}, Lb2/a;->k(Ll2/c;)V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb2/c;->g:Z

    .line 2
    iget-object v0, p0, Lb2/c;->a:Lb2/a$a;

    invoke-interface {v0}, Lb2/a$a;->d()V

    return-void
.end method

.method public final e(Ll2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/c<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lb2/c;->e:Lb2/d;

    invoke-virtual {v0, p1}, Lb2/a;->k(Ll2/c;)V

    return-void
.end method

.method public final f(Ll2/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/c<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lb2/c;->c:Lb2/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb2/a;->k(Ll2/c;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb2/c;->c:Lb2/d;

    new-instance v1, Lb2/c$a;

    invoke-direct {v1, p1}, Lb2/c$a;-><init>(Ll2/c;)V

    invoke-virtual {v0, v1}, Lb2/a;->k(Ll2/c;)V

    return-void
.end method

.method public final g(Ll2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/c<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lb2/c;->f:Lb2/d;

    invoke-virtual {v0, p1}, Lb2/a;->k(Ll2/c;)V

    return-void
.end method
