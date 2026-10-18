.class public final synthetic Lu8/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:Lrd/u;

.field public final synthetic i:Lu8/q;


# direct methods
.method public synthetic constructor <init>(Lrd/u;Lu8/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/l;->h:Lrd/u;

    iput-object p2, p0, Lu8/l;->i:Lu8/q;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lu8/l;->h:Lrd/u;

    iget-object v0, p0, Lu8/l;->i:Lu8/q;

    const-string v1, "$userClosed"

    .line 1
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: Dismissed"

    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p1, Lrd/u;->h:Z

    .line 4
    iget-object p1, v0, Lu8/q;->l:Landroidx/appcompat/app/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 5
    :cond_0
    iget-object p1, v0, Lu8/q;->e:Lqd/a;

    invoke-interface {p1}, Lqd/a;->invoke()Ljava/lang/Object;

    return-void
.end method
