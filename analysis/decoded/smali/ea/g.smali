.class public final Lea/g;
.super Ljava/lang/Object;
.source "AdaptKitInMemoryDevice.kt"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lea/i;

.field public d:Lea/i;

.field public e:Lea/d;

.field public f:Lea/d;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lea/g;-><init>(Ljava/lang/String;Ljava/util/List;Lea/i;Lea/i;Lea/d;Lea/d;ILrd/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lea/i;Lea/i;Lea/d;Lea/d;ILrd/h;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lea/g;->a:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lea/g;->b:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lea/g;->c:Lea/i;

    .line 6
    iput-object p2, p0, Lea/g;->d:Lea/i;

    .line 7
    iput-object p2, p0, Lea/g;->e:Lea/d;

    .line 8
    iput-object p2, p0, Lea/g;->f:Lea/d;

    return-void
.end method


# virtual methods
.method public final a()Lea/a;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lea/g;->c:Lea/i;

    const/4 v2, -0x3

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Lea/i;->i:Lea/h$a;

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Lea/h$a;->j:I

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4
    :goto_0
    iget-object v3, v0, Lea/g;->d:Lea/i;

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, v3, Lea/i;->i:Lea/h$a;

    if-eqz v3, :cond_1

    .line 6
    iget v3, v3, Lea/h$a;->j:I

    goto :goto_1

    :cond_1
    move v3, v2

    .line 7
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-ne v1, v2, :cond_2

    .line 8
    sget-object v5, Lea/a$a;->h:Lea/a$a;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-ne v3, v2, :cond_3

    .line 9
    sget-object v2, Lea/a$a;->i:Lea/a$a;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    iget-object v2, v0, Lea/g;->e:Lea/d;

    if-nez v2, :cond_4

    .line 11
    sget-object v2, Lea/a$a;->j:Lea/a$a;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_4
    iget-object v2, v0, Lea/g;->f:Lea/d;

    if-nez v2, :cond_5

    .line 13
    sget-object v2, Lea/a$a;->k:Lea/a$a;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_5
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_6

    .line 15
    new-instance v1, Lea/a;

    new-array v2, v7, [Lea/a$a;

    .line 16
    invoke-interface {v4, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v2, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    check-cast v2, [Lea/a$a;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lea/a$a;

    invoke-direct {v1, v6, v2}, Lea/a;-><init>(Lea/e;[Lea/a$a;)V

    return-object v1

    .line 18
    :cond_6
    iget-object v2, v0, Lea/g;->b:Ljava/util/List;

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lea/e;

    .line 21
    iget-object v10, v9, Lea/e;->k:Lea/c;

    .line 22
    iget-object v11, v10, Lea/c;->h:Lea/i;

    .line 23
    iget-object v11, v11, Lea/i;->i:Lea/h$a;

    .line 24
    iget v11, v11, Lea/h$a;->j:I

    add-int/lit8 v12, v1, -0x2

    if-gt v12, v11, :cond_7

    add-int/lit8 v12, v1, 0x2

    if-gt v11, v12, :cond_7

    move v11, v5

    goto :goto_3

    :cond_7
    move v11, v7

    .line 25
    :goto_3
    iget-object v12, v9, Lea/e;->l:Lea/c;

    .line 26
    iget-object v12, v12, Lea/c;->h:Lea/i;

    .line 27
    iget-object v12, v12, Lea/i;->i:Lea/h$a;

    .line 28
    iget v12, v12, Lea/h$a;->j:I

    add-int/lit8 v13, v3, -0x2

    if-gt v13, v12, :cond_8

    add-int/lit8 v13, v3, 0x2

    if-gt v12, v13, :cond_8

    move v12, v5

    goto :goto_4

    :cond_8
    move v12, v7

    .line 29
    :goto_4
    iget-object v10, v10, Lea/c;->i:Lea/d;

    .line 30
    new-instance v13, Lfd/i;

    .line 31
    iget v14, v10, Lea/d;->h:I

    .line 32
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 33
    iget v15, v10, Lea/d;->i:I

    .line 34
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 35
    iget v10, v10, Lea/d;->j:I

    .line 36
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 37
    invoke-direct {v13, v14, v15, v10}, Lfd/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    iget-object v10, v0, Lea/g;->e:Lea/d;

    if-eqz v10, :cond_9

    new-instance v14, Lfd/i;

    .line 39
    iget v15, v10, Lea/d;->h:I

    .line 40
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 41
    iget v6, v10, Lea/d;->i:I

    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 43
    iget v10, v10, Lea/d;->j:I

    .line 44
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v14, v15, v6, v10}, Lfd/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    :goto_5
    invoke-static {v13, v14}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 45
    iget-object v10, v9, Lea/e;->l:Lea/c;

    .line 46
    iget-object v10, v10, Lea/c;->i:Lea/d;

    .line 47
    new-instance v13, Lfd/i;

    .line 48
    iget v14, v10, Lea/d;->h:I

    .line 49
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 50
    iget v15, v10, Lea/d;->i:I

    .line 51
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 52
    iget v10, v10, Lea/d;->j:I

    .line 53
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 54
    invoke-direct {v13, v14, v15, v10}, Lfd/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    iget-object v10, v0, Lea/g;->f:Lea/d;

    if-eqz v10, :cond_a

    new-instance v14, Lfd/i;

    .line 56
    iget v15, v10, Lea/d;->h:I

    .line 57
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 58
    iget v7, v10, Lea/d;->i:I

    .line 59
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 60
    iget v10, v10, Lea/d;->j:I

    .line 61
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v14, v15, v7, v10}, Lfd/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    const/4 v14, 0x0

    :goto_6
    invoke-static {v13, v14}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v11, :cond_b

    if-eqz v12, :cond_b

    move v10, v5

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    .line 62
    :goto_7
    iget-boolean v9, v9, Lea/e;->j:Z

    if-nez v9, :cond_d

    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    goto :goto_8

    :cond_c
    const/4 v6, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    move v6, v5

    :goto_9
    if-eqz v10, :cond_e

    if-eqz v6, :cond_e

    move v6, v5

    goto :goto_a

    :cond_e
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_f

    .line 63
    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_f
    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_2

    .line 64
    :cond_10
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_15

    .line 65
    iget-object v1, v0, Lea/g;->a:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 66
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lea/e;

    .line 67
    iget-object v5, v5, Lea/e;->i:Ljava/lang/String;

    .line 68
    invoke-static {v1, v5}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move-object v6, v3

    goto :goto_b

    :cond_12
    const/4 v6, 0x0

    .line 69
    :goto_b
    check-cast v6, Lea/e;

    if-nez v6, :cond_13

    goto :goto_c

    :cond_13
    const/4 v2, 0x0

    goto :goto_d

    .line 70
    :cond_14
    :goto_c
    new-instance v1, Lea/g$a;

    invoke-direct {v1}, Lea/g$a;-><init>()V

    invoke-static {v4, v1}, Lgd/n;->i0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 71
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lea/e;

    :goto_d
    new-array v1, v2, [Lea/a$a;

    .line 72
    new-instance v2, Lea/a;

    invoke-direct {v2, v6, v1}, Lea/a;-><init>(Lea/e;[Lea/a$a;)V

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    .line 73
    new-instance v1, Lea/a;

    new-array v2, v2, [Lea/a$a;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lea/a;-><init>(Lea/e;[Lea/a$a;)V

    move-object v2, v1

    :goto_e
    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lea/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lea/g;

    iget-object v1, p0, Lea/g;->a:Ljava/lang/String;

    iget-object v3, p1, Lea/g;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lea/g;->b:Ljava/util/List;

    iget-object v3, p1, Lea/g;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lea/g;->c:Lea/i;

    iget-object v3, p1, Lea/g;->c:Lea/i;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lea/g;->d:Lea/i;

    iget-object v3, p1, Lea/g;->d:Lea/i;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lea/g;->e:Lea/d;

    iget-object v3, p1, Lea/g;->e:Lea/d;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lea/g;->f:Lea/d;

    iget-object p1, p1, Lea/g;->f:Lea/d;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lea/g;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lea/g;->b:Ljava/util/List;

    const/16 v3, 0x1f

    .line 1
    invoke-static {v2, v0, v3}, La4/g;->d(Ljava/util/List;II)I

    move-result v0

    .line 2
    iget-object v2, p0, Lea/g;->c:Lea/i;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lea/i;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lea/g;->d:Lea/i;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lea/i;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lea/g;->e:Lea/d;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lea/d;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lea/g;->f:Lea/d;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lea/d;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lea/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lea/g;->b:Ljava/util/List;

    iget-object v2, p0, Lea/g;->c:Lea/i;

    iget-object v3, p0, Lea/g;->d:Lea/i;

    iget-object v4, p0, Lea/g;->e:Lea/d;

    iget-object v5, p0, Lea/g;->f:Lea/d;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AdaptKitInMemoryDevice(lastUsedSnapshot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", modes="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", leftLacingPosition="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rightLacingPosition="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", leftColor="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rightColor="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
