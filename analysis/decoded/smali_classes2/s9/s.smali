.class public final synthetic Ls9/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lqd/l;

.field public final synthetic j:Landroidx/appcompat/app/d;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lqd/l;Landroidx/appcompat/app/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls9/s;->h:Ljava/lang/String;

    iput-object p2, p0, Ls9/s;->i:Lqd/l;

    iput-object p3, p0, Ls9/s;->j:Landroidx/appcompat/app/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Ls9/s;->h:Ljava/lang/String;

    iget-object v0, p0, Ls9/s;->i:Lqd/l;

    iget-object v1, p0, Ls9/s;->j:Landroidx/appcompat/app/d;

    const-string v2, "$crumbTitle"

    .line 1
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$action"

    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$dialog"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lo7/x;->a:Lo7/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pressed:  Single Button "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">OK"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
