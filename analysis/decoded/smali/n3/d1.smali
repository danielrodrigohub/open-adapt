.class public final synthetic Ln3/d1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Ln3/e1;

.field public final synthetic i:Lu6/v$a;

.field public final synthetic j:Lp4/x$b;


# direct methods
.method public synthetic constructor <init>(Ln3/e1;Lu6/v$a;Lp4/x$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/d1;->h:Ln3/e1;

    iput-object p2, p0, Ln3/d1;->i:Lu6/v$a;

    iput-object p3, p0, Ln3/d1;->j:Lp4/x$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ln3/d1;->h:Ln3/e1;

    iget-object v1, p0, Ln3/d1;->i:Lu6/v$a;

    iget-object v2, p0, Ln3/d1;->j:Lp4/x$b;

    iget-object v0, v0, Ln3/e1;->c:Lo3/a;

    invoke-virtual {v1}, Lu6/v$a;->e()Lu6/v;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lo3/a;->S(Ljava/util/List;Lp4/x$b;)V

    return-void
.end method
