.class public final synthetic Lu8/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic h:Z

.field public final synthetic i:Lrd/u;

.field public final synthetic j:Lu8/q;


# direct methods
.method public synthetic constructor <init>(ZLrd/u;Lu8/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lu8/h;->h:Z

    iput-object p2, p0, Lu8/h;->i:Lrd/u;

    iput-object p3, p0, Lu8/h;->j:Lu8/q;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-boolean p1, p0, Lu8/h;->h:Z

    iget-object v0, p0, Lu8/h;->i:Lrd/u;

    iget-object v1, p0, Lu8/h;->j:Lu8/q;

    const-string v2, "$userClosed"

    .line 1
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, v0, Lrd/u;->h:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, v1, Lu8/q;->i:Landroid/os/Handler;

    iget-object v0, v1, Lu8/q;->k:Li8/f;

    iget-wide v1, v1, Lu8/q;->g:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
