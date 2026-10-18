.class public final Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c$a;
.super Lld/i;
.source "DeepLinkRoutingActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.ui.DeepLinkRoutingActivity$onCreate$3$1"
    f = "DeepLinkRoutingActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/DeepLinkRoutingActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/DeepLinkRoutingActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/DeepLinkRoutingActivity;",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c$a;->h:Lcom/nike/adapt/ui/DeepLinkRoutingActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c$a;

    iget-object v0, p0, Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c$a;->h:Lcom/nike/adapt/ui/DeepLinkRoutingActivity;

    invoke-direct {p1, v0, p2}, Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c$a;-><init>(Lcom/nike/adapt/ui/DeepLinkRoutingActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {p1}, Lcom/nike/adapt/BigfootApplication$e;->c()Lg8/a;

    move-result-object p1

    invoke-virtual {p1}, Lg8/a;->a()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    .line 3
    iget-object p1, p0, Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c$a;->h:Lcom/nike/adapt/ui/DeepLinkRoutingActivity;

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c$a;->h:Lcom/nike/adapt/ui/DeepLinkRoutingActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/nike/adapt/ui/DeepLinkRoutingActivity$c$a;->h:Lcom/nike/adapt/ui/DeepLinkRoutingActivity;

    const-string v4, "activity"

    .line 7
    invoke-static {v3, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v4, Lr7/a;->j:Lr7/a$a;

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v6, :cond_a

    .line 9
    invoke-static {v6}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 10
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v0

    move v8, v4

    move v9, v8

    :goto_1
    if-gt v8, v7, :cond_6

    if-nez v9, :cond_1

    move v10, v8

    goto :goto_2

    :cond_1
    move v10, v7

    .line 11
    :goto_2
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    .line 12
    invoke-static {v10, v11}, Lp4/h;->l(II)I

    move-result v10

    if-gtz v10, :cond_2

    move v10, v0

    goto :goto_3

    :cond_2
    move v10, v4

    :goto_3
    if-nez v9, :cond_4

    if-nez v10, :cond_3

    move v9, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_6
    :goto_4
    add-int/2addr v7, v0

    .line 13
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 14
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NULL"

    .line 15
    invoke-static {v8, v7}, Lyd/o;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    move v7, v4

    goto :goto_6

    :cond_8
    :goto_5
    move v7, v0

    :goto_6
    if-nez v7, :cond_a

    .line 16
    invoke-static {}, Lr7/a;->values()[Lr7/a;

    move-result-object v7

    array-length v8, v7

    move v9, v4

    :goto_7
    if-ge v9, v8, :cond_a

    aget-object v10, v7, v9

    .line 17
    iget-object v11, v10, Lr7/a;->h:Ljava/lang/String;

    .line 18
    invoke-static {v6, v11}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 19
    :cond_a
    sget-object v10, Lr7/a;->q:Lr7/a;

    .line 20
    :goto_8
    iget-object v6, v10, Lr7/a;->i:Lr7/f;

    if-eqz v6, :cond_e

    if-eqz v1, :cond_e

    .line 21
    invoke-virtual {v6, v3, v1}, Lr7/f;->b(Landroid/app/Activity;Landroid/net/Uri;)V

    if-eqz v2, :cond_b

    .line 22
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    :cond_b
    const-string v1, "com.google.android.googlequicksearchbox"

    .line 23
    invoke-static {v5, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v0

    goto :goto_9

    :cond_c
    const/4 v1, 0x2

    .line 24
    :goto_9
    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_a

    .line 25
    :cond_d
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v1, v10}, Lcom/nike/adapt/analytics/TrackManager;->manageGoogleVoice(Lr7/a;)V

    .line 26
    :cond_e
    :goto_a
    sget-object v1, Lr7/a;->p:Lr7/a;

    if-ne v10, v1, :cond_f

    goto :goto_b

    :cond_f
    move v0, v4

    .line 27
    :goto_b
    iput-boolean v0, p1, Lcom/nike/adapt/ui/DeepLinkRoutingActivity;->E:Z

    goto :goto_c

    .line 28
    :cond_10
    sget-object p1, Lcom/nike/adapt/ui/AdaptRestartActivity;->A:Lcom/nike/adapt/ui/AdaptRestartActivity$a;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/nike/adapt/ui/AdaptRestartActivity$a;->a(ZJ)V

    .line 29
    :goto_c
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
