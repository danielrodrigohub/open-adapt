.class public final synthetic Lr3/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lr3/k$a;

.field public final synthetic i:Lr3/k;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lr3/k$a;Lr3/k;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/i;->h:Lr3/k$a;

    iput-object p2, p0, Lr3/i;->i:Lr3/k;

    iput p3, p0, Lr3/i;->j:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lr3/i;->h:Lr3/k$a;

    iget-object v1, p0, Lr3/i;->i:Lr3/k;

    iget v2, p0, Lr3/i;->j:I

    .line 1
    iget v3, v0, Lr3/k$a;->a:I

    invoke-interface {v1}, Lr3/k;->E()V

    .line 2
    iget v3, v0, Lr3/k$a;->a:I

    iget-object v0, v0, Lr3/k$a;->b:Lp4/x$b;

    invoke-interface {v1, v3, v0, v2}, Lr3/k;->k0(ILp4/x$b;I)V

    return-void
.end method
