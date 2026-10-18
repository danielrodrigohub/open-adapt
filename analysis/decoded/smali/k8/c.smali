.class public final Lk8/c;
.super Ljava/lang/Object;
.source "FetchProfilePresenter.kt"

# interfaces
.implements Lf8/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf8/c<",
        "Lcom/nike/adapt/presenter/profile/AdaptUser;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lk8/a;


# direct methods
.method public constructor <init>(Lk8/a;)V
    .locals 0

    iput-object p1, p0, Lk8/c;->a:Lk8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lf8/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf8/b;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lf8/e;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lf8/e;

    .line 3
    iget-object v0, p1, Lf8/e;->a:Ljava/lang/Object;

    .line 4
    check-cast v0, Lcom/nike/adapt/presenter/profile/AdaptUser;

    invoke-virtual {v0}, Lcom/nike/adapt/presenter/profile/AdaptUser;->getNuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->setUserId(Ljava/lang/String;)Z

    .line 5
    sget-object v0, Ls7/b;->a:Ls7/b;

    new-instance v1, Lk8/g;

    iget-object v2, p0, Lk8/c;->a:Lk8/a;

    .line 6
    iget-object v2, v2, Lk8/a;->h:Li8/d;

    .line 7
    iget-object p1, p1, Lf8/e;->a:Ljava/lang/Object;

    .line 8
    check-cast p1, Lcom/nike/adapt/presenter/profile/AdaptUser;

    invoke-direct {v1, v2, p1}, Lk8/g;-><init>(Li8/d;Lcom/nike/adapt/presenter/profile/AdaptUser;)V

    invoke-virtual {v0, v1}, Ls7/b;->a(Li8/b;)V

    goto :goto_0

    .line 9
    :cond_0
    instance-of p1, p1, Lf8/d;

    if-eqz p1, :cond_1

    sget-object p1, Ls7/b;->a:Ls7/b;

    new-instance v0, Lk8/g;

    iget-object v1, p0, Lk8/c;->a:Lk8/a;

    .line 10
    iget-object v1, v1, Lk8/a;->h:Li8/d;

    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v1, v2}, Lk8/g;-><init>(Li8/d;Lcom/nike/adapt/presenter/profile/AdaptUser;)V

    invoke-virtual {p1, v0}, Ls7/b;->a(Li8/b;)V

    :cond_1
    :goto_0
    return-void
.end method
