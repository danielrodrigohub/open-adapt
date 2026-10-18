.class public final Lya/d$h;
.super Lya/d$c;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->d(Lv9/a;Lea/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$c<",
        "Ljava/lang/Boolean;",
        "Loc/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final o:Lya/d$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic p:Lya/d;

.field public final synthetic q:Lv9/a;

.field public final synthetic r:Lea/d;


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;Lea/d;)V
    .locals 1

    iput-object p1, p0, Lya/d$h;->p:Lya/d;

    iput-object p2, p0, Lya/d$h;->q:Lv9/a;

    iput-object p3, p0, Lya/d$h;->r:Lea/d;

    .line 1
    invoke-direct {p0, p1}, Lya/d$c;-><init>(Lya/d;)V

    .line 2
    iget-object p3, p1, Lya/d;->f:Ljava/lang/String;

    const-string v0, "\tcolorUpdate"

    .line 3
    invoke-static {p3, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4
    iput-object p3, p0, Lya/d$h;->m:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lya/d$h;->n:Lv9/a;

    .line 6
    new-instance p2, Lya/d$h$a;

    invoke-direct {p2, p1, p0}, Lya/d$h$a;-><init>(Lya/d;Lya/d$h;)V

    .line 7
    iput-object p2, p0, Lya/d$h;->o:Lya/d$h$a;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 11

    .line 1
    new-instance v0, Loc/d;

    .line 2
    iget-object v1, p0, Lya/d$h;->r:Lea/d;

    .line 3
    iget v2, v1, Lea/d;->h:I

    .line 4
    iget v3, v1, Lea/d;->i:I

    .line 5
    iget v4, v1, Lea/d;->j:I

    .line 6
    iget v1, v1, Lea/d;->k:I

    .line 7
    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    const/4 v5, 0x5

    .line 8
    invoke-static {v5}, Lq/g;->b(I)[I

    move-result-object v6

    .line 9
    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget v9, v6, v8

    .line 10
    invoke-static {v9}, Lq/g;->a(I)I

    move-result v10

    if-ne v10, v1, :cond_0

    move v5, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    invoke-direct {v0, v2, v3, v4, v5}, Loc/d;-><init>(IIII)V

    return-object v0
.end method

.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/d$h;->n:Lv9/a;

    return-object v0
.end method

.method public final o()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lya/d$h;->o:Lya/d$h$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/d$h;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/d$h;->p:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v2, Lv9/x3;

    .line 4
    iget-object v3, p0, Lya/d$h;->p:Lya/d;

    .line 5
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lya/d$h;->q:Lv9/a;

    .line 7
    invoke-direct {v2, v3, v4, p1}, Lv9/x3;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 8
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 9
    sget-object p1, Lv9/t;->i:Leb/f;

    const/4 v3, 0x1

    new-array v4, v3, [Leb/g;

    .line 10
    new-instance v5, Leb/b;

    invoke-direct {v5, v2}, Leb/b;-><init>(Leb/d;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1, v4}, Leb/f;->a([Leb/g;)V

    new-array p1, v6, [Lv9/p0;

    .line 11
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast p1, [Lv9/p0;

    .line 13
    array-length v1, p1

    :goto_0
    if-ge v6, v1, :cond_0

    aget-object v4, p1, v6

    .line 14
    sget-object v5, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/r;

    invoke-direct {v7, v4, v2}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v5, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, v0, Lya/d;->A:Lhc/l0;

    .line 16
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_4

    .line 17
    iget-object p1, v2, Lv9/x3;->o:Lv9/a;

    .line 18
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    instance-of p1, v2, Lv9/m4;

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    .line 20
    :cond_1
    instance-of p1, v2, Lv9/z1;

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 21
    :cond_2
    instance-of v3, v2, Lv9/u4;

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    .line 22
    :cond_3
    instance-of p1, v2, Lv9/d4;

    .line 23
    :goto_3
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/t;

    invoke-direct {v1, v0, v2}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    :cond_4
    return-void
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Lya/d$h;->p:Lya/d;

    sget-object v1, Lv9/a;->i:Lv9/a$a;

    .line 3
    sget-object v1, Lv9/a;->l:Lv9/a;

    .line 4
    invoke-virtual {v0, v1}, Lya/d;->t(Lv9/a;)V

    .line 5
    iget-object v0, p0, Lya/d$h;->p:Lya/d;

    .line 6
    new-instance v1, Lv9/z3;

    .line 7
    iget-object v2, v0, Lya/d;->f:Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lya/d$h;->q:Lv9/a;

    .line 9
    iget-object v4, p0, Lya/d$h;->r:Lea/d;

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lv9/z3;-><init>(Ljava/lang/String;Lv9/a;Lea/d;)V

    .line 11
    new-instance v2, Lv9/x3;

    .line 12
    iget-object v3, p0, Lya/d$h;->p:Lya/d;

    .line 13
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 14
    iget-object v4, p0, Lya/d$h;->q:Lv9/a;

    .line 15
    new-instance v5, Ly9/a;

    iget-object v6, p0, Lya/d$h;->q:Lv9/a;

    .line 16
    iget-object v7, p0, Lya/d$h;->m:Ljava/lang/String;

    .line 17
    invoke-direct {v5, v6, v7}, Ly9/a;-><init>(Lv9/a;Ljava/lang/String;)V

    .line 18
    invoke-direct {v2, v3, v4, v5}, Lv9/x3;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 19
    invoke-static {v0, p1, v1, v2}, Lya/d;->e0(Lya/d;ZLv9/g;Lv9/f;)V

    return-void
.end method
