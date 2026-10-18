.class public final synthetic Lr3/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lr3/k$a;

.field public final synthetic i:Lr3/k;


# direct methods
.method public synthetic constructor <init>(Lr3/k$a;Lr3/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/h;->h:Lr3/k$a;

    iput-object p2, p0, Lr3/h;->i:Lr3/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr3/h;->h:Lr3/k$a;

    iget-object v1, p0, Lr3/h;->i:Lr3/k;

    iget v2, v0, Lr3/k$a;->a:I

    iget-object v0, v0, Lr3/k$a;->b:Lp4/x$b;

    invoke-interface {v1, v2, v0}, Lr3/k;->J(ILp4/x$b;)V

    return-void
.end method
