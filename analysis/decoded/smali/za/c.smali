.class public final Lza/c;
.super Lrd/o;
.source "AdaptKitCoreRF.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroid/content/Intent;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lia/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lia/a<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lza/a;

.field public final synthetic j:Lnc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/c<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lia/a;Lza/a;Lnc/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lia/a<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/lang/Object;",
            ">;",
            "Lza/a;",
            "Lnc/c<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lza/c;->h:Lia/a;

    iput-object p2, p0, Lza/c;->i:Lza/a;

    iput-object p3, p0, Lza/c;->j:Lnc/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Landroid/content/Intent;

    const-string v0, "intent"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lza/c;->h:Lia/a;

    .line 4
    sget-object v1, Lv9/t;->a:Lv9/t;

    invoke-virtual {v1}, Lv9/t;->f()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lza/c;->i:Lza/a;

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lea/m;

    .line 6
    iget-object v4, v3, Lea/m;->h:Ljava/lang/String;

    .line 7
    iget-object v5, v2, Lza/a;->i:Ljava/lang/String;

    .line 8
    invoke-static {v4, v5}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    iget-object v1, p0, Lza/c;->i:Lza/a;

    .line 10
    iget-object v1, v1, Lza/a;->m:Lw9/u1;

    .line 11
    iget-object v2, p0, Lza/c;->j:Lnc/c;

    invoke-interface {v2}, Lnc/c;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 12
    invoke-virtual {v0, p1, v3, v1, v2}, Lia/a;->e(Landroid/content/Intent;Lea/m;Lw9/u1;Ljava/lang/Object;)V

    .line 13
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 14
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Collection contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
