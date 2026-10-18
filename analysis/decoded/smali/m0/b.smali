.class public final synthetic Lm0/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm0/e;
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lm0/b;->b:I

    iput-object p1, p0, Lm0/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lm0/f;ILandroid/os/Bundle;)Z
    .locals 7

    iget-object v0, p0, Lm0/b;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x19

    if-lt v1, v4, :cond_1

    and-int/2addr p2, v3

    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    iget-object p2, p1, Lm0/f;->a:Lm0/f$c;

    invoke-interface {p2}, Lm0/f$c;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object p2, p1, Lm0/f;->a:Lm0/f$c;

    invoke-interface {p2}, Lm0/f$c;->b()Ljava/lang/Object;

    move-result-object p2

    .line 4
    check-cast p2, Landroid/view/inputmethod/InputContentInfo;

    if-nez p3, :cond_0

    .line 5
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v4

    :goto_0
    const-string v4, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 6
    invoke-virtual {p3, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "InputConnectionCompat"

    const-string p3, "Can\'t insert content from IME; requestPermission() failed"

    .line 7
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 8
    :cond_1
    :goto_1
    new-instance p2, Landroid/content/ClipData;

    .line 9
    iget-object v4, p1, Lm0/f;->a:Lm0/f$c;

    invoke-interface {v4}, Lm0/f$c;->a()Landroid/content/ClipDescription;

    move-result-object v4

    .line 10
    new-instance v5, Landroid/content/ClipData$Item;

    .line 11
    iget-object v6, p1, Lm0/f;->a:Lm0/f$c;

    invoke-interface {v6}, Lm0/f$c;->c()Landroid/net/Uri;

    move-result-object v6

    .line 12
    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p2, v4, v5}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    const/4 v4, 0x2

    const/16 v5, 0x1f

    if-lt v1, v5, :cond_2

    .line 13
    new-instance v1, Lj0/c$a;

    invoke-direct {v1, p2, v4}, Lj0/c$a;-><init>(Landroid/content/ClipData;I)V

    goto :goto_2

    .line 14
    :cond_2
    new-instance v1, Lj0/c$c;

    invoke-direct {v1, p2, v4}, Lj0/c$c;-><init>(Landroid/content/ClipData;I)V

    .line 15
    :goto_2
    iget-object p1, p1, Lm0/f;->a:Lm0/f$c;

    invoke-interface {p1}, Lm0/f$c;->e()Landroid/net/Uri;

    move-result-object p1

    .line 16
    invoke-interface {v1, p1}, Lj0/c$b;->c(Landroid/net/Uri;)V

    .line 17
    invoke-interface {v1, p3}, Lj0/c$b;->b(Landroid/os/Bundle;)V

    .line 18
    invoke-interface {v1}, Lj0/c$b;->a()Lj0/c;

    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Lj0/a0;->l(Landroid/view/View;Lj0/c;)Lj0/c;

    move-result-object p1

    if-nez p1, :cond_3

    move v2, v3

    :cond_3
    :goto_3
    return v2
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lm0/b;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lm0/b;->c:Ljava/lang/Object;

    check-cast v0, Ln5/t;

    check-cast p1, Ln3/o1$c;

    .line 1
    invoke-interface {p1, v0}, Ln3/o1$c;->b(Ln5/t;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lm0/b;->c:Ljava/lang/Object;

    check-cast v0, Ln3/l1;

    check-cast p1, Ln3/o1$c;

    .line 3
    invoke-static {v0}, Ln3/k0;->o0(Ln3/l1;)Z

    move-result v0

    invoke-interface {p1, v0}, Ln3/o1$c;->o0(Z)V

    return-void

    .line 4
    :goto_0
    check-cast p1, Lo3/b;

    .line 5
    invoke-interface {p1}, Lo3/b;->C0()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
