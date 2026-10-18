.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/s;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$c;,
        Lcom/airbnb/lottie/LottieAnimationView$b;
    }
.end annotation


# static fields
.field public static final synthetic y:I


# instance fields
.field public final k:Ly1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly1/g0<",
            "Ly1/i;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lcom/airbnb/lottie/LottieAnimationView$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly1/g0<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ly1/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly1/g0<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public final o:Ly1/e0;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public final u:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/LottieAnimationView$c;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ly1/h0;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ly1/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly1/k0<",
            "Ly1/i;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ly1/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ly1/f;

    invoke-direct {p1, p0}, Ly1/f;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Ly1/f;

    .line 3
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$a;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lcom/airbnb/lottie/LottieAnimationView$a;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:I

    .line 5
    new-instance v0, Ly1/e0;

    invoke-direct {v0}, Ly1/e0;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 6
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:Z

    .line 7
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    .line 9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/util/HashSet;

    .line 10
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->v:Ljava/util/HashSet;

    .line 11
    sget v2, Lcom/airbnb/lottie/R$attr;->lottieAnimationViewStyle:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView:[I

    invoke-virtual {v3, p2, v4, v2, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 13
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_cacheComposition:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    .line 14
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    .line 15
    sget v4, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    .line 16
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v3, :cond_1

    if-nez v5, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 18
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 20
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    .line 22
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 24
    :cond_4
    :goto_1
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fallbackRes:I

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setFallbackResource(I)V

    .line 25
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_autoPlay:I

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 26
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Z

    .line 27
    :cond_5
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_loop:I

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_6

    .line 28
    iget-object v2, v0, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 29
    :cond_6
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 30
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 31
    :cond_7
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 32
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 33
    :cond_8
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_9

    .line 34
    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 35
    :cond_9
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_clipToCompositionBounds:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 36
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setClipToCompositionBounds(Z)V

    .line 37
    :cond_a
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_imageAssetsFolder:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 38
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_progress:I

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 39
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 40
    iget-boolean v6, v0, Ly1/e0;->t:Z

    if-ne v6, v2, :cond_b

    goto :goto_2

    .line 41
    :cond_b
    iput-boolean v2, v0, Ly1/e0;->t:Z

    .line 42
    iget-object v2, v0, Ly1/e0;->h:Ly1/i;

    if-eqz v2, :cond_c

    .line 43
    invoke-virtual {v0}, Ly1/e0;->c()V

    .line 44
    :cond_c
    :goto_2
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 45
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lg/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 47
    new-instance v3, Ly1/n0;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-direct {v3, v2}, Ly1/n0;-><init>(I)V

    .line 48
    new-instance v2, Ld2/e;

    const-string v6, "**"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ld2/e;-><init>([Ljava/lang/String;)V

    .line 49
    new-instance v6, Ll2/c;

    invoke-direct {v6, v3}, Ll2/c;-><init>(Ljava/lang/Object;)V

    .line 50
    sget-object v3, Ly1/i0;->K:Landroid/graphics/ColorFilter;

    .line 51
    invoke-virtual {v0, v2, v3, v6}, Ly1/e0;->a(Ld2/e;Ljava/lang/Object;Ll2/c;)V

    .line 52
    :cond_d
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_renderMode:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 53
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 54
    invoke-static {}, Ly1/m0;->values()[Ly1/m0;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_e

    move v2, p1

    .line 55
    :cond_e
    invoke-static {}, Ly1/m0;->values()[Ly1/m0;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Ly1/m0;)V

    .line 56
    :cond_f
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_ignoreDisabledSystemAnimations:I

    .line 57
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 58
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setIgnoreDisabledSystemAnimations(Z)V

    .line 59
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v2, Lk2/g;->a:Lk2/g$a;

    .line 61
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "animator_duration_scale"

    invoke-static {p2, v2, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p2

    cmpl-float p2, p2, v4

    if-eqz p2, :cond_10

    move p1, v1

    .line 62
    :cond_10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Ly1/e0;->j:Z

    return-void
.end method

.method private setCompositionTask(Ly1/k0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly1/k0<",
            "Ly1/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$c;->h:Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Ly1/i;

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->d()V

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Ly1/f;

    .line 6
    invoke-virtual {p1, v0}, Ly1/k0;->b(Ly1/g0;)Ly1/k0;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lcom/airbnb/lottie/LottieAnimationView$a;

    .line 7
    invoke-virtual {p1, v0}, Ly1/k0;->a(Ly1/g0;)Ly1/k0;

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->w:Ly1/k0;

    return-void
.end method


# virtual methods
.method public final c(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iget-object v0, v0, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v0, p1}, Lk2/a;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->w:Ly1/k0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Ly1/f;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, v0, Ly1/k0;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    monitor-exit v0

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->w:Ly1/k0;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lcom/airbnb/lottie/LottieAnimationView$a;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_1
    iget-object v2, v0, Ly1/k0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$c;->m:Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->n()V

    return-void
.end method

.method public getClipToCompositionBounds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iget-boolean v0, v0, Ly1/e0;->v:Z

    return v0
.end method

.method public getComposition()Ly1/i;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Ly1/i;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Ly1/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly1/i;->b()F

    move-result v0

    float-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iget-object v0, v0, Ly1/e0;->i:Lk2/d;

    .line 3
    iget v0, v0, Lk2/d;->m:F

    float-to-int v0, v0

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iget-object v0, v0, Ly1/e0;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintainOriginalImageBounds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iget-boolean v0, v0, Ly1/e0;->u:Z

    return v0
.end method

.method public getMaxFrame()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->h()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->i()F

    move-result v0

    return v0
.end method

.method public getPerformanceTracker()Ly1/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iget-object v0, v0, Ly1/e0;->h:Ly1/i;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Ly1/i;->a:Ly1/l0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgress()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->j()F

    move-result v0

    return v0
.end method

.method public getRenderMode()Ly1/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iget-boolean v0, v0, Ly1/e0;->C:Z

    if-eqz v0, :cond_0

    sget-object v0, Ly1/m0;->j:Ly1/m0;

    goto :goto_0

    :cond_0
    sget-object v0, Ly1/m0;->i:Ly1/m0;

    :goto_0
    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->k()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iget-object v0, v0, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iget-object v0, v0, Ly1/e0;->i:Lk2/d;

    .line 3
    iget v0, v0, Lk2/d;->j:F

    return v0
.end method

.method public final invalidate()V
    .locals 3

    .line 1
    sget-object v0, Ly1/m0;->j:Ly1/m0;

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3
    instance-of v2, v1, Ly1/e0;

    if-eqz v2, :cond_1

    check-cast v1, Ly1/e0;

    .line 4
    iget-boolean v1, v1, Ly1/e0;->C:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Ly1/m0;->i:Ly1/m0;

    :goto_0
    if-ne v1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->n()V

    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$b;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView$b;

    .line 4
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$b;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$c;->h:Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 8
    :cond_1
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$b;->i:I

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:I

    .line 9
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:I

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$c;->i:Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$b;->j:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$c;->m:Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$b;->k:Z

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$c;->l:Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$b;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$c;->j:Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$b;->m:I

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$c;->k:Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 20
    iget p1, p1, Lcom/airbnb/lottie/LottieAnimationView$b;->n:I

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    :cond_7
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$b;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$b;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Ljava/lang/String;

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$b;->h:Ljava/lang/String;

    .line 4
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:I

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$b;->i:I

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->j()F

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$b;->j:F

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v0, v0, Ly1/e0;->i:Lk2/d;

    .line 9
    iget-boolean v0, v0, Lk2/d;->r:Z

    goto :goto_1

    .line 10
    :cond_0
    iget v0, v0, Ly1/e0;->m:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 11
    :goto_1
    iput-boolean v0, v1, Lcom/airbnb/lottie/LottieAnimationView$b;->k:Z

    .line 12
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 13
    iget-object v2, v0, Ly1/e0;->q:Ljava/lang/String;

    .line 14
    iput-object v2, v1, Lcom/airbnb/lottie/LottieAnimationView$b;->l:Ljava/lang/String;

    .line 15
    iget-object v0, v0, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    .line 16
    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$b;->m:I

    .line 17
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->k()I

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$b;->n:I

    return-object v1
.end method

.method public setAnimation(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Ly1/k0;

    new-instance v1, Ly1/d;

    invoke-direct {v1, p0, p1}, Ly1/d;-><init>(Lcom/airbnb/lottie/LottieAnimationView;I)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Ly1/k0;-><init>(Ljava/util/concurrent/Callable;Z)V

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Ly1/q;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 10
    new-instance v3, Ly1/m;

    invoke-direct {v3, v2, v0, p1, v1}, Ly1/m;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v1, v3}, Ly1/q;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ly1/k0;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ly1/q;->a:Ljava/util/HashMap;

    .line 12
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 14
    new-instance v3, Ly1/m;

    invoke-direct {v3, v2, v1, p1, v0}, Ly1/m;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v0, v3}, Ly1/q;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ly1/k0;

    move-result-object p1

    :goto_0
    move-object v0, p1

    .line 15
    :goto_1
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Ly1/k0;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 3

    .line 16
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ly1/k0;

    new-instance v1, Ly1/e;

    invoke-direct {v1, p0, p1}, Ly1/e;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Ly1/k0;-><init>(Ljava/util/concurrent/Callable;Z)V

    goto :goto_1

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ly1/q;->a:Ljava/util/HashMap;

    const-string v1, "asset_"

    .line 22
    invoke-static {v1, p1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    new-instance v2, Ly1/j;

    invoke-direct {v2, v0, p1, v1}, Ly1/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Ly1/q;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ly1/k0;

    move-result-object p1

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Ly1/q;->a:Ljava/util/HashMap;

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    new-instance v2, Ly1/j;

    invoke-direct {v2, v0, p1, v1}, Ly1/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Ly1/q;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ly1/k0;

    move-result-object p1

    :goto_0
    move-object v0, p1

    .line 28
    :goto_1
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Ly1/k0;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2
    sget-object p1, Ly1/q;->a:Ljava/util/HashMap;

    .line 3
    new-instance p1, Ly1/l;

    invoke-direct {p1, v0}, Ly1/l;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ly1/q;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ly1/k0;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Ly1/k0;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ly1/q;->a:Ljava/util/HashMap;

    const-string v1, "url_"

    .line 3
    invoke-static {v1, p1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ly1/k;

    invoke-direct {v2, v0, p1, v1}, Ly1/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Ly1/q;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ly1/k0;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Ly1/q;->a:Ljava/util/HashMap;

    .line 6
    new-instance v2, Ly1/k;

    invoke-direct {v2, v0, p1, v1}, Ly1/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Ly1/q;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ly1/k0;

    move-result-object p1

    .line 7
    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Ly1/k0;)V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iput-boolean p1, v0, Ly1/e0;->A:Z

    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Z

    return-void
.end method

.method public setClipToCompositionBounds(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iget-boolean v1, v0, Ly1/e0;->v:Z

    if-eq p1, v1, :cond_1

    .line 3
    iput-boolean p1, v0, Ly1/e0;->v:Z

    .line 4
    iget-object v1, v0, Ly1/e0;->w:Lg2/c;

    if-eqz v1, :cond_0

    .line 5
    iput-boolean p1, v1, Lg2/c;->I:Z

    .line 6
    :cond_0
    invoke-virtual {v0}, Ly1/e0;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setComposition(Ly1/i;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->x:Ly1/i;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:Z

    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 5
    iget-object v2, v1, Ly1/e0;->h:Ly1/i;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v2, p1, :cond_0

    move v0, v4

    goto/16 :goto_3

    .line 6
    :cond_0
    iput-boolean v0, v1, Ly1/e0;->P:Z

    .line 7
    invoke-virtual {v1}, Ly1/e0;->d()V

    .line 8
    iput-object p1, v1, Ly1/e0;->h:Ly1/i;

    .line 9
    invoke-virtual {v1}, Ly1/e0;->c()V

    .line 10
    iget-object v2, v1, Ly1/e0;->i:Lk2/d;

    .line 11
    iget-object v5, v2, Lk2/d;->q:Ly1/i;

    if-nez v5, :cond_1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v4

    .line 12
    :goto_0
    iput-object p1, v2, Lk2/d;->q:Ly1/i;

    if-eqz v5, :cond_2

    .line 13
    iget v5, v2, Lk2/d;->o:F

    .line 14
    iget v6, p1, Ly1/i;->k:F

    .line 15
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v6, v2, Lk2/d;->p:F

    .line 16
    iget v7, p1, Ly1/i;->l:F

    .line 17
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 18
    invoke-virtual {v2, v5, v6}, Lk2/d;->l(FF)V

    goto :goto_1

    .line 19
    :cond_2
    iget v5, p1, Ly1/i;->k:F

    float-to-int v5, v5

    int-to-float v5, v5

    .line 20
    iget v6, p1, Ly1/i;->l:F

    float-to-int v6, v6

    int-to-float v6, v6

    .line 21
    invoke-virtual {v2, v5, v6}, Lk2/d;->l(FF)V

    .line 22
    :goto_1
    iget v5, v2, Lk2/d;->m:F

    const/4 v6, 0x0

    .line 23
    iput v6, v2, Lk2/d;->m:F

    float-to-int v5, v5

    int-to-float v5, v5

    .line 24
    invoke-virtual {v2, v5}, Lk2/d;->k(F)V

    .line 25
    invoke-virtual {v2}, Lk2/a;->c()V

    .line 26
    iget-object v2, v1, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v2}, Lk2/d;->getAnimatedFraction()F

    move-result v2

    invoke-virtual {v1, v2}, Ly1/e0;->z(F)V

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v1, Ly1/e0;->n:Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 28
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly1/e0$b;

    if-eqz v5, :cond_3

    .line 30
    invoke-interface {v5}, Ly1/e0$b;->run()V

    .line 31
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 32
    :cond_4
    iget-object v2, v1, Ly1/e0;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 33
    iget-boolean v2, v1, Ly1/e0;->y:Z

    .line 34
    iget-object p1, p1, Ly1/i;->a:Ly1/l0;

    .line 35
    iput-boolean v2, p1, Ly1/l0;->a:Z

    .line 36
    invoke-virtual {v1}, Ly1/e0;->e()V

    .line 37
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 38
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 39
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    :cond_5
    :goto_3
    iput-boolean v4, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:Z

    .line 42
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    if-ne p1, v1, :cond_6

    if-nez v0, :cond_6

    return-void

    :cond_6
    if-nez v0, :cond_7

    .line 43
    invoke-virtual {v1}, Ly1/e0;->l()Z

    move-result p1

    .line 44
    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_7

    .line 46
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {p1}, Ly1/e0;->p()V

    .line 47
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p0, p1}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 49
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->v:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/h0;

    .line 50
    invoke-interface {v0}, Ly1/h0;->a()V

    goto :goto_4

    :cond_8
    return-void
.end method

.method public setFailureListener(Ly1/g0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly1/g0<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Ly1/g0;

    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:I

    return-void
.end method

.method public setFontAssetDelegate(Ly1/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iget-object p1, p1, Ly1/e0;->s:Lc2/a;

    return-void
.end method

.method public setFrame(I)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0, p1}, Ly1/e0;->q(I)V

    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iput-boolean p1, v0, Ly1/e0;->k:Z

    return-void
.end method

.method public setImageAssetDelegate(Ly1/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iput-object p1, v0, Ly1/e0;->r:Ly1/b;

    .line 3
    iget-object v0, v0, Ly1/e0;->p:Lc2/b;

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, v0, Lc2/b;->c:Ly1/b;

    :cond_0
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iput-object p1, v0, Ly1/e0;->q:Ljava/lang/String;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/s;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/s;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/s;->setImageResource(I)V

    return-void
.end method

.method public setMaintainOriginalImageBounds(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iput-boolean p1, v0, Ly1/e0;->u:Z

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0, p1}, Ly1/e0;->r(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0, p1}, Ly1/e0;->s(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0, p1}, Ly1/e0;->t(F)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0, p1}, Ly1/e0;->v(Ljava/lang/String;)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0, p1}, Ly1/e0;->w(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0, p1}, Ly1/e0;->x(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0, p1}, Ly1/e0;->y(F)V

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iget-boolean v1, v0, Ly1/e0;->z:Z

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean p1, v0, Ly1/e0;->z:Z

    .line 4
    iget-object v0, v0, Ly1/e0;->w:Lg2/c;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lg2/c;->u(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iput-boolean p1, v0, Ly1/e0;->y:Z

    .line 3
    iget-object v0, v0, Ly1/e0;->h:Ly1/i;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Ly1/i;->a:Ly1/l0;

    .line 5
    iput-boolean p1, v0, Ly1/l0;->a:Z

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$c;->i:Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0, p1}, Ly1/e0;->z(F)V

    return-void
.end method

.method public setRenderMode(Ly1/m0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iput-object p1, v0, Ly1/e0;->B:Ly1/m0;

    .line 3
    invoke-virtual {v0}, Ly1/e0;->e()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$c;->k:Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 3
    iget-object v0, v0, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$c;->j:Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 3
    iget-object v0, v0, Ly1/e0;->i:Lk2/d;

    invoke-virtual {v0, p1}, Lk2/d;->setRepeatMode(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iput-boolean p1, v0, Ly1/e0;->l:Z

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    .line 2
    iget-object v0, v0, Ly1/e0;->i:Lk2/d;

    .line 3
    iput p1, v0, Lk2/d;->j:F

    return-void
.end method

.method public setTextDelegate(Ly1/o0;)V
    .locals 0

    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    if-ne p1, v0, :cond_0

    invoke-virtual {v0}, Ly1/e0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Z

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->m()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Ly1/e0;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ly1/e0;

    invoke-virtual {v0}, Ly1/e0;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ly1/e0;->m()V

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
