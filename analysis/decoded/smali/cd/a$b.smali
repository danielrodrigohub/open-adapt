.class public final Lcd/a$b;
.super Ljava/lang/Object;
.source "AndroidFileSystem.kt"

# interfaces
.implements Lcd/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcd/e$a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcd/a$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Ldd/b;

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {v1}, Lgd/n;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 4
    sget-object v1, Ldd/b;->Companion:Ldd/b$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldd/b;->h:Ldd/b;

    :cond_3
    check-cast v1, Ldd/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    if-eq v1, v0, :cond_5

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 5
    iget-object v1, p0, Lcd/a$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    goto :goto_2

    :cond_4
    new-instance v1, Lj2/a;

    invoke-direct {v1}, Lj2/a;-><init>()V

    throw v1

    .line 6
    :cond_5
    iget-object v1, p0, Lcd/a$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    goto :goto_2

    .line 7
    :cond_6
    iget-object v1, p0, Lcd/a$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_7

    goto :goto_3

    .line 8
    :cond_7
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    .line 9
    invoke-static {v1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    :goto_3
    instance-of v2, v1, Lfd/f$a;

    xor-int/2addr v2, v0

    if-eqz v2, :cond_8

    .line 11
    :try_start_1
    check-cast v1, Ljava/io/File;

    .line 12
    new-instance v2, Ljava/io/File;

    const-string v3, "com.nike.persistence"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    goto :goto_4

    :catchall_1
    move-exception v1

    .line 13
    invoke-static {v1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    :cond_8
    :goto_4
    instance-of v2, v1, Lfd/f$a;

    xor-int/2addr v2, v0

    if-eqz v2, :cond_13

    .line 15
    :try_start_2
    check-cast v1, Ljava/io/File;

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    move-object v3, p1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    instance-of v5, v4, Ldd/c;

    goto :goto_6

    :cond_a
    move v5, v0

    :goto_6
    if-eqz v5, :cond_9

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 18
    :cond_b
    invoke-static {v2}, Lgd/n;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    .line 19
    sget-object v2, Ldd/c;->Companion:Ldd/c$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ldd/c;->h:Ldd/c;

    :cond_c
    check-cast v2, Ldd/c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_e

    if-ne v2, v0, :cond_d

    .line 20
    new-instance v2, Ljava/io/File;

    const-string v3, "shared"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_9

    :cond_d
    new-instance v1, Lj2/a;

    invoke-direct {v1}, Lj2/a;-><init>()V

    throw v1

    .line 21
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    move-object v3, p1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lbd/e;

    if-eqz v5, :cond_f

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 23
    :cond_10
    invoke-static {v2}, Lgd/n;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    .line 24
    check-cast v2, Lbd/e;

    if-nez v2, :cond_11

    goto :goto_8

    .line 25
    :cond_11
    iget-object v2, v2, Lbd/e;->h:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v2, :cond_12

    :goto_8
    const-string v2, "local"

    .line 26
    :cond_12
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v1, v3

    goto :goto_9

    :catchall_2
    move-exception v1

    .line 27
    invoke-static {v1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    :cond_13
    :goto_9
    instance-of v2, v1, Lfd/f$a;

    xor-int/2addr v2, v0

    if-eqz v2, :cond_1e

    .line 29
    :try_start_4
    check-cast v1, Ljava/io/File;

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    move-object v3, p1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_15

    instance-of v5, v4, Ldd/a;

    goto :goto_b

    :cond_15
    move v5, v0

    :goto_b
    if-eqz v5, :cond_14

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 32
    :cond_16
    invoke-static {v2}, Lgd/n;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_17

    .line 33
    sget-object v2, Ldd/a;->Companion:Ldd/a$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ldd/a;->h:Ldd/a;

    :cond_17
    check-cast v2, Ldd/a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_1d

    if-ne v2, v0, :cond_1c

    const-string v2, "session-"

    .line 34
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 35
    move-object v4, p1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lad/f;

    if-eqz v6, :cond_18

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 36
    :cond_19
    invoke-static {v3}, Lgd/n;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    .line 37
    check-cast v3, Lad/f;

    if-nez v3, :cond_1a

    goto :goto_d

    .line 38
    :cond_1a
    iget-object v3, v3, Lad/f;->h:Ljava/util/UUID;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v3, :cond_1b

    :goto_d
    const-string v3, "void"

    .line 39
    :cond_1b
    :try_start_5
    invoke-static {v2, v3}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 40
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_f

    :catchall_3
    move-exception v1

    goto :goto_e

    .line 41
    :cond_1c
    new-instance v1, Lj2/a;

    invoke-direct {v1}, Lj2/a;-><init>()V

    throw v1

    :cond_1d
    new-instance v2, Ljava/io/File;

    const-string v3, "app/"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v1, v2

    goto :goto_f

    .line 42
    :goto_e
    invoke-static {v1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    :cond_1e
    :goto_f
    instance-of v2, v1, Lfd/f$a;

    xor-int/2addr v2, v0

    if-eqz v2, :cond_23

    .line 44
    :try_start_6
    check-cast v1, Ljava/io/File;

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    move-object v3, p1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_20

    instance-of v5, v4, Ldd/f;

    goto :goto_11

    :cond_20
    move v5, v0

    :goto_11
    if-eqz v5, :cond_1f

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 47
    :cond_21
    invoke-static {v2}, Lgd/n;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_22

    .line 48
    sget-object v2, Ldd/f;->Companion:Ldd/f$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v2, Ldd/f;->i:Ldd/f;

    .line 50
    :cond_22
    check-cast v2, Ldd/f;

    .line 51
    iget-object v2, v2, Ldd/f;->h:Ljava/lang/String;

    .line 52
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v1, v3

    goto :goto_12

    :catchall_4
    move-exception v1

    .line 53
    invoke-static {v1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    :cond_23
    :goto_12
    instance-of v2, v1, Lfd/f$a;

    xor-int/2addr v2, v0

    if-eqz v2, :cond_28

    .line 55
    :try_start_7
    check-cast v1, Ljava/io/File;

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_25

    instance-of v4, v3, Ldd/d;

    goto :goto_14

    :cond_25
    move v4, v0

    :goto_14
    if-eqz v4, :cond_24

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 58
    :cond_26
    invoke-static {v2}, Lgd/n;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_27

    .line 59
    sget-object p1, Ldd/d;->Companion:Ldd/d$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object p1, Ldd/d;->i:Ldd/d;

    .line 61
    :cond_27
    check-cast p1, Ldd/d;

    .line 62
    iget-object p1, p1, Ldd/d;->h:Ljava/lang/String;

    .line 63
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object v1, v2

    goto :goto_15

    :catchall_5
    move-exception p1

    .line 64
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    :cond_28
    :goto_15
    instance-of p1, v1, Lfd/f$a;

    xor-int/2addr p1, v0

    if-eqz p1, :cond_29

    .line 66
    :try_start_8
    check-cast v1, Ljava/io/File;

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_16

    :catchall_6
    move-exception p1

    .line 69
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    :cond_29
    :goto_16
    invoke-static {v1}, Ld3/e;->p(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/String;

    const-string p1, "it"

    invoke-static {v1, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
