.class public final Lad/d$a;
.super Lrd/o;
.source "PersistenceProviderImpl.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lad/d;->a()Lyc/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Ljava/util/List<",
        "+",
        "Lyc/a$b;",
        ">;",
        "Lzc/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lad/d;


# direct methods
.method public constructor <init>(Lad/d;)V
    .locals 0

    iput-object p1, p0, Lad/d$a;->h:Lad/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "options"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lbd/f;

    .line 4
    iget-object v1, p0, Lad/d$a;->h:Lad/d;

    .line 5
    iget-object v2, v1, Lad/d;->a:Landroid/content/Context;

    .line 6
    iget-object v3, v1, Lad/d;->b:Lad/e;

    .line 7
    invoke-static {v1, p1}, Lad/d;->b(Lad/d;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 8
    new-instance v5, Lcd/a;

    iget-object v6, v1, Lad/d;->b:Lad/e;

    invoke-interface {v6}, Lad/e;->a()Lcd/e$a;

    move-result-object v6

    new-instance v7, Lbd/e;

    iget-object v1, v1, Lad/d;->b:Lad/e;

    invoke-interface {v1}, Lad/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lbd/e;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7}, Lgd/n;->h0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lcd/a;-><init>(Lcd/e$a;Ljava/util/List;)V

    .line 9
    iget-object v1, p0, Lad/d$a;->h:Lad/d;

    invoke-static {v1, p1}, Lad/d;->b(Lad/d;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-direct {v0, v2, v3, v5, p1}, Lbd/f;-><init>(Landroid/content/Context;Lbd/a;Lcd/a;Ljava/util/List;)V

    return-object v0
.end method
