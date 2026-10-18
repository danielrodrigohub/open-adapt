.class public final Lr7/l;
.super Lr7/f;
.source "DeepLinkNav.kt"


# instance fields
.field public final a:I

.field public final b:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Landroid/app/Activity;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x6

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    .line 1
    sget-object p2, Lr7/k;->h:Lr7/k;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string v1, "type"

    .line 2
    invoke-static {p1, v1}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    const-string v1, "navigate"

    invoke-static {p2, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lr7/f;-><init>()V

    iput p1, p0, Lr7/l;->a:I

    iput-object p2, p0, Lr7/l;->b:Lqd/l;

    .line 4
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    if-eq p1, v0, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const-string p1, "pairID"

    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 6
    :goto_1
    iput-object p1, p0, Lr7/l;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr7/l;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p2}, Lr7/f;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2
    iget v0, p0, Lr7/l;->a:I

    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    .line 3
    iget-object v0, p0, Lr7/l;->c:[Ljava/lang/String;

    .line 4
    const-class v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    const-string v2, "requirements"

    .line 5
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 8
    invoke-virtual {p2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {p2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 11
    :cond_2
    new-instance v0, Lh9/r0;

    sget-object v2, Lr7/h;->a:Lr7/h;

    const-string v2, "percent"

    .line 12
    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v3, "getDefault()"

    invoke-static {v1, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lyd/s;->G0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_5

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v1, 0x5

    .line 16
    :goto_2
    invoke-static {p2}, Lr7/h;->a(Landroid/net/Uri;)Lcom/nike/adapt/adk/Shoe;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lh9/r0;-><init>(ILcom/nike/adapt/adk/Shoe;)V

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_c

    .line 17
    :cond_6
    new-instance v0, Lh9/t0;

    sget-object v1, Lr7/h;->a:Lr7/h;

    invoke-static {p2}, Lr7/h;->a(Landroid/net/Uri;)Lcom/nike/adapt/adk/Shoe;

    move-result-object p2

    invoke-direct {v0, p2}, Lh9/t0;-><init>(Lcom/nike/adapt/adk/Shoe;)V

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_c

    .line 18
    :cond_7
    new-instance v0, Lh9/s0;

    sget-object v1, Lr7/h;->a:Lr7/h;

    invoke-static {p2}, Lr7/h;->a(Landroid/net/Uri;)Lcom/nike/adapt/adk/Shoe;

    move-result-object p2

    invoke-direct {v0, p2}, Lh9/s0;-><init>(Lcom/nike/adapt/adk/Shoe;)V

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_c

    .line 19
    :cond_8
    new-instance v0, Lh9/q0;

    sget-object v3, Lr7/h;->a:Lr7/h;

    const-string v3, "color"

    .line 20
    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 21
    sget-object v3, Lr7/h;->q:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_3

    .line 22
    :cond_9
    sget-object v3, Lr7/h;->d:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_3
    if-eqz v3, :cond_a

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->AURORA_GREEN:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    goto/16 :goto_b

    .line 23
    :cond_a
    sget-object v3, Lr7/h;->r:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    goto :goto_4

    .line 24
    :cond_b
    sget-object v3, Lr7/h;->e:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_4
    if-eqz v3, :cond_c

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->HERO_BLUE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    goto/16 :goto_b

    .line 25
    :cond_c
    sget-object v3, Lr7/h;->f:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->RACER_BLUE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    goto/16 :goto_b

    .line 26
    :cond_d
    sget-object v3, Lr7/h;->s:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v2

    goto :goto_5

    .line 27
    :cond_e
    sget-object v3, Lr7/h;->g:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_5
    if-eqz v3, :cond_f

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->VIVID_PURPLE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    goto/16 :goto_b

    .line 28
    :cond_f
    sget-object v3, Lr7/h;->t:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v2

    goto :goto_6

    .line 29
    :cond_10
    sget-object v3, Lr7/h;->h:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_6
    if-eqz v3, :cond_11

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->PINK_BLAST:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    goto/16 :goto_b

    .line 30
    :cond_11
    sget-object v3, Lr7/h;->u:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v2

    goto :goto_7

    .line 31
    :cond_12
    sget-object v3, Lr7/h;->i:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_7
    if-eqz v3, :cond_13

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->RED_ORBIT:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    goto/16 :goto_b

    .line 32
    :cond_13
    sget-object v3, Lr7/h;->j:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->BRIGHT_CRIMSON:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    goto/16 :goto_b

    .line 33
    :cond_14
    sget-object v3, Lr7/h;->v:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v3, v2

    goto :goto_8

    .line 34
    :cond_15
    sget-object v3, Lr7/h;->k:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_8
    if-eqz v3, :cond_16

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->TOTAL_ORANGE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    goto :goto_b

    .line 35
    :cond_16
    sget-object v3, Lr7/h;->w:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v3, v2

    goto :goto_9

    .line 36
    :cond_17
    sget-object v3, Lr7/h;->l:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_9
    if-eqz v3, :cond_18

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->OPTIC_YELLOW:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    goto :goto_b

    .line 37
    :cond_18
    sget-object v3, Lr7/h;->m:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->ELECTRIC_GREEN:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    goto :goto_b

    .line 38
    :cond_19
    sget-object v3, Lr7/h;->n:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->GREEN_SPARK:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    goto :goto_b

    .line 39
    :cond_1a
    sget-object v3, Lr7/h;->p:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->WHITE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    goto :goto_b

    .line 40
    :cond_1b
    sget-object v3, Lr7/h;->o:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_a

    .line 41
    :cond_1c
    sget-object v2, Lr7/h;->x:Ljava/lang/String;

    invoke-static {v2}, Landroidx/appcompat/widget/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_a
    if-eqz v2, :cond_1d

    sget-object v1, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->LIGHT_OFF:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    .line 42
    :cond_1d
    :goto_b
    invoke-direct {v0, v1}, Lh9/q0;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;)V

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_c

    .line 43
    :cond_1e
    new-instance v0, Lh9/u0;

    sget-object v1, Lr7/h;->a:Lr7/h;

    invoke-static {p2}, Lr7/h;->a(Landroid/net/Uri;)Lcom/nike/adapt/adk/Shoe;

    move-result-object p2

    invoke-direct {v0, p2}, Lh9/u0;-><init>(Lcom/nike/adapt/adk/Shoe;)V

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    :cond_1f
    :goto_c
    return-void
.end method
