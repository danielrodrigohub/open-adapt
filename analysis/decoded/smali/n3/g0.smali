.class public final synthetic Ln3/g0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:Ln3/l1;


# direct methods
.method public synthetic constructor <init>(Ln3/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/g0;->b:Ln3/l1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ln3/g0;->b:Ln3/l1;

    check-cast p1, Ln3/o1$c;

    iget-object v0, v0, Ln3/l1;->n:Ln3/m1;

    invoke-interface {p1, v0}, Ln3/o1$c;->a0(Ln3/m1;)V

    return-void
.end method
