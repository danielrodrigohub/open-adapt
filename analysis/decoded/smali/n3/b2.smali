.class public abstract Ln3/b2;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/b2$c;,
        Ln3/b2$b;,
        Ln3/b2$d;
    }
.end annotation


# static fields
.field public static final h:Ln3/b2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/b2$a;

    invoke-direct {v0}, Ln3/b2$a;-><init>()V

    sput-object v0, Ln3/b2;->h:Ln3/b2$a;

    .line 2
    sget-object v0, Ln3/z0;->d:Ln3/z0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ln3/h$a;Landroid/os/IBinder;)Lu6/v;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ln3/h;",
            ">(",
            "Ln3/h$a<",
            "TT;>;",
            "Landroid/os/IBinder;",
            ")",
            "Lu6/v<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lu6/v;->i:Lu6/v$b;

    .line 2
    sget-object p0, Lu6/p0;->l:Lu6/p0;

    return-object p0

    :cond_0
    const/4 v0, 0x4

    const-string v1, "initialCapacity"

    .line 3
    invoke-static {v0, v1}, Lu6/h;->b(ILjava/lang/String;)I

    new-array v2, v0, [Ljava/lang/Object;

    .line 4
    sget v3, Ln3/g;->b:I

    .line 5
    sget-object v3, Lu6/v;->i:Lu6/v$b;

    .line 6
    invoke-static {v0, v1}, Lu6/h;->b(ILjava/lang/String;)I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v3, 0x1

    move v5, v1

    move v6, v5

    move v4, v3

    :goto_0
    if-eqz v4, :cond_3

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 9
    :try_start_0
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-interface {p1, v3, v4, v7, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v3, :cond_2

    .line 12
    invoke-virtual {v7}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 13
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v5, 0x1

    .line 14
    array-length v10, v0

    if-ge v10, v9, :cond_1

    .line 15
    array-length v10, v0

    .line 16
    invoke-static {v10, v9}, Lu6/t$b;->a(II)I

    move-result v10

    invoke-static {v0, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 17
    :cond_1
    aput-object v8, v0, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v6, v6, 0x1

    move v5, v9

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 19
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move v4, v8

    goto :goto_0

    :catch_0
    move-exception p0

    .line 20
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 23
    throw p0

    .line 24
    :cond_3
    invoke-static {v0, v5}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    move-result-object p1

    move v0, v1

    .line 25
    :goto_2
    move-object v3, p1

    check-cast v3, Lu6/p0;

    .line 26
    iget v4, v3, Lu6/p0;->k:I

    if-ge v1, v4, :cond_5

    .line 27
    invoke-virtual {v3, v1}, Lu6/p0;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {p0, v3}, Ln3/h$a;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v3

    .line 28
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    .line 29
    array-length v5, v2

    if-ge v5, v4, :cond_4

    .line 30
    array-length v5, v2

    .line 31
    invoke-static {v5, v4}, Lu6/t$b;->a(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 32
    :cond_4
    aput-object v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v4

    goto :goto_2

    .line 33
    :cond_5
    invoke-static {v2, v0}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    move-result-object p0

    return-object p0
.end method

.method public static t(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Ln3/b2;->r()I

    move-result v1

    .line 3
    new-instance v2, Ln3/b2$d;

    invoke-direct {v2}, Ln3/b2$d;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    const-wide/16 v5, 0x0

    .line 4
    invoke-virtual {p0, v4, v2, v5, v6}, Ln3/b2;->q(ILn3/b2$d;J)Ln3/b2$d;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Ln3/b2$d;->g()Landroid/os/Bundle;

    move-result-object v5

    .line 6
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p0}, Ln3/b2;->k()I

    move-result v4

    .line 9
    new-instance v5, Ln3/b2$b;

    invoke-direct {v5}, Ln3/b2$b;-><init>()V

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_1

    .line 10
    invoke-virtual {p0, v6, v5, v3}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object v7

    invoke-virtual {v7}, Ln3/b2$b;->a()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 11
    :cond_1
    new-array v4, v1, [I

    const/4 v5, 0x1

    if-lez v1, :cond_2

    .line 12
    invoke-virtual {p0, v5}, Ln3/b2;->c(Z)I

    move-result v6

    aput v6, v4, v3

    :cond_2
    move v6, v5

    :goto_2
    if-ge v6, v1, :cond_3

    add-int/lit8 v7, v6, -0x1

    .line 13
    aget v7, v4, v7

    .line 14
    invoke-virtual {p0, v7, v3, v5}, Ln3/b2;->g(IIZ)I

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 15
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-static {v3}, Ln3/b2;->t(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ln3/g;

    invoke-direct {v6, v0}, Ln3/g;-><init>(Ljava/util/List;)V

    .line 17
    invoke-static {v1, v3, v6}, Landroidx/activity/k;->q(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 18
    invoke-static {v5}, Ln3/b2;->t(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ln3/g;

    invoke-direct {v3, v2}, Ln3/g;-><init>(Ljava/util/List;)V

    .line 19
    invoke-static {v1, v0, v3}, Landroidx/activity/k;->q(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x2

    .line 20
    invoke-static {v0}, Ln3/b2;->t(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v1
.end method

.method public c(Z)I
    .locals 0

    invoke-virtual {p0}, Ln3/b2;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract d(Ljava/lang/Object;)I
.end method

.method public e(Z)I
    .locals 1

    invoke-virtual {p0}, Ln3/b2;->s()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ln3/b2;->r()I

    move-result p1

    add-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ln3/b2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ln3/b2;

    .line 3
    invoke-virtual {p1}, Ln3/b2;->r()I

    move-result v1

    invoke-virtual {p0}, Ln3/b2;->r()I

    move-result v3

    if-ne v1, v3, :cond_b

    invoke-virtual {p1}, Ln3/b2;->k()I

    move-result v1

    invoke-virtual {p0}, Ln3/b2;->k()I

    move-result v3

    if-eq v1, v3, :cond_2

    goto/16 :goto_3

    .line 4
    :cond_2
    new-instance v1, Ln3/b2$d;

    invoke-direct {v1}, Ln3/b2$d;-><init>()V

    .line 5
    new-instance v3, Ln3/b2$b;

    invoke-direct {v3}, Ln3/b2$b;-><init>()V

    .line 6
    new-instance v4, Ln3/b2$d;

    invoke-direct {v4}, Ln3/b2$d;-><init>()V

    .line 7
    new-instance v5, Ln3/b2$b;

    invoke-direct {v5}, Ln3/b2$b;-><init>()V

    move v6, v2

    .line 8
    :goto_0
    invoke-virtual {p0}, Ln3/b2;->r()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 9
    invoke-virtual {p0, v6, v1}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v7

    invoke-virtual {p1, v6, v4}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v8

    invoke-virtual {v7, v8}, Ln3/b2$d;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 10
    :goto_1
    invoke-virtual {p0}, Ln3/b2;->k()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 11
    invoke-virtual {p0, v1, v3, v0}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object v4

    .line 12
    invoke-virtual {p1, v1, v5, v0}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object v6

    invoke-virtual {v4, v6}, Ln3/b2$b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_6
    invoke-virtual {p0, v0}, Ln3/b2;->c(Z)I

    move-result v1

    .line 14
    invoke-virtual {p1, v0}, Ln3/b2;->c(Z)I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 15
    :cond_7
    invoke-virtual {p0, v0}, Ln3/b2;->e(Z)I

    move-result v3

    .line 16
    invoke-virtual {p1, v0}, Ln3/b2;->e(Z)I

    move-result v4

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    :goto_2
    if-eq v1, v3, :cond_a

    .line 17
    invoke-virtual {p0, v1, v2, v0}, Ln3/b2;->g(IIZ)I

    move-result v4

    .line 18
    invoke-virtual {p1, v1, v2, v0}, Ln3/b2;->g(IIZ)I

    move-result v1

    if-eq v4, v1, :cond_9

    return v2

    :cond_9
    move v1, v4

    goto :goto_2

    :cond_a
    return v0

    :cond_b
    :goto_3
    return v2
.end method

.method public final f(ILn3/b2$b;Ln3/b2$d;IZ)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object p2

    .line 2
    iget p2, p2, Ln3/b2$b;->j:I

    .line 3
    invoke-virtual {p0, p2, p3}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v0

    iget v0, v0, Ln3/b2$d;->w:I

    if-ne v0, p1, :cond_1

    .line 4
    invoke-virtual {p0, p2, p4, p5}, Ln3/b2;->g(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p3}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object p1

    iget p1, p1, Ln3/b2$d;->v:I

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public g(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 1
    invoke-virtual {p0, p3}, Ln3/b2;->e(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Ln3/b2;->c(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    :goto_0
    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 4
    :cond_3
    invoke-virtual {p0, p3}, Ln3/b2;->e(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    goto :goto_1

    :cond_4
    add-int/2addr p1, v0

    :goto_1
    return p1
.end method

.method public final h(ILn3/b2$b;)Ln3/b2$b;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    new-instance v0, Ln3/b2$d;

    invoke-direct {v0}, Ln3/b2$d;-><init>()V

    .line 2
    new-instance v1, Ln3/b2$b;

    invoke-direct {v1}, Ln3/b2$b;-><init>()V

    .line 3
    invoke-virtual {p0}, Ln3/b2;->r()I

    move-result v2

    add-int/lit16 v2, v2, 0xd9

    const/4 v3, 0x0

    move v4, v3

    .line 4
    :goto_0
    invoke-virtual {p0}, Ln3/b2;->r()I

    move-result v5

    if-ge v4, v5, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    .line 5
    invoke-virtual {p0, v4, v0}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v5

    invoke-virtual {v5}, Ln3/b2$d;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v2, 0x1f

    .line 6
    invoke-virtual {p0}, Ln3/b2;->k()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v3

    .line 7
    :goto_1
    invoke-virtual {p0}, Ln3/b2;->k()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    invoke-virtual {p0, v2, v1, v5}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object v4

    invoke-virtual {v4}, Ln3/b2$b;->hashCode()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0, v5}, Ln3/b2;->c(Z)I

    move-result v1

    :goto_2
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 10
    invoke-virtual {p0, v1, v3, v5}, Ln3/b2;->g(IIZ)I

    move-result v1

    goto :goto_2

    :cond_2
    return v0
.end method

.method public abstract i(ILn3/b2$b;Z)Ln3/b2$b;
.end method

.method public j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;
    .locals 1

    invoke-virtual {p0, p1}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object p1

    return-object p1
.end method

.method public abstract k()I
.end method

.method public final l(Ln3/b2$d;Ln3/b2$b;IJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/b2$d;",
            "Ln3/b2$b;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Ln3/b2;->m(Ln3/b2$d;Ln3/b2$b;IJJ)Landroid/util/Pair;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final m(Ln3/b2$d;Ln3/b2$b;IJJ)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/b2$d;",
            "Ln3/b2$b;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/b2;->r()I

    move-result v0

    invoke-static {p3, v0}, Lm5/a;->c(II)I

    .line 2
    invoke-virtual {p0, p3, p1, p6, p7}, Ln3/b2;->q(ILn3/b2$d;J)Ln3/b2$d;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    .line 3
    iget-wide p4, p1, Ln3/b2$d;->t:J

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget p3, p1, Ln3/b2$d;->v:I

    .line 5
    invoke-virtual {p0, p3, p2}, Ln3/b2;->h(ILn3/b2$b;)Ln3/b2$b;

    .line 6
    :goto_0
    iget v0, p1, Ln3/b2$d;->w:I

    if-ge p3, v0, :cond_1

    iget-wide v0, p2, Ln3/b2$b;->l:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, p2, v1}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object v1

    .line 8
    iget-wide v1, v1, Ln3/b2$b;->l:J

    cmp-long v1, v1, p4

    if-gtz v1, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p3, p2, p1}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    .line 10
    iget-wide v0, p2, Ln3/b2$b;->l:J

    sub-long/2addr p4, v0

    .line 11
    iget-wide v0, p2, Ln3/b2$b;->k:J

    cmp-long p1, v0, p6

    if-eqz p1, :cond_2

    const-wide/16 p6, 0x1

    sub-long/2addr v0, p6

    .line 12
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    :cond_2
    const-wide/16 p6, 0x0

    .line 13
    invoke-static {p6, p7, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    .line 14
    iget-object p1, p2, Ln3/b2$b;->i:Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public n(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 1
    invoke-virtual {p0, p3}, Ln3/b2;->c(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Ln3/b2;->e(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    :goto_0
    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 4
    :cond_3
    invoke-virtual {p0, p3}, Ln3/b2;->c(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    goto :goto_1

    :cond_4
    sub-int/2addr p1, v0

    :goto_1
    return p1
.end method

.method public abstract o(I)Ljava/lang/Object;
.end method

.method public final p(ILn3/b2$d;)Ln3/b2$d;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Ln3/b2;->q(ILn3/b2$d;J)Ln3/b2$d;

    move-result-object p1

    return-object p1
.end method

.method public abstract q(ILn3/b2$d;J)Ln3/b2$d;
.end method

.method public abstract r()I
.end method

.method public final s()Z
    .locals 1

    invoke-virtual {p0}, Ln3/b2;->r()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
