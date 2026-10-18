.class public final synthetic Lm9/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:Lm9/d;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lm9/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm9/c;->h:Lm9/d;

    iput p2, p0, Lm9/c;->i:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lm9/c;->h:Lm9/d;

    iget v0, p0, Lm9/c;->i:I

    const-string v1, "this$0"

    .line 1
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Lm9/d;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorWa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pressedObject"

    .line 3
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v2, Lo7/x;->a:Lo7/x;

    const-string v3, "Pressed: "

    .line 5
    invoke-static {v3, v1, v2}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    .line 6
    iget v1, p1, Lm9/d;->f:I

    .line 7
    iput v0, p1, Lm9/d;->f:I

    .line 8
    iget-object v2, p1, Lm9/d;->d:Lcom/nike/adapt/ui/settings/ColorWayActivity;

    .line 9
    iput v0, v2, Lcom/nike/adapt/ui/settings/ColorWayActivity;->N:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p1, Lm9/d;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$e;->f(ILjava/lang/Object;)V

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 11
    iget-object v0, p1, Lm9/d;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->f(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
