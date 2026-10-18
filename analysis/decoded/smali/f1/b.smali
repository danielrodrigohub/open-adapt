.class public Lf1/b;
.super Ljava/lang/Object;
.source "TraceApi18Impl.java"


# direct methods
.method public static a(Landroid/view/View;IIJJZZI)V
    .locals 2

    and-int/lit8 v0, p9, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p7, v1

    :cond_0
    and-int/lit8 p9, p9, 0x20

    if-eqz p9, :cond_1

    move p8, v1

    :cond_1
    if-eqz p7, :cond_2

    .line 1
    new-instance p7, Lfd/e;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p7, p2, p1}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance p7, Lfd/e;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p7, p1, p2}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    :goto_0
    iget-object p1, p7, Lfd/e;->h:Ljava/lang/Object;

    .line 3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 4
    iget-object p2, p7, Lfd/e;->i:Ljava/lang/Object;

    .line 5
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 6
    invoke-static {p8, p1, p2}, Lf1/b;->h(ZII)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    new-instance p2, Lx8/c;

    invoke-direct {p2, p0}, Lx8/c;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static final b(Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/graphics/drawable/Animatable;

    .line 3
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x3

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    return-void
.end method

.method public static final c(Landroid/view/View;Lqd/a;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2
    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x64

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 5
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 6
    new-instance v0, Lx8/d;

    invoke-direct {v0, p0}, Lx8/d;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    new-instance p0, Lx8/g;

    invoke-direct {p0, p1}, Lx8/g;-><init>(Lqd/a;)V

    .line 8
    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f88f5c3
    .end array-data
.end method

.method public static final d(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public static e(Landroid/view/ViewGroup;ZIZJI)V
    .locals 20

    move-object/from16 v0, p0

    and-int/lit8 v1, p6, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p3

    :goto_0
    const/16 v3, 0x8

    and-int/lit8 v4, p6, 0x8

    if-eqz v4, :cond_1

    const-wide/16 v4, 0xfa

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p4

    .line 1
    :goto_1
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    move v11, v2

    move v12, v11

    :goto_2
    const-string v13, "getChildAt(index)"

    if-ge v11, v10, :cond_3

    .line 4
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-static {v14, v13}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    instance-of v13, v14, Landroid/widget/Space;

    if-eqz v13, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v12, 0x1

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, -0x1

    add-int/2addr v12, v10

    if-lez v12, :cond_4

    goto :goto_4

    :cond_4
    const/4 v10, 0x1

    .line 6
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    move v15, v2

    :goto_5
    if-ge v15, v14, :cond_b

    .line 7
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v13}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    instance-of v6, v3, Landroid/widget/Space;

    if-eqz v6, :cond_5

    move/from16 v16, v2

    const/16 v19, 0x1

    goto/16 :goto_b

    :cond_5
    move/from16 v6, p2

    if-ne v6, v12, :cond_6

    const/4 v7, 0x1

    goto :goto_6

    :cond_6
    move v7, v2

    .line 9
    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v11, 0x7f0a0482

    .line 10
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v2, 0x7f0a0483

    .line 11
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v17, Ly/a;->a:Ljava/lang/Object;

    const v6, 0x7f06008f

    .line 13
    invoke-static {v0, v6}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v0

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move/from16 v17, v0

    const v0, 0x7f060090

    .line 15
    invoke-static {v6, v0}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v0

    move/from16 v18, v0

    if-eqz v1, :cond_7

    move-object v6, v2

    goto :goto_7

    :cond_7
    move-object v6, v3

    :goto_7
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/16 v16, 0x0

    aput v3, v0, v16

    if-eqz p1, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    :goto_8
    const/16 v19, 0x1

    aput v3, v0, v19

    const-string v3, "alpha"

    invoke-static {v6, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v7, :cond_9

    if-nez v1, :cond_9

    move/from16 v3, v17

    goto :goto_9

    :cond_9
    move/from16 v3, v18

    .line 17
    :goto_9
    invoke-virtual {v11, v3}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz v7, :cond_a

    if-nez v1, :cond_a

    move/from16 v3, v16

    goto :goto_a

    :cond_a
    const/16 v3, 0x8

    .line 18
    :goto_a
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const-string v2, "ofFloat(fadeView, \"alpha\u2026IBLE else View.GONE\n    }"

    .line 19
    invoke-static {v0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/2addr v12, v10

    :goto_b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    const/16 v3, 0x8

    goto/16 :goto_5

    .line 21
    :cond_b
    invoke-virtual {v8, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 22
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 23
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x0

    .line 24
    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 25
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "."

    const-string v1, ",."

    const-string v2, " *"

    .line 1
    invoke-static {v0, p0, v1, p0, v2}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/view/View;ZI)Landroid/animation/Animator;
    .locals 6

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xfa

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    and-int/lit8 p2, p2, 0x4

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move p1, v2

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    aput v5, p2, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    move v3, v4

    :cond_3
    aput v3, p2, v2

    const-string p1, "alpha"

    .line 1
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 2
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static final h(ZII)Landroid/animation/ValueAnimator;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_0

    .line 1
    new-instance p0, Landroid/animation/ArgbEvaluator;

    invoke-direct {p0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p0, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-string p1, "ofObject(ArgbEvaluator()\u2026olor, toColor, fromColor)"

    invoke-static {p0, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Landroid/animation/ArgbEvaluator;

    invoke-direct {p0}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p0, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-string p1, "{\n        ValueAnimator.\u2026fromColor, toColor)\n    }"

    .line 3
    invoke-static {p0, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static i(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static j(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static k(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static final l(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot round NaN value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Landroid/media/MediaFormat;Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v1, "csd-"

    .line 2
    invoke-static {v1, v0}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SHA-256"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "526b353737a463bff343360f33b96470e0d731fcd42af12fa9cb5ecc700c7e55"

    .line 2
    invoke-static {v1, p0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v1, Lyd/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const-string v0, "getInstance(\"SHA-256\")\n \u2026T + input).toByteArray())"

    invoke-static {p0, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, ""

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 5
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format(this, *args)"

    invoke-static {v4, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v2, v4}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static o(Landroid/view/View;ZI)V
    .locals 2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xfa

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    const-string p2, "<this>"

    .line 1
    invoke-static {p0, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static p(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v0, 0xfa

    const-string v2, "nextText"

    .line 1
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 3
    new-instance v3, Lx8/l;

    invoke-direct {v3, p0, p1, v0, v1}, Lx8/l;-><init>(Landroid/widget/TextView;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 4
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static final q(Lorg/json/JSONObject;)Lea/b;
    .locals 10

    const-string v0, "colorway"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    const/4 v3, 0x0

    const-string v0, "scanningKey"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "getString(\"scanningKey\")"

    invoke-static {v4, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringIdentifier"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "getString(\"stringIdentifier\")"

    invoke-static {v5, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionAddress"

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "getString(\"connectionAddress\")"

    invoke-static {v6, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationKey"

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "getString(\"authenticationKey\")"

    invoke-static {v7, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxTightness"

    .line 6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v0, 0x0

    const-string v1, "hasConnectedLocally"

    .line 7
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 8
    new-instance p0, Lea/b;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lea/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object p0
.end method

.method public static final r(Lorg/json/JSONObject;I)Lea/c;
    .locals 12

    .line 1
    new-instance v0, Lea/c;

    .line 2
    new-instance v1, Lea/i;

    .line 3
    new-instance v2, Lea/h$a;

    const-string v3, "percent"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Lea/h$a;-><init>(I)V

    .line 4
    invoke-direct {v1, v2, p1}, Lea/i;-><init>(Lea/h$a;I)V

    const-string p1, "adaptKitColor"

    .line 5
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "getJSONObject(\"adaptKitColor\")"

    invoke-static {p0, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lea/d;

    const-string v2, "red"

    .line 7
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "green"

    .line 8
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "blue"

    .line 9
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "brightness"

    .line 10
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v5, 0x5

    .line 11
    invoke-static {v5}, Lq/g;->b(I)[I

    move-result-object v6

    .line 12
    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_2

    aget v10, v6, v9

    .line 13
    invoke-static {v10}, Lq/g;->a(I)I

    move-result v11

    if-ne v11, p0, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    move v11, v8

    :goto_1
    if-eqz v11, :cond_1

    move v8, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    move v5, v8

    .line 14
    :goto_3
    invoke-direct {p1, v2, v3, v4, v5}, Lea/d;-><init>(IIII)V

    .line 15
    invoke-direct {v0, v1, p1}, Lea/c;-><init>(Lea/i;Lea/d;)V

    return-object v0
.end method

.method public static final s(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 35

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_9

    move-object/from16 v4, p0

    .line 3
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "this@toAdaptKitPairedDevices.getJSONObject(i)"

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "leftDevice"

    .line 4
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "getJSONObject(\"leftDevice\")"

    invoke-static {v6, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lf1/b;->q(Lorg/json/JSONObject;)Lea/b;

    move-result-object v12

    const-string v6, "rightDevice"

    .line 5
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "getJSONObject(\"rightDevice\")"

    invoke-static {v6, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lf1/b;->q(Lorg/json/JSONObject;)Lea/b;

    move-result-object v13

    const-string v6, "pairId"

    .line 6
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "pairName"

    .line 7
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "isDefault"

    .line 8
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v6, "lastSnapshotUsedName"

    .line 9
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "null"

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    invoke-static {v6, v7}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v6, v8

    :cond_0
    move-object v14, v6

    goto :goto_1

    :cond_1
    move-object v14, v8

    :goto_1
    const-string v6, "colorway"

    .line 10
    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v6, v7}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v6, v8

    :cond_2
    move-object v15, v6

    goto :goto_2

    :cond_3
    move-object v15, v8

    :goto_2
    const-string v6, "snapshots"

    .line 11
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "getJSONArray(\"snapshots\")"

    invoke-static {v6, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget v7, v12, Lea/b;->m:I

    .line 13
    iget v8, v13, Lea/b;->m:I

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move/from16 v25, v1

    .line 15
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_4

    move/from16 v17, v1

    .line 16
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v18, v6

    const-string v6, "this@toAdaptKitDevicePresets.getJSONObject(i)"

    invoke-static {v1, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "id"

    .line 17
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move/from16 v33, v3

    const-string v3, "getString(\"id\")"

    invoke-static {v6, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "name"

    .line 18
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v34, v0

    const-string v0, "getString(\"name\")"

    invoke-static {v3, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoGenerated"

    .line 19
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v29

    const-string v0, "leftAttributes"

    .line 20
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v19, v15

    const-string v15, "getJSONObject(\"leftAttributes\")"

    invoke-static {v0, v15}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lf1/b;->r(Lorg/json/JSONObject;I)Lea/c;

    move-result-object v30

    const-string v0, "rightAttributes"

    .line 21
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v15, "getJSONObject(\"rightAttributes\")"

    invoke-static {v0, v15}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lf1/b;->r(Lorg/json/JSONObject;I)Lea/c;

    move-result-object v31

    :try_start_0
    const-string v0, "displayOrder"

    .line 22
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v32, v0

    goto :goto_4

    :catchall_0
    const/16 v32, 0x0

    .line 23
    :goto_4
    new-instance v0, Lea/e;

    move-object/from16 v26, v0

    move-object/from16 v27, v6

    move-object/from16 v28, v3

    invoke-direct/range {v26 .. v32}, Lea/e;-><init>(Ljava/lang/String;Ljava/lang/String;ZLea/c;Lea/c;Ljava/lang/Integer;)V

    .line 24
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v17

    move-object/from16 v6, v18

    move-object/from16 v15, v19

    move/from16 v3, v33

    move-object/from16 v0, v34

    goto :goto_3

    :cond_4
    move-object/from16 v34, v0

    move/from16 v33, v3

    move-object/from16 v19, v15

    const-string v0, "localUpdatedMillis"

    .line 25
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    const-string v0, "scheduledForDeletion"

    .line 26
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    const-string v0, "createdDateUTC"

    .line 27
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    const-string v0, "updatedDateUTC"

    .line 28
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v3, "deviceType"

    const/4 v4, 0x0

    .line 29
    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 30
    sget-object v5, Lea/f;->j:Lea/f;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    goto :goto_6

    .line 31
    :cond_6
    :goto_5
    sget-object v5, Lea/f;->k:Lea/f;

    const/4 v6, 0x2

    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_8

    :goto_6
    move-object/from16 v21, v5

    goto :goto_8

    .line 32
    :cond_8
    :goto_7
    sget-object v3, Lea/f;->i:Lea/f;

    move-object/from16 v21, v3

    .line 33
    :goto_8
    new-instance v3, Lea/m;

    move-object v8, v3

    const-string v5, "getString(\"pairId\")"

    .line 34
    invoke-static {v9, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "getString(\"pairName\")"

    .line 35
    invoke-static {v10, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, v19

    move-object/from16 v16, v2

    move-wide/from16 v19, v0

    .line 36
    invoke-direct/range {v8 .. v24}, Lea/m;-><init>(Ljava/lang/String;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JJLea/f;JZ)V

    move-object/from16 v0, v34

    .line 37
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v33, 0x1

    move/from16 v1, v25

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method public static final t(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 15

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    if-ltz v2, :cond_2

    check-cast v3, Lea/m;

    const-string v6, "<this>"

    .line 3
    invoke-static {v3, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 5
    iget-object v7, v3, Lea/m;->h:Ljava/lang/String;

    const-string v8, "pairId"

    .line 6
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v7, v3, Lea/m;->i:Ljava/lang/String;

    const-string v8, "pairName"

    .line 8
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-boolean v7, v3, Lea/m;->j:Z

    const-string v8, "isDefault"

    .line 10
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11
    iget-object v7, v3, Lea/m;->k:Lea/b;

    .line 12
    invoke-static {v7}, Lf1/b;->v(Lea/b;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "leftDevice"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    iget-object v7, v3, Lea/m;->l:Lea/b;

    .line 14
    invoke-static {v7}, Lf1/b;->v(Lea/b;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "rightDevice"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object v7, v3, Lea/m;->m:Ljava/lang/String;

    const-string v8, "lastSnapshotUsedName"

    .line 16
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    iget-object v7, v3, Lea/m;->n:Ljava/lang/String;

    const-string v8, "colorway"

    .line 18
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object v7, v3, Lea/m;->o:Ljava/util/List;

    .line 20
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 21
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v9, v1

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-ltz v9, :cond_0

    check-cast v10, Lea/e;

    .line 22
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 23
    iget-object v13, v10, Lea/e;->h:Ljava/lang/String;

    const-string v14, "id"

    .line 24
    invoke-virtual {v12, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    iget-object v13, v10, Lea/e;->i:Ljava/lang/String;

    const-string v14, "name"

    .line 26
    invoke-virtual {v12, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    iget-boolean v13, v10, Lea/e;->j:Z

    const-string v14, "autoGenerated"

    .line 28
    invoke-virtual {v12, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 29
    iget-object v13, v10, Lea/e;->k:Lea/c;

    .line 30
    invoke-static {v13}, Lf1/b;->w(Lea/c;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "leftAttributes"

    invoke-virtual {v12, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    iget-object v13, v10, Lea/e;->l:Lea/c;

    .line 32
    invoke-static {v13}, Lf1/b;->w(Lea/c;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "rightAttributes"

    invoke-virtual {v12, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object v10, v10, Lea/e;->m:Ljava/lang/Integer;

    const-string v13, "displayOrder"

    .line 34
    invoke-virtual {v12, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    invoke-virtual {v8, v9, v12}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move v9, v11

    goto :goto_1

    .line 36
    :cond_0
    invoke-static {}, Landroidx/lifecycle/o;->L()V

    throw v5

    :cond_1
    const-string v5, "snapshots"

    .line 37
    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    iget-wide v7, v3, Lea/m;->s:J

    const-string v5, "localUpdatedMillis"

    .line 39
    invoke-virtual {v6, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 40
    iget-wide v7, v3, Lea/m;->p:J

    const-string v5, "createdDateUTC"

    .line 41
    invoke-virtual {v6, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    iget-wide v7, v3, Lea/m;->q:J

    const-string v5, "updatedDateUTC"

    .line 43
    invoke-virtual {v6, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 44
    iget-boolean v5, v3, Lea/m;->t:Z

    const-string v7, "scheduledForDeletion"

    .line 45
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 46
    iget-object v3, v3, Lea/m;->r:Lea/f;

    .line 47
    iget v3, v3, Lea/f;->h:I

    const-string v5, "deviceType"

    .line 48
    invoke-virtual {v6, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move v2, v4

    goto/16 :goto_0

    .line 50
    :cond_2
    invoke-static {}, Landroidx/lifecycle/o;->L()V

    throw v5

    :cond_3
    return-object v0
.end method

.method public static u(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-double v1, p0

    const-wide v3, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const-string p0, "rgba(%d,%d,%d,%.3f)"

    .line 2
    invoke-static {p0, v0}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Lea/b;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lea/b;->i:Ljava/lang/String;

    const-string v2, "scanningKey"

    .line 3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lea/b;->j:Ljava/lang/String;

    const-string v2, "stringIdentifier"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lea/b;->k:Ljava/lang/String;

    const-string v2, "connectionAddress"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v1, p0, Lea/b;->l:Ljava/lang/String;

    const-string v2, "authenticationKey"

    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget v1, p0, Lea/b;->m:I

    const-string v2, "maxTightness"

    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    iget-boolean p0, p0, Lea/b;->n:Z

    const-string v1, "hasConnectedLocally"

    .line 13
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static final w(Lea/c;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lea/c;->h:Lea/i;

    .line 3
    iget-object v1, v1, Lea/i;->i:Lea/h$a;

    .line 4
    iget v1, v1, Lea/h$a;->j:I

    const-string v2, "percent"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    iget-object p0, p0, Lea/c;->i:Lea/d;

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    iget v2, p0, Lea/d;->h:I

    const-string v3, "red"

    .line 9
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    iget v2, p0, Lea/d;->i:I

    const-string v3, "green"

    .line 11
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    iget v2, p0, Lea/d;->j:I

    const-string v3, "blue"

    .line 13
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    iget p0, p0, Lea/d;->k:I

    .line 15
    invoke-static {p0}, Lq/g;->a(I)I

    move-result p0

    const-string v2, "brightness"

    .line 16
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "adaptKitColor"

    .line 17
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
