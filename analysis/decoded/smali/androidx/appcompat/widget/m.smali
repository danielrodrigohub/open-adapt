.class public final Landroidx/appcompat/widget/m;
.super Ljava/lang/Object;
.source "AppCompatEmojiEditTextHelper.java"


# instance fields
.field public final a:Landroid/widget/EditText;

.field public final b:Lr0/a;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/EditText;

    .line 3
    new-instance v0, Lr0/a;

    invoke-direct {v0, p1}, Lr0/a;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroidx/appcompat/widget/m;->b:Lr0/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Lr0/a;

    .line 3
    iget-object v0, v0, Lr0/a;->a:Lr0/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v0, p1, Lr0/e;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lr0/e;

    invoke-direct {v0, p1}, Lr0/e;-><init>(Landroid/text/method/KeyListener;)V

    move-object p1, v0

    :cond_3
    :goto_0
    return-object p1
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    :try_start_0
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_emojiCompatEnabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/m;->d(Z)V

    return-void

    :catchall_0
    move-exception p2

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    throw p2
.end method

.method public final c(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    iget-object p2, p0, Landroidx/appcompat/widget/m;->b:Lr0/a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p2, Lr0/a;->a:Lr0/a$a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Lr0/c;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lr0/c;

    iget-object p2, p2, Lr0/a$a;->a:Landroid/widget/EditText;

    invoke-direct {v0, p2, p1}, Lr0/c;-><init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final d(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m;->b:Lr0/a;

    .line 2
    iget-object v0, v0, Lr0/a;->a:Lr0/a$a;

    .line 3
    iget-object v0, v0, Lr0/a$a;->b:Lr0/g;

    .line 4
    iget-boolean v1, v0, Lr0/g;->k:Z

    if-eq v1, p1, :cond_2

    .line 5
    iget-object v1, v0, Lr0/g;->j:Lr0/g$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 6
    iput-boolean p1, v0, Lr0/g;->k:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Landroidx/emoji2/text/a;->a()V

    throw v2

    .line 8
    :cond_1
    invoke-static {}, Landroidx/emoji2/text/a;->a()V

    throw v2

    :cond_2
    :goto_0
    return-void
.end method
