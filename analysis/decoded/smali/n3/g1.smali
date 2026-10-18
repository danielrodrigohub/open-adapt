.class public final synthetic Ln3/g1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lp4/x$c;


# instance fields
.field public final synthetic a:Ln3/h1;


# direct methods
.method public synthetic constructor <init>(Ln3/h1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/g1;->a:Ln3/h1;

    return-void
.end method


# virtual methods
.method public final a(Lp4/x;Ln3/b2;)V
    .locals 0

    iget-object p1, p0, Ln3/g1;->a:Ln3/h1;

    .line 1
    iget-object p1, p1, Ln3/h1;->e:Ln3/h1$d;

    check-cast p1, Ln3/o0;

    .line 2
    iget-object p1, p1, Ln3/o0;->o:Lm5/l;

    const/16 p2, 0x16

    invoke-interface {p1, p2}, Lm5/l;->e(I)Z

    return-void
.end method
