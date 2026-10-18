.class public final Lya/e;
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

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lya/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lya/e;->h:Lya/d;

    iput-object p2, p0, Lya/e;->i:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Laa/a;->a()Z

    move-result v0

    const-string v1, "try {\n                  \u2026                        }"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lya/e;->h:Lya/d;

    .line 3
    invoke-virtual {v0}, Lya/d;->k0()Lic/s;

    move-result-object v2

    .line 4
    sget-object v0, Lv9/t;->a:Lv9/t;

    invoke-virtual {v0}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v3

    iget-object v0, p0, Lya/e;->h:Lya/d;

    .line 5
    iget-object v4, v0, Lya/d;->f:Ljava/lang/String;

    .line 6
    iget-object v5, p0, Lya/e;->i:Ljava/lang/String;

    .line 7
    iget-object v6, v0, Lya/d;->A:Lhc/l0;

    .line 8
    :try_start_0
    iget-object v0, v0, Lya/d;->b:Lea/b;

    .line 9
    iget-object v0, v0, Lea/b;->l:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lg7/b;->f(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11
    :catchall_0
    sget-object v0, Lhc/b;->j:[B

    :goto_0
    move-object v7, v0

    .line 12
    invoke-static {v7, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface/range {v2 .. v7}, Lic/s;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lhc/l0;[B)Z

    goto :goto_2

    .line 14
    :cond_0
    iget-object v0, p0, Lya/e;->h:Lya/d;

    .line 15
    invoke-virtual {v0}, Lya/d;->k0()Lic/s;

    move-result-object v2

    .line 16
    sget-object v0, Lv9/t;->a:Lv9/t;

    invoke-virtual {v0}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v3

    iget-object v0, p0, Lya/e;->h:Lya/d;

    .line 17
    iget-object v4, v0, Lya/d;->f:Ljava/lang/String;

    .line 18
    iget-object v5, p0, Lya/e;->i:Ljava/lang/String;

    .line 19
    iget-object v6, v0, Lya/d;->A:Lhc/l0;

    .line 20
    :try_start_1
    iget-object v0, v0, Lya/d;->b:Lea/b;

    .line 21
    iget-object v0, v0, Lea/b;->l:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Lg7/b;->f(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 23
    :catchall_1
    sget-object v0, Lhc/b;->j:[B

    :goto_1
    move-object v7, v0

    .line 24
    invoke-static {v7, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface/range {v2 .. v7}, Lic/s;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lhc/l0;[B)Z

    .line 26
    :goto_2
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
