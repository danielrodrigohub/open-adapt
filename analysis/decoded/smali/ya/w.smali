.class public final Lya/w;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lv9/g;

.field public final synthetic i:Lya/d;


# direct methods
.method public constructor <init>(Lv9/g;Lya/d;)V
    .locals 0

    iput-object p1, p0, Lya/w;->h:Lv9/g;

    iput-object p2, p0, Lya/w;->i:Lya/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lya/w;->h:Lv9/g;

    instance-of v1, v0, Lv9/f2;

    if-eqz v1, :cond_0

    .line 2
    move-object v1, v0

    check-cast v1, Lv9/f2;

    .line 3
    iget-object v2, v1, Lv9/f2;->m:Lv9/e;

    .line 4
    sget-object v3, Lv9/e;->o:Lv9/e;

    if-ne v2, v3, :cond_0

    .line 5
    sget-object v0, Lv9/e;->p:Lv9/e;

    .line 6
    iget-object v1, v1, Lv9/f2;->l:Ljava/lang/String;

    const-string v2, "id"

    .line 7
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lv9/f2;

    invoke-direct {v2, v1, v0}, Lv9/f2;-><init>(Ljava/lang/String;Lv9/e;)V

    move-object v0, v2

    .line 8
    :cond_0
    iget-object v1, p0, Lya/w;->i:Lya/d;

    .line 9
    iget-object v1, v1, Lya/d;->o:Lxa/b;

    .line 10
    sget-object v2, Lv9/t;->a:Lv9/t;

    invoke-virtual {v2}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lya/w;->i:Lya/d;

    .line 12
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 13
    new-instance v4, Lya/v;

    invoke-direct {v4, v0}, Lya/v;-><init>(Lv9/g;)V

    invoke-virtual {v1, v2, v3, v4}, Lxa/b;->b(Landroid/content/Context;Ljava/lang/String;Lqd/l;)V

    .line 14
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
