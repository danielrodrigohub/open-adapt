.class public final Lv9/t;
.super Ljava/lang/Object;
.source "AdaptKitModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv9/t$a;
    }
.end annotation


# static fields
.field public static final a:Lv9/t;

.field public static final b:Lfd/h;

.field public static final c:Ldb/b;

.field public static d:Lfb/e;

.field public static e:Lv9/o0;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Landroid/app/Application;

.field public static final i:Leb/f;

.field public static j:Lma/a;

.field public static k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv9/t;

    invoke-direct {v0}, Lv9/t;-><init>()V

    sput-object v0, Lv9/t;->a:Lv9/t;

    .line 1
    sget-object v0, Lv9/t$b;->h:Lv9/t$b;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lv9/t;->b:Lfd/h;

    .line 2
    sget-object v0, Ldb/b;->b:Ldb/b;

    .line 3
    sput-object v0, Lv9/t;->c:Ldb/b;

    .line 4
    sget-object v0, Leb/f;->a:Leb/f;

    .line 5
    sput-object v0, Lv9/t;->i:Leb/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Lw9/d;->a:Lw9/d$a;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lw9/d$a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 4
    sget-object v1, Lya/a;->a:Lya/a;

    invoke-virtual {v1}, Lya/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lv9/t;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "accountType"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c()Lma/a;
    .locals 1

    sget-object v0, Lv9/t;->j:Lma/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adaptKitAuthProvider"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d()Landroid/app/Application;
    .locals 1

    sget-object v0, Lv9/t;->h:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "application"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e()Lab/a;
    .locals 1

    sget-object v0, Lv9/t;->b:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lab/a;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lea/m;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lv9/t;->e()Lab/a;

    move-result-object v0

    invoke-interface {v0}, Lab/a;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lv9/t;->a()V

    .line 2
    sget-object v0, Ldb/b;->b:Ldb/b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    :try_start_0
    sget-object v2, Lv9/t;->a:Lv9/t;

    invoke-virtual {v2}, Lv9/t;->c()Lma/a;

    move-result-object v3

    invoke-virtual {v3}, Lma/a;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v4

    const-class v5, Landroid/accounts/AccountManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/AccountManager;

    .line 5
    invoke-virtual {v2}, Lv9/t;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    aget-object v2, v2, v1

    .line 6
    sget-object v5, Ldb/b;->c:[Ljava/lang/String;

    move v6, v1

    :goto_0
    if-ge v6, v0, :cond_0

    .line 7
    aget-object v7, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    sget-object v8, Ldb/b;->b:Ldb/b;

    invoke-virtual {v8, v7, v3}, Ldb/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "[]"

    invoke-virtual {v4, v2, v7, v8}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9
    :catchall_1
    :cond_0
    invoke-virtual {p0}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v2

    .line 10
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/adaptkit_session_data"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v2, Lpd/b;

    invoke-direct {v2, v3}, Lpd/b;-><init>(Ljava/io/File;)V

    .line 12
    new-instance v3, Lpd/b$b;

    invoke-direct {v3, v2}, Lpd/b$b;-><init>(Lpd/b;)V

    :goto_1
    move v2, v0

    .line 13
    :goto_2
    invoke-virtual {v3}, Lgd/b;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lgd/b;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 14
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    .line 15
    :cond_3
    sget-object v0, Lv9/t;->i:Leb/f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lgb/c;->a:Lgb/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v2, Lgb/c;->b:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lgb/c;->b()Ljava/lang/String;

    move-result-object v6

    .line 18
    new-instance v0, Lk1/n$a;

    const-class v4, Lcom/nike/android/telemetry/internal/worker/TelemetryWorker;

    invoke-direct {v0, v4}, Lk1/n$a;-><init>(Ljava/lang/Class;)V

    .line 19
    new-instance v4, Lk1/c$a;

    invoke-direct {v4}, Lk1/c$a;-><init>()V

    .line 20
    sget-object v5, Lk1/m;->k:Lk1/m;

    .line 21
    iput-object v5, v4, Lk1/c$a;->b:Lk1/m;

    .line 22
    iput-boolean v1, v4, Lk1/c$a;->a:Z

    .line 23
    new-instance v1, Lk1/c;

    invoke-direct {v1, v4}, Lk1/c;-><init>(Lk1/c$a;)V

    .line 24
    iget-object v4, v0, Lk1/r$a;->b:Lt1/o;

    iput-object v1, v4, Lt1/o;->j:Lk1/c;

    .line 25
    invoke-virtual {v0}, Lk1/r$a;->a()Lk1/r;

    move-result-object v0

    check-cast v0, Lk1/n;

    .line 26
    invoke-static {v2}, Ll1/k;->a(Landroid/content/Context;)Ll1/k;

    move-result-object v5

    .line 27
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 29
    new-instance v0, Ll1/g;

    const/4 v7, 0x3

    const/4 v9, 0x0

    move-object v4, v0

    .line 30
    invoke-direct/range {v4 .. v9}, Ll1/g;-><init>(Ll1/k;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 31
    invoke-virtual {v0}, Ll1/g;->c()Lk1/o;

    .line 32
    invoke-virtual {p0}, Lv9/t;->c()Lma/a;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v3}, Lma/a;->b(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, "context"

    .line 34
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3
.end method
