.class public final synthetic Li9/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Landroid/widget/LinearLayout;

.field public final synthetic i:Li9/g;

.field public final synthetic j:Ljava/util/List;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Li9/g;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li9/d;->h:Landroid/widget/LinearLayout;

    iput-object p2, p0, Li9/d;->i:Li9/g;

    iput-object p3, p0, Li9/d;->j:Ljava/util/List;

    iput p4, p0, Li9/d;->k:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Li9/d;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Li9/d;->i:Li9/g;

    iget-object v2, p0, Li9/d;->j:Ljava/util/List;

    iget v3, p0, Li9/d;->k:I

    sget-object v4, Li9/g;->K0:Li9/g$a;

    const-string v4, "$layoutView"

    .line 1
    invoke-static {v0, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "this$0"

    invoke-static {v1, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$presets"

    invoke-static {v2, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lb7/j1;->c(Landroid/view/View;)V

    .line 3
    iget-object v0, v1, Li9/g;->E0:Landroid/os/Handler;

    new-instance v4, Li9/f;

    invoke-direct {v4, v1, v2, v3}, Li9/f;-><init>(Li9/g;Ljava/util/List;I)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
