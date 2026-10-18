.class public final synthetic Ls9/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:Ls9/y$a;

.field public final synthetic i:Lqd/l;

.field public final synthetic j:Landroidx/appcompat/app/d;


# direct methods
.method public synthetic constructor <init>(Ls9/y$a;Lqd/l;Landroidx/appcompat/app/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls9/w;->h:Ls9/y$a;

    iput-object p2, p0, Ls9/w;->i:Lqd/l;

    iput-object p3, p0, Ls9/w;->j:Landroidx/appcompat/app/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Ls9/w;->h:Ls9/y$a;

    iget-object v0, p0, Ls9/w;->i:Lqd/l;

    iget-object v1, p0, Ls9/w;->j:Landroidx/appcompat/app/d;

    const-string v2, "$crumb"

    .line 1
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$action"

    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$dialog"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lo7/x;->a:Lo7/x;

    .line 3
    iget-object v3, p1, Ls9/y$a;->a:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Ls9/y$a;->d:Ljava/lang/String;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pressed: Right Button "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
