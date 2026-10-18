.class public final synthetic Ln3/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln3/o0$e;
.implements Lm5/o$a;
.implements Lm5/f;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ln3/a0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ln3/a0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    check-cast p1, Lr3/k$a;

    invoke-virtual {p1, v0}, Lr3/k$a;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ln3/a0;->b:Ljava/lang/Object;

    check-cast v0, Ln3/l1;

    check-cast p1, Ln3/o1$c;

    .line 1
    iget-boolean v1, v0, Ln3/l1;->g:Z

    invoke-interface {p1}, Ln3/o1$c;->e()V

    .line 2
    iget-boolean v0, v0, Ln3/l1;->g:Z

    invoke-interface {p1, v0}, Ln3/o1$c;->N(Z)V

    return-void
.end method
