.class public final Lcom/nike/adapt/ui/modes/ModeRenameActivity$b;
.super Ljava/lang/Object;
.source "ModeRenameActivity.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/modes/ModeRenameActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/modes/ModeRenameActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/modes/ModeRenameActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity$b;->h:Lcom/nike/adapt/ui/modes/ModeRenameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    const-string v0, "s"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lyd/s;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity$b;->h:Lcom/nike/adapt/ui/modes/ModeRenameActivity;

    .line 3
    iget-object v1, v1, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_3

    .line 4
    iget-object v1, v1, Lq7/p;->d:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity$b;->h:Lcom/nike/adapt/ui/modes/ModeRenameActivity;

    .line 7
    iget-object p1, p1, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p1, Lq7/p;->c:Landroid/widget/EditText;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    return-void

    .line 9
    :cond_3
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/nike/adapt/ui/modes/ModeRenameActivity$b;->h:Lcom/nike/adapt/ui/modes/ModeRenameActivity;

    .line 2
    iget-object p2, p2, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->I:Lq7/p;

    if-eqz p2, :cond_2

    .line 3
    iget-object p2, p2, Lq7/p;->c:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/16 p1, 0x11

    goto :goto_1

    :cond_1
    const p1, 0x800013

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void

    :cond_2
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
