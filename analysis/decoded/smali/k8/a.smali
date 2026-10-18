.class public final Lk8/a;
.super Landroidx/fragment/app/r;
.source "FetchProfilePresenter.kt"

# interfaces
.implements Lk8/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/r;",
        "Lk8/h;"
    }
.end annotation


# instance fields
.field public final h:Li8/d;

.field public final i:Lfd/h;


# direct methods
.method public constructor <init>(Li8/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/r;-><init>()V

    .line 2
    iput-object p1, p0, Lk8/a;->h:Li8/d;

    .line 3
    sget-object p1, Lk8/a$a;->h:Lk8/a$a;

    invoke-static {p1}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    check-cast p1, Lfd/h;

    iput-object p1, p0, Lk8/a;->i:Lfd/h;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk8/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk8/a;

    .line 1
    iget-object v1, p0, Lk8/a;->h:Li8/d;

    .line 2
    iget-object p1, p1, Lk8/a;->h:Li8/d;

    .line 3
    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk8/a;->h:Li8/d;

    .line 2
    invoke-virtual {v0}, Li8/d;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j(Li8/a;)V
    .locals 1

    .line 1
    check-cast p1, Lk8/f;

    .line 2
    instance-of v0, p1, Lk8/e;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lk8/a;->i:Lfd/h;

    invoke-virtual {p1}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm8/f;

    .line 4
    new-instance v0, Lk8/b;

    invoke-direct {v0, p0}, Lk8/b;-><init>(Lk8/a;)V

    invoke-interface {p1, v0}, Lm8/f;->a(Lf8/c;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of p1, p1, Lk8/d;

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lk8/a;->i:Lfd/h;

    invoke-virtual {p1}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm8/f;

    .line 7
    new-instance v0, Lk8/c;

    invoke-direct {v0, p0}, Lk8/c;-><init>(Lk8/a;)V

    invoke-interface {p1, v0}, Lm8/f;->a(Lf8/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lk8/a;->h:Li8/d;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbsFetchProfilePresenter(eventUUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
