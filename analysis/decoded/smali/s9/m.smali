.class public final Ls9/m;
.super Ljava/lang/Object;
.source "LogoutHelper.kt"


# static fields
.field public static final a:Ls9/m;

.field public static final b:Lh8/e;

.field public static final c:Lh8/c;

.field public static final d:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls9/m;

    invoke-direct {v0}, Ls9/m;-><init>()V

    sput-object v0, Ls9/m;->a:Ls9/m;

    .line 1
    sget-object v0, Lh8/e;->b:Lh8/e;

    .line 2
    sput-object v0, Ls9/m;->b:Lh8/e;

    .line 3
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 4
    sput-object v0, Ls9/m;->c:Lh8/c;

    .line 5
    sget-object v0, Ls9/m$b;->h:Ls9/m$b;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Ls9/m;->d:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(ZZI)V
    .locals 3

    sget-object v0, Ls9/m;->a:Ls9/m;

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move p0, v2

    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    move p1, v2

    :cond_2
    invoke-virtual {v0, p0, v1, p1}, Ls9/m;->a(ZZZ)V

    return-void
.end method


# virtual methods
.method public final a(ZZZ)V
    .locals 14

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Ls9/m;->c:Lh8/c;

    .line 3
    invoke-virtual {v0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "PREF_USER_LOGGED_IN"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {v0, v3}, Lh8/c;->q0(Z)V

    if-nez p1, :cond_1

    .line 6
    sget-object v4, Lo7/x;->a:Lo7/x;

    const-string v5, "LogoutHelper"

    const-string v6, "User was logged out without logging out."

    .line 7
    sget-object v7, Lo7/u;->j:Lo7/u;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    new-instance v10, Ljava/lang/Exception;

    const-string v1, "Unwanted Logout"

    invoke-direct {v10, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    const/16 v12, 0x18

    const/4 v13, 0x0

    .line 9
    invoke-static/range {v4 .. v13}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 10
    :cond_1
    sget-object v1, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v1}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v2

    .line 11
    new-instance v4, Lx/s;

    invoke-direct {v4, v2}, Lx/s;-><init>(Landroid/content/Context;)V

    .line 12
    iget-object v2, v4, Lx/s;->b:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->cancelAll()V

    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Lcom/newrelic/agent/android/NewRelic;->setUserId(Ljava/lang/String;)Z

    .line 14
    sget-object v4, Ls9/m;->a:Ls9/m;

    .line 15
    sget-object v5, Lv9/t;->a:Lv9/t;

    invoke-virtual {v5}, Lv9/t;->g()V

    .line 16
    sget-object v5, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v5}, Lcom/nike/adapt/adk/InMemoryCache;->clear()V

    .line 17
    sput-object v2, Lg0/n;->f:Lcom/nike/adapt/network/dataopt/datastream/NspStreamServiceApi;

    .line 18
    sput-object v2, Lg0/n;->e:Lcom/nike/adapt/network/dataopt/permissions/PermissionServiceApi;

    .line 19
    sput-object v2, Lg0/n;->d:Lcom/nike/adapt/network/identity/AdaptIdentityServiceApi;

    .line 20
    sget-object v5, Ls9/c;->a:Ls9/c;

    invoke-virtual {v1}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v6

    invoke-virtual {v5, v6}, Ls9/c;->f(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v0}, Lh8/c;->Q()Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    move-result-object v5

    .line 22
    invoke-virtual {v0}, Lh8/c;->O()Ljava/util/ArrayList;

    move-result-object v6

    .line 23
    invoke-virtual {v0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 24
    invoke-virtual {v0, v6}, Lh8/c;->a(Ljava/util/ArrayList;)V

    .line 25
    invoke-virtual {v0, v5}, Lh8/c;->L(Lcom/nike/adapt/ui/settings/AppIconsActivity$a;)V

    if-nez p3, :cond_2

    .line 26
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v5, Ls9/m$a;

    invoke-direct {v5, v2}, Ls9/m$a;-><init>(Ljd/d;)V

    invoke-static {v0, v5}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Ljd/f;Lqd/p;)Ljava/lang/Object;

    .line 27
    :cond_2
    sget-object v0, Ls9/m;->b:Lh8/e;

    invoke-virtual {v0}, Lh8/e;->g()V

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v1, Ls9/l;->h:Ls9/l;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    .line 29
    invoke-virtual {v4, v3, v0, v1}, Ls9/m;->c(ZJ)V

    goto :goto_0

    .line 30
    :cond_4
    invoke-virtual {v1}, Lcom/nike/adapt/BigfootApplication$e;->b()Lcom/nike/adapt/BigfootApplication;

    move-result-object v0

    .line 31
    iget-object v0, v0, Lcom/nike/adapt/BigfootApplication;->h:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 32
    instance-of v1, v0, Lcom/nike/adapt/ui/LoginActivity;

    if-nez v1, :cond_5

    .line 33
    sget-object v1, Lh9/v;->c:Lh9/v;

    invoke-virtual {v1, v0}, Lh9/a;->e(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(ZJ)V
    .locals 1

    sget-object v0, Lcom/nike/adapt/ui/AdaptRestartActivity;->A:Lcom/nike/adapt/ui/AdaptRestartActivity$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nike/adapt/ui/AdaptRestartActivity$a;->a(ZJ)V

    return-void
.end method
