.class public final synthetic Lc9/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/modes/ModeRenameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nike/adapt/ui/modes/ModeRenameActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc9/h;->h:Lcom/nike/adapt/ui/modes/ModeRenameActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lc9/h;->h:Lcom/nike/adapt/ui/modes/ModeRenameActivity;

    sget p3, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->P:I

    const-string p3, "this$0"

    .line 1
    invoke-static {p1, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/nike/adapt/ui/modes/ModeRenameActivity;->q0()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
