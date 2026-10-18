.class public final Lp4/h;
.super Ljava/lang/Object;
.source "DefaultCompositeSequenceableLoaderFactory.java"

# interfaces
.implements Lg7/q;
.implements Lv9/m0;


# static fields
.field public static final h:Lp4/h;

.field public static final i:[Ljava/lang/Object;

.field public static j:I

.field public static volatile k:Lh2/f;

.field public static volatile l:Lh2/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lp4/h;

    invoke-direct {v0}, Lp4/h;-><init>()V

    sput-object v0, Lp4/h;->h:Lp4/h;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    sput-object v0, Lp4/h;->i:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method

.method public static B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/lang/String;)V
    .locals 2

    const-string v0, "lateinit property "

    const-string v1, " has not been initialized"

    .line 1
    invoke-static {v0, p0, v1}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Lfd/n;

    invoke-direct {v0, p0}, Lfd/n;-><init>(Ljava/lang/String;)V

    .line 3
    const-class p0, Lp4/h;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lp4/h;->A(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 4
    throw v0
.end method

.method public static final D(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 4

    const-string v0, "collection"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :goto_0
    sget-object p0, Lp4/h;->i:[Ljava/lang/Object;

    goto :goto_3

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 7
    array-length v1, v0

    if-lt v2, v1, :cond_5

    .line 8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    move-object p0, v0

    goto :goto_3

    :cond_2
    mul-int/lit8 v1, v2, 0x3

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    const v3, 0x7ffffffd

    if-gt v1, v2, :cond_4

    if-ge v2, v3, :cond_3

    move v1, v3

    goto :goto_2

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    .line 10
    :cond_4
    :goto_2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(result, newSize)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 11
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 12
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "copyOf(result, size)"

    invoke-static {p0, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object p0

    :cond_6
    :goto_4
    move v1, v2

    goto :goto_1
.end method

.method public static final E(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    const-string v0, "collection"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    array-length p0, p1

    if-lez p0, :cond_8

    aput-object v1, p1, v2

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    array-length p0, p1

    if-lez p0, :cond_8

    aput-object v1, p1, v2

    goto :goto_2

    .line 7
    :cond_1
    array-length v3, p1

    if-gt v0, v3, :cond_2

    move-object v0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v0, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    .line 9
    array-length v2, v0

    if-lt v3, v2, :cond_6

    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    move-object p1, v0

    goto :goto_2

    :cond_3
    mul-int/lit8 v2, v3, 0x3

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1

    const v4, 0x7ffffffd

    if-gt v2, v3, :cond_5

    if-ge v3, v4, :cond_4

    move v2, v4

    goto :goto_1

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    .line 12
    :cond_5
    :goto_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "copyOf(result, newSize)"

    invoke-static {v0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 13
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    if-ne v0, p1, :cond_7

    .line 14
    aput-object v1, p1, v3

    goto :goto_2

    .line 15
    :cond_7
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "copyOf(result, size)"

    invoke-static {p0, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p0

    :cond_8
    :goto_2
    return-object p1

    :cond_9
    :goto_3
    move v2, v3

    goto :goto_0
.end method

.method public static final F(Ljava/lang/String;)Lfd/k;
    .locals 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Ld3/e;->c(I)I

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    .line 4
    invoke-static {v5, v6}, Lp4/h;->l(II)I

    move-result v6

    const/4 v7, 0x1

    if-gez v6, :cond_2

    if-eq v1, v7, :cond_1

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_3

    :cond_1
    return-object v2

    :cond_2
    move v7, v4

    :cond_3
    const v5, 0x71c71c7

    move v6, v5

    :goto_0
    if-ge v7, v1, :cond_8

    .line 5
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 6
    invoke-static {v8, v0}, Ljava/lang/Character;->digit(II)I

    move-result v8

    if-gez v8, :cond_4

    return-object v2

    .line 7
    :cond_4
    invoke-static {v4, v6}, Lg7/c;->g(II)I

    move-result v9

    if-lez v9, :cond_6

    if-ne v6, v5, :cond_5

    int-to-long v9, v3

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    int-to-long v13, v0

    and-long/2addr v11, v13

    .line 8
    div-long/2addr v9, v11

    long-to-int v6, v9

    .line 9
    invoke-static {v4, v6}, Lg7/c;->g(II)I

    move-result v9

    if-lez v9, :cond_6

    :cond_5
    return-object v2

    :cond_6
    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v8, v4

    .line 10
    invoke-static {v8, v4}, Lg7/c;->g(II)I

    move-result v4

    if-gez v4, :cond_7

    return-object v2

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move v4, v8

    goto :goto_0

    .line 11
    :cond_8
    new-instance p0, Lfd/k;

    invoke-direct {p0, v4}, Lfd/k;-><init>(I)V

    return-object p0
.end method

.method public static final G(Ljava/lang/String;)Lfd/l;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 1
    invoke-static {v1}, Ld3/e;->c(I)I

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_1
    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    .line 4
    invoke-static {v5, v6}, Lp4/h;->l(II)I

    move-result v6

    const/4 v7, 0x1

    if-gez v6, :cond_3

    if-eq v2, v7, :cond_0

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_2

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    int-to-long v8, v1

    const-wide/16 v10, 0x0

    const-wide v12, 0x71c71c71c71c71cL

    move-wide v14, v10

    move-wide v3, v12

    :goto_2
    if-ge v5, v2, :cond_b

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 6
    invoke-static {v6, v1}, Ljava/lang/Character;->digit(II)I

    move-result v6

    if-gez v6, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    invoke-static {v14, v15, v3, v4}, Lg7/c;->h(JJ)I

    move-result v16

    if-lez v16, :cond_8

    cmp-long v3, v3, v12

    if-nez v3, :cond_0

    cmp-long v3, v8, v10

    move/from16 v17, v2

    const-wide/16 v1, -0x1

    if-gez v3, :cond_6

    .line 8
    invoke-static {v1, v2, v8, v9}, Lg7/c;->h(JJ)I

    move-result v1

    if-gez v1, :cond_5

    move-wide v3, v10

    goto :goto_4

    :cond_5
    const-wide/16 v1, 0x1

    move-wide v3, v1

    goto :goto_4

    :cond_6
    const-wide v3, 0x7fffffffffffffffL

    .line 9
    div-long/2addr v3, v8

    shl-long/2addr v3, v7

    mul-long v18, v3, v8

    sub-long v1, v1, v18

    .line 10
    invoke-static {v1, v2, v8, v9}, Lg7/c;->h(JJ)I

    move-result v1

    if-ltz v1, :cond_7

    move v1, v7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    int-to-long v1, v1

    add-long/2addr v3, v1

    .line 11
    :goto_4
    invoke-static {v14, v15, v3, v4}, Lg7/c;->h(JJ)I

    move-result v1

    if-lez v1, :cond_9

    goto :goto_0

    :cond_8
    move/from16 v17, v2

    :cond_9
    mul-long/2addr v14, v8

    int-to-long v1, v6

    const-wide v18, 0xffffffffL

    and-long v1, v1, v18

    add-long/2addr v1, v14

    .line 12
    invoke-static {v1, v2, v14, v15}, Lg7/c;->h(JJ)I

    move-result v6

    if-gez v6, :cond_a

    goto :goto_0

    :cond_a
    add-int/lit8 v5, v5, 0x1

    move-wide v14, v1

    move/from16 v2, v17

    const/16 v1, 0xa

    goto :goto_2

    .line 13
    :cond_b
    new-instance v3, Lfd/l;

    invoke-direct {v3, v14, v15}, Lfd/l;-><init>(J)V

    :goto_5
    return-object v3
.end method

.method public static final b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p0, p1, :cond_0

    sget-object v0, Lmd/b;->a:Lmd/a;

    invoke-virtual {v0, p0, p1}, Lmd/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static d([B)Ljava/util/List;
    .locals 6

    const/16 v0, 0xb

    .line 1
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0xa

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xbb80

    .line 2
    div-long/2addr v0, v2

    const-wide/32 v2, 0x4c4b400

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {v0, v1}, Lp4/h;->e(J)[B

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v2, v3}, Lp4/h;->e(J)[B

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v4
.end method

.method public static e(J)[B
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, " must not be null"

    .line 2
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 4
    const-class p1, Lp4/h;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lp4/h;->A(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 5
    throw p0
.end method

.method public static g(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 2
    const-class v0, Lp4/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lp4/h;->A(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 3
    throw p0
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2
    const-class p1, Lp4/h;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lp4/h;->A(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 3
    throw p0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, " must not be null"

    .line 2
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 4
    const-class p1, Lp4/h;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lp4/h;->A(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 5
    throw p0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Lp4/h;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2
    const-class p1, Lp4/h;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lp4/h;->A(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 3
    throw p0
.end method

.method public static k(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lp4/h;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2
    const-class p1, Lp4/h;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lp4/h;->A(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 3
    throw p0
.end method

.method public static l(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    .line 2
    aget-object v0, v0, v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Parameter specified as non-null is null: method "

    const-string v3, "."

    const-string v4, ", parameter "

    .line 5
    invoke-static {v2, v1, v3, v0, v4}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/String;)[B
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 3
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    if-eq v3, v5, :cond_0

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    int-to-byte v3, v4

    .line 6
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input is not hexadecimal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v1

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected a string of even length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 3
    div-int/lit8 v4, v3, 0x10

    const-string v5, "0123456789abcdef"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    rem-int/lit8 v3, v3, 0x10

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p()V
    .locals 1

    .line 1
    sget v0, Lp4/h;->j:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    sput v0, Lp4/h;->j:I

    :cond_0
    return-void
.end method

.method public static final q([FF)I
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2
    array-length v2, p0

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 3
    aget v4, p0, v3

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v1

    if-gez v5, :cond_0

    move v0, v3

    move v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static r(I)Ll5/m;
    .locals 4

    .line 1
    new-instance v0, Ll5/m;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "rtp://0.0.0.0"

    aput-object v3, v1, v2

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s:%d"

    invoke-static {p0, v1}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, p0}, Ll5/m;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public static s([B)J
    .locals 17

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide v6, 0xffffffffL

    const/16 v8, 0x18

    const-wide/32 v9, 0xffffff

    const/16 v11, 0x10

    const-wide/32 v12, 0xffff

    const/16 v14, 0x8

    const-wide/16 v15, 0xff

    if-ne v0, v1, :cond_0

    .line 2
    aget-byte v0, p0, v2

    int-to-long v0, v0

    and-long/2addr v0, v15

    .line 3
    aget-byte v2, p0, v3

    int-to-long v2, v2

    shl-long/2addr v2, v14

    and-long/2addr v2, v12

    or-long/2addr v0, v2

    .line 4
    aget-byte v2, p0, v4

    int-to-long v2, v2

    shl-long/2addr v2, v11

    and-long/2addr v2, v9

    or-long/2addr v0, v2

    .line 5
    aget-byte v2, p0, v4

    int-to-long v2, v2

    shl-long/2addr v2, v8

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 6
    aget-byte v2, p0, v5

    goto :goto_0

    .line 7
    :cond_0
    aget-byte v0, p0, v5

    int-to-long v0, v0

    and-long/2addr v0, v15

    const/4 v5, 0x1

    .line 8
    aget-byte v5, p0, v5

    int-to-long v6, v5

    shl-long v5, v6, v14

    and-long/2addr v5, v12

    or-long/2addr v0, v5

    .line 9
    aget-byte v4, p0, v4

    int-to-long v4, v4

    shl-long/2addr v4, v11

    and-long/2addr v4, v9

    or-long/2addr v0, v4

    .line 10
    aget-byte v3, p0, v3

    int-to-long v3, v3

    shl-long/2addr v3, v8

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 11
    aget-byte v2, p0, v2

    :goto_0
    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, 0xffffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static final t(Lw8/a;Landroid/app/Activity;Z)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lw8/a;->c()Landroidx/appcompat/app/d;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_4

    .line 2
    invoke-interface {p0}, Lw8/a;->c()Landroidx/appcompat/app/d;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lw8/d;->h:Lw8/d;

    if-eqz p2, :cond_1

    .line 4
    new-instance p2, Lw8/e;

    invoke-direct {p2, p1}, Lw8/e;-><init>(Landroid/app/Activity;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    const/4 v2, 0x2

    .line 5
    invoke-static {p1, v1, v0, p2, v2}, Ls9/y;->e(Landroid/app/Activity;ZLqd/l;Lqd/l;I)Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-interface {p0, p1}, Lw8/a;->s(Landroidx/appcompat/app/d;)V

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p0}, Lw8/a;->c()Landroidx/appcompat/app/d;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 7
    :cond_3
    :goto_2
    sget-object p0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p0}, Lcom/nike/adapt/analytics/TrackManager;->gesturesCriticalBatteryErrorPresented()V

    .line 8
    invoke-virtual {p0}, Lcom/nike/adapt/analytics/TrackManager;->gesturesFailedToEnableErrorPresented()V

    :cond_4
    return-void
.end method

.method public static final u(Lw8/a;Landroid/app/Activity;Z)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lw8/a;->u()Landroidx/appcompat/app/d;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_4

    .line 2
    invoke-interface {p0}, Lw8/a;->u()Landroidx/appcompat/app/d;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lw8/d;->h:Lw8/d;

    if-eqz p2, :cond_1

    .line 4
    new-instance p2, Lw8/e;

    invoke-direct {p2, p1}, Lw8/e;-><init>(Landroid/app/Activity;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    const/4 v2, 0x2

    .line 5
    invoke-static {p1, v1, v0, p2, v2}, Ls9/y;->f(Landroid/app/Activity;ZLqd/l;Lqd/l;I)Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-interface {p0, p1}, Lw8/a;->h(Landroidx/appcompat/app/d;)V

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p0}, Lw8/a;->u()Landroidx/appcompat/app/d;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 7
    :cond_3
    :goto_2
    sget-object p0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p0}, Lcom/nike/adapt/analytics/TrackManager;->gesturesFailedToEnableErrorPresented()V

    :cond_4
    return-void
.end method

.method public static final v([Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    const-string v0, "array"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lrd/a;

    invoke-direct {v0, p0}, Lrd/a;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final w(Lea/m;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lv9/l;

    invoke-direct {v0, p0}, Lv9/l;-><init>(Lea/m;)V

    .line 2
    invoke-virtual {v0}, Lv9/l;->c()Lw9/d;

    move-result-object p0

    invoke-interface {p0}, Lw9/d;->e0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static x(Ln3/r;Lqd/a;)V
    .locals 1

    .line 1
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v0, Lw8/f;

    invoke-direct {v0, p1, p0}, Lw8/f;-><init>(Lqd/a;Landroid/os/Handler;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final y(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    .line 2
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Lfb/g;

    invoke-direct {v1}, Lfb/g;-><init>()V

    invoke-static {p0, v1}, Lgd/k;->V(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    new-instance v1, Lfb/h;

    invoke-direct {v1}, Lfb/h;-><init>()V

    invoke-static {p0, v1}, Lgd/k;->V(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    new-instance v0, Lfb/f;

    invoke-direct {v0}, Lfb/f;-><init>()V

    invoke-static {p0, v0}, Lgd/k;->V(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object p0
.end method

.method public static z()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This function has a reified type parameter and thus can only be inlined at compilation time, not called directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public construct()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    return-object v0
.end method
