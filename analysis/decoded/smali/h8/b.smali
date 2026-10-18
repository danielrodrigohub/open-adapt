.class public final Lh8/b;
.super Lrd/o;
.source "AdaptPreferenceHelper.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lf8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf8/c<",
            "Lcom/nike/adapt/presenter/profile/AdaptUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf8/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf8/c<",
            "Lcom/nike/adapt/presenter/profile/AdaptUser;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh8/b;->h:Lf8/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 2
    invoke-virtual {v0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "PREF_BIGFOOT_USER"

    .line 3
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v2, Le7/h;

    invoke-direct {v2}, Le7/h;-><init>()V

    const-class v3, Lcom/nike/adapt/presenter/profile/AdaptUser;

    invoke-static {v2, v0, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Le7/h;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nike/adapt/presenter/profile/AdaptUser;

    if-eqz v0, :cond_0

    .line 5
    iget-object v2, p0, Lh8/b;->h:Lf8/c;

    .line 6
    new-instance v3, Lf8/e;

    invoke-direct {v3, v0}, Lf8/e;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lf8/c;->a(Lf8/b;)V

    .line 7
    sget-object v0, Lfd/o;->a:Lfd/o;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lh8/b;->h:Lf8/c;

    new-instance v2, Lh8/f;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v1}, Lh8/f;-><init>(Ljava/lang/String;ILrd/h;)V

    .line 9
    new-instance v1, Lf8/d;

    invoke-direct {v1, v2}, Lf8/d;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lf8/c;->a(Lf8/b;)V

    .line 10
    :cond_1
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
