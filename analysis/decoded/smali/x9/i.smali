.class public final Lx9/i;
.super Lx9/b;
.source "ModeExistsConditionalCheck.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx9/b<",
        "Lv9/y;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lw9/a;

.field public final b:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/y;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lv9/y;

.field public final d:Z


# direct methods
.method public constructor <init>(Lw9/a;Lea/e;Lea/m;Lqd/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lea/e;",
            "Lea/m;",
            "Lqd/l<",
            "-",
            "Lv9/y;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adaptKitDeviceMode"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitPairedDevices"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publishConditionError"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lx9/b;-><init>()V

    .line 2
    iput-object p1, p0, Lx9/i;->a:Lw9/a;

    .line 3
    iput-object p4, p0, Lx9/i;->b:Lqd/l;

    .line 4
    new-instance p4, Lv9/y;

    .line 5
    iget-object p1, p1, Lw9/a;->h:Lv9/a;

    .line 6
    iget-object v0, p2, Lea/e;->h:Ljava/lang/String;

    const-string v1, "The mode with "

    const-string v2, " already exists"

    .line 7
    invoke-static {v1, v0, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {p4, p1, v0}, Lv9/y;-><init>(Lv9/a;Ljava/lang/String;)V

    iput-object p4, p0, Lx9/i;->c:Lv9/y;

    .line 9
    iget-object p1, p3, Lea/m;->o:Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Lea/e;

    .line 11
    iget-object p4, p4, Lea/e;->h:Ljava/lang/String;

    .line 12
    iget-object v0, p2, Lea/e;->h:Ljava/lang/String;

    .line 13
    invoke-static {p4, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lx9/i;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lw9/a;
    .locals 1

    iget-object v0, p0, Lx9/i;->a:Lw9/a;

    return-object v0
.end method

.method public final b()Lv9/m;
    .locals 1

    iget-object v0, p0, Lx9/i;->c:Lv9/y;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "ModeExistsConditionalCheck"

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lx9/i;->d:Z

    return v0
.end method

.method public final e()Lqd/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/l<",
            "Lv9/y;",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx9/i;->b:Lqd/l;

    return-object v0
.end method
