.class public final Lr0/g;
.super Ljava/lang/Object;
.source "EmojiTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/g$a;
    }
.end annotation


# instance fields
.field public final h:Landroid/widget/EditText;

.field public final i:Z

.field public j:Lr0/g$a;

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr0/g;->h:Landroid/widget/EditText;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lr0/g;->i:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lr0/g;->k:Z

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lr0/g;->h:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_4

    .line 2
    iget-boolean p2, p0, Lr0/g;->k:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lr0/g;->i:Z

    if-nez p2, :cond_0

    sget-object p2, Landroidx/emoji2/text/a;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    if-gt p3, p4, :cond_4

    .line 3
    instance-of p1, p1, Landroid/text/Spannable;

    if-nez p1, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-static {}, Landroidx/emoji2/text/a;->a()V

    const/4 p1, 0x0

    throw p1

    :cond_4
    :goto_2
    return-void
.end method
