.class public final Lya/t;
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
.field public final synthetic h:Lya/d;

.field public final synthetic i:Lv9/f;


# direct methods
.method public constructor <init>(Lya/d;Lv9/f;)V
    .locals 0

    iput-object p1, p0, Lya/t;->h:Lya/d;

    iput-object p2, p0, Lya/t;->i:Lv9/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lya/t;->h:Lya/d;

    .line 2
    iget-object v0, v0, Lya/d;->o:Lxa/b;

    .line 3
    sget-object v1, Lv9/t;->a:Lv9/t;

    invoke-virtual {v1}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lya/t;->h:Lya/d;

    .line 5
    iget-object v2, v2, Lya/d;->f:Ljava/lang/String;

    .line 6
    new-instance v3, Lya/s;

    iget-object v4, p0, Lya/t;->i:Lv9/f;

    invoke-direct {v3, v4}, Lya/s;-><init>(Lv9/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lxa/b;->b(Landroid/content/Context;Ljava/lang/String;Lqd/l;)V

    .line 7
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
