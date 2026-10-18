.class public final Le9/l;
.super Ljava/lang/Object;
.source "ModesSelectionAdapter.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic h:Le9/i$e;

.field public final synthetic i:Le9/i;


# direct methods
.method public constructor <init>(Le9/i$e;Le9/i;)V
    .locals 0

    iput-object p1, p0, Le9/l;->h:Le9/i$e;

    iput-object p2, p0, Le9/l;->i:Le9/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    .line 1
    iget-object v0, p0, Le9/l;->h:Le9/i$e;

    .line 2
    iget-object v0, v0, Le9/i$e;->u:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    iget-object v0, p0, Le9/l;->i:Le9/i;

    iget-object v1, p0, Le9/l;->h:Le9/i$e;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, v1, Le9/i$e;->C:Landroid/widget/TextView;

    .line 7
    iget-object v2, v1, Le9/i$e;->y:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 9
    iget-object v3, v1, Le9/i$e;->x:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v0, v0, [I

    .line 11
    iget-object v3, v1, Le9/i$e;->z:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    if-nez v4, :cond_0

    aget v4, v2, v5

    if-eqz v4, :cond_3

    :cond_0
    aget v4, v0, v3

    if-nez v4, :cond_1

    aget v4, v0, v5

    if-nez v4, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v4, v1, Le9/i$e;->y:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 15
    iget-object v6, v1, Le9/i$e;->y:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v4, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 17
    iget-object v0, v1, Le9/i$e;->C:Landroid/widget/TextView;

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 19
    iget-object v1, v1, Le9/i$e;->y:Landroid/widget/TextView;

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 21
    :cond_2
    iget-object v4, v1, Le9/i$e;->B:Landroid/view/View;

    .line 22
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    aget v0, v0, v3

    aget v2, v2, v3

    .line 23
    iget-object v1, v1, Le9/i$e;->x:Landroid/widget/TextView;

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_3
    :goto_0
    return-void
.end method
