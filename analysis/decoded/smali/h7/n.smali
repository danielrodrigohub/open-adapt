.class public final Lh7/n;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Le7/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh7/n$a;,
        Lh7/n$b;
    }
.end annotation


# instance fields
.field public final h:Lg7/e;

.field public final i:Le7/c;

.field public final j:Lg7/l;

.field public final k:Lh7/e;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le7/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg7/e;Lg7/l;Lh7/e;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/e;",
            "Le7/c;",
            "Lg7/l;",
            "Lh7/e;",
            "Ljava/util/List<",
            "Le7/t;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Le7/b;->h:Le7/b$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh7/n;->h:Lg7/e;

    .line 3
    iput-object v0, p0, Lh7/n;->i:Le7/c;

    .line 4
    iput-object p2, p0, Lh7/n;->j:Lg7/l;

    .line 5
    iput-object p3, p0, Lh7/n;->k:Lh7/e;

    .line 6
    iput-object p4, p0, Lh7/n;->l:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 2
    :cond_0
    sget-object v0, Lg7/r$a;->a:Lg7/r$a;

    invoke-virtual {v0, p1, p0}, Lg7/r$a;->a(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance p0, Le7/m;

    const-string v0, "Field \'"

    .line 4
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type or adjust the access filter."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Le7/m;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Le7/h;Ll7/a;)Le7/x;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le7/h;",
            "Ll7/a<",
            "TT;>;)",
            "Le7/x<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    const-class v13, Ljava/lang/Object;

    iget-object v14, v2, Ll7/a;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {v13, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 3
    :cond_0
    iget-object v3, v1, Lh7/n;->l:Ljava/util/List;

    invoke-static {v3, v14}, Lg7/r;->a(Ljava/util/List;Ljava/lang/Class;)I

    move-result v3

    const-string v15, "ReflectionAccessFilter does not permit using reflection for "

    const/4 v4, 0x4

    if-eq v3, v4, :cond_15

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 4
    :goto_0
    iget-object v6, v1, Lh7/n;->h:Lg7/e;

    invoke-virtual {v6, v2}, Lg7/e;->a(Ll7/a;)Lg7/q;

    move-result-object v12

    .line 5
    new-instance v11, Lh7/n$a;

    .line 6
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    invoke-virtual {v14}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move-object v14, v10

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    goto/16 :goto_f

    .line 8
    :cond_3
    iget-object v9, v2, Ll7/a;->b:Ljava/lang/reflect/Type;

    move-object v8, v2

    move-object v7, v14

    :goto_1
    if-eq v7, v13, :cond_2

    .line 9
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    if-eq v7, v14, :cond_6

    .line 10
    array-length v2, v6

    if-lez v2, :cond_6

    .line 11
    iget-object v2, v1, Lh7/n;->l:Ljava/util/List;

    invoke-static {v2, v7}, Lg7/r;->a(Ljava/util/List;Ljava/lang/Class;)I

    move-result v2

    if-eq v2, v4, :cond_5

    if-ne v2, v5, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    move/from16 v16, v2

    goto :goto_3

    .line 12
    :cond_5
    new-instance v0, Le7/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (supertype of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "). Register a TypeAdapter for this type or adjust the access filter."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Le7/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move/from16 v16, v3

    .line 13
    :goto_3
    array-length v3, v6

    const/4 v2, 0x0

    move/from16 v36, v5

    move v5, v2

    move/from16 v2, v36

    :goto_4
    if-ge v5, v3, :cond_14

    aget-object v4, v6, v5

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v4, v2}, Lh7/n;->c(Ljava/lang/reflect/Field;Z)Z

    move-result v17

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v4, v2}, Lh7/n;->c(Ljava/lang/reflect/Field;Z)Z

    move-result v18

    if-nez v17, :cond_7

    if-nez v18, :cond_7

    const/4 v2, 0x3

    const/4 v4, 0x4

    move/from16 v26, v3

    move/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 p2, v7

    move-object/from16 v30, v8

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    move-object/from16 v24, v13

    move-object/from16 v33, v14

    move-object/from16 v29, v15

    move-object v15, v9

    move-object v14, v10

    goto/16 :goto_e

    :cond_7
    if-nez v16, :cond_8

    const/4 v2, 0x1

    .line 16
    :try_start_0
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 17
    new-instance v0, Le7/m;

    const-string v3, "Failed making field \'"

    .line 18
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 19
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' accessible; either change its visibility or write a custom TypeAdapter for its declaring type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Le7/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 21
    :cond_8
    :goto_5
    iget-object v2, v8, Ll7/a;->b:Ljava/lang/reflect/Type;

    move/from16 p2, v3

    .line 22
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v7, v3}, Lg7/a;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 23
    const-class v2, Lf7/b;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lf7/b;

    if-nez v2, :cond_9

    .line 24
    iget-object v2, v1, Lh7/n;->i:Le7/c;

    invoke-interface {v2, v4}, Le7/c;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move/from16 v19, v5

    move-object/from16 v20, v6

    goto :goto_6

    :cond_9
    move/from16 v19, v5

    .line 26
    invoke-interface {v2}, Lf7/b;->value()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-interface {v2}, Lf7/b;->alternate()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v6

    .line 28
    array-length v6, v2

    if-nez v6, :cond_a

    .line 29
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_6
    const/4 v5, 0x1

    move/from16 v22, v5

    move-object/from16 v21, v7

    move-object v7, v2

    goto :goto_8

    .line 30
    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v21, v7

    array-length v7, v2

    const/16 v22, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    array-length v5, v2

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v5, :cond_b

    move/from16 v23, v5

    aget-object v5, v2, v7

    .line 33
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v23

    goto :goto_7

    :cond_b
    move-object v7, v6

    .line 34
    :goto_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v36, v5

    move-object v5, v2

    move/from16 v2, v36

    :goto_9
    if-ge v2, v6, :cond_12

    .line 35
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v13

    move-object/from16 v13, v23

    check-cast v13, Ljava/lang/String;

    if-eqz v2, :cond_c

    const/16 v17, 0x0

    :cond_c
    move-object/from16 v23, v11

    .line 36
    new-instance v11, Ll7/a;

    invoke-direct {v11, v3}, Ll7/a;-><init>(Ljava/lang/reflect/Type;)V

    move/from16 v25, v2

    .line 37
    iget-object v2, v11, Ll7/a;->a:Ljava/lang/Class;

    move-object/from16 v26, v3

    .line 38
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_d

    move/from16 v27, v22

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    move/from16 v27, v2

    .line 39
    :goto_a
    const-class v2, Lf7/a;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lf7/a;

    if-eqz v2, :cond_e

    .line 40
    iget-object v3, v1, Lh7/n;->k:Lh7/e;

    move-object/from16 v28, v4

    iget-object v4, v1, Lh7/n;->h:Lg7/e;

    invoke-virtual {v3, v4, v0, v11, v2}, Lh7/e;->b(Lg7/e;Le7/h;Ll7/a;Lf7/a;)Le7/x;

    move-result-object v2

    goto :goto_b

    :cond_e
    move-object/from16 v28, v4

    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_f

    move/from16 v29, v22

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    move/from16 v29, v3

    :goto_c
    if-nez v2, :cond_10

    .line 41
    invoke-virtual {v0, v11}, Le7/h;->f(Ll7/a;)Le7/x;

    move-result-object v2

    :cond_10
    move-object/from16 v30, v2

    .line 42
    new-instance v4, Lh7/m;

    move-object v2, v4

    move-object/from16 v31, v26

    move/from16 v26, p2

    move-object v3, v13

    move-object v0, v4

    move/from16 v4, v17

    move-object v1, v5

    move/from16 v5, v18

    move/from16 v32, v6

    move/from16 v6, v16

    move-object/from16 p2, v21

    move-object/from16 v21, v7

    move-object/from16 v7, v28

    move-object/from16 v33, v14

    move-object v14, v8

    move/from16 v8, v29

    move-object/from16 v29, v15

    move-object v15, v9

    move-object/from16 v9, v30

    move-object/from16 v30, v14

    move-object v14, v10

    move-object/from16 v10, p1

    move-object/from16 v34, v23

    move-object/from16 v35, v12

    move/from16 v12, v27

    invoke-direct/range {v2 .. v12}, Lh7/m;-><init>(Ljava/lang/String;ZZZLjava/lang/reflect/Field;ZLe7/x;Le7/h;Ll7/a;Z)V

    .line 43
    invoke-interface {v14, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/n$b;

    if-nez v1, :cond_11

    move-object v5, v0

    goto :goto_d

    :cond_11
    move-object v5, v1

    :goto_d
    add-int/lit8 v2, v25, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object v10, v14

    move-object v9, v15

    move-object/from16 v7, v21

    move-object/from16 v13, v24

    move-object/from16 v4, v28

    move-object/from16 v15, v29

    move-object/from16 v8, v30

    move-object/from16 v3, v31

    move/from16 v6, v32

    move-object/from16 v14, v33

    move-object/from16 v11, v34

    move-object/from16 v12, v35

    move-object/from16 v21, p2

    move/from16 p2, v26

    goto/16 :goto_9

    :cond_12
    move/from16 v26, p2

    move-object v1, v5

    move-object/from16 v30, v8

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    move-object/from16 v24, v13

    move-object/from16 v33, v14

    move-object/from16 v29, v15

    move-object/from16 p2, v21

    move-object v15, v9

    move-object v14, v10

    const/4 v0, 0x3

    const/4 v2, 0x4

    if-nez v1, :cond_13

    move v4, v2

    move v2, v0

    :goto_e
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object v10, v14

    move-object v9, v15

    move-object/from16 v6, v20

    move-object/from16 v13, v24

    move/from16 v3, v26

    move-object/from16 v15, v29

    move-object/from16 v8, v30

    move-object/from16 v14, v33

    move-object/from16 v11, v34

    move-object/from16 v12, v35

    goto/16 :goto_4

    .line 44
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lh7/n$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object/from16 p2, v7

    move-object v0, v8

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    move-object/from16 v24, v13

    move-object/from16 v33, v14

    move-object/from16 v29, v15

    move-object v15, v9

    move-object v14, v10

    .line 45
    iget-object v0, v0, Ll7/a;->b:Ljava/lang/reflect/Type;

    .line 46
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v3, p2

    invoke-static {v0, v3, v1}, Lg7/a;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 47
    new-instance v8, Ll7/a;

    invoke-direct {v8, v0}, Ll7/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 48
    iget-object v7, v8, Ll7/a;->a:Ljava/lang/Class;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move v5, v2

    move/from16 v3, v16

    move-object/from16 v15, v29

    move-object/from16 v14, v33

    goto/16 :goto_1

    :goto_f
    move-object/from16 v1, v34

    move-object/from16 v0, v35

    .line 49
    invoke-direct {v1, v0, v14}, Lh7/n$a;-><init>(Lg7/q;Ljava/util/Map;)V

    return-object v1

    :cond_15
    move-object/from16 v33, v14

    move-object/from16 v29, v15

    .line 50
    new-instance v0, Le7/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v33

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Register a TypeAdapter for this type or adjust the access filter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le7/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/lang/reflect/Field;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lh7/n;->j:Lg7/l;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lg7/l;->c(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {v0, v1, p2}, Lg7/l;->b(Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    if-nez v0, :cond_8

    .line 4
    iget-object v0, p0, Lh7/n;->j:Lg7/l;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x88

    if-eqz v1, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg7/l;->c(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    .line 8
    iget-object p2, v0, Lg7/l;->h:Ljava/util/List;

    goto :goto_2

    :cond_5
    iget-object p2, v0, Lg7/l;->i:Ljava/util/List;

    .line 9
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le7/a;

    .line 12
    invoke-interface {p2}, Le7/a;->b()Z

    move-result p2

    if-eqz p2, :cond_6

    :goto_3
    move p1, v4

    goto :goto_4

    :cond_7
    move p1, v3

    :goto_4
    if-nez p1, :cond_8

    move v3, v4

    :cond_8
    return v3
.end method
