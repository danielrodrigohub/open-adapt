.class public final synthetic Lp3/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lp3/p$a;

.field public final synthetic i:Ln3/s0;

.field public final synthetic j:Lq3/i;


# direct methods
.method public synthetic constructor <init>(Lp3/p$a;Ln3/s0;Lq3/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/n;->h:Lp3/p$a;

    iput-object p2, p0, Lp3/n;->i:Ln3/s0;

    iput-object p3, p0, Lp3/n;->j:Lq3/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lp3/n;->h:Lp3/p$a;

    iget-object v1, p0, Lp3/n;->i:Ln3/s0;

    iget-object v2, p0, Lp3/n;->j:Lq3/i;

    .line 1
    iget-object v3, v0, Lp3/p$a;->b:Lp3/p;

    sget v4, Lm5/g0;->a:I

    invoke-interface {v3}, Lp3/p;->a()V

    .line 2
    iget-object v0, v0, Lp3/p$a;->b:Lp3/p;

    invoke-interface {v0, v1, v2}, Lp3/p;->h(Ln3/s0;Lq3/i;)V

    return-void
.end method
