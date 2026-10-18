.class public abstract Lh3/a;
.super Ljava/lang/Object;
.source "BaseRequestOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lh3/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Landroid/content/res/Resources$Theme;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public h:I

.field public i:F

.field public j:Lr2/l;

.field public k:Lcom/bumptech/glide/g;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:I

.field public n:Landroid/graphics/drawable/Drawable;

.field public o:I

.field public p:Z

.field public q:I

.field public r:I

.field public s:Lp2/f;

.field public t:Z

.field public u:Z

.field public v:Landroid/graphics/drawable/Drawable;

.field public w:I

.field public x:Lp2/h;

.field public y:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lp2/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field public z:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lh3/a;->i:F

    .line 3
    sget-object v0, Lr2/l;->c:Lr2/l$c;

    iput-object v0, p0, Lh3/a;->j:Lr2/l;

    .line 4
    sget-object v0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/g;

    iput-object v0, p0, Lh3/a;->k:Lcom/bumptech/glide/g;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lh3/a;->p:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lh3/a;->q:I

    .line 7
    iput v1, p0, Lh3/a;->r:I

    .line 8
    sget-object v1, Lk3/c;->b:Lk3/c;

    iput-object v1, p0, Lh3/a;->s:Lp2/f;

    .line 9
    iput-boolean v0, p0, Lh3/a;->u:Z

    .line 10
    new-instance v1, Lp2/h;

    invoke-direct {v1}, Lp2/h;-><init>()V

    iput-object v1, p0, Lh3/a;->x:Lp2/h;

    .line 11
    new-instance v1, Ll3/b;

    invoke-direct {v1}, Ll3/b;-><init>()V

    iput-object v1, p0, Lh3/a;->y:Ll3/b;

    .line 12
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lh3/a;->z:Ljava/lang/Class;

    .line 13
    iput-boolean v0, p0, Lh3/a;->F:Z

    return-void
.end method

.method public static l(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final A(Ly2/m;Lp2/l;)Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/m;",
            "Lp2/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh3/a;->A(Ly2/m;Lp2/l;)Lh3/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lh3/a;->f(Ly2/m;)Lh3/a;

    .line 4
    invoke-virtual {p0, p2}, Lh3/a;->y(Lp2/l;)Lh3/a;

    move-result-object p1

    return-object p1
.end method

.method public B()Lh3/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0}, Lh3/a;->B()Lh3/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lh3/a;->G:Z

    .line 4
    iget v0, p0, Lh3/a;->h:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lh3/a;->h:I

    .line 5
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public a(Lh3/a;)Lh3/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/a<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh3/a;->a(Lh3/a;)Lh3/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget v0, p1, Lh3/a;->h:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p1, Lh3/a;->i:F

    iput v0, p0, Lh3/a;->i:F

    .line 5
    :cond_1
    iget v0, p1, Lh3/a;->h:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p1, Lh3/a;->D:Z

    iput-boolean v0, p0, Lh3/a;->D:Z

    .line 7
    :cond_2
    iget v0, p1, Lh3/a;->h:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v0, p1, Lh3/a;->G:Z

    iput-boolean v0, p0, Lh3/a;->G:Z

    .line 9
    :cond_3
    iget v0, p1, Lh3/a;->h:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p1, Lh3/a;->j:Lr2/l;

    iput-object v0, p0, Lh3/a;->j:Lr2/l;

    .line 11
    :cond_4
    iget v0, p1, Lh3/a;->h:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p1, Lh3/a;->k:Lcom/bumptech/glide/g;

    iput-object v0, p0, Lh3/a;->k:Lcom/bumptech/glide/g;

    .line 13
    :cond_5
    iget v0, p1, Lh3/a;->h:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lh3/a;->l(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p1, Lh3/a;->l:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lh3/a;->l:Landroid/graphics/drawable/Drawable;

    .line 15
    iput v1, p0, Lh3/a;->m:I

    .line 16
    iget v0, p0, Lh3/a;->h:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lh3/a;->h:I

    .line 17
    :cond_6
    iget v0, p1, Lh3/a;->h:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lh3/a;->l(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 18
    iget v0, p1, Lh3/a;->m:I

    iput v0, p0, Lh3/a;->m:I

    .line 19
    iput-object v2, p0, Lh3/a;->l:Landroid/graphics/drawable/Drawable;

    .line 20
    iget v0, p0, Lh3/a;->h:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lh3/a;->h:I

    .line 21
    :cond_7
    iget v0, p1, Lh3/a;->h:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    iget-object v0, p1, Lh3/a;->n:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lh3/a;->n:Landroid/graphics/drawable/Drawable;

    .line 23
    iput v1, p0, Lh3/a;->o:I

    .line 24
    iget v0, p0, Lh3/a;->h:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lh3/a;->h:I

    .line 25
    :cond_8
    iget v0, p1, Lh3/a;->h:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    iget v0, p1, Lh3/a;->o:I

    iput v0, p0, Lh3/a;->o:I

    .line 27
    iput-object v2, p0, Lh3/a;->n:Landroid/graphics/drawable/Drawable;

    .line 28
    iget v0, p0, Lh3/a;->h:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lh3/a;->h:I

    .line 29
    :cond_9
    iget v0, p1, Lh3/a;->h:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    iget-boolean v0, p1, Lh3/a;->p:Z

    iput-boolean v0, p0, Lh3/a;->p:Z

    .line 31
    :cond_a
    iget v0, p1, Lh3/a;->h:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    iget v0, p1, Lh3/a;->r:I

    iput v0, p0, Lh3/a;->r:I

    .line 33
    iget v0, p1, Lh3/a;->q:I

    iput v0, p0, Lh3/a;->q:I

    .line 34
    :cond_b
    iget v0, p1, Lh3/a;->h:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    iget-object v0, p1, Lh3/a;->s:Lp2/f;

    iput-object v0, p0, Lh3/a;->s:Lp2/f;

    .line 36
    :cond_c
    iget v0, p1, Lh3/a;->h:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    iget-object v0, p1, Lh3/a;->z:Ljava/lang/Class;

    iput-object v0, p0, Lh3/a;->z:Ljava/lang/Class;

    .line 38
    :cond_d
    iget v0, p1, Lh3/a;->h:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    iget-object v0, p1, Lh3/a;->v:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lh3/a;->v:Landroid/graphics/drawable/Drawable;

    .line 40
    iput v1, p0, Lh3/a;->w:I

    .line 41
    iget v0, p0, Lh3/a;->h:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lh3/a;->h:I

    .line 42
    :cond_e
    iget v0, p1, Lh3/a;->h:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 43
    iget v0, p1, Lh3/a;->w:I

    iput v0, p0, Lh3/a;->w:I

    .line 44
    iput-object v2, p0, Lh3/a;->v:Landroid/graphics/drawable/Drawable;

    .line 45
    iget v0, p0, Lh3/a;->h:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lh3/a;->h:I

    .line 46
    :cond_f
    iget v0, p1, Lh3/a;->h:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    iget-object v0, p1, Lh3/a;->B:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lh3/a;->B:Landroid/content/res/Resources$Theme;

    .line 48
    :cond_10
    iget v0, p1, Lh3/a;->h:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    iget-boolean v0, p1, Lh3/a;->u:Z

    iput-boolean v0, p0, Lh3/a;->u:Z

    .line 50
    :cond_11
    iget v0, p1, Lh3/a;->h:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 51
    iget-boolean v0, p1, Lh3/a;->t:Z

    iput-boolean v0, p0, Lh3/a;->t:Z

    .line 52
    :cond_12
    iget v0, p1, Lh3/a;->h:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 53
    iget-object v0, p0, Lh3/a;->y:Ll3/b;

    iget-object v2, p1, Lh3/a;->y:Ll3/b;

    invoke-virtual {v0, v2}, Lp/a;->putAll(Ljava/util/Map;)V

    .line 54
    iget-boolean v0, p1, Lh3/a;->F:Z

    iput-boolean v0, p0, Lh3/a;->F:Z

    .line 55
    :cond_13
    iget v0, p1, Lh3/a;->h:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 56
    iget-boolean v0, p1, Lh3/a;->E:Z

    iput-boolean v0, p0, Lh3/a;->E:Z

    .line 57
    :cond_14
    iget-boolean v0, p0, Lh3/a;->u:Z

    if-nez v0, :cond_15

    .line 58
    iget-object v0, p0, Lh3/a;->y:Ll3/b;

    invoke-virtual {v0}, Ll3/b;->clear()V

    .line 59
    iget v0, p0, Lh3/a;->h:I

    and-int/lit16 v0, v0, -0x801

    .line 60
    iput-boolean v1, p0, Lh3/a;->t:Z

    const v1, -0x20001

    and-int/2addr v0, v1

    .line 61
    iput v0, p0, Lh3/a;->h:I

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lh3/a;->F:Z

    .line 63
    :cond_15
    iget v0, p0, Lh3/a;->h:I

    iget v1, p1, Lh3/a;->h:I

    or-int/2addr v0, v1

    iput v0, p0, Lh3/a;->h:I

    .line 64
    iget-object v0, p0, Lh3/a;->x:Lp2/h;

    iget-object p1, p1, Lh3/a;->x:Lp2/h;

    invoke-virtual {v0, p1}, Lp2/h;->d(Lp2/h;)V

    .line 65
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public b()Lh3/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->A:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lh3/a;->C:Z

    .line 4
    invoke-virtual {p0}, Lh3/a;->m()Lh3/a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lh3/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh3/a;

    .line 2
    new-instance v1, Lp2/h;

    invoke-direct {v1}, Lp2/h;-><init>()V

    iput-object v1, v0, Lh3/a;->x:Lp2/h;

    .line 3
    iget-object v2, p0, Lh3/a;->x:Lp2/h;

    invoke-virtual {v1, v2}, Lp2/h;->d(Lp2/h;)V

    .line 4
    new-instance v1, Ll3/b;

    invoke-direct {v1}, Ll3/b;-><init>()V

    iput-object v1, v0, Lh3/a;->y:Ll3/b;

    .line 5
    iget-object v2, p0, Lh3/a;->y:Ll3/b;

    invoke-virtual {v1, v2}, Lp/a;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lh3/a;->A:Z

    .line 7
    iput-boolean v1, v0, Lh3/a;->C:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Class;)Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh3/a;->d(Ljava/lang/Class;)Lh3/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lh3/a;->z:Ljava/lang/Class;

    .line 4
    iget p1, p0, Lh3/a;->h:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lh3/a;->h:I

    .line 5
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public e(Lr2/l;)Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/l;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh3/a;->e(Lr2/l;)Lh3/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lh3/a;->j:Lr2/l;

    .line 4
    iget p1, p0, Lh3/a;->h:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lh3/a;->h:I

    .line 5
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lh3/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lh3/a;

    .line 3
    iget v0, p1, Lh3/a;->i:F

    iget v1, p0, Lh3/a;->i:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lh3/a;->m:I

    iget v1, p1, Lh3/a;->m:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh3/a;->l:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lh3/a;->l:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-static {v0, v1}, Ll3/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lh3/a;->o:I

    iget v1, p1, Lh3/a;->o:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh3/a;->n:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lh3/a;->n:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-static {v0, v1}, Ll3/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lh3/a;->w:I

    iget v1, p1, Lh3/a;->w:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh3/a;->v:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lh3/a;->v:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-static {v0, v1}, Ll3/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lh3/a;->p:Z

    iget-boolean v1, p1, Lh3/a;->p:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lh3/a;->q:I

    iget v1, p1, Lh3/a;->q:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lh3/a;->r:I

    iget v1, p1, Lh3/a;->r:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lh3/a;->t:Z

    iget-boolean v1, p1, Lh3/a;->t:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lh3/a;->u:Z

    iget-boolean v1, p1, Lh3/a;->u:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lh3/a;->D:Z

    iget-boolean v1, p1, Lh3/a;->D:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lh3/a;->E:Z

    iget-boolean v1, p1, Lh3/a;->E:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh3/a;->j:Lr2/l;

    iget-object v1, p1, Lh3/a;->j:Lr2/l;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh3/a;->k:Lcom/bumptech/glide/g;

    iget-object v1, p1, Lh3/a;->k:Lcom/bumptech/glide/g;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh3/a;->x:Lp2/h;

    iget-object v1, p1, Lh3/a;->x:Lp2/h;

    .line 8
    invoke-virtual {v0, v1}, Lp2/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh3/a;->y:Ll3/b;

    iget-object v1, p1, Lh3/a;->y:Ll3/b;

    .line 9
    invoke-virtual {v0, v1}, Lp/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh3/a;->z:Ljava/lang/Class;

    iget-object v1, p1, Lh3/a;->z:Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh3/a;->s:Lp2/f;

    iget-object v1, p1, Lh3/a;->s:Lp2/f;

    .line 11
    invoke-static {v0, v1}, Ll3/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh3/a;->B:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lh3/a;->B:Landroid/content/res/Resources$Theme;

    .line 12
    invoke-static {v0, p1}, Ll3/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Ly2/m;)Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/m;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Ly2/m;->f:Lp2/g;

    invoke-virtual {p0, v0, p1}, Lh3/a;->u(Lp2/g;Ljava/lang/Object;)Lh3/a;

    move-result-object p1

    return-object p1
.end method

.method public g(I)Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh3/a;->g(I)Lh3/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lh3/a;->m:I

    .line 4
    iget p1, p0, Lh3/a;->h:I

    or-int/lit8 p1, p1, 0x20

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lh3/a;->l:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x11

    .line 6
    iput p1, p0, Lh3/a;->h:I

    .line 7
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public h(Landroid/graphics/drawable/Drawable;)Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh3/a;->h(Landroid/graphics/drawable/Drawable;)Lh3/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lh3/a;->l:Landroid/graphics/drawable/Drawable;

    .line 4
    iget p1, p0, Lh3/a;->h:I

    or-int/lit8 p1, p1, 0x10

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lh3/a;->m:I

    and-int/lit8 p1, p1, -0x21

    .line 6
    iput p1, p0, Lh3/a;->h:I

    .line 7
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lh3/a;->i:F

    sget-object v1, Ll3/l;->a:[C

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 3
    iget v1, p0, Lh3/a;->m:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lh3/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Ll3/l;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 5
    iget v1, p0, Lh3/a;->o:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lh3/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Ll3/l;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 7
    iget v1, p0, Lh3/a;->w:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Lh3/a;->v:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Ll3/l;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 9
    iget-boolean v1, p0, Lh3/a;->p:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 10
    iget v1, p0, Lh3/a;->q:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 11
    iget v1, p0, Lh3/a;->r:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 12
    iget-boolean v1, p0, Lh3/a;->t:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 13
    iget-boolean v1, p0, Lh3/a;->u:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 14
    iget-boolean v1, p0, Lh3/a;->D:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 15
    iget-boolean v1, p0, Lh3/a;->E:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 16
    iget-object v1, p0, Lh3/a;->j:Lr2/l;

    invoke-static {v1, v0}, Ll3/l;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 17
    iget-object v1, p0, Lh3/a;->k:Lcom/bumptech/glide/g;

    invoke-static {v1, v0}, Ll3/l;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 18
    iget-object v1, p0, Lh3/a;->x:Lp2/h;

    invoke-static {v1, v0}, Ll3/l;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 19
    iget-object v1, p0, Lh3/a;->y:Ll3/b;

    invoke-static {v1, v0}, Ll3/l;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 20
    iget-object v1, p0, Lh3/a;->z:Ljava/lang/Class;

    invoke-static {v1, v0}, Ll3/l;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 21
    iget-object v1, p0, Lh3/a;->s:Lp2/f;

    invoke-static {v1, v0}, Ll3/l;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 22
    iget-object v1, p0, Lh3/a;->B:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Ll3/l;->g(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public i(I)Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh3/a;->i(I)Lh3/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lh3/a;->w:I

    .line 4
    iget p1, p0, Lh3/a;->h:I

    or-int/lit16 p1, p1, 0x4000

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lh3/a;->v:Landroid/graphics/drawable/Drawable;

    and-int/lit16 p1, p1, -0x2001

    .line 6
    iput p1, p0, Lh3/a;->h:I

    .line 7
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public j(Landroid/graphics/drawable/Drawable;)Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh3/a;->j(Landroid/graphics/drawable/Drawable;)Lh3/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lh3/a;->v:Landroid/graphics/drawable/Drawable;

    .line 4
    iget p1, p0, Lh3/a;->h:I

    or-int/lit16 p1, p1, 0x2000

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lh3/a;->w:I

    and-int/lit16 p1, p1, -0x4001

    .line 6
    iput p1, p0, Lh3/a;->h:I

    .line 7
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public k()Lh3/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/m;->a:Ly2/m$c;

    new-instance v1, Ly2/r;

    invoke-direct {v1}, Ly2/r;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Lh3/a;->A(Ly2/m;Lp2/l;)Lh3/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lh3/a;->F:Z

    return-object v0
.end method

.method public m()Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh3/a;->A:Z

    return-object p0
.end method

.method public n()Lh3/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Ly2/m;->c:Ly2/m$b;

    new-instance v1, Ly2/i;

    invoke-direct {v1}, Ly2/i;-><init>()V

    invoke-virtual {p0, v0, v1}, Lh3/a;->q(Ly2/m;Lp2/l;)Lh3/a;

    move-result-object v0

    return-object v0
.end method

.method public o()Lh3/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/m;->b:Ly2/m$a;

    new-instance v1, Ly2/j;

    invoke-direct {v1}, Ly2/j;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Lh3/a;->q(Ly2/m;Lp2/l;)Lh3/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lh3/a;->F:Z

    return-object v0
.end method

.method public p()Lh3/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/m;->a:Ly2/m$c;

    new-instance v1, Ly2/r;

    invoke-direct {v1}, Ly2/r;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Lh3/a;->q(Ly2/m;Lp2/l;)Lh3/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lh3/a;->F:Z

    return-object v0
.end method

.method public final q(Ly2/m;Lp2/l;)Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/m;",
            "Lp2/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh3/a;->q(Ly2/m;Lp2/l;)Lh3/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lh3/a;->f(Ly2/m;)Lh3/a;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lh3/a;->z(Lp2/l;Z)Lh3/a;

    move-result-object p1

    return-object p1
.end method

.method public r(II)Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh3/a;->r(II)Lh3/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lh3/a;->r:I

    .line 4
    iput p2, p0, Lh3/a;->q:I

    .line 5
    iget p1, p0, Lh3/a;->h:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lh3/a;->h:I

    .line 6
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public s()Lh3/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/g;

    .line 1
    iget-boolean v1, p0, Lh3/a;->C:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0}, Lh3/a;->s()Lh3/a;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iput-object v0, p0, Lh3/a;->k:Lcom/bumptech/glide/g;

    .line 4
    iget v0, p0, Lh3/a;->h:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lh3/a;->h:I

    .line 5
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public final t()Lh3/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->A:Z

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u(Lp2/g;Ljava/lang/Object;)Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lp2/g<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh3/a;->u(Lp2/g;Ljava/lang/Object;)Lh3/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lh3/a;->x:Lp2/h;

    .line 5
    iget-object v0, v0, Lp2/h;->b:Ll3/b;

    invoke-virtual {v0, p1, p2}, Ll3/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public v(Lp2/f;)Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp2/f;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh3/a;->v(Lp2/f;)Lh3/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lh3/a;->s:Lp2/f;

    .line 4
    iget p1, p0, Lh3/a;->h:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lh3/a;->h:I

    .line 5
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public w()Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0}, Lh3/a;->w()Lh3/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lh3/a;->p:Z

    .line 4
    iget v0, p0, Lh3/a;->h:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lh3/a;->h:I

    .line 5
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public final x(Ljava/lang/Class;Lp2/l;Z)Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lp2/l<",
            "TY;>;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lh3/a;->x(Ljava/lang/Class;Lp2/l;Z)Lh3/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lh3/a;->y:Ll3/b;

    invoke-virtual {v0, p1, p2}, Ll3/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget p1, p0, Lh3/a;->h:I

    or-int/lit16 p1, p1, 0x800

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lh3/a;->u:Z

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 7
    iput p1, p0, Lh3/a;->h:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lh3/a;->F:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    .line 9
    iput p1, p0, Lh3/a;->h:I

    .line 10
    iput-boolean p2, p0, Lh3/a;->t:Z

    .line 11
    :cond_1
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public y(Lp2/l;)Lh3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp2/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lh3/a;->z(Lp2/l;Z)Lh3/a;

    move-result-object p1

    return-object p1
.end method

.method public final z(Lp2/l;Z)Lh3/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp2/l<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh3/a;->z(Lp2/l;Z)Lh3/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ly2/p;

    invoke-direct {v0, p1, p2}, Ly2/p;-><init>(Lp2/l;Z)V

    .line 4
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lh3/a;->x(Ljava/lang/Class;Lp2/l;Z)Lh3/a;

    .line 5
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lh3/a;->x(Ljava/lang/Class;Lp2/l;Z)Lh3/a;

    .line 6
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, Lh3/a;->x(Ljava/lang/Class;Lp2/l;Z)Lh3/a;

    .line 7
    const-class v0, Lc3/c;

    new-instance v1, Lc3/f;

    invoke-direct {v1, p1}, Lc3/f;-><init>(Lp2/l;)V

    invoke-virtual {p0, v0, v1, p2}, Lh3/a;->x(Ljava/lang/Class;Lp2/l;Z)Lh3/a;

    .line 8
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method
