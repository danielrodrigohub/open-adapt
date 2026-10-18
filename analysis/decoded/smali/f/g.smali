.class public abstract Lf/g;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# static fields
.field public static final h:Lp/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/c<",
            "Ljava/lang/ref/WeakReference<",
            "Lf/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp/c;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lp/c;-><init>(I)V

    .line 3
    sput-object v0, Lf/g;->h:Lp/c;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf/g;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static q(Lf/g;)V
    .locals 3

    .line 1
    sget-object v0, Lf/g;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lf/g;->h:Lp/c;

    invoke-virtual {v1}, Lp/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/g;

    if-eq v2, p0, :cond_1

    if-nez v2, :cond_0

    .line 5
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public d(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    return-object p1
.end method

.method public abstract e(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public f()I
    .locals 1

    const/16 v0, -0x64

    return v0
.end method

.method public abstract g()Landroid/view/MenuInflater;
.end method

.method public abstract h()Lf/a;
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method

.method public abstract k(Landroid/content/res/Configuration;)V
.end method

.method public abstract l()V
.end method

.method public abstract m()V
.end method

.method public abstract n()V
.end method

.method public abstract o()V
.end method

.method public abstract p()V
.end method

.method public abstract r(I)Z
.end method

.method public abstract s(I)V
.end method

.method public abstract t(Landroid/view/View;)V
.end method

.method public abstract u(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract v(Landroidx/appcompat/widget/Toolbar;)V
.end method

.method public w(I)V
    .locals 0

    return-void
.end method

.method public abstract x(Ljava/lang/CharSequence;)V
.end method
