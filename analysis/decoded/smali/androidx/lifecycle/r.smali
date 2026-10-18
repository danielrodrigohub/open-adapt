.class public final Landroidx/lifecycle/r;
.super Landroidx/lifecycle/i;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/r$a;
    }
.end annotation


# instance fields
.field public b:Lm/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/a<",
            "Landroidx/lifecycle/p;",
            "Landroidx/lifecycle/r$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/lifecycle/i$c;

.field public final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/q;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/i$c;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/i;-><init>()V

    .line 2
    new-instance v0, Lm/a;

    invoke-direct {v0}, Lm/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/r;->b:Lm/a;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/lifecycle/r;->e:I

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/r;->f:Z

    .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/r;->g:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/r;->h:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/r;->d:Ljava/lang/ref/WeakReference;

    .line 8
    sget-object p1, Landroidx/lifecycle/i$c;->i:Landroidx/lifecycle/i$c;

    iput-object p1, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroidx/lifecycle/r;->i:Z

    return-void
.end method

.method public static g(Landroidx/lifecycle/i$c;Landroidx/lifecycle/i$c;)Landroidx/lifecycle/i$c;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/p;)V
    .locals 6

    const-string v0, "addObserver"

    .line 1
    invoke-virtual {p0, v0}, Landroidx/lifecycle/r;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    sget-object v1, Landroidx/lifecycle/i$c;->h:Landroidx/lifecycle/i$c;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/i$c;->i:Landroidx/lifecycle/i$c;

    .line 3
    :goto_0
    new-instance v0, Landroidx/lifecycle/r$a;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/r$a;-><init>(Landroidx/lifecycle/p;Landroidx/lifecycle/i$c;)V

    .line 4
    iget-object v1, p0, Landroidx/lifecycle/r;->b:Lm/a;

    invoke-virtual {v1, p1, v0}, Lm/a;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/r$a;

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/r;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/q;

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    iget v2, p0, Landroidx/lifecycle/r;->e:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroidx/lifecycle/r;->f:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    .line 7
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/r;->d(Landroidx/lifecycle/p;)Landroidx/lifecycle/i$c;

    move-result-object v4

    .line 8
    iget v5, p0, Landroidx/lifecycle/r;->e:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/lifecycle/r;->e:I

    .line 9
    :goto_3
    iget-object v5, v0, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_6

    iget-object v4, p0, Landroidx/lifecycle/r;->b:Lm/a;

    .line 10
    invoke-virtual {v4, p1}, Lm/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 11
    iget-object v4, v0, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    invoke-virtual {p0, v4}, Landroidx/lifecycle/r;->j(Landroidx/lifecycle/i$c;)V

    .line 12
    iget-object v4, v0, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    invoke-static {v4}, Landroidx/lifecycle/i$b;->i(Landroidx/lifecycle/i$c;)Landroidx/lifecycle/i$b;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 13
    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/r$a;->a(Landroidx/lifecycle/q;Landroidx/lifecycle/i$b;)V

    .line 14
    invoke-virtual {p0}, Landroidx/lifecycle/r;->i()V

    .line 15
    invoke-virtual {p0, p1}, Landroidx/lifecycle/r;->d(Landroidx/lifecycle/p;)Landroidx/lifecycle/i$c;

    move-result-object v4

    goto :goto_3

    .line 16
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "no event up from "

    .line 17
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    iget-object v0, v0, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-nez v2, :cond_7

    .line 19
    invoke-virtual {p0}, Landroidx/lifecycle/r;->l()V

    .line 20
    :cond_7
    iget p1, p0, Landroidx/lifecycle/r;->e:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/lifecycle/r;->e:I

    return-void
.end method

.method public final b()Landroidx/lifecycle/i$c;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    return-object v0
.end method

.method public final c(Landroidx/lifecycle/p;)V
    .locals 1

    const-string v0, "removeObserver"

    .line 1
    invoke-virtual {p0, v0}, Landroidx/lifecycle/r;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/r;->b:Lm/a;

    invoke-virtual {v0, p1}, Lm/a;->n(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Landroidx/lifecycle/p;)Landroidx/lifecycle/i$c;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/r;->b:Lm/a;

    .line 2
    invoke-virtual {v0, p1}, Lm/a;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lm/a;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm/b$c;

    iget-object p1, p1, Lm/b$c;->k:Lm/b$c;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Lm/b$c;->i:Ljava/lang/Object;

    .line 5
    check-cast p1, Landroidx/lifecycle/r$a;

    iget-object p1, p1, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    goto :goto_1

    :cond_1
    move-object p1, v2

    .line 6
    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/lifecycle/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/i$c;

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    invoke-static {v0, p1}, Landroidx/lifecycle/r;->g(Landroidx/lifecycle/i$c;Landroidx/lifecycle/i$c;)Landroidx/lifecycle/i$c;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/lifecycle/r;->g(Landroidx/lifecycle/i$c;Landroidx/lifecycle/i$c;)Landroidx/lifecycle/i$c;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/r;->i:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ll/a;->c()Ll/a;

    move-result-object v0

    invoke-virtual {v0}, Ll/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method "

    const-string v2, " must be called on the main thread"

    .line 4
    invoke-static {v1, p1, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final f(Landroidx/lifecycle/i$b;)V
    .locals 1

    const-string v0, "handleLifecycleEvent"

    .line 1
    invoke-virtual {p0, v0}, Landroidx/lifecycle/r;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/lifecycle/i$b;->g()Landroidx/lifecycle/i$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/r;->h(Landroidx/lifecycle/i$c;)V

    return-void
.end method

.method public final h(Landroidx/lifecycle/i$c;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/lifecycle/i$c;->h:Landroidx/lifecycle/i$c;

    iget-object v1, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    if-ne v1, p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v2, Landroidx/lifecycle/i$c;->i:Landroidx/lifecycle/i$c;

    if-ne v1, v2, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no event down from "

    .line 4
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    .line 7
    iget-boolean p1, p0, Landroidx/lifecycle/r;->f:Z

    const/4 v1, 0x1

    if-nez p1, :cond_5

    iget p1, p0, Landroidx/lifecycle/r;->e:I

    if-eqz p1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    iput-boolean v1, p0, Landroidx/lifecycle/r;->f:Z

    .line 9
    invoke-virtual {p0}, Landroidx/lifecycle/r;->l()V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroidx/lifecycle/r;->f:Z

    .line 11
    iget-object p1, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    if-ne p1, v0, :cond_4

    .line 12
    new-instance p1, Lm/a;

    invoke-direct {p1}, Lm/a;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/r;->b:Lm/a;

    :cond_4
    return-void

    .line 13
    :cond_5
    :goto_1
    iput-boolean v1, p0, Landroidx/lifecycle/r;->g:Z

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final j(Landroidx/lifecycle/i$c;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k()V
    .locals 2

    sget-object v0, Landroidx/lifecycle/i$c;->j:Landroidx/lifecycle/i$c;

    const-string v1, "setCurrentState"

    .line 1
    invoke-virtual {p0, v1}, Landroidx/lifecycle/r;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Landroidx/lifecycle/r;->h(Landroidx/lifecycle/i$c;)V

    return-void
.end method

.method public final l()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/r;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/q;

    if-eqz v0, :cond_9

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/r;->b:Lm/a;

    .line 3
    iget v2, v1, Lm/b;->k:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v1, Lm/b;->h:Lm/b$c;

    .line 5
    invoke-virtual {v1}, Lm/b$c;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/r$a;

    iget-object v1, v1, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    .line 6
    iget-object v2, p0, Landroidx/lifecycle/r;->b:Lm/a;

    .line 7
    iget-object v2, v2, Lm/b;->i:Lm/b$c;

    .line 8
    invoke-virtual {v2}, Lm/b$c;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/r$a;

    iget-object v2, v2, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    if-ne v1, v2, :cond_2

    .line 9
    iget-object v1, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    if-nez v3, :cond_8

    .line 10
    iput-boolean v4, p0, Landroidx/lifecycle/r;->g:Z

    .line 11
    iget-object v1, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    iget-object v2, p0, Landroidx/lifecycle/r;->b:Lm/a;

    .line 12
    iget-object v2, v2, Lm/b;->h:Lm/b$c;

    .line 13
    iget-object v2, v2, Lm/b$c;->i:Ljava/lang/Object;

    .line 14
    check-cast v2, Landroidx/lifecycle/r$a;

    iget-object v2, v2, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_5

    .line 15
    iget-object v1, p0, Landroidx/lifecycle/r;->b:Lm/a;

    .line 16
    new-instance v2, Lm/b$b;

    iget-object v3, v1, Lm/b;->i:Lm/b$c;

    iget-object v4, v1, Lm/b;->h:Lm/b$c;

    invoke-direct {v2, v3, v4}, Lm/b$b;-><init>(Lm/b$c;Lm/b$c;)V

    .line 17
    iget-object v1, v1, Lm/b;->j:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_3
    invoke-virtual {v2}, Lm/b$e;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroidx/lifecycle/r;->g:Z

    if-nez v1, :cond_5

    .line 19
    invoke-virtual {v2}, Lm/b$e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/r$a;

    .line 21
    :goto_1
    iget-object v4, v3, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    iget-object v5, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v4, p0, Landroidx/lifecycle/r;->g:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Landroidx/lifecycle/r;->b:Lm/a;

    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/p;

    invoke-virtual {v4, v5}, Lm/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 23
    iget-object v4, v3, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    invoke-static {v4}, Landroidx/lifecycle/i$b;->b(Landroidx/lifecycle/i$c;)Landroidx/lifecycle/i$b;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 24
    invoke-virtual {v4}, Landroidx/lifecycle/i$b;->g()Landroidx/lifecycle/i$c;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/lifecycle/r;->j(Landroidx/lifecycle/i$c;)V

    .line 25
    invoke-virtual {v3, v0, v4}, Landroidx/lifecycle/r$a;->a(Landroidx/lifecycle/q;Landroidx/lifecycle/i$b;)V

    .line 26
    invoke-virtual {p0}, Landroidx/lifecycle/r;->i()V

    goto :goto_1

    .line 27
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no event down from "

    .line 28
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29
    iget-object v2, v3, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_5
    iget-object v1, p0, Landroidx/lifecycle/r;->b:Lm/a;

    .line 31
    iget-object v1, v1, Lm/b;->i:Lm/b$c;

    .line 32
    iget-boolean v2, p0, Landroidx/lifecycle/r;->g:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    .line 33
    iget-object v1, v1, Lm/b$c;->i:Ljava/lang/Object;

    .line 34
    check-cast v1, Landroidx/lifecycle/r$a;

    iget-object v1, v1, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 35
    iget-object v1, p0, Landroidx/lifecycle/r;->b:Lm/a;

    .line 36
    invoke-virtual {v1}, Lm/b;->k()Lm/b$d;

    move-result-object v1

    .line 37
    :cond_6
    invoke-virtual {v1}, Lm/b$d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroidx/lifecycle/r;->g:Z

    if-nez v2, :cond_0

    .line 38
    invoke-virtual {v1}, Lm/b$d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/r$a;

    .line 40
    :goto_2
    iget-object v4, v3, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    iget-object v5, p0, Landroidx/lifecycle/r;->c:Landroidx/lifecycle/i$c;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_6

    iget-boolean v4, p0, Landroidx/lifecycle/r;->g:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Landroidx/lifecycle/r;->b:Lm/a;

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/p;

    invoke-virtual {v4, v5}, Lm/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 42
    iget-object v4, v3, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    invoke-virtual {p0, v4}, Landroidx/lifecycle/r;->j(Landroidx/lifecycle/i$c;)V

    .line 43
    iget-object v4, v3, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    invoke-static {v4}, Landroidx/lifecycle/i$b;->i(Landroidx/lifecycle/i$c;)Landroidx/lifecycle/i$b;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 44
    invoke-virtual {v3, v0, v4}, Landroidx/lifecycle/r$a;->a(Landroidx/lifecycle/q;Landroidx/lifecycle/i$b;)V

    .line 45
    invoke-virtual {p0}, Landroidx/lifecycle/r;->i()V

    goto :goto_2

    .line 46
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no event up from "

    .line 47
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    iget-object v2, v3, Landroidx/lifecycle/r$a;->a:Landroidx/lifecycle/i$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_8
    iput-boolean v4, p0, Landroidx/lifecycle/r;->g:Z

    return-void

    .line 50
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
