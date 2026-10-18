.class public final synthetic Lo7/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic h:Lcom/nike/adapt/SplashScreenActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nike/adapt/SplashScreenActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo7/z;->h:Lcom/nike/adapt/SplashScreenActivity;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lo7/z;->h:Lcom/nike/adapt/SplashScreenActivity;

    sget p2, Lcom/nike/adapt/SplashScreenActivity;->K:I

    const-string p2, "this$0"

    .line 1
    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget p2, p1, Lcom/nike/adapt/SplashScreenActivity;->I:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/nike/adapt/SplashScreenActivity;->m0()Lh8/a;

    move-result-object p2

    invoke-interface {p2}, Lh8/a;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/nike/adapt/SplashScreenActivity;->n0()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
