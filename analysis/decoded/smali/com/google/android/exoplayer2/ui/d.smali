.class public final Lcom/google/android/exoplayer2/ui/d;
.super Landroid/widget/FrameLayout;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/d$a;,
        Lcom/google/android/exoplayer2/ui/d$b;,
        Lcom/google/android/exoplayer2/ui/d$c;,
        Lcom/google/android/exoplayer2/ui/d$d;
    }
.end annotation


# static fields
.field public static final synthetic m0:I


# instance fields
.field public final A:Lw4/h;

.field public final B:Landroid/graphics/drawable/Drawable;

.field public final C:Landroid/graphics/drawable/Drawable;

.field public final D:Landroid/graphics/drawable/Drawable;

.field public final E:Ljava/lang/String;

.field public final F:Ljava/lang/String;

.field public final G:Ljava/lang/String;

.field public final H:Landroid/graphics/drawable/Drawable;

.field public final I:Landroid/graphics/drawable/Drawable;

.field public final J:F

.field public final K:F

.field public final L:Ljava/lang/String;

.field public final M:Ljava/lang/String;

.field public N:Ln3/o1;

.field public O:Lcom/google/android/exoplayer2/ui/d$c;

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:I

.field public U:I

.field public V:I

.field public W:Z

.field public a0:Z

.field public b0:Z

.field public c0:Z

.field public d0:Z

.field public e0:J

.field public f0:[J

.field public g0:[Z

.field public final h:Lcom/google/android/exoplayer2/ui/d$b;

.field public h0:[J

.field public final i:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/ui/d$d;",
            ">;"
        }
    .end annotation
.end field

.field public i0:[Z

.field public final j:Landroid/view/View;

.field public j0:J

.field public final k:Landroid/view/View;

.field public k0:J

.field public final l:Landroid/view/View;

.field public l0:J

.field public final m:Landroid/view/View;

.field public final n:Landroid/view/View;

.field public final o:Landroid/view/View;

.field public final p:Landroid/widget/ImageView;

.field public final q:Landroid/widget/ImageView;

.field public final r:Landroid/view/View;

.field public final s:Landroid/widget/TextView;

.field public final t:Landroid/widget/TextView;

.field public final u:Lcom/google/android/exoplayer2/ui/f;

.field public final v:Ljava/lang/StringBuilder;

.field public final w:Ljava/util/Formatter;

.field public final x:Ln3/b2$b;

.field public final y:Ln3/b2$d;

.field public final z:Landroidx/activity/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.ui"

    invoke-static {v0}, Ln3/p0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    sget v2, Lcom/google/android/exoplayer2/ui/R$layout;->exo_player_control_view:I

    const/16 v3, 0x1388

    .line 3
    iput v3, p0, Lcom/google/android/exoplayer2/ui/d;->T:I

    .line 4
    iput v1, p0, Lcom/google/android/exoplayer2/ui/d;->V:I

    const/16 v3, 0xc8

    .line 5
    iput v3, p0, Lcom/google/android/exoplayer2/ui/d;->U:I

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ui/d;->e0:J

    const/4 v5, 0x1

    .line 7
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/ui/d;->W:Z

    .line 8
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/ui/d;->a0:Z

    .line 9
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/ui/d;->b0:Z

    .line 10
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/ui/d;->c0:Z

    .line 11
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/d;->d0:Z

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget-object v7, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView:[I

    .line 13
    invoke-virtual {v6, p2, v7, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 14
    :try_start_0
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_timeout:I

    iget v8, p0, Lcom/google/android/exoplayer2/ui/d;->T:I

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/google/android/exoplayer2/ui/d;->T:I

    .line 15
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_controller_layout_id:I

    .line 16
    invoke-virtual {v6, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 17
    iget v7, p0, Lcom/google/android/exoplayer2/ui/d;->V:I

    .line 18
    sget v8, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_repeat_toggle_modes:I

    invoke-virtual {v6, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 19
    iput v7, p0, Lcom/google/android/exoplayer2/ui/d;->V:I

    .line 20
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_rewind_button:I

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/ui/d;->W:Z

    .line 21
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/exoplayer2/ui/d;->W:Z

    .line 22
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_fastforward_button:I

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/ui/d;->a0:Z

    .line 23
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/exoplayer2/ui/d;->a0:Z

    .line 24
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_previous_button:I

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/ui/d;->b0:Z

    .line 25
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/exoplayer2/ui/d;->b0:Z

    .line 26
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_next_button:I

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/ui/d;->c0:Z

    .line 27
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/exoplayer2/ui/d;->c0:Z

    .line 28
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_shuffle_button:I

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/ui/d;->d0:Z

    .line 29
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/exoplayer2/ui/d;->d0:Z

    .line 30
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_time_bar_min_update_interval:I

    iget v8, p0, Lcom/google/android/exoplayer2/ui/d;->U:I

    .line 31
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 32
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/ui/d;->setTimeBarMinUpdateInterval(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    throw p1

    .line 35
    :cond_0
    :goto_0
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/d;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    new-instance v6, Ln3/b2$b;

    invoke-direct {v6}, Ln3/b2$b;-><init>()V

    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/d;->x:Ln3/b2$b;

    .line 37
    new-instance v6, Ln3/b2$d;

    invoke-direct {v6}, Ln3/b2$d;-><init>()V

    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/d;->y:Ln3/b2$d;

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/d;->v:Ljava/lang/StringBuilder;

    .line 39
    new-instance v7, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v7, p0, Lcom/google/android/exoplayer2/ui/d;->w:Ljava/util/Formatter;

    new-array v6, v1, [J

    .line 40
    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/d;->f0:[J

    new-array v6, v1, [Z

    .line 41
    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/d;->g0:[Z

    new-array v6, v1, [J

    .line 42
    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/d;->h0:[J

    new-array v6, v1, [Z

    .line 43
    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/d;->i0:[Z

    .line 44
    new-instance v6, Lcom/google/android/exoplayer2/ui/d$b;

    invoke-direct {v6, p0}, Lcom/google/android/exoplayer2/ui/d$b;-><init>(Lcom/google/android/exoplayer2/ui/d;)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/ui/d;->h:Lcom/google/android/exoplayer2/ui/d$b;

    .line 45
    new-instance v7, Landroidx/activity/d;

    const/4 v8, 0x3

    invoke-direct {v7, p0, v8}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    iput-object v7, p0, Lcom/google/android/exoplayer2/ui/d;->z:Landroidx/activity/d;

    .line 46
    new-instance v7, Lw4/h;

    invoke-direct {v7, p0, v5}, Lw4/h;-><init>(Ljava/lang/Object;I)V

    iput-object v7, p0, Lcom/google/android/exoplayer2/ui/d;->A:Lw4/h;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v2, 0x40000

    .line 48
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 49
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/ui/f;

    .line 50
    sget v7, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress_placeholder:I

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v5, :cond_1

    .line 51
    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/d;->u:Lcom/google/android/exoplayer2/ui/f;

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    .line 52
    new-instance v0, Lcom/google/android/exoplayer2/ui/b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 54
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 56
    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 57
    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    invoke-virtual {p2, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 59
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->u:Lcom/google/android/exoplayer2/ui/f;

    goto :goto_1

    .line 60
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->u:Lcom/google/android/exoplayer2/ui/f;

    .line 61
    :goto_1
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_duration:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->s:Landroid/widget/TextView;

    .line 62
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_position:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->t:Landroid/widget/TextView;

    .line 63
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->u:Lcom/google/android/exoplayer2/ui/f;

    if-eqz p2, :cond_3

    .line 64
    invoke-interface {p2, v6}, Lcom/google/android/exoplayer2/ui/f;->b(Lcom/google/android/exoplayer2/ui/f$a;)V

    .line 65
    :cond_3
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_play:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->l:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 66
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_4
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_pause:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->m:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 68
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_5
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->j:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 70
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_6
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->k:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 72
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_7
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->o:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 74
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_8
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->n:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 76
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_9
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->p:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    .line 78
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_a
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_shuffle:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->q:Landroid/widget/ImageView;

    if-eqz p2, :cond_b

    .line 80
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_b
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_vr:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->r:Landroid/view/View;

    .line 82
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/d;->setShowVrButton(Z)V

    .line 83
    invoke-virtual {p0, v1, v1, p2}, Lcom/google/android/exoplayer2/ui/d;->j(ZZLandroid/view/View;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 85
    sget p2, Lcom/google/android/exoplayer2/ui/R$integer;->exo_media_button_opacity_percentage_enabled:I

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/exoplayer2/ui/d;->J:F

    .line 87
    sget p2, Lcom/google/android/exoplayer2/ui/R$integer;->exo_media_button_opacity_percentage_disabled:I

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/exoplayer2/ui/d;->K:F

    .line 89
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->B:Landroid/graphics/drawable/Drawable;

    .line 90
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_one:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->C:Landroid/graphics/drawable/Drawable;

    .line 91
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_all:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->D:Landroid/graphics/drawable/Drawable;

    .line 92
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_shuffle_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->H:Landroid/graphics/drawable/Drawable;

    .line 93
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_shuffle_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->I:Landroid/graphics/drawable/Drawable;

    .line 94
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_off_description:I

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->E:Ljava/lang/String;

    .line 96
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_one_description:I

    .line 97
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->F:Ljava/lang/String;

    .line 98
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_all_description:I

    .line 99
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->G:Ljava/lang/String;

    .line 100
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_on_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->L:Ljava/lang/String;

    .line 101
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_off_description:I

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/d;->M:Ljava/lang/String;

    .line 103
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ui/d;->k0:J

    .line 104
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ui/d;->l0:J

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/KeyEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    const/16 v3, 0x58

    const/16 v4, 0x57

    const/16 v5, 0x7f

    const/16 v6, 0x7e

    const/16 v7, 0x4f

    const/16 v8, 0x55

    const/16 v9, 0x59

    const/16 v10, 0x5a

    const/4 v11, 0x1

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v12, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v12, v11

    :goto_1
    if-nez v12, :cond_2

    goto :goto_4

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x4

    if-ne v0, v10, :cond_3

    .line 4
    invoke-interface {v1}, Ln3/o1;->s()I

    move-result p1

    if-eq p1, v2, :cond_c

    .line 5
    invoke-interface {v1}, Ln3/o1;->U()V

    goto :goto_3

    :cond_3
    if-ne v0, v9, :cond_4

    .line 6
    invoke-interface {v1}, Ln3/o1;->W()V

    goto :goto_3

    .line 7
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_c

    if-eq v0, v7, :cond_9

    if-eq v0, v8, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_3

    .line 8
    :cond_5
    invoke-interface {v1}, Ln3/o1;->c()V

    goto :goto_3

    .line 9
    :cond_6
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/d;->b(Ln3/o1;)V

    goto :goto_3

    .line 10
    :cond_7
    invoke-interface {v1}, Ln3/o1;->Z()V

    goto :goto_3

    .line 11
    :cond_8
    invoke-interface {v1}, Ln3/o1;->T()V

    goto :goto_3

    .line 12
    :cond_9
    invoke-interface {v1}, Ln3/o1;->s()I

    move-result p1

    if-eq p1, v11, :cond_b

    if-eq p1, v2, :cond_b

    .line 13
    invoke-interface {v1}, Ln3/o1;->p()Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    .line 14
    :cond_a
    invoke-interface {v1}, Ln3/o1;->c()V

    goto :goto_3

    .line 15
    :cond_b
    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/d;->b(Ln3/o1;)V

    :cond_c
    :goto_3
    return v11

    :cond_d
    :goto_4
    return v2
.end method

.method public final b(Ln3/o1;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ln3/o1;->s()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Ln3/o1;->b()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3
    invoke-interface {p1}, Ln3/o1;->C()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    invoke-interface {p1, v0, v1, v2}, Ln3/o1;->n(IJ)V

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p1}, Ln3/o1;->g()V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/d$d;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ui/d$d;->E()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->z:Landroidx/activity/d;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->A:Lw4/h;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/d;->e0:J

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->A:Lw4/h;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/ui/d;->T:I

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/d;->T:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/d;->e0:J

    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/d;->P:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->A:Lw4/h;

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/d;->e0:J

    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/d;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->A:Lw4/h;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->d()V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->h()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/d;->l:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->m:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->l:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->m:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getPlayer()Ln3/o1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ui/d;->V:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/d;->d0:Z

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ui/d;->T:I

    return v0
.end method

.method public getShowVrButton()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ln3/o1;->s()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    .line 3
    invoke-interface {v0}, Ln3/o1;->s()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    .line 4
    invoke-interface {v0}, Ln3/o1;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final i()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->l()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->k()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->n()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->o()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->p()V

    return-void
.end method

.method public final j(ZZLandroid/view/View;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_1

    .line 2
    iget p2, p0, Lcom/google/android/exoplayer2/ui/d;->J:F

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/google/android/exoplayer2/ui/d;->K:F

    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    .line 3
    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final k()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/d;->P:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 3
    invoke-interface {v0, v1}, Ln3/o1;->D(I)Z

    move-result v1

    const/4 v2, 0x7

    .line 4
    invoke-interface {v0, v2}, Ln3/o1;->D(I)Z

    move-result v2

    const/16 v3, 0xb

    .line 5
    invoke-interface {v0, v3}, Ln3/o1;->D(I)Z

    move-result v3

    const/16 v4, 0xc

    .line 6
    invoke-interface {v0, v4}, Ln3/o1;->D(I)Z

    move-result v4

    const/16 v5, 0x9

    .line 7
    invoke-interface {v0, v5}, Ln3/o1;->D(I)Z

    move-result v0

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    .line 8
    :goto_0
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/d;->b0:Z

    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/d;->j:Landroid/view/View;

    invoke-virtual {p0, v5, v1, v6}, Lcom/google/android/exoplayer2/ui/d;->j(ZZLandroid/view/View;)V

    .line 9
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/d;->W:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/d;->o:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v5}, Lcom/google/android/exoplayer2/ui/d;->j(ZZLandroid/view/View;)V

    .line 10
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/d;->a0:Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/d;->n:Landroid/view/View;

    invoke-virtual {p0, v1, v4, v3}, Lcom/google/android/exoplayer2/ui/d;->j(ZZLandroid/view/View;)V

    .line 11
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/d;->c0:Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/d;->k:Landroid/view/View;

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/android/exoplayer2/ui/d;->j(ZZLandroid/view/View;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->u:Lcom/google/android/exoplayer2/ui/f;

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ui/f;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final l()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/d;->P:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->h()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->l:Landroid/view/View;

    const/16 v2, 0x8

    const/16 v3, 0x15

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    or-int/2addr v1, v5

    .line 5
    sget v6, Lm5/g0;->a:I

    if-ge v6, v3, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 6
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/d;->l:Landroid/view/View;

    invoke-static {v6}, Lcom/google/android/exoplayer2/ui/d$a;->a(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    or-int/2addr v6, v5

    .line 7
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/d;->l:Landroid/view/View;

    if-eqz v0, :cond_4

    move v8, v2

    goto :goto_2

    :cond_4
    move v8, v5

    :goto_2
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    move v1, v5

    move v6, v1

    .line 8
    :goto_3
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/d;->m:Landroid/view/View;

    if-eqz v7, :cond_a

    if-nez v0, :cond_6

    .line 9
    invoke-virtual {v7}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v4

    goto :goto_4

    :cond_6
    move v7, v5

    :goto_4
    or-int/2addr v1, v7

    .line 10
    sget v7, Lm5/g0;->a:I

    if-ge v7, v3, :cond_7

    move v4, v1

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    .line 11
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/d;->m:Landroid/view/View;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/d$a;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    move v4, v5

    :goto_5
    or-int/2addr v6, v4

    .line 12
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/d;->m:Landroid/view/View;

    if-eqz v0, :cond_9

    move v2, v5

    :cond_9
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    if-eqz v1, :cond_b

    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->g()V

    :cond_b
    if-eqz v6, :cond_c

    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->f()V

    :cond_c
    :goto_6
    return-void
.end method

.method public final m()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/d;->P:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/d;->j0:J

    invoke-interface {v0}, Ln3/o1;->l()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 4
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ui/d;->j0:J

    invoke-interface {v0}, Ln3/o1;->S()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 5
    :goto_0
    iget-wide v5, p0, Lcom/google/android/exoplayer2/ui/d;->k0:J

    cmp-long v5, v1, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    move v5, v6

    .line 6
    :goto_1
    iget-wide v8, p0, Lcom/google/android/exoplayer2/ui/d;->l0:J

    cmp-long v8, v3, v8

    if-eqz v8, :cond_3

    move v6, v7

    .line 7
    :cond_3
    iput-wide v1, p0, Lcom/google/android/exoplayer2/ui/d;->k0:J

    .line 8
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ui/d;->l0:J

    .line 9
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/d;->t:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/ui/d;->S:Z

    if-nez v9, :cond_4

    if-eqz v5, :cond_4

    .line 10
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/d;->v:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/google/android/exoplayer2/ui/d;->w:Ljava/util/Formatter;

    invoke-static {v9, v10, v1, v2}, Lm5/g0;->C(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_4
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/d;->u:Lcom/google/android/exoplayer2/ui/f;

    if-eqz v8, :cond_5

    .line 12
    invoke-interface {v8, v1, v2}, Lcom/google/android/exoplayer2/ui/f;->setPosition(J)V

    .line 13
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/d;->u:Lcom/google/android/exoplayer2/ui/f;

    invoke-interface {v8, v3, v4}, Lcom/google/android/exoplayer2/ui/f;->setBufferedPosition(J)V

    .line 14
    :cond_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/d;->O:Lcom/google/android/exoplayer2/ui/d$c;

    if-eqz v3, :cond_7

    if-nez v5, :cond_6

    if-eqz v6, :cond_7

    .line 15
    :cond_6
    invoke-interface {v3}, Lcom/google/android/exoplayer2/ui/d$c;->a()V

    .line 16
    :cond_7
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/d;->z:Landroidx/activity/d;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-nez v0, :cond_8

    move v3, v7

    goto :goto_2

    .line 17
    :cond_8
    invoke-interface {v0}, Ln3/o1;->s()I

    move-result v3

    :goto_2
    const-wide/16 v4, 0x3e8

    if-eqz v0, :cond_b

    .line 18
    invoke-interface {v0}, Ln3/o1;->w()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 19
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/d;->u:Lcom/google/android/exoplayer2/ui/f;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/google/android/exoplayer2/ui/f;->getPreferredUpdateDelay()J

    move-result-wide v6

    goto :goto_3

    :cond_9
    move-wide v6, v4

    .line 20
    :goto_3
    rem-long/2addr v1, v4

    sub-long v1, v4, v1

    .line 21
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 22
    invoke-interface {v0}, Ln3/o1;->d()Ln3/m1;

    move-result-object v0

    iget v0, v0, Ln3/m1;->h:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_a

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v4, v1

    :cond_a
    move-wide v6, v4

    .line 23
    iget v0, p0, Lcom/google/android/exoplayer2/ui/d;->U:I

    int-to-long v8, v0

    const-wide/16 v10, 0x3e8

    invoke-static/range {v6 .. v11}, Lm5/g0;->j(JJJ)J

    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/d;->z:Landroidx/activity/d;

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_b
    const/4 v0, 0x4

    if-eq v3, v0, :cond_c

    if-eq v3, v7, :cond_c

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->z:Landroidx/activity/d;

    invoke-virtual {p0, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_4
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/d;->P:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ui/d;->V:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, v2, v2, v0}, Lcom/google/android/exoplayer2/ui/d;->j(ZZLandroid/view/View;)V

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0, v3, v2, v0}, Lcom/google/android/exoplayer2/ui/d;->j(ZZLandroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0, v3, v3, v0}, Lcom/google/android/exoplayer2/ui/d;->j(ZZLandroid/view/View;)V

    .line 9
    invoke-interface {v1}, Ln3/o1;->M()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/d;->P:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->q:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    .line 3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/d;->d0:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p0, v3, v3, v0}, Lcom/google/android/exoplayer2/ui/d;->j(ZZLandroid/view/View;)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/exoplayer2/ui/d;->j(ZZLandroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0, v2, v2, v0}, Lcom/google/android/exoplayer2/ui/d;->j(ZZLandroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->q:Landroid/widget/ImageView;

    .line 10
    invoke-interface {v1}, Ln3/o1;->Q()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/d;->H:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/d;->I:Landroid/graphics/drawable/Drawable;

    .line 11
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->q:Landroid/widget/ImageView;

    .line 13
    invoke-interface {v1}, Ln3/o1;->Q()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->L:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->M:Ljava/lang/String;

    .line 16
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/d;->P:Z

    .line 3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/d;->e0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->c()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/d;->A:Lw4/h;

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->d()V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->i()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/d;->P:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->z:Landroidx/activity/d;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->A:Lw4/h;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/d;->Q:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    .line 3
    invoke-interface {v1}, Ln3/o1;->O()Ln3/b2;

    move-result-object v2

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/d;->y:Ln3/b2$d;

    .line 4
    invoke-virtual {v2}, Ln3/b2;->r()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_1

    :goto_0
    const/4 v2, 0x0

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v2}, Ln3/b2;->r()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    .line 6
    invoke-virtual {v2, v9, v7}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v10

    iget-wide v10, v10, Ln3/b2$d;->u:J

    cmp-long v10, v10, v3

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    move v2, v6

    :goto_2
    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 7
    :goto_3
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/d;->R:Z

    const-wide/16 v7, 0x0

    .line 8
    iput-wide v7, v0, Lcom/google/android/exoplayer2/ui/d;->j0:J

    .line 9
    invoke-interface {v1}, Ln3/o1;->O()Ln3/b2;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ln3/b2;->s()Z

    move-result v9

    if-nez v9, :cond_11

    .line 11
    invoke-interface {v1}, Ln3/o1;->C()I

    move-result v1

    .line 12
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/ui/d;->R:Z

    if-eqz v9, :cond_5

    const/4 v10, 0x0

    goto :goto_4

    :cond_5
    move v10, v1

    :goto_4
    if-eqz v9, :cond_6

    .line 13
    invoke-virtual {v2}, Ln3/b2;->r()I

    move-result v9

    sub-int/2addr v9, v6

    goto :goto_5

    :cond_6
    move v9, v1

    :goto_5
    move-wide v11, v7

    const/4 v13, 0x0

    :goto_6
    if-gt v10, v9, :cond_10

    if-ne v10, v1, :cond_7

    .line 14
    invoke-static {v11, v12}, Lm5/g0;->X(J)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/google/android/exoplayer2/ui/d;->j0:J

    .line 15
    :cond_7
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/d;->y:Ln3/b2$d;

    invoke-virtual {v2, v10, v14}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    .line 16
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/d;->y:Ln3/b2$d;

    iget-wide v7, v14, Ln3/b2$d;->u:J

    cmp-long v7, v7, v3

    if-nez v7, :cond_8

    .line 17
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/d;->R:Z

    xor-int/2addr v1, v6

    invoke-static {v1}, Lm5/a;->e(Z)V

    goto/16 :goto_c

    .line 18
    :cond_8
    iget v7, v14, Ln3/b2$d;->v:I

    :goto_7
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/d;->y:Ln3/b2$d;

    iget v14, v8, Ln3/b2$d;->w:I

    if-gt v7, v14, :cond_f

    .line 19
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/d;->x:Ln3/b2$b;

    invoke-virtual {v2, v7, v8}, Ln3/b2;->h(ILn3/b2$b;)Ln3/b2$b;

    .line 20
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/d;->x:Ln3/b2$b;

    .line 21
    iget-object v8, v8, Ln3/b2$b;->n:Lq4/a;

    iget v14, v8, Lq4/a;->l:I

    .line 22
    iget v8, v8, Lq4/a;->i:I

    :goto_8
    if-ge v14, v8, :cond_e

    .line 23
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/d;->x:Ln3/b2$b;

    invoke-virtual {v15, v14}, Ln3/b2$b;->e(I)J

    move-result-wide v15

    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v18, v15, v18

    if-nez v18, :cond_a

    .line 24
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/d;->x:Ln3/b2$b;

    iget-wide v5, v15, Ln3/b2$b;->k:J

    cmp-long v15, v5, v3

    if-nez v15, :cond_9

    const-wide/16 v5, 0x0

    goto :goto_a

    :cond_9
    move-wide v15, v5

    .line 25
    :cond_a
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/d;->x:Ln3/b2$b;

    .line 26
    iget-wide v5, v5, Ln3/b2$b;->l:J

    add-long/2addr v15, v5

    const-wide/16 v5, 0x0

    cmp-long v17, v15, v5

    if-ltz v17, :cond_d

    .line 27
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->f0:[J

    array-length v4, v3

    if-ne v13, v4, :cond_c

    .line 28
    array-length v4, v3

    if-nez v4, :cond_b

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    .line 29
    :goto_9
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->f0:[J

    .line 30
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->g0:[Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->g0:[Z

    .line 31
    :cond_c
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->f0:[J

    add-long/2addr v15, v11

    invoke-static/range {v15 .. v16}, Lm5/g0;->X(J)J

    move-result-wide v15

    aput-wide v15, v3, v13

    .line 32
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->g0:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/d;->x:Ln3/b2$b;

    .line 33
    iget-object v4, v4, Ln3/b2$b;->n:Lq4/a;

    invoke-virtual {v4, v14}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object v4

    invoke-virtual {v4}, Lq4/a$a;->c()Z

    move-result v4

    const/4 v15, 0x1

    xor-int/2addr v4, v15

    .line 34
    aput-boolean v4, v3, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v15, 0x1

    :goto_b
    add-int/lit8 v14, v14, 0x1

    move v6, v15

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_8

    :cond_e
    move v15, v6

    const-wide/16 v5, 0x0

    add-int/lit8 v7, v7, 0x1

    move v6, v15

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_7

    :cond_f
    move v15, v6

    const-wide/16 v5, 0x0

    .line 35
    iget-wide v3, v8, Ln3/b2$d;->u:J

    add-long/2addr v11, v3

    add-int/lit8 v10, v10, 0x1

    move-wide v7, v5

    move v6, v15

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_6

    :cond_10
    :goto_c
    move-wide v7, v11

    goto :goto_d

    :cond_11
    move-wide v5, v7

    const/4 v13, 0x0

    .line 36
    :goto_d
    invoke-static {v7, v8}, Lm5/g0;->X(J)J

    move-result-wide v1

    .line 37
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->s:Landroid/widget/TextView;

    if-eqz v3, :cond_12

    .line 38
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/d;->v:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/d;->w:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Lm5/g0;->C(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_12
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->u:Lcom/google/android/exoplayer2/ui/f;

    if-eqz v3, :cond_14

    .line 40
    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/ui/f;->setDuration(J)V

    .line 41
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/d;->h0:[J

    array-length v1, v1

    add-int v2, v13, v1

    .line 42
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->f0:[J

    array-length v4, v3

    if-le v2, v4, :cond_13

    .line 43
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->f0:[J

    .line 44
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->g0:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->g0:[Z

    .line 45
    :cond_13
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->h0:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/d;->f0:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->i0:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/d;->g0:[Z

    invoke-static {v3, v5, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/d;->u:Lcom/google/android/exoplayer2/ui/f;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/d;->f0:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/d;->g0:[Z

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/ui/f;->a([J[ZI)V

    .line 48
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/d;->m()V

    return-void
.end method

.method public setPlayer(Ln3/o1;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ln3/o1;->P()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 3
    :cond_2
    :goto_1
    invoke-static {v2}, Lm5/a;->a(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->h:Lcom/google/android/exoplayer2/ui/d$b;

    invoke-interface {v0, v1}, Ln3/o1;->H(Ln3/o1$c;)V

    .line 6
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    if-eqz p1, :cond_5

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->h:Lcom/google/android/exoplayer2/ui/d$b;

    invoke-interface {p1, v0}, Ln3/o1;->a0(Ln3/o1$c;)V

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->i()V

    return-void
.end method

.method public setProgressUpdateListener(Lcom/google/android/exoplayer2/ui/d$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/d;->O:Lcom/google/android/exoplayer2/ui/d$c;

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/d;->V:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ln3/o1;->M()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ln3/o1;->E(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    invoke-interface {p1, v2}, Ln3/o1;->E(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/d;->N:Ln3/o1;

    invoke-interface {p1, v1}, Ln3/o1;->E(I)V

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->n()V

    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/d;->a0:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->k()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/d;->Q:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->p()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/d;->c0:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->k()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/d;->b0:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->k()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/d;->W:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->k()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/d;->d0:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->o()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/d;->T:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->d()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->r:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Lm5/g0;->i(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ui/d;->U:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->r:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/d;->getShowVrButton()Z

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->r:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/ui/d;->j(ZZLandroid/view/View;)V

    :cond_1
    return-void
.end method
