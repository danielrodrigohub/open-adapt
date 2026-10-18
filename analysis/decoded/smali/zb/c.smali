.class public final Lzb/c;
.super Ljava/lang/Object;
.source "OIDCAuthBrowser.kt"


# direct methods
.method public static final a(Ltb/c;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 7

    .line 1
    new-instance v0, Ln/c;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2
    :try_start_0
    iget-object p1, p0, Ltb/c;->c:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object p1, Lub/a;->Companion:Lub/a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "info: "

    const-string v4, "Interrupted while waiting for browser connection"

    .line 4
    invoke-static {v3, v4}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lub/a$a;->a(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Ltb/c;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    :goto_0
    iget-object p0, p0, Ltb/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln/b;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    goto :goto_3

    .line 7
    :cond_0
    new-instance v3, Ln/a;

    invoke-direct {v3}, Ln/a;-><init>()V

    .line 8
    :try_start_1
    iget-object v4, p0, Ln/b;->a:La/b;

    invoke-interface {v4, v3}, La/b;->d(La/a;)Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance v4, Ln/e;

    iget-object v5, p0, Ln/b;->a:La/b;

    iget-object p0, p0, Ln/b;->b:Landroid/content/ComponentName;

    invoke-direct {v4, v5, v3, p0}, Ln/e;-><init>(La/b;La/a;Landroid/content/ComponentName;)V

    goto :goto_2

    :catch_1
    :goto_1
    move-object v4, p1

    :goto_2
    if-nez v4, :cond_2

    const-string p0, "Failed to create custom tabs session through custom tabs client"

    .line 10
    invoke-static {p0}, Lub/a;->a(Ljava/lang/String;)V

    :goto_3
    move-object v4, p1

    goto :goto_4

    .line 11
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    aget-object v1, v1, v2

    .line 12
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 13
    iget-object v5, v4, Ln/e;->d:Landroid/app/PendingIntent;

    if-eqz v5, :cond_3

    const-string v6, "android.support.customtabs.extra.SESSION_ID"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14
    :cond_3
    :try_start_2
    iget-object v5, v4, Ln/e;->a:La/b;

    iget-object v6, v4, Ln/e;->b:La/a;

    invoke-interface {v5, v6, v1, v3, p0}, La/b;->a(La/a;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 15
    :catch_2
    :goto_4
    invoke-direct {v0, v4}, Ln/c;-><init>(Ln/e;)V

    .line 16
    iget-object p0, v0, Ln/c;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.SESSION"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 17
    invoke-virtual {v0, p1, p1}, Ln/c;->a(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 18
    :cond_4
    iget-object p0, v0, Ln/c;->a:Landroid/content/Intent;

    iget-boolean p1, v0, Ln/c;->c:Z

    const-string v1, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    iget-object p0, v0, Ln/c;->a:Landroid/content/Intent;

    iget-object p1, v0, Ln/c;->b:Ld3/e;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 22
    iget-object p0, v0, Ln/c;->a:Landroid/content/Intent;

    const-string p1, "androidx.browser.customtabs.extra.SHARE_STATE"

    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    iget-object p0, v0, Ln/c;->a:Landroid/content/Intent;

    const-string p1, "this.createTabBuilder(possibleUri).build().intent"

    .line 24
    invoke-static {p0, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Landroidx/fragment/app/p;Landroid/content/Intent;Ljd/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/p;",
            "Landroid/content/Intent;",
            "Ljd/d<",
            "-",
            "Landroidx/activity/result/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lzb/c$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lzb/c$a;

    iget v1, v0, Lzb/c$a;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lzb/c$a;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lzb/c$a;

    invoke-direct {v0, p2}, Lzb/c$a;-><init>(Ljd/d;)V

    :goto_0
    iget-object p2, v0, Lzb/c$a;->k:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lzb/c$a;->l:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lzb/c$a;->j:Lrd/w;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lrd/w;

    invoke-direct {p2}, Lrd/w;-><init>()V

    .line 5
    iput-object p0, v0, Lzb/c$a;->h:Landroidx/fragment/app/p;

    iput-object p1, v0, Lzb/c$a;->i:Landroid/content/Intent;

    iput-object p2, v0, Lzb/c$a;->j:Lrd/w;

    iput v3, v0, Lzb/c$a;->l:I

    new-instance v2, Ljd/i;

    invoke-static {v0}, Landroidx/lifecycle/o;->t(Ljd/d;)Ljd/d;

    move-result-object v0

    invoke-direct {v2, v0}, Ljd/i;-><init>(Ljd/d;)V

    .line 6
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->o:Landroidx/activity/ComponentActivity$b;

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v3, Le/c;

    invoke-direct {v3}, Le/c;-><init>()V

    .line 9
    new-instance v4, Lzb/c$b;

    invoke-direct {v4, v2}, Lzb/c$b;-><init>(Ljd/d;)V

    .line 10
    invoke-virtual {p0, v0, v3, v4}, Landroidx/activity/result/d;->d(Ljava/lang/String;Le/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p0

    iput-object p0, p2, Lrd/w;->h:Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, p1}, Landroidx/activity/result/c;->a(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v2}, Ljd/i;->a()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, p2

    move-object p2, p0

    move-object p0, v5

    .line 13
    :goto_1
    move-object p1, p2

    check-cast p1, Landroidx/activity/result/a;

    .line 14
    iget-object p0, p0, Lrd/w;->h:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/result/c;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/activity/result/c;->b()V

    :goto_2
    return-object p2
.end method
