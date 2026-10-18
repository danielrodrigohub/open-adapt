.class public final Ls9/y;
.super Ljava/lang/Object;
.source "ShowDialogUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls9/y$a;
    }
.end annotation


# static fields
.field public static final a:Ls9/y;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls9/y;

    invoke-direct {v0}, Ls9/y;-><init>()V

    sput-object v0, Ls9/y;->a:Ls9/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ls9/y;Landroid/app/Activity;IILqd/l;Ls9/y$a;)Landroidx/appcompat/app/d;
    .locals 9

    const v0, 0x7f11015f

    const-string v5, ""

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p0, Lo7/x;->a:Lo7/x;

    .line 3
    iget-object v1, p5, Ls9/y$a;->a:Ljava/lang/String;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogShowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 5
    new-instance p0, Lb6/b;

    const v1, 0x7f120177

    invoke-direct {p0, p1, v1}, Lb6/b;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean v1, v2, Landroidx/appcompat/app/AlertController$b;->k:Z

    const v1, 0x7f0d0065

    .line 7
    invoke-virtual {p0, v1}, Lb6/b;->g(I)Lb6/b;

    invoke-virtual {p0}, Lb6/b;->create()Landroidx/appcompat/app/d;

    move-result-object p0

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    const v1, 0x7f0a03e5

    .line 10
    invoke-virtual {p0, v1}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_0
    invoke-static {v5}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result p2

    const v1, 0x7f0a03e4

    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p0, v1}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0, v1}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p3}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lv7/m;->k:Lv7/m;

    const/4 v7, 0x0

    const/16 v8, 0x40

    move-object v1, p1

    move-object v4, v5

    invoke-static/range {v1 .. v8}, Landroidx/lifecycle/k0;->l(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lv7/m;Lqd/a;I)V

    :goto_1
    const p1, 0x7f0a03e3

    .line 14
    invoke-virtual {p0, p1}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_2
    invoke-virtual {p0, p1}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    new-instance p2, Ls9/u;

    invoke-direct {p2, p5, p4, p0}, Ls9/u;-><init>(Ls9/y$a;Lqd/l;Landroidx/appcompat/app/d;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-object p0
.end method

.method public static d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;
    .locals 11

    move-object/from16 v0, p11

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move/from16 v5, p5

    :goto_2
    and-int/lit16 v1, v1, 0x80

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_3

    :cond_3
    move/from16 v1, p8

    .line 1
    :goto_3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v7, Lo7/x;->a:Lo7/x;

    .line 3
    iget-object v8, v0, Ls9/y$a;->a:Ljava/lang/String;

    .line 4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DialogShowing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lo7/x;->a(Ljava/lang/String;)V

    .line 5
    new-instance v7, Lb6/b;

    const v8, 0x7f120177

    move-object v9, p1

    invoke-direct {v7, p1, v8}, Lb6/b;-><init>(Landroid/content/Context;I)V

    .line 6
    iget-object v8, v7, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean v1, v8, Landroidx/appcompat/app/AlertController$b;->k:Z

    const v1, 0x7f0d0062

    .line 7
    invoke-virtual {v7, v1}, Lb6/b;->g(I)Lb6/b;

    invoke-virtual {v7}, Lb6/b;->create()Landroidx/appcompat/app/d;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_4

    .line 9
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_4
    const v7, 0x7f0a0176

    .line 10
    invoke-virtual {v1, v7}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    if-eq v2, v3, :cond_6

    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const v2, 0x7f0a0174

    .line 11
    invoke-virtual {v1, v2}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {p4}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    const v2, 0x7f0a0173

    .line 12
    invoke-virtual {v1, v2}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-static/range {p6 .. p6}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    const v4, 0x7f0a0175

    .line 13
    invoke-virtual {v1, v4}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-nez v7, :cond_9

    goto :goto_7

    :cond_9
    invoke-static/range {p7 .. p7}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    if-eq v5, v3, :cond_c

    const v3, 0x7f0a0172

    .line 14
    invoke-virtual {v1, v3}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_a

    goto :goto_8

    .line 15
    :cond_a
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    if-nez v3, :cond_b

    goto :goto_9

    .line 16
    :cond_b
    invoke-static {v5}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_c
    :goto_9
    invoke-virtual {v1, v2}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_d

    new-instance v3, Ls9/v;

    move-object/from16 v5, p9

    invoke-direct {v3, v0, v5, v1}, Ls9/v;-><init>(Ls9/y$a;Lqd/l;Landroidx/appcompat/app/d;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_d
    invoke-virtual {v1, v4}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_e

    new-instance v3, Ls9/w;

    move-object/from16 v4, p10

    invoke-direct {v3, v0, v4, v1}, Ls9/w;-><init>(Ls9/y$a;Lqd/l;Landroidx/appcompat/app/d;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    return-object v1
.end method

.method public static e(Landroid/app/Activity;ZLqd/l;Lqd/l;I)Landroidx/appcompat/app/d;
    .locals 16

    sget-object v0, Ls9/y;->a:Ls9/y;

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    const/16 v2, 0x8

    and-int/lit8 v3, p4, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v10, v4

    goto :goto_1

    :cond_1
    move-object/from16 v10, p3

    :goto_1
    const-string v3, "activity"

    move-object/from16 v5, p0

    .line 1
    invoke-static {v5, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "okayOption"

    move-object/from16 v9, p2

    invoke-static {v9, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const v3, 0x7f1100b5

    goto :goto_2

    :cond_2
    const v3, 0x7f1100b8

    :goto_2
    if-eqz v1, :cond_3

    const v1, 0x7f1100b4

    goto :goto_3

    :cond_3
    const v1, 0x7f1100b6

    :goto_3
    move v6, v1

    const-string v1, "OK"

    const-string v7, "GESTURES_LOW_BATTERY"

    if-eqz v10, :cond_4

    const/4 v4, 0x0

    const/4 v8, 0x0

    const v11, 0x7f11015f

    const v12, 0x7f1101d0

    const/4 v13, 0x0

    .line 2
    new-instance v14, Ls9/y$a;

    const-string v15, "SETTINGS"

    invoke-direct {v14, v7, v1, v15, v2}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v15, 0x94

    move-object/from16 v1, p0

    move v2, v3

    move-object v3, v4

    move v4, v6

    move v5, v8

    move v6, v11

    move v7, v12

    move v8, v13

    move-object/from16 v9, p2

    move-object v11, v14

    move v12, v15

    .line 3
    invoke-static/range {v0 .. v12}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    move-result-object v0

    goto :goto_4

    :cond_4
    const v6, 0x7f1100b6

    .line 4
    new-instance v8, Ls9/y$a;

    const/16 v2, 0xc

    invoke-direct {v8, v7, v1, v4, v2}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v1, p0

    move v2, v3

    move v3, v6

    move-object/from16 v4, p2

    move-object v5, v8

    .line 5
    invoke-static/range {v0 .. v5}, Ls9/y;->c(Ls9/y;Landroid/app/Activity;IILqd/l;Ls9/y$a;)Landroidx/appcompat/app/d;

    move-result-object v0

    :goto_4
    return-object v0
.end method

.method public static f(Landroid/app/Activity;ZLqd/l;Lqd/l;I)Landroidx/appcompat/app/d;
    .locals 16

    sget-object v0, Ls9/y;->a:Ls9/y;

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    const/16 v2, 0x8

    and-int/lit8 v3, p4, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v10, v4

    goto :goto_1

    :cond_1
    move-object/from16 v10, p3

    :goto_1
    const-string v3, "activity"

    move-object/from16 v5, p0

    .line 1
    invoke-static {v5, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "okayOption"

    move-object/from16 v9, p2

    invoke-static {v9, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const v3, 0x7f1100b5

    goto :goto_2

    :cond_2
    const v3, 0x7f1100b8

    :goto_2
    if-eqz v1, :cond_3

    const v1, 0x7f1100b4

    goto :goto_3

    :cond_3
    const v1, 0x7f1100b7

    :goto_3
    move v6, v1

    const-string v1, "OK"

    const-string v7, "GESTURES_ERROR"

    if-eqz v10, :cond_4

    const/4 v4, 0x0

    const/4 v8, 0x0

    const v11, 0x7f11015f

    const v12, 0x7f1101d0

    const/4 v13, 0x0

    .line 2
    new-instance v14, Ls9/y$a;

    const-string v15, "SETTINGS"

    invoke-direct {v14, v7, v1, v15, v2}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v15, 0x94

    move-object/from16 v1, p0

    move v2, v3

    move-object v3, v4

    move v4, v6

    move v5, v8

    move v6, v11

    move v7, v12

    move v8, v13

    move-object/from16 v9, p2

    move-object v11, v14

    move v12, v15

    .line 3
    invoke-static/range {v0 .. v12}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    move-result-object v0

    goto :goto_4

    .line 4
    :cond_4
    new-instance v8, Ls9/y$a;

    const/16 v2, 0xc

    invoke-direct {v8, v7, v1, v4, v2}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v1, p0

    move v2, v3

    move v3, v6

    move-object/from16 v4, p2

    move-object v5, v8

    .line 5
    invoke-static/range {v0 .. v5}, Ls9/y;->c(Ls9/y;Landroid/app/Activity;IILqd/l;Ls9/y$a;)Landroidx/appcompat/app/d;

    move-result-object v0

    :goto_4
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/nike/adapt/ui/settings/AppIconsActivity$a;Lqd/l;)Landroidx/appcompat/app/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/nike/adapt/ui/settings/AppIconsActivity$a;",
            "Lqd/l<",
            "-",
            "Landroidx/appcompat/app/d;",
            "Lfd/o;",
            ">;)",
            "Landroidx/appcompat/app/d;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;->i:Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    if-ne p2, v0, :cond_0

    const p2, 0x7f080105

    goto :goto_0

    :cond_0
    const p2, 0x7f080106

    :goto_0
    const v0, 0x7f110048

    .line 2
    new-instance v1, Ls9/y$a;

    const/4 v2, 0x0

    const/16 v3, 0xc

    const-string v4, "APP_ICON_UPDATED_DIALOG"

    const-string v5, "OK"

    invoke-direct {v1, v4, v5, v2, v3}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    sget-object v2, Lo7/x;->a:Lo7/x;

    .line 4
    iget-object v3, v1, Ls9/y$a;->a:Ljava/lang/String;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DialogShowing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo7/x;->a(Ljava/lang/String;)V

    .line 6
    new-instance v2, Lb6/b;

    const v3, 0x7f120177

    invoke-direct {v2, p1, v3}, Lb6/b;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    .line 7
    iget-object v4, v2, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean v3, v4, Landroidx/appcompat/app/AlertController$b;->k:Z

    const v3, 0x7f0d0063

    .line 8
    invoke-virtual {v2, v3}, Lb6/b;->g(I)Lb6/b;

    invoke-virtual {v2}, Lb6/b;->create()Landroidx/appcompat/app/d;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    :cond_1
    const v3, 0x7f0a0138

    .line 11
    invoke-virtual {v2, v3}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    sget-object v4, Ly/a;->a:Ljava/lang/Object;

    .line 12
    invoke-static {p1, p2}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 13
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const p1, 0x7f0a013a

    .line 14
    invoke-virtual {v2, p1}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const p1, 0x7f0a0139

    .line 15
    invoke-virtual {v2, p1}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const v0, 0x7f11015f

    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_2
    invoke-virtual {v2, p1}, Lf/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    new-instance p2, Ls9/x;

    invoke-direct {p2, v1, p3, v2}, Ls9/x;-><init>(Ls9/y$a;Lqd/l;Landroidx/appcompat/app/d;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-object v2
.end method

.method public final b(Landroid/app/Activity;Lqd/l;Lqd/l;)Landroidx/appcompat/app/d;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lqd/l<",
            "-",
            "Landroidx/appcompat/app/d;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Landroidx/appcompat/app/d;",
            "Lfd/o;",
            ">;)",
            "Landroidx/appcompat/app/d;"
        }
    .end annotation

    const-string v0, "activity"

    move-object v2, p1

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancel"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v12, Ls9/y$a;

    const-string v0, "DATA_OPT_IN_NO_NETWORK"

    const-string v1, "TRY_AGAIN"

    const-string v3, "TRY_LATER"

    const/16 v4, 0x8

    invoke-direct {v12, v0, v1, v3, v4}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v3, 0x7f11030a

    const/4 v4, 0x0

    const v5, 0x7f110309

    const/4 v6, 0x0

    const v7, 0x7f11030b

    const v8, 0x7f11023e

    const/4 v9, 0x0

    const/16 v13, 0x94

    move-object v1, p0

    move-object/from16 v11, p2

    .line 2
    invoke-static/range {v1 .. v13}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    move-result-object v0

    return-object v0
.end method

.method public final g(Landroid/app/Activity;Lqd/l;)Landroidx/appcompat/app/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lqd/l<",
            "-",
            "Landroidx/appcompat/app/d;",
            "Lfd/o;",
            ">;)",
            "Landroidx/appcompat/app/d;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lh8/c;->b:Lh8/c;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lh8/c;->n0(Z)V

    .line 3
    new-instance v7, Ls9/y$a;

    const-string v0, "LIGHTING_EFFECTS_LOW_BATTERY"

    const-string v1, "OK"

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v7, v0, v1, v2, v3}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v4, 0x7f1100f0

    const v5, 0x7f110185

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    .line 4
    invoke-static/range {v2 .. v7}, Ls9/y;->c(Ls9/y;Landroid/app/Activity;IILqd/l;Ls9/y$a;)Landroidx/appcompat/app/d;

    move-result-object p1

    return-object p1
.end method

.method public final h(Landroid/app/Activity;Lqd/l;Lqd/l;)Landroidx/appcompat/app/d;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lqd/l<",
            "-",
            "Landroidx/appcompat/app/d;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Landroidx/appcompat/app/d;",
            "Lfd/o;",
            ">;)",
            "Landroidx/appcompat/app/d;"
        }
    .end annotation

    const-string v0, "cancel"

    move-object/from16 v10, p2

    invoke-static {v10, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    move-object/from16 v11, p3

    invoke-static {v11, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v12, Ls9/y$a;

    const-string v0, "LOGOUT_DIALOG"

    const-string v1, "DISMISS"

    const-string v2, "LOGOUT"

    const/16 v3, 0x8

    invoke-direct {v12, v0, v1, v2, v3}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v3, 0x7f11010b

    const/4 v4, 0x0

    const v5, 0x7f11010a

    const/4 v6, 0x0

    const v7, 0x7f110092

    const v8, 0x7f11010d

    const/4 v9, 0x0

    const/16 v13, 0x94

    move-object v1, p0

    move-object v2, p1

    .line 2
    invoke-static/range {v1 .. v13}, Ls9/y;->d(Ls9/y;Landroid/app/Activity;ILjava/lang/String;IIIIZLqd/l;Lqd/l;Ls9/y$a;I)Landroidx/appcompat/app/d;

    move-result-object v0

    return-object v0
.end method

.method public final i(Landroid/app/Activity;Lqd/l;)Landroidx/appcompat/app/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lqd/l<",
            "-",
            "Landroidx/appcompat/app/d;",
            "Lfd/o;",
            ">;)",
            "Landroidx/appcompat/app/d;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v6, Ls9/y$a;

    const-string v0, "NO_INTERNET_DIALOG"

    const-string v1, "OK"

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v6, v0, v1, v2, v3}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const v3, 0x7f11013d

    const v4, 0x7f11013c

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 2
    invoke-static/range {v1 .. v6}, Ls9/y;->c(Ls9/y;Landroid/app/Activity;IILqd/l;Ls9/y$a;)Landroidx/appcompat/app/d;

    move-result-object p1

    return-object p1
.end method

.method public final j(Landroid/app/Activity;IILjava/lang/String;Lqd/l;)Landroidx/appcompat/app/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "II",
            "Ljava/lang/String;",
            "Lqd/l<",
            "-",
            "Landroidx/appcompat/app/d;",
            "Lfd/o;",
            ">;)",
            "Landroidx/appcompat/app/d;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v6, Ls9/y$a;

    const-string v0, "OK"

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {v6, p4, v0, v1, v2}, Ls9/y$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    .line 2
    invoke-static/range {v1 .. v6}, Ls9/y;->c(Ls9/y;Landroid/app/Activity;IILqd/l;Ls9/y$a;)Landroidx/appcompat/app/d;

    move-result-object p1

    return-object p1
.end method
