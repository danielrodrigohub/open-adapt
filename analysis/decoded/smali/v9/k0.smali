.class public final Lv9/k0;
.super Ljava/lang/Object;
.source "AdaptKitPairingListener.kt"

# interfaces
.implements Lv9/p0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv9/p0<",
        "Lha/b;",
        "Lha/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lfd/d;

.field public c:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "-",
            "Lha/u;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "-",
            "Lha/r;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "-",
            "Lha/s;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lv9/k0;->a:Z

    .line 3
    new-instance v1, Lv9/j0;

    invoke-direct {v1, p0}, Lv9/j0;-><init>(Lv9/k0;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lv9/k0;->b:Lfd/d;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/os/Parcelable;)V
    .locals 0

    check-cast p1, Lha/b;

    invoke-virtual {p0, p1}, Lv9/k0;->e(Lha/b;)V

    return-void
.end method

.method public final bridge synthetic b(Lv9/m;)V
    .locals 0

    check-cast p1, Lha/a;

    invoke-virtual {p0, p1}, Lv9/k0;->d(Lha/a;)V

    return-void
.end method

.method public final c()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lv9/k0;->b:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public final d(Lha/a;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lha/r;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lv9/k0;->d:Lqd/l;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lv9/k0;->c()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ly0/u;

    const/4 v3, 0x5

    invoke-direct {v2, v0, p1, v3}, Ly0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Lha/s;

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lv9/k0;->e:Lqd/l;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lv9/k0;->c()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ln5/m;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p1, v3}, Ln5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public final e(Lha/b;)V
    .locals 4

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lv9/k0;->c:Lqd/l;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lv9/k0;->c()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lp3/h;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p1, v3}, Lp3/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lha/b;->h:Lha/u;

    .line 4
    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv9/k0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv9/k0;

    iget-boolean v1, p0, Lv9/k0;->a:Z

    iget-boolean p1, p1, Lv9/k0;->a:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lv9/k0;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lv9/k0;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdaptKitPairingListener(postToMainThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
