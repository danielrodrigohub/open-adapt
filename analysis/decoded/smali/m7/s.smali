.class public final Lm7/s;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lm7/s$a<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lm7/s;


# instance fields
.field public final a:Lm7/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/f1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm7/s;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lm7/s;-><init>(Z)V

    sput-object v0, Lm7/s;->d:Lm7/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lm7/f1;->n:I

    .line 3
    new-instance v0, Lm7/e1;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lm7/e1;-><init>(I)V

    .line 4
    iput-object v0, p0, Lm7/s;->a:Lm7/f1;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 5
    sget p1, Lm7/f1;->n:I

    .line 6
    new-instance p1, Lm7/e1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lm7/e1;-><init>(I)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lm7/s;->a:Lm7/f1;

    .line 9
    invoke-virtual {p0}, Lm7/s;->m()V

    .line 10
    invoke-virtual {p0}, Lm7/s;->m()V

    return-void
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, [B

    .line 3
    array-length v0, p0

    new-array v0, v0, [B

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static c(Lm7/o1;ILjava/lang/Object;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lm7/k;->w(I)I

    move-result p1

    .line 2
    sget-object v0, Lm7/o1;->s:Lm7/o1$b;

    if-ne p0, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 3
    :cond_0
    invoke-static {p0, p2}, Lm7/s;->d(Lm7/o1;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(Lm7/o1;Ljava/lang/Object;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    instance-of p0, p1, Lm7/y$a;

    if-eqz p0, :cond_0

    .line 4
    check-cast p1, Lm7/y$a;

    invoke-interface {p1}, Lm7/y$a;->a()I

    move-result p0

    .line 5
    invoke-static {p0}, Lm7/k;->l(I)I

    move-result p0

    return p0

    .line 6
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 7
    invoke-static {p0}, Lm7/k;->l(I)I

    move-result p0

    return p0

    .line 8
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lm7/k;->t(J)I

    move-result p0

    return p0

    .line 9
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lm7/k;->r(I)I

    move-result p0

    return p0

    .line 10
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget-object p0, Lm7/k;->b:Ljava/util/logging/Logger;

    return v1

    .line 11
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget-object p0, Lm7/k;->b:Ljava/util/logging/Logger;

    return v0

    .line 12
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lm7/k;->y(I)I

    move-result p0

    return p0

    .line 13
    :pswitch_6
    instance-of p0, p1, Lm7/i;

    if-eqz p0, :cond_1

    .line 14
    check-cast p1, Lm7/i;

    invoke-static {p1}, Lm7/k;->d(Lm7/i;)I

    move-result p0

    return p0

    .line 15
    :cond_1
    check-cast p1, [B

    sget-object p0, Lm7/k;->b:Ljava/util/logging/Logger;

    .line 16
    array-length p0, p1

    .line 17
    invoke-static {p0}, Lm7/k;->y(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    .line 18
    :pswitch_7
    instance-of p0, p1, Lm7/i;

    if-eqz p0, :cond_2

    .line 19
    check-cast p1, Lm7/i;

    invoke-static {p1}, Lm7/k;->d(Lm7/i;)I

    move-result p0

    return p0

    .line 20
    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lm7/k;->v(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 21
    :pswitch_8
    instance-of p0, p1, Lm7/b0;

    if-eqz p0, :cond_3

    .line 22
    check-cast p1, Lm7/b0;

    invoke-static {p1}, Lm7/k;->n(Lm7/c0;)I

    move-result p0

    return p0

    .line 23
    :cond_3
    check-cast p1, Lm7/p0;

    sget-object p0, Lm7/k;->b:Ljava/util/logging/Logger;

    .line 24
    invoke-interface {p1}, Lm7/p0;->a()I

    move-result p0

    .line 25
    invoke-static {p0}, Lm7/k;->y(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    .line 26
    :pswitch_9
    check-cast p1, Lm7/p0;

    sget-object p0, Lm7/k;->b:Ljava/util/logging/Logger;

    .line 27
    invoke-interface {p1}, Lm7/p0;->a()I

    move-result p0

    return p0

    .line 28
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p0, Lm7/k;->b:Ljava/util/logging/Logger;

    const/4 p0, 0x1

    return p0

    .line 29
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget-object p0, Lm7/k;->b:Ljava/util/logging/Logger;

    return v0

    .line 30
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget-object p0, Lm7/k;->b:Ljava/util/logging/Logger;

    return v1

    .line 31
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lm7/k;->l(I)I

    move-result p0

    return p0

    .line 32
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lm7/k;->A(J)I

    move-result p0

    return p0

    .line 33
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 34
    invoke-static {p0, p1}, Lm7/k;->A(J)I

    move-result p0

    return p0

    .line 35
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    sget-object p0, Lm7/k;->b:Ljava/util/logging/Logger;

    return v0

    .line 36
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    sget-object p0, Lm7/k;->b:Ljava/util/logging/Logger;

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static e(Lm7/s$a;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/s$a<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lm7/s$a;->d()V

    .line 2
    invoke-interface {p0}, Lm7/s$a;->a()V

    .line 3
    invoke-interface {p0}, Lm7/s$a;->c()V

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0, p1}, Lm7/s;->c(Lm7/o1;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static j(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lm7/s$a<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm7/s$a;

    .line 2
    invoke-interface {v0}, Lm7/s$a;->e()Lm7/p1;

    move-result-object v1

    sget-object v2, Lm7/p1;->q:Lm7/p1;

    if-ne v1, v2, :cond_0

    .line 3
    invoke-interface {v0}, Lm7/s$a;->c()V

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lm7/s;->k(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static k(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lm7/q0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lm7/q0;

    invoke-interface {p0}, Lm7/q0;->f()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of p0, p0, Lm7/b0;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Lm7/s;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm7/s<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm7/s;

    invoke-direct {v0}, Lm7/s;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v2}, Lm7/f1;->d()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v2, v1}, Lm7/f1;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm7/s$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lm7/s;->o(Lm7/s$a;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v1}, Lm7/f1;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm7/s$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lm7/s;->o(Lm7/s$a;Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-boolean v1, p0, Lm7/s;->c:Z

    iput-boolean v1, v0, Lm7/s;->c:Z

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lm7/s;->a()Lm7/s;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lm7/s;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lm7/s;

    .line 3
    iget-object v0, p0, Lm7/s;->a:Lm7/f1;

    iget-object p1, p1, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v0, p1}, Lm7/f1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(Lm7/s$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v0, p1}, Lm7/f1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lm7/b0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lm7/b0;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lm7/c0;->a(Lm7/p0;)Lm7/p0;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final g(Ljava/util/Map$Entry;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm7/s$a;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lm7/s$a;->e()Lm7/p1;

    move-result-object v2

    sget-object v3, Lm7/p1;->q:Lm7/p1;

    if-ne v2, v3, :cond_1

    .line 4
    invoke-interface {v0}, Lm7/s$a;->c()V

    .line 5
    invoke-interface {v0}, Lm7/s$a;->f()V

    .line 6
    instance-of v0, v1, Lm7/b0;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm7/s$a;

    invoke-interface {p1}, Lm7/s$a;->a()V

    check-cast v1, Lm7/b0;

    .line 8
    invoke-static {v4}, Lm7/k;->w(I)I

    move-result p1

    mul-int/2addr p1, v3

    .line 9
    invoke-static {v3, v5}, Lm7/k;->x(II)I

    move-result v0

    add-int/2addr v0, p1

    .line 10
    invoke-static {v2}, Lm7/k;->w(I)I

    move-result p1

    invoke-static {v1}, Lm7/k;->n(Lm7/c0;)I

    move-result v1

    add-int/2addr v1, p1

    add-int/2addr v1, v0

    return v1

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm7/s$a;

    invoke-interface {p1}, Lm7/s$a;->a()V

    check-cast v1, Lm7/p0;

    .line 12
    invoke-static {v4}, Lm7/k;->w(I)I

    move-result p1

    mul-int/2addr p1, v3

    .line 13
    invoke-static {v3, v5}, Lm7/k;->x(II)I

    move-result v0

    add-int/2addr v0, p1

    .line 14
    invoke-static {v2}, Lm7/k;->w(I)I

    move-result p1

    .line 15
    invoke-interface {v1}, Lm7/p0;->a()I

    move-result v1

    .line 16
    invoke-static {v1}, Lm7/k;->y(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, p1

    add-int/2addr v2, v0

    return v2

    .line 17
    :cond_1
    invoke-static {v0, v1}, Lm7/s;->e(Lm7/s$a;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v0}, Lm7/f1;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v2}, Lm7/f1;->d()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v2, v1}, Lm7/f1;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lm7/s;->j(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v1}, Lm7/f1;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-static {v2}, Lm7/s;->j(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final l()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lm7/s;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lm7/b0$c;

    iget-object v1, p0, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v1}, Lm7/f1;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lm7/b0$c;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v0}, Lm7/f1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm7/s;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v0}, Lm7/f1;->g()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lm7/s;->b:Z

    return-void
.end method

.method public final n(Ljava/util/Map$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm7/s$a;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Lm7/b0;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lm7/b0;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1}, Lm7/c0;->a(Lm7/p0;)Lm7/p0;

    move-result-object p1

    .line 6
    :cond_0
    invoke-interface {v0}, Lm7/s$a;->c()V

    .line 7
    invoke-interface {v0}, Lm7/s$a;->e()Lm7/p1;

    move-result-object v1

    sget-object v2, Lm7/p1;->q:Lm7/p1;

    if-ne v1, v2, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lm7/s;->f(Lm7/s$a;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lm7/s;->a:Lm7/f1;

    invoke-static {p1}, Lm7/s;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lm7/f1;->i(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    check-cast v1, Lm7/p0;

    .line 11
    invoke-interface {v1}, Lm7/p0;->c()Lm7/p0$a;

    move-result-object v1

    check-cast p1, Lm7/p0;

    invoke-interface {v0, v1, p1}, Lm7/s$a;->r(Lm7/p0$a;Lm7/p0;)Lm7/p0$a;

    move-result-object p1

    .line 12
    check-cast p1, Lm7/w$a;

    .line 13
    invoke-virtual {p1}, Lm7/w$a;->h()Lm7/w;

    move-result-object p1

    .line 14
    iget-object v1, p0, Lm7/s;->a:Lm7/f1;

    invoke-virtual {v1, v0, p1}, Lm7/f1;->i(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, p0, Lm7/s;->a:Lm7/f1;

    invoke-static {p1}, Lm7/s;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lm7/f1;->i(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final o(Lm7/s$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lm7/s$a;->c()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lm7/s;->p(Lm7/s$a;Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final p(Lm7/s$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lm7/s$a;->d()V

    .line 2
    sget-object p1, Lm7/y;->a:Ljava/nio/charset/Charset;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method
