.class public final synthetic Le9/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:Lea/e;

.field public final synthetic i:Le9/d;


# direct methods
.method public synthetic constructor <init>(Lea/e;Le9/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/c;->h:Lea/e;

    iput-object p2, p0, Le9/c;->i:Le9/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Le9/c;->h:Lea/e;

    iget-object v0, p0, Le9/c;->i:Le9/d;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed: Mode Edit Rename"

    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lh9/z;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object v3, p1, Lea/e;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    iget-object v2, p1, Lea/e;->i:Ljava/lang/String;

    .line 6
    :cond_1
    invoke-direct {v1, v3, v2}, Lh9/z;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v0, Le9/d;->d:Lcom/nike/adapt/ui/modes/ModeEditActivity;

    invoke-virtual {v1, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    return-void
.end method
