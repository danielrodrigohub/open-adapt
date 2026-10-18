.class public Lcom/nike/adapt/BigfootApplication;
.super Landroid/app/Application;
.source "BigfootApplication.kt"

# interfaces
.implements Landroidx/lifecycle/b;
.implements Landroidx/work/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/BigfootApplication$e;
    }
.end annotation


# static fields
.field public static final p:Lcom/nike/adapt/BigfootApplication$e;

.field public static q:Lcom/nike/adapt/BigfootApplication;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static final r:Lfd/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/d<",
            "Lcom/nike/adapt/BigfootApplication;",
            ">;"
        }
    .end annotation
.end field

.field public static s:Lkotlinx/coroutines/CoroutineScope;

.field public static final t:Lfd/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/d<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field public static u:Lg8/a;

.field public static final v:Lfd/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/d<",
            "Lg8/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Lfd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static x:Z


# instance fields
.field public h:Landroid/app/Activity;

.field public final i:Lcom/nike/adapt/coroutine/BackgroundCoroutineScope;

.field public final j:Lo7/f;

.field public k:Lcom/nike/adapt/service/FirmwareUpdateService;

.field public volatile l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Lcom/nike/adapt/BigfootApplication$g;

.field public final n:Lfd/h;

.field public final o:Lfd/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nike/adapt/BigfootApplication$e;

    invoke-direct {v0}, Lcom/nike/adapt/BigfootApplication$e;-><init>()V

    sput-object v0, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    .line 1
    sget-object v0, Lcom/nike/adapt/BigfootApplication$a;->h:Lcom/nike/adapt/BigfootApplication$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lcom/nike/adapt/BigfootApplication;->r:Lfd/h;

    .line 2
    sget-object v0, Lcom/nike/adapt/BigfootApplication$c;->h:Lcom/nike/adapt/BigfootApplication$c;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lcom/nike/adapt/BigfootApplication;->t:Lfd/h;

    .line 3
    sget-object v0, Lcom/nike/adapt/BigfootApplication$d;->h:Lcom/nike/adapt/BigfootApplication$d;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lcom/nike/adapt/BigfootApplication;->v:Lfd/h;

    const/4 v0, 0x3

    .line 4
    sget-object v1, Lcom/nike/adapt/BigfootApplication$b;->h:Lcom/nike/adapt/BigfootApplication$b;

    invoke-static {v0, v1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/BigfootApplication;->w:Lfd/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    new-instance v0, Lcom/nike/adapt/coroutine/BackgroundCoroutineScope;

    invoke-direct {v0}, Lcom/nike/adapt/coroutine/BackgroundCoroutineScope;-><init>()V

    iput-object v0, p0, Lcom/nike/adapt/BigfootApplication;->i:Lcom/nike/adapt/coroutine/BackgroundCoroutineScope;

    .line 3
    sget-object v0, Lo7/f;->a:Lo7/f;

    .line 4
    iput-object v0, p0, Lcom/nike/adapt/BigfootApplication;->j:Lo7/f;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nike/adapt/BigfootApplication;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Lcom/nike/adapt/BigfootApplication$g;

    invoke-direct {v0, p0}, Lcom/nike/adapt/BigfootApplication$g;-><init>(Lcom/nike/adapt/BigfootApplication;)V

    iput-object v0, p0, Lcom/nike/adapt/BigfootApplication;->m:Lcom/nike/adapt/BigfootApplication$g;

    .line 7
    sget-object v0, Lcom/nike/adapt/BigfootApplication$h;->h:Lcom/nike/adapt/BigfootApplication$h;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Lcom/nike/adapt/BigfootApplication;->n:Lfd/h;

    const/4 v0, 0x3

    .line 8
    sget-object v1, Lcom/nike/adapt/BigfootApplication$f;->h:Lcom/nike/adapt/BigfootApplication$f;

    invoke-static {v0, v1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/adapt/BigfootApplication;->o:Lfd/d;

    return-void
.end method


# virtual methods
.method public final b()Landroidx/work/a;
    .locals 2

    .line 1
    new-instance v0, Lk1/e;

    invoke-direct {v0}, Lk1/e;-><init>()V

    .line 2
    new-instance v1, Landroidx/work/a$a;

    invoke-direct {v1}, Landroidx/work/a$a;-><init>()V

    .line 3
    iput-object v0, v1, Landroidx/work/a$a;->a:Lk1/t;

    .line 4
    new-instance v0, Landroidx/work/a;

    invoke-direct {v0, v1}, Landroidx/work/a;-><init>(Landroidx/work/a$a;)V

    return-object v0
.end method

.method public final onCreate()V
    .locals 37

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sput-object v0, Lcom/nike/adapt/BigfootApplication;->q:Lcom/nike/adapt/BigfootApplication;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    invoke-interface {v3, v4}, Ljd/f;->plus(Ljd/f;)Ljd/f;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Ljd/f;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    sput-object v3, Lcom/nike/adapt/BigfootApplication;->s:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    sget-object v3, Lcom/nike/adapt/ui/AdaptRestartActivity;->A:Lcom/nike/adapt/ui/AdaptRestartActivity$a;

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 6
    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lp4/h;->g(Ljava/lang/Object;)V

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 8
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, v3, :cond_0

    iget-object v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v7, "processInfo.processName"

    invoke-static {v6, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, ":adapt_restart"

    .line 9
    invoke-static {v6, v7, v5}, Lyd/o;->Y(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-eqz v3, :cond_2

    return-void

    .line 10
    :cond_2
    sget-object v3, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    new-instance v4, Lg8/a;

    invoke-direct {v4, v0}, Lg8/a;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/nike/adapt/BigfootApplication;->u:Lg8/a;

    .line 11
    invoke-static/range {p0 .. p0}, Landroidx/preference/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "_has_set_default_values"

    .line 12
    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 13
    invoke-interface {v7, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_3

    .line 14
    new-instance v8, Landroidx/preference/f;

    invoke-direct {v8, v0}, Landroidx/preference/f;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v4, v8, Landroidx/preference/f;->f:Ljava/lang/String;

    .line 16
    iput v5, v8, Landroidx/preference/f;->g:I

    .line 17
    iput-object v1, v8, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    .line 18
    invoke-virtual {v8, v0}, Landroidx/preference/f;->e(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    .line 19
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 20
    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 21
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    :cond_3
    sget-object v4, Landroidx/lifecycle/a0;->m:Landroidx/lifecycle/a0;

    .line 23
    iget-object v4, v4, Landroidx/lifecycle/a0;->k:Landroidx/lifecycle/r;

    .line 24
    iget-object v6, v0, Lcom/nike/adapt/BigfootApplication;->i:Lcom/nike/adapt/coroutine/BackgroundCoroutineScope;

    invoke-virtual {v4, v6}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/p;)V

    .line 25
    sget-object v4, Lr8/a;->h:Lr8/a;

    invoke-virtual {v0, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 26
    sget-object v4, Lo7/g;->h:Lo7/g;

    .line 27
    sget-object v6, Ln3/p;->h:Ln3/p;

    .line 28
    sget-object v7, Ls9/j;->a:Ls9/j;

    .line 29
    sget-object v7, Ls9/j;->b:Lfd/h;

    invoke-virtual {v7}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/lifecycle/v;

    .line 30
    invoke-virtual {v7, v6}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/w;)V

    .line 31
    invoke-virtual {v0, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 32
    sget-object v4, Ll9/b;->h:Ll9/b;

    .line 33
    invoke-virtual {v0, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 34
    new-instance v4, Lo7/j;

    invoke-direct {v4, v0}, Lo7/j;-><init>(Lcom/nike/adapt/BigfootApplication;)V

    invoke-virtual {v0, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 35
    sget-object v4, Lcom/nike/adapt/BigfootApplicationState;->h:Lcom/nike/adapt/BigfootApplicationState;

    .line 36
    new-instance v4, Lo7/a;

    .line 37
    invoke-virtual {v3}, Lcom/nike/adapt/BigfootApplication$e;->b()Lcom/nike/adapt/BigfootApplication;

    move-result-object v3

    .line 38
    sget-object v6, Lcom/nike/adapt/BigfootApplication;->w:Lfd/d;

    .line 39
    invoke-interface {v6}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const v7, 0x7f110277

    .line 40
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(R.string.app_name_non_translatable)"

    invoke-static {v7, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v8, Lw7/d;->a:Lfd/h;

    invoke-virtual {v8}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw7/c;

    .line 42
    invoke-direct {v4, v3, v6, v7, v8}, Lo7/a;-><init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lvc/a;)V

    .line 43
    sput-object v4, Lg7/b;->h:Lo7/a;

    .line 44
    sput-boolean v5, Lg7/b;->i:Z

    .line 45
    sget-object v3, Lv9/t;->a:Lv9/t;

    .line 46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 47
    new-instance v6, Lo7/k;

    invoke-direct {v6, v0}, Lo7/k;-><init>(Lcom/nike/adapt/BigfootApplication;)V

    .line 48
    new-instance v7, Landroidx/appcompat/widget/p;

    invoke-direct {v7}, Landroidx/appcompat/widget/p;-><init>()V

    .line 49
    iget-object v8, v0, Lcom/nike/adapt/BigfootApplication;->m:Lcom/nike/adapt/BigfootApplication$g;

    .line 50
    new-instance v9, Lp4/h;

    invoke-direct {v9}, Lp4/h;-><init>()V

    const-string v10, "toString()"

    .line 51
    invoke-static {v4, v10}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "requirementsListener"

    .line 52
    invoke-static {v8, v10}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-boolean v10, Lv9/t;->k:Z

    const-string v11, "editor"

    const/4 v12, 0x2

    const/16 v13, 0xa

    if-eqz v10, :cond_4

    goto/16 :goto_3

    .line 54
    :cond_4
    sput-object v0, Lv9/t;->h:Landroid/app/Application;

    .line 55
    sput-object v4, Lv9/t;->f:Ljava/lang/String;

    const-string v10, "com.nike.authcomponent.v1"

    .line 56
    sput-object v10, Lv9/t;->g:Ljava/lang/String;

    .line 57
    new-instance v10, Lma/a;

    invoke-direct {v10, v6}, Lma/a;-><init>(Lv9/c;)V

    .line 58
    sput-object v10, Lv9/t;->j:Lma/a;

    .line 59
    new-instance v6, Lfb/e;

    invoke-direct {v6, v7}, Lfb/e;-><init>(Lv9/d;)V

    .line 60
    sput-object v6, Lv9/t;->d:Lfb/e;

    .line 61
    sput-object v8, Lv9/t;->e:Lv9/o0;

    .line 62
    invoke-static {}, Ld3/e;->j()Lfb/e;

    .line 63
    new-instance v6, Lwa/i;

    new-instance v7, Lv9/u;

    invoke-direct {v7, v8}, Lv9/u;-><init>(Lv9/o0;)V

    invoke-direct {v6, v7}, Lwa/i;-><init>(Lv9/o0;)V

    .line 64
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 65
    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.location.PROVIDERS_CHANGED"

    .line 66
    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    .line 67
    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    sget-object v6, Lv9/t;->i:Leb/f;

    .line 70
    invoke-virtual {v3}, Lv9/t;->c()Lma/a;

    move-result-object v7

    invoke-virtual {v7}, Lma/a;->a()Ljava/lang/String;

    move-result-object v7

    .line 71
    new-instance v8, Lv9/v;

    invoke-direct {v8, v9}, Lv9/v;-><init>(Lv9/m0;)V

    .line 72
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sput-boolean v2, Leb/f;->b:Z

    .line 74
    invoke-virtual {v6, v7}, Leb/f;->b(Ljava/lang/String;)V

    .line 75
    sget-object v6, Lgb/c;->a:Lgb/c;

    .line 76
    sget-object v7, Leb/f;->e:Ljava/lang/String;

    .line 77
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "context.applicationContext"

    invoke-static {v9, v10}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v9, Lgb/c;->b:Landroid/content/Context;

    .line 79
    sput-object v8, Lgb/c;->c:Lgb/b;

    .line 80
    sget-object v9, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;->m:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase$a;

    const-string v10, "adaptkit"

    const-string v14, "adaptkit-nike-telemetry"

    sput-object v14, Lgb/c;->i:Ljava/lang/String;

    .line 81
    invoke-virtual {v9, v0, v10}, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase$a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    move-result-object v9

    .line 82
    sput-object v9, Lgb/c;->m:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    .line 83
    invoke-virtual {v8}, Lv9/v;->a()Z

    .line 84
    sget-object v8, Lgb/c;->i:Ljava/lang/String;

    if-eqz v8, :cond_17

    .line 85
    sput-object v8, Lgb/c;->j:Ljava/lang/String;

    const-string v8, "iA41YwJBILujxEQdjlI6nuKgnVmxpQrm"

    .line 86
    sput-object v8, Lgb/c;->l:Ljava/lang/String;

    .line 87
    sput-object v4, Lgb/c;->d:Ljava/lang/String;

    const-string v4, "com.nike.adapt"

    .line 88
    sput-object v4, Lgb/c;->e:Ljava/lang/String;

    const-string v4, "1.29.3"

    .line 89
    sput-object v4, Lgb/c;->f:Ljava/lang/String;

    .line 90
    sput-object v10, Lgb/c;->g:Ljava/lang/String;

    const-string v4, "1.5.13"

    .line 91
    sput-object v4, Lgb/c;->h:Ljava/lang/String;

    .line 92
    sput-object v7, Lgb/c;->k:Ljava/lang/String;

    .line 93
    sput-boolean v2, Lgb/c;->n:Z

    .line 94
    invoke-virtual {v6}, Ljava/util/Observable;->notifyObservers()V

    .line 95
    sget-object v4, Leb/f;->d:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Leb/g;

    .line 97
    sget-object v7, Leb/f;->a:Leb/f;

    new-array v8, v2, [Leb/g;

    aput-object v6, v8, v5

    invoke-virtual {v7, v8}, Leb/f;->a([Leb/g;)V

    goto :goto_1

    .line 98
    :cond_5
    sget-object v4, Lhc/h0;->a:Lhc/h0;

    new-instance v4, Lda/e;

    invoke-direct {v4}, Lda/e;-><init>()V

    .line 99
    sput-object v4, Lhc/h0;->b:Lhc/g0;

    .line 100
    sput-object v0, Lhc/h0;->d:Landroid/app/Application;

    .line 101
    sget-object v4, Lv9/t;->c:Ldb/b;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "adapt_kit_previous_version_key"

    const-string v7, "<get-sharedPreferences>(...)"

    .line 102
    :try_start_0
    sget-object v8, Ldb/b;->d:Lfd/h;

    invoke-virtual {v8}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/content/SharedPreferences;

    .line 103
    invoke-interface {v8, v6, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ge v8, v12, :cond_7

    if-ge v8, v12, :cond_7

    if-ne v8, v2, :cond_7

    .line 104
    invoke-virtual {v4, v2}, Ldb/b;->e(Z)Ljava/util/List;

    move-result-object v8

    .line 105
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v13}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 107
    move-object v14, v10

    check-cast v14, Lea/m;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x17ff

    invoke-static/range {v14 .. v25}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 109
    :cond_6
    invoke-virtual {v4, v5, v9}, Ldb/b;->b(ZLjava/util/List;)V

    .line 110
    :cond_7
    sget-object v4, Ldb/b;->d:Lfd/h;

    invoke-virtual {v4}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/content/SharedPreferences;

    .line 111
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 112
    invoke-static {v4, v11}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-interface {v4, v6, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :catchall_0
    sget-object v4, Lwa/b;->h:Lwa/b;

    invoke-virtual {v4, v0}, Lwa/a;->d(Landroid/content/Context;)V

    .line 116
    sput-boolean v2, Lv9/t;->k:Z

    .line 117
    sget-object v4, Lwa/d;->h:Lwa/d;

    invoke-virtual {v4, v0}, Lwa/a;->d(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v3}, Lv9/t;->e()Lab/a;

    move-result-object v3

    sget-object v4, Lv9/a;->i:Lv9/a$a;

    .line 119
    sget-object v4, Lv9/a;->j:Lv9/a;

    .line 120
    sget-object v6, Lv9/x;->h:Lv9/x;

    const-string v7, "block"

    .line 121
    invoke-static {v6, v7}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v7, Lv9/d0;

    invoke-direct {v7, v5}, Lv9/d0;-><init>(Z)V

    invoke-virtual {v6, v7}, Lv9/x;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-interface {v3, v4, v7}, Lab/a;->a(Lv9/a;Lv9/p0;)Ljava/util/List;

    .line 124
    :goto_3
    sget-object v3, Landroidx/lifecycle/a0;->m:Landroidx/lifecycle/a0;

    .line 125
    iget-object v4, v3, Landroidx/lifecycle/a0;->k:Landroidx/lifecycle/r;

    .line 126
    invoke-virtual {v4, v0}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/p;)V

    .line 127
    iget-object v3, v3, Landroidx/lifecycle/a0;->k:Landroidx/lifecycle/r;

    .line 128
    sget-object v4, Lcom/nike/adapt/PeripheralConnectionManager;->h:Lcom/nike/adapt/PeripheralConnectionManager;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/p;)V

    .line 129
    sget-object v3, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v3}, Lcom/nike/adapt/analytics/TrackManager;->init()V

    const-string v4, "AAb9fcb58709db55cac5bbcb2047a26c65c1122fb5"

    .line 130
    invoke-static {v4}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v4

    .line 131
    invoke-virtual {v4, v0}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V

    .line 132
    sget-object v4, Li8/h;->b:Ljava/util/concurrent/ExecutorService;

    .line 133
    sget-object v5, Lo7/i;->h:Lo7/i;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 134
    invoke-virtual {v3}, Lcom/nike/adapt/analytics/TrackManager;->init()V

    .line 135
    sget-object v14, Lo7/x;->a:Lo7/x;

    sget-object v3, Lcom/nike/adapt/analytics/ReportingGateKeeper;->INSTANCE:Lcom/nike/adapt/analytics/ReportingGateKeeper;

    invoke-virtual {v3}, Lcom/nike/adapt/analytics/ReportingGateKeeper;->getExternalReporter()Lo7/o;

    move-result-object v3

    const-string v4, "reporter"

    .line 136
    invoke-static {v3, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "BigFoot"

    .line 137
    sput-object v4, Lo7/x;->e:Ljava/lang/String;

    .line 138
    sput-object v3, Lo7/x;->c:Lo7/o;

    .line 139
    const-class v3, Lcom/nike/adapt/BigfootApplication;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x3c

    const/16 v23, 0x0

    const-string v15, "BigfootApplication"

    const-string v16, "Application Initialized"

    invoke-static/range {v14 .. v23}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 140
    sget-object v3, Lu7/a;->a:Lu7/a;

    .line 141
    :try_start_1
    new-instance v3, Le7/h;

    invoke-direct {v3}, Le7/h;-><init>()V

    .line 142
    sget-object v4, Lu7/a;->b:Lfd/h;

    invoke-virtual {v4}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences;

    const-string v5, "devices"

    const-string v6, "[]"

    .line 143
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    new-instance v5, Lu7/b;

    invoke-direct {v5}, Lu7/b;-><init>()V

    .line 145
    iget-object v5, v5, Ll7/a;->b:Ljava/lang/reflect/Type;

    .line 146
    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Le7/h;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.collections.List<com.nike.adapt.migration.oldbigfoot.BigfootPairedDevices>"

    invoke-static {v3, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/List;

    .line 147
    invoke-static {v3}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lu7/c;

    invoke-direct {v4}, Lu7/c;-><init>()V

    new-instance v5, Lu7/d;

    invoke-direct {v5, v4}, Lu7/d;-><init>(Ljava/util/Comparator;)V

    invoke-static {v3, v5}, Lgd/n;->i0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    .line 148
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    if-gt v4, v2, :cond_8

    invoke-static {v3}, Lgd/n;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    goto :goto_4

    .line 149
    :cond_8
    invoke-static {v3}, Lgd/n;->m0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 150
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 151
    :catchall_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 152
    :goto_4
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v2, v4

    if-eqz v2, :cond_d

    .line 153
    sget-object v2, Lv9/t;->a:Lv9/t;

    .line 154
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v13}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 156
    check-cast v5, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;

    .line 157
    new-instance v6, Lea/j;

    .line 158
    invoke-virtual {v5}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->getPairId()Ljava/lang/String;

    move-result-object v15

    .line 159
    invoke-virtual {v5}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->getPairName()Ljava/lang/String;

    move-result-object v16

    .line 160
    invoke-virtual {v5}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->isDefault()Z

    move-result v17

    .line 161
    invoke-virtual {v5}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->getLeftDevice()Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    move-result-object v7

    invoke-static {v7}, Landroidx/appcompat/widget/p;->i(Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;)Lea/t;

    move-result-object v18

    .line 162
    invoke-virtual {v5}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->getRightDevice()Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    move-result-object v7

    invoke-static {v7}, Landroidx/appcompat/widget/p;->i(Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;)Lea/t;

    move-result-object v19

    .line 163
    invoke-virtual {v5}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->getLastSnapshotUsedName()Ljava/lang/String;

    move-result-object v20

    .line 164
    invoke-virtual {v5}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->getColorWay()Ljava/lang/String;

    move-result-object v21

    .line 165
    invoke-virtual {v5}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->getSnapshots()Ljava/util/List;

    move-result-object v7

    .line 166
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7, v13}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 168
    check-cast v9, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;

    .line 169
    new-instance v10, Lea/w;

    .line 170
    invoke-virtual {v9}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;->getId()Ljava/lang/String;

    move-result-object v23

    .line 171
    invoke-virtual {v9}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;->getName()Ljava/lang/String;

    move-result-object v24

    .line 172
    invoke-virtual {v9}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;->getAutoGenerated()Z

    move-result v25

    .line 173
    invoke-virtual {v9}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;->getLeftAttributes()Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;

    move-result-object v12

    invoke-static {v12}, Landroidx/appcompat/widget/p;->h(Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;)Lea/u;

    move-result-object v26

    .line 174
    invoke-virtual {v9}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevicePreset;->getRightAttributes()Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;

    move-result-object v9

    invoke-static {v9}, Landroidx/appcompat/widget/p;->h(Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;)Lea/u;

    move-result-object v27

    move-object/from16 v22, v10

    .line 175
    invoke-direct/range {v22 .. v27}, Lea/w;-><init>(Ljava/lang/String;Ljava/lang/String;ZLea/u;Lea/u;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 176
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 177
    invoke-virtual {v5}, Lcom/nike/adapt/migration/oldbigfoot/BigfootPairedDevices;->getScheduledForDeletion()Z

    move-result v25

    move-object v14, v6

    move-object/from16 v22, v8

    .line 178
    invoke-direct/range {v14 .. v25}, Lea/j;-><init>(Ljava/lang/String;Ljava/lang/String;ZLea/t;Lea/t;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZ)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 179
    :cond_a
    invoke-virtual {v2}, Lv9/t;->e()Lab/a;

    move-result-object v2

    .line 180
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v4, v13}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 182
    check-cast v5, Lea/j;

    .line 183
    iget-object v6, v5, Lea/j;->d:Lea/t;

    .line 184
    iget-object v15, v5, Lea/j;->g:Ljava/lang/String;

    .line 185
    iget-boolean v7, v5, Lea/j;->k:Z

    .line 186
    new-instance v8, Lea/b;

    .line 187
    iget-object v9, v6, Lea/t;->a:Ljava/lang/String;

    .line 188
    iget-object v10, v6, Lea/t;->b:Ljava/lang/String;

    .line 189
    iget-object v12, v6, Lea/t;->c:Ljava/lang/String;

    .line 190
    iget-object v14, v6, Lea/t;->d:Ljava/lang/String;

    .line 191
    iget v6, v6, Lea/t;->e:I

    move-object/from16 v19, v14

    move-object v14, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v12

    move/from16 v20, v6

    move/from16 v21, v7

    .line 192
    invoke-direct/range {v14 .. v21}, Lea/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 193
    iget-object v6, v5, Lea/j;->e:Lea/t;

    .line 194
    iget-object v15, v5, Lea/j;->g:Ljava/lang/String;

    .line 195
    iget-boolean v7, v5, Lea/j;->k:Z

    .line 196
    new-instance v9, Lea/b;

    .line 197
    iget-object v10, v6, Lea/t;->a:Ljava/lang/String;

    .line 198
    iget-object v12, v6, Lea/t;->b:Ljava/lang/String;

    .line 199
    iget-object v14, v6, Lea/t;->c:Ljava/lang/String;

    .line 200
    iget-object v1, v6, Lea/t;->d:Ljava/lang/String;

    .line 201
    iget v6, v6, Lea/t;->e:I

    move-object/from16 v18, v14

    move-object v14, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move-object/from16 v19, v1

    move/from16 v20, v6

    move/from16 v21, v7

    .line 202
    invoke-direct/range {v14 .. v21}, Lea/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 203
    iget-object v1, v5, Lea/j;->a:Ljava/lang/String;

    .line 204
    iget-object v6, v5, Lea/j;->b:Ljava/lang/String;

    .line 205
    iget-boolean v7, v5, Lea/j;->c:Z

    .line 206
    iget-object v10, v5, Lea/j;->f:Ljava/lang/String;

    .line 207
    iget-object v12, v5, Lea/j;->g:Ljava/lang/String;

    .line 208
    iget-object v14, v5, Lea/j;->h:Ljava/util/List;

    .line 209
    iget v15, v8, Lea/b;->m:I

    move-object/from16 v33, v4

    .line 210
    iget v4, v9, Lea/b;->m:I

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v34, v11

    invoke-static {v14, v13}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 213
    check-cast v14, Lea/w;

    .line 214
    new-instance v13, Lea/e;

    move-object/from16 v23, v11

    .line 215
    iget-object v11, v14, Lea/w;->a:Ljava/lang/String;

    move-object/from16 v35, v2

    .line 216
    iget-object v2, v14, Lea/w;->b:Ljava/lang/String;

    move-object/from16 v36, v3

    .line 217
    iget-boolean v3, v14, Lea/w;->c:Z

    move-object/from16 v24, v12

    .line 218
    iget-object v12, v14, Lea/w;->d:Lea/u;

    .line 219
    invoke-static {v12, v15}, Lc3/d;->m(Lea/u;I)Lea/c;

    move-result-object v20

    .line 220
    iget-object v12, v14, Lea/w;->e:Lea/u;

    .line 221
    invoke-static {v12, v4}, Lc3/d;->m(Lea/u;I)Lea/c;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v16, v13

    move-object/from16 v17, v11

    move-object/from16 v18, v2

    move/from16 v19, v3

    .line 222
    invoke-direct/range {v16 .. v22}, Lea/e;-><init>(Ljava/lang/String;Ljava/lang/String;ZLea/c;Lea/c;Ljava/lang/Integer;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    const/16 v13, 0xa

    goto :goto_8

    :cond_b
    move-object/from16 v35, v2

    move-object/from16 v36, v3

    move-object/from16 v24, v12

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 224
    iget-boolean v2, v5, Lea/j;->j:Z

    move/from16 v32, v2

    .line 225
    sget-object v29, Lea/f;->i:Lea/f;

    .line 226
    new-instance v2, Lea/m;

    move-object/from16 v16, v2

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v24

    move-object/from16 v24, v0

    invoke-direct/range {v16 .. v32}, Lea/m;-><init>(Ljava/lang/String;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JJLea/f;JZ)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/16 v13, 0xa

    move-object v3, v0

    move-object/from16 v4, v33

    move-object/from16 v11, v34

    move-object/from16 v2, v35

    move-object/from16 v0, p0

    goto/16 :goto_7

    :cond_c
    move-object v1, v2

    move-object v0, v3

    move-object/from16 v34, v11

    .line 227
    invoke-interface {v1, v0}, Lab/a;->e(Ljava/util/List;)V

    .line 228
    sget-object v0, Lu7/a;->a:Lu7/a;

    .line 229
    sget-object v0, Lu7/a;->b:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_9

    :cond_d
    move-object/from16 v34, v11

    .line 231
    :goto_9
    sget-object v0, Lu7/a;->a:Lu7/a;

    .line 232
    sget-object v0, Lu7/a;->c:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "last_known_shoe_color"

    const/4 v2, 0x0

    .line 233
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_a

    :cond_e
    const-string v2, "LASER_ORANGE"

    .line 234
    invoke-static {v0, v2}, Lyd/s;->i0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    sget-object v0, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->TOTAL_ORANGE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    sget-object v3, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->HIGHEST:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    invoke-direct {v2, v0, v3}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;)V

    goto :goto_b

    .line 235
    :cond_f
    :try_start_2
    new-instance v2, Le7/h;

    invoke-direct {v2}, Le7/h;-><init>()V

    const-class v3, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    invoke-static {v2, v0, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Le7/h;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/nike/adapt/adk/model/AdaptDeviceColor;
    :try_end_2
    .catch Le7/s; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_b

    :catch_0
    :goto_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_12

    .line 236
    sget-object v0, Lu7/a;->a:Lu7/a;

    .line 237
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;->getIntensity()Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    move-result-object v0

    if-nez v0, :cond_11

    .line 238
    :cond_10
    new-instance v2, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    sget-object v0, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->HERO_BLUE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    sget-object v3, Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;->HIGHEST:Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;

    invoke-direct {v2, v0, v3}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;)V

    .line 239
    :cond_11
    sget-object v0, Lcom/nike/adapt/adk/model/AdaptShoeColor;->Companion:Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;

    invoke-virtual {v0, v2, v2}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;->create(Lcom/nike/adapt/adk/model/AdaptDeviceColor;Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v0

    .line 240
    sget-object v2, Lh8/c;->b:Lh8/c;

    .line 241
    invoke-virtual {v2, v0}, Lh8/c;->b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 242
    sget-object v0, Lu7/a;->c:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v2, "adaptPreferences"

    .line 243
    invoke-static {v0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object/from16 v2, v34

    .line 245
    invoke-static {v0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_12
    move-object/from16 v0, p0

    .line 248
    iget-object v1, v0, Lcom/nike/adapt/BigfootApplication;->o:Lfd/d;

    invoke-interface {v1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/a;

    .line 249
    invoke-interface {v1}, Lh8/a;->H()V

    .line 250
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_16

    .line 251
    sget-object v3, Lo7/l;->a:Lo7/l;

    const/4 v4, 0x3

    if-lt v1, v2, :cond_13

    .line 252
    new-instance v5, Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Lo7/l;->a()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f11014e

    invoke-static {v6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    goto :goto_c

    :cond_13
    const/4 v5, 0x0

    :goto_c
    if-eqz v5, :cond_14

    .line 253
    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_14
    if-lt v1, v2, :cond_15

    .line 254
    new-instance v1, Landroid/app/NotificationChannel;

    sget-object v2, Lo7/l;->c:Ljava/lang/String;

    const v3, 0x7f11014d

    invoke-static {v3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_16

    .line 255
    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_16
    return-void

    :cond_17
    const-string v1, "databaseName"

    .line 256
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
.end method

.method public final onStart(Landroidx/lifecycle/q;)V
    .locals 10

    const/4 p1, 0x1

    .line 1
    sput-boolean p1, Lcom/nike/adapt/BigfootApplication;->x:Z

    .line 2
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "BigfootApplication"

    const-string v2, "App detected in foreground"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7c

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/nike/adapt/BigfootApplication;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final onStop(Landroidx/lifecycle/q;)V
    .locals 11

    const/4 p1, 0x0

    .line 1
    sput-boolean p1, Lcom/nike/adapt/BigfootApplication;->x:Z

    .line 2
    sget-object v0, Lcom/nike/adapt/PeripheralConnectionManager;->h:Lcom/nike/adapt/PeripheralConnectionManager;

    .line 3
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "BigfootApplication"

    const-string v3, "App detected in background"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 4
    sget-object v0, Lt8/a;->a:Lt8/a;

    .line 5
    invoke-virtual {v0}, Lt8/a;->a()Lh8/a;

    move-result-object v1

    invoke-interface {v1}, Lh8/a;->y()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lt8/a;->a()Lh8/a;

    move-result-object v1

    invoke-virtual {v0}, Lt8/a;->a()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->G()I

    move-result v0

    add-int/2addr v0, v2

    invoke-interface {v1, v0}, Lh8/a;->V(I)V

    .line 7
    :cond_0
    sput-boolean p1, Lt8/a;->c:Z

    .line 8
    sput-boolean p1, Lt8/a;->d:Z

    .line 9
    iget-object v0, p0, Lcom/nike/adapt/BigfootApplication;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
