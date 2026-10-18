.class public Le3/q;
.super Landroidx/fragment/app/m;
.source "SupportRequestManagerFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/q$a;
    }
.end annotation


# instance fields
.field public final a0:Le3/a;

.field public final b0:Le3/q$a;

.field public final c0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le3/q;",
            ">;"
        }
    .end annotation
.end field

.field public d0:Le3/q;

.field public e0:Lcom/bumptech/glide/j;

.field public f0:Landroidx/fragment/app/m;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Le3/a;

    invoke-direct {v0}, Le3/a;-><init>()V

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    .line 3
    new-instance v1, Le3/q$a;

    invoke-direct {v1, p0}, Le3/q$a;-><init>(Le3/q;)V

    iput-object v1, p0, Le3/q;->b0:Le3/q$a;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Le3/q;->c0:Ljava/util/HashSet;

    .line 5
    iput-object v0, p0, Le3/q;->a0:Le3/a;

    return-void
.end method


# virtual methods
.method public final G(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->G(Landroid/content/Context;)V

    move-object p1, p0

    .line 2
    :goto_0
    iget-object v0, p1, Landroidx/fragment/app/m;->C:Landroidx/fragment/app/m;

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    const/4 v0, 0x5

    const-string v1, "SupportRMFragment"

    if-nez p1, :cond_2

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Unable to register fragment with root, ancestor detached"

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 6
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/m;->l()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Le3/q;->q0(Landroid/content/Context;Landroidx/fragment/app/x;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Unable to register fragment with root"

    .line 8
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public final J()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    iget-object v0, p0, Le3/q;->a0:Le3/a;

    invoke-virtual {v0}, Le3/a;->a()V

    .line 3
    invoke-virtual {p0}, Le3/q;->r0()V

    return-void
.end method

.method public final L()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le3/q;->f0:Landroidx/fragment/app/m;

    .line 3
    invoke-virtual {p0}, Le3/q;->r0()V

    return-void
.end method

.method public final S()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    iget-object v0, p0, Le3/q;->a0:Le3/a;

    invoke-virtual {v0}, Le3/a;->d()V

    return-void
.end method

.method public final T()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    iget-object v0, p0, Le3/q;->a0:Le3/a;

    invoke-virtual {v0}, Le3/a;->e()V

    return-void
.end method

.method public final p0()Landroidx/fragment/app/m;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->C:Landroidx/fragment/app/m;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le3/q;->f0:Landroidx/fragment/app/m;

    :goto_0
    return-object v0
.end method

.method public final q0(Landroid/content/Context;Landroidx/fragment/app/x;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le3/q;->r0()V

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/bumptech/glide/c;->m:Le3/l;

    .line 4
    invoke-virtual {p1, p2}, Le3/l;->e(Landroidx/fragment/app/x;)Le3/q;

    move-result-object p1

    .line 5
    iput-object p1, p0, Le3/q;->d0:Le3/q;

    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Le3/q;->d0:Le3/q;

    .line 8
    iget-object p1, p1, Le3/q;->c0:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final r0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le3/q;->d0:Le3/q;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le3/q;->c0:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le3/q;->d0:Le3/q;

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/fragment/app/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le3/q;->p0()Landroidx/fragment/app/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
