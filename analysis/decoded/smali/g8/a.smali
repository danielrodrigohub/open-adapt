.class public final Lg8/a;
.super Ljava/lang/Object;
.source "OAuthModule.kt"


# instance fields
.field public final a:Lh8/c;

.field public final b:Lg8/a$e;

.field public final c:Lg8/a$a;

.field public final d:Lg8/a$b;

.field public final e:Lad/d;

.field public final f:Lpb/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v1, Lh8/c;->b:Lh8/c;

    .line 3
    iput-object v1, p0, Lg8/a;->a:Lh8/c;

    .line 4
    new-instance v1, Lg8/a$e;

    invoke-direct {v1}, Lg8/a$e;-><init>()V

    iput-object v1, p0, Lg8/a;->b:Lg8/a$e;

    .line 5
    new-instance v2, Lg8/a$a;

    invoke-direct {v2}, Lg8/a$a;-><init>()V

    iput-object v2, p0, Lg8/a;->c:Lg8/a$a;

    .line 6
    new-instance v2, Lg8/a$b;

    invoke-direct {v2}, Lg8/a$b;-><init>()V

    iput-object v2, p0, Lg8/a;->d:Lg8/a$b;

    .line 7
    new-instance v2, Lcom/nike/persistence/implementation/PersistenceManager;

    invoke-direct {v2}, Lcom/nike/persistence/implementation/PersistenceManager;-><init>()V

    .line 8
    iput-object p1, v2, Lcom/nike/persistence/implementation/PersistenceManager;->b:Landroid/content/Context;

    .line 9
    :try_start_0
    new-instance v3, Lcd/a;

    new-instance v4, Lcd/a$b;

    invoke-direct {v4, p1}, Lcd/a$b;-><init>(Landroid/content/Context;)V

    iget-object v5, v2, Lcom/nike/persistence/implementation/PersistenceManager;->c:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcd/a;-><init>(Lcd/e$a;Ljava/util/List;)V

    .line 10
    iput-object v3, v2, Lcom/nike/persistence/implementation/PersistenceManager;->a:Lcd/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 11
    invoke-static {v3}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    :goto_0
    instance-of v4, v3, Lfd/f$a;

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 13
    :try_start_1
    check-cast v3, Lcd/a;

    .line 14
    new-instance v4, Lad/b;

    invoke-direct {v4, v3, v2, v6}, Lad/b;-><init>(Lcd/a;Lcom/nike/persistence/implementation/PersistenceManager;Ljd/d;)V

    invoke-static {v6, v4, v5, v6}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Ljd/f;Lqd/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nike/persistence/implementation/PersistenceManager$Settings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 15
    invoke-static {v3}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    .line 16
    :cond_0
    :goto_1
    instance-of v4, v3, Lfd/f$a;

    xor-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 17
    :try_start_2
    check-cast v3, Lcom/nike/persistence/implementation/PersistenceManager$Settings;

    .line 18
    iget-object v3, v3, Lcom/nike/persistence/implementation/PersistenceManager$Settings;->a:Ljava/lang/String;

    .line 19
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    .line 20
    invoke-static {v3}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    .line 21
    :cond_1
    :goto_2
    invoke-static {v3}, Lfd/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 22
    :cond_2
    :try_start_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    .line 23
    sget-object v4, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    new-instance v7, Lcom/nike/persistence/implementation/PersistenceManager$Settings;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "uuid.toString()"

    invoke-static {v8, v9}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/nike/persistence/implementation/PersistenceManager$Settings;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-interface {v4}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v8

    .line 25
    const-class v9, Lcom/nike/persistence/implementation/PersistenceManager$Settings;

    invoke-static {v9}, Lrd/x;->b(Ljava/lang/Class;)Lwd/g;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lwd/g;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    .line 26
    invoke-interface {v4, v8, v7}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 27
    new-instance v7, Lad/c;

    invoke-direct {v7, v2, v4, v6}, Lad/c;-><init>(Lcom/nike/persistence/implementation/PersistenceManager;Ljava/lang/String;Ljd/d;)V

    invoke-static {v6, v7, v5, v6}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Ljd/f;Lqd/p;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v3

    .line 28
    invoke-static {v3}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_3
    instance-of v4, v3, Lfd/f$a;

    xor-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 30
    :try_start_4
    check-cast v3, Ljava/util/UUID;

    .line 31
    new-instance v4, Lad/a;

    invoke-direct {v4, p1, v1}, Lad/a;-><init>(Landroid/content/Context;Led/e;)V

    .line 32
    new-instance v1, Lad/f;

    const-string v5, "sessionID"

    invoke-static {v3, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lad/f;-><init>(Ljava/util/UUID;)V

    .line 33
    iput-object v1, v4, Lad/a;->f:Lad/f;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v3, v4

    goto :goto_4

    :catchall_4
    move-exception v1

    .line 34
    invoke-static {v1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    .line 35
    :cond_3
    :goto_4
    invoke-static {v3}, Lfd/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    check-cast v3, Lad/a;

    if-nez v3, :cond_4

    goto :goto_5

    .line 36
    :cond_4
    new-instance v1, Lad/d;

    .line 37
    iget-object v2, v2, Lcom/nike/persistence/implementation/PersistenceManager;->b:Landroid/content/Context;

    if-eqz v2, :cond_6

    .line 38
    invoke-direct {v1, v2, v3}, Lad/d;-><init>(Landroid/content/Context;Lad/e;)V

    move-object v6, v1

    :goto_5
    if-eqz v6, :cond_5

    .line 39
    iput-object v6, p0, Lg8/a;->e:Lad/d;

    .line 40
    new-instance v0, Lob/a;

    new-instance v1, Lg8/a$c;

    invoke-direct {v1, p0, p1}, Lg8/a$c;-><init>(Lg8/a;Landroid/content/Context;)V

    .line 41
    new-instance p1, Lg8/a$d;

    invoke-direct {p1}, Lg8/a$d;-><init>()V

    .line 42
    invoke-direct {v0, v1, p1}, Lob/a;-><init>(Lob/a$a;Lob/a$b;)V

    .line 43
    sget-object p1, Lob/f;->Companion:Lob/f$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance p1, Lpb/b;

    new-instance v1, Lcc/e;

    invoke-direct {v1, v0}, Lcc/e;-><init>(Lob/a;)V

    invoke-direct {p1, v1}, Lpb/b;-><init>(Lcc/a;)V

    .line 45
    iput-object p1, p0, Lg8/a;->f:Lpb/b;

    return-void

    .line 46
    :cond_5
    new-instance p1, Lyc/b;

    invoke-direct {p1}, Lyc/b;-><init>()V

    throw p1

    .line 47
    :cond_6
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v6

    .line 48
    :cond_7
    new-instance p1, Lyc/b;

    invoke-direct {p1, v1}, Lyc/b;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lg8/a;->a:Lh8/c;

    .line 2
    invoke-virtual {v0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_USER_LOGGED_IN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v3, p0, Lg8/a;->f:Lpb/b;

    invoke-virtual {v3}, Lpb/b;->a()Lob/h;

    move-result-object v3

    invoke-interface {v3}, Lob/h;->b()Lob/b;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lg8/a;->a:Lh8/c;

    invoke-virtual {v0, v2}, Lh8/c;->q0(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lg8/a;->f:Lpb/b;

    invoke-virtual {v0}, Lpb/b;->a()Lob/h;

    move-result-object v0

    invoke-interface {v0}, Lob/h;->b()Lob/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Ls9/m;->a:Ls9/m;

    invoke-virtual {v0, v2, v1, v2}, Ls9/m;->a(ZZZ)V

    :cond_2
    :goto_0
    return v2
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg8/a;->f:Lpb/b;

    invoke-virtual {v0}, Lpb/b;->a()Lob/h;

    move-result-object v0

    invoke-interface {v0}, Lob/h;->b()Lob/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lob/b;->getUpmID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
