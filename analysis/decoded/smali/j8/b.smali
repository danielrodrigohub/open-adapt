.class public final Lj8/b;
.super Landroidx/fragment/app/r;
.source "BigfootOnBoardingPresenter.kt"

# interfaces
.implements Lj8/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/r;",
        "Lj8/a;"
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

    iput-object p1, p0, Lj8/b;->h:Li8/d;

    .line 2
    sget-object p1, Lj8/b$a;->h:Lj8/b$a;

    invoke-static {p1}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    check-cast p1, Lfd/h;

    iput-object p1, p0, Lj8/b;->i:Lfd/h;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj8/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lj8/b;

    .line 1
    iget-object v1, p0, Lj8/b;->h:Li8/d;

    .line 2
    iget-object p1, p1, Lj8/b;->h:Li8/d;

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
    iget-object v0, p0, Lj8/b;->h:Li8/d;

    .line 2
    invoke-virtual {v0}, Li8/d;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j(Li8/a;)V
    .locals 3

    .line 1
    check-cast p1, Lj8/e;

    .line 2
    instance-of v0, p1, Lj8/d;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lj8/b;->i:Lfd/h;

    invoke-virtual {p1}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm8/a;

    .line 4
    iget-object v0, p0, Lj8/b;->h:Li8/d;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uuid"

    .line 6
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Lj8/c;

    invoke-virtual {p1}, Lm8/a;->a()Lh8/d;

    move-result-object v2

    invoke-interface {v2}, Lh8/d;->k()Lv7/g;

    move-result-object v2

    invoke-virtual {p1}, Lm8/a;->a()Lh8/d;

    move-result-object p1

    invoke-interface {p1}, Lh8/d;->c()Lv7/h;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lj8/c;-><init>(Li8/d;Lv7/g;Lv7/h;)V

    .line 8
    invoke-static {v1}, Lde/n0;->b(Li8/b;)V

    .line 9
    sget-object p1, Ls7/b;->a:Ls7/b;

    invoke-virtual {p1, v1}, Ls7/b;->a(Li8/b;)V

    goto :goto_0

    .line 10
    :cond_0
    instance-of v0, p1, Lj8/g;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lj8/b;->i:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm8/a;

    .line 12
    check-cast p1, Lj8/g;

    .line 13
    iget-object v1, p1, Lj8/g;->h:Lv7/g;

    .line 14
    iget-object p1, p1, Lj8/g;->i:Lv7/h;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "onBoardingState"

    .line 16
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onBoardingType"

    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lm8/a;->a()Lh8/d;

    move-result-object v2

    invoke-interface {v2, v1}, Lh8/d;->h(Lv7/g;)V

    .line 18
    invoke-virtual {v0}, Lm8/a;->a()Lh8/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lh8/d;->i(Lv7/h;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lj8/b;->h:Li8/d;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BigfootOnBoardingPresenterImpl(eventUUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
