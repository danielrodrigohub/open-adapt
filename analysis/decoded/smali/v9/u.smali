.class public final Lv9/u;
.super Ljava/lang/Object;
.source "AdaptKitModule.kt"

# interfaces
.implements Lv9/o0;


# instance fields
.field public a:Z

.field public final synthetic b:Lv9/o0;


# direct methods
.method public constructor <init>(Lv9/o0;)V
    .locals 0

    iput-object p1, p0, Lv9/u;->b:Lv9/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv9/u;->b:Lv9/o0;

    invoke-interface {v0}, Lv9/o0;->a()V

    .line 2
    iget-boolean v0, p0, Lv9/u;->a:Z

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lya/a;->a:Lya/a;

    .line 4
    sget-object v0, Lya/a;->b:Ljava/util/LinkedHashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lya/b;

    .line 7
    instance-of v2, v1, Lya/d;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lya/d;

    invoke-virtual {v2}, Lya/d;->j0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    sget-object v2, Lv9/a;->i:Lv9/a$a;

    .line 9
    sget-object v2, Lv9/a;->l:Lv9/a;

    .line 10
    invoke-interface {v1, v2}, Lya/b;->s(Lv9/a;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lv9/u;->a:Z

    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lja/b;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lja/b;->c()Landroid/support/v4/media/a;

    move-result-object v0

    instance-of v0, v0, Lja/d;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lv9/u;->a:Z

    .line 3
    sget-object v1, Lya/a;->a:Lya/a;

    .line 4
    sget-object v1, Lya/a;->b:Ljava/util/LinkedHashMap;

    .line 5
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lya/b;

    .line 7
    sget-object v3, Lv9/a;->i:Lv9/a$a;

    .line 8
    sget-object v3, Lv9/a;->j:Lv9/a;

    .line 9
    invoke-interface {v2, v3}, Lya/b;->f(Lv9/a;)V

    .line 10
    instance-of v3, v2, Lya/d;

    if-eqz v3, :cond_0

    .line 11
    check-cast v2, Lya/d;

    .line 12
    iput-boolean v0, v2, Lya/d;->g:Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lv9/u;->b:Lv9/o0;

    invoke-interface {v0, p1}, Lv9/o0;->c(Lja/b;)V

    return-void
.end method
