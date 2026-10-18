.class public final Lx9/l;
.super Lx9/b;
.source "PermissionConditionalCheck.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx9/b<",
        "Lv9/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lw9/a;

.field public final b:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/l0;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lv9/l0;

.field public final e:Z

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lw9/a;Lqd/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/l0;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "publishConditionError"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lx9/b;-><init>()V

    .line 2
    iput-object p2, p0, Lx9/l;->a:Lw9/a;

    .line 3
    iput-object p3, p0, Lx9/l;->b:Lqd/l;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    .line 6
    sget-object v2, Lv9/t;->a:Lv9/t;

    invoke-virtual {v2}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lx9/l;->c:Ljava/util/ArrayList;

    .line 7
    new-instance p1, Lv9/l0;

    .line 8
    iget-object p3, p0, Lx9/l;->a:Lw9/a;

    .line 9
    invoke-direct {p1, p3, p2}, Lv9/l0;-><init>(Lw9/a;Ljava/util/List;)V

    iput-object p1, p0, Lx9/l;->d:Lv9/l0;

    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lx9/l;->e:Z

    const-string p1, "PermissionConditionalCheck"

    .line 11
    iput-object p1, p0, Lx9/l;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lw9/a;
    .locals 1

    iget-object v0, p0, Lx9/l;->a:Lw9/a;

    return-object v0
.end method

.method public final b()Lv9/m;
    .locals 1

    iget-object v0, p0, Lx9/l;->d:Lv9/l0;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx9/l;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lx9/l;->e:Z

    return v0
.end method

.method public final e()Lqd/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/l<",
            "Lv9/l0;",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx9/l;->b:Lqd/l;

    return-object v0
.end method
