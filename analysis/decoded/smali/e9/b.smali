.class public final synthetic Le9/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:Le9/d;

.field public final synthetic i:Le9/d$a;


# direct methods
.method public synthetic constructor <init>(Le9/d;Le9/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/b;->h:Le9/d;

    iput-object p2, p0, Le9/b;->i:Le9/d$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Le9/b;->h:Le9/d;

    iget-object v0, p0, Le9/b;->i:Le9/d$a;

    const-string v1, "this$0"

    .line 1
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$holder"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Le9/d;->m(I)V

    return-void
.end method
