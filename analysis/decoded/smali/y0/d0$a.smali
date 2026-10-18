.class public final Ly0/d0$a;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ly0/d0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly0/d0$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/concurrent/Executor;

.field public f:Ljava/util/concurrent/Executor;

.field public g:Ld1/d$c;

.field public h:Z

.field public i:Landroid/content/Intent;

.field public j:Z

.field public k:Z

.field public final l:Ly0/d0$c;

.field public m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly0/d0$a;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ly0/d0$a;->a:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Ly0/d0$a;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Ly0/d0$a;->j:Z

    .line 6
    new-instance p1, Ly0/d0$c;

    invoke-direct {p1}, Ly0/d0$c;-><init>()V

    iput-object p1, p0, Ly0/d0$a;->l:Ly0/d0$c;

    return-void
.end method


# virtual methods
.method public final varargs a([Lz0/b;)Ly0/d0$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lz0/b;",
            ")",
            "Ly0/d0$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/d0$a;->m:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ly0/d0$a;->m:Ljava/util/HashSet;

    .line 3
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    iget-object v3, p0, Ly0/d0$a;->m:Ljava/util/HashSet;

    iget v4, v2, Lz0/b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v3, p0, Ly0/d0$a;->m:Ljava/util/HashSet;

    iget v2, v2, Lz0/b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Ly0/d0$a;->l:Ly0/d0$c;

    invoke-virtual {v0, p1}, Ly0/d0$c;->a([Lz0/b;)V

    return-object p0
.end method

.method public final b()Ly0/d0;
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Ly0/d0$a;->c:Landroid/content/Context;

    if-eqz v1, :cond_1b

    .line 2
    iget-object v0, p0, Ly0/d0$a;->a:Ljava/lang/Class;

    if-eqz v0, :cond_1a

    .line 3
    iget-object v0, p0, Ly0/d0$a;->e:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v2, p0, Ly0/d0$a;->f:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    .line 4
    sget-object v0, Ll/a;->d:Ll/a$a;

    iput-object v0, p0, Ly0/d0$a;->f:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Ly0/d0$a;->e:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Ly0/d0$a;->f:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    .line 6
    iput-object v0, p0, Ly0/d0$a;->f:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Ly0/d0$a;->f:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_2

    .line 8
    iput-object v0, p0, Ly0/d0$a;->e:Ljava/util/concurrent/Executor;

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Ly0/d0$a;->g:Ld1/d$c;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Le1/c;

    invoke-direct {v0}, Le1/c;-><init>()V

    :cond_3
    move-object v3, v0

    .line 11
    new-instance v13, Ly0/n;

    iget-object v2, p0, Ly0/d0$a;->b:Ljava/lang/String;

    iget-object v4, p0, Ly0/d0$a;->l:Ly0/d0$c;

    iget-object v5, p0, Ly0/d0$a;->d:Ljava/util/ArrayList;

    iget-boolean v6, p0, Ly0/d0$a;->h:Z

    const-string v0, "activity"

    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v14, 0x3

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_4

    move v7, v14

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    move v7, v0

    .line 14
    :goto_1
    iget-object v8, p0, Ly0/d0$a;->e:Ljava/util/concurrent/Executor;

    iget-object v9, p0, Ly0/d0$a;->f:Ljava/util/concurrent/Executor;

    iget-object v10, p0, Ly0/d0$a;->i:Landroid/content/Intent;

    iget-boolean v11, p0, Ly0/d0$a;->j:Z

    iget-boolean v12, p0, Ly0/d0$a;->k:Z

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Ly0/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ld1/d$c;Ly0/d0$c;Ljava/util/List;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZ)V

    .line 15
    iget-object v0, p0, Ly0/d0$a;->a:Ljava/lang/Class;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 20
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v6, 0x5f

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_Impl"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v1, v2

    goto :goto_3

    .line 22
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 24
    invoke-static {v1, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    check-cast v0, Ly0/d0;

    .line 27
    invoke-virtual {v0, v13}, Ly0/d0;->f(Ly0/n;)Ld1/d;

    move-result-object v1

    iput-object v1, v0, Ly0/d0;->c:Ld1/d;

    .line 28
    invoke-virtual {v0}, Ly0/d0;->h()Ljava/util/Set;

    move-result-object v1

    .line 29
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 30
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, -0x1

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 31
    iget-object v6, v13, Ly0/n;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_5
    if-ltz v6, :cond_8

    .line 32
    iget-object v7, v13, Ly0/n;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 33
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 34
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    move v5, v6

    goto :goto_6

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_8
    :goto_6
    if-ltz v5, :cond_9

    .line 35
    iget-object v6, v0, Ly0/d0;->g:Ljava/util/HashMap;

    iget-object v7, v13, Ly0/n;->g:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz0/a;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 36
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A required auto migration spec ("

    .line 37
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is missing in the database configuration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_a
    iget-object v1, v13, Ly0/n;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_7
    if-ltz v1, :cond_c

    .line 40
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 41
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_c
    invoke-virtual {v0}, Ly0/d0;->g()Ljava/util/List;

    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz0/b;

    .line 44
    iget-object v6, v13, Ly0/n;->d:Ly0/d0$c;

    .line 45
    iget-object v6, v6, Ly0/d0$c;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 46
    iget v7, v2, Lz0/b;->a:I

    .line 47
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 48
    iget-object v6, v13, Ly0/n;->d:Ly0/d0$c;

    new-array v7, v4, [Lz0/b;

    aput-object v2, v7, v3

    invoke-virtual {v6, v7}, Ly0/d0$c;->a([Lz0/b;)V

    goto :goto_8

    .line 49
    :cond_e
    const-class v1, Ly0/g0;

    iget-object v2, v0, Ly0/d0;->c:Ld1/d;

    invoke-virtual {v0, v1, v2}, Ly0/d0;->q(Ljava/lang/Class;Ld1/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/g0;

    if-eqz v1, :cond_f

    .line 50
    iput-object v13, v1, Ly0/g0;->n:Ly0/n;

    .line 51
    :cond_f
    const-class v1, Ly0/j;

    iget-object v2, v0, Ly0/d0;->c:Ld1/d;

    .line 52
    invoke-virtual {v0, v1, v2}, Ly0/d0;->q(Ljava/lang/Class;Ld1/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/j;

    if-nez v1, :cond_19

    .line 53
    iget v1, v13, Ly0/n;->i:I

    if-ne v1, v14, :cond_10

    move v3, v4

    .line 54
    :cond_10
    iget-object v1, v0, Ly0/d0;->c:Ld1/d;

    invoke-interface {v1, v3}, Ld1/d;->setWriteAheadLoggingEnabled(Z)V

    .line 55
    iget-object v1, v13, Ly0/n;->e:Ljava/util/List;

    iput-object v1, v0, Ly0/d0;->f:Ljava/util/List;

    .line 56
    iget-object v1, v13, Ly0/n;->j:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Ly0/d0;->b:Ljava/util/concurrent/Executor;

    .line 57
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 58
    iget-boolean v1, v13, Ly0/n;->h:Z

    iput-boolean v1, v0, Ly0/d0;->e:Z

    .line 59
    iget-object v9, v13, Ly0/n;->l:Landroid/content/Intent;

    if-eqz v9, :cond_11

    .line 60
    iget-object v10, v0, Ly0/d0;->d:Landroidx/room/c;

    iget-object v7, v13, Ly0/n;->b:Landroid/content/Context;

    iget-object v8, v13, Ly0/n;->c:Ljava/lang/String;

    .line 61
    new-instance v6, Landroidx/room/d;

    iget-object v1, v10, Landroidx/room/c;->d:Ly0/d0;

    .line 62
    iget-object v11, v1, Ly0/d0;->b:Ljava/util/concurrent/Executor;

    .line 63
    invoke-direct/range {v6 .. v11}, Landroidx/room/d;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroidx/room/c;Ljava/util/concurrent/Executor;)V

    .line 64
    :cond_11
    invoke-virtual {v0}, Ly0/d0;->i()Ljava/util/Map;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 66
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 68
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 69
    iget-object v8, v13, Ly0/n;->f:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    :goto_a
    if-ltz v8, :cond_14

    .line 70
    iget-object v9, v13, Ly0/n;->f:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 71
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 72
    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    goto :goto_b

    :cond_13
    add-int/lit8 v8, v8, -0x1

    goto :goto_a

    :cond_14
    move v8, v5

    :goto_b
    if-ltz v8, :cond_15

    .line 73
    iget-object v9, v0, Ly0/d0;->l:Ljava/util/HashMap;

    iget-object v10, v13, Ly0/n;->f:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 74
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A required type converter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is missing in the database configuration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_16
    iget-object v1, v13, Ly0/n;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_c
    if-ltz v1, :cond_18

    .line 77
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_17

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 78
    :cond_17
    iget-object v0, v13, Ly0/n;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type converter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    return-object v0

    .line 80
    :cond_19
    iget-object v0, v0, Ly0/d0;->d:Landroidx/room/c;

    .line 81
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 82
    throw v0

    .line 83
    :catch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create an instance of "

    .line 84
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 85
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :catch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot access the constructor"

    .line 87
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :catch_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "cannot find implementation for "

    .line 90
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 91
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot provide null context for the database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
