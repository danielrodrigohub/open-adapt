.class public final synthetic Ls9/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:Lqd/l;

.field public final synthetic i:Landroidx/appcompat/app/d;


# direct methods
.method public synthetic constructor <init>(Lqd/l;Landroidx/appcompat/app/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls9/t;->h:Lqd/l;

    iput-object p2, p0, Ls9/t;->i:Landroidx/appcompat/app/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Ls9/t;->h:Lqd/l;

    iget-object v0, p0, Ls9/t;->i:Landroidx/appcompat/app/d;

    const-string v1, "$negativeAction"

    .line 1
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$dialog"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
