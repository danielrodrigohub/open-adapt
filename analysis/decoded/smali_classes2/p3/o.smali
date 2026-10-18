.class public final synthetic Lp3/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lp3/p$a;

.field public final synthetic i:Z


# direct methods
.method public synthetic constructor <init>(Lp3/p$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/o;->h:Lp3/p$a;

    iput-boolean p2, p0, Lp3/o;->i:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lp3/o;->h:Lp3/p$a;

    iget-boolean v1, p0, Lp3/o;->i:Z

    iget-object v0, v0, Lp3/p$a;->b:Lp3/p;

    sget v2, Lm5/g0;->a:I

    invoke-interface {v0, v1}, Lp3/p;->l(Z)V

    return-void
.end method
