.class public final synthetic Lp4/c0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lp4/e0$a;

.field public final synthetic i:Lp4/e0;

.field public final synthetic j:Lp4/r;

.field public final synthetic k:Lp4/u;


# direct methods
.method public synthetic constructor <init>(Lp4/e0$a;Lp4/e0;Lp4/r;Lp4/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/c0;->h:Lp4/e0$a;

    iput-object p2, p0, Lp4/c0;->i:Lp4/e0;

    iput-object p3, p0, Lp4/c0;->j:Lp4/r;

    iput-object p4, p0, Lp4/c0;->k:Lp4/u;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lp4/c0;->h:Lp4/e0$a;

    iget-object v1, p0, Lp4/c0;->i:Lp4/e0;

    iget-object v2, p0, Lp4/c0;->j:Lp4/r;

    iget-object v3, p0, Lp4/c0;->k:Lp4/u;

    iget v4, v0, Lp4/e0$a;->a:I

    iget-object v0, v0, Lp4/e0$a;->b:Lp4/x$b;

    invoke-interface {v1, v4, v0, v2, v3}, Lp4/e0;->Q(ILp4/x$b;Lp4/r;Lp4/u;)V

    return-void
.end method
