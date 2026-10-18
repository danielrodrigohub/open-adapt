.class public final synthetic Ln3/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;
.implements Ls3/l;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ln3/y;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()[Ls3/h;
    .locals 4

    iget-object v0, p0, Ln3/y;->b:Ljava/lang/Object;

    check-cast v0, Ln3/s0;

    const/4 v1, 0x1

    new-array v1, v1, [Ls3/h;

    .line 1
    sget-object v2, Lz4/j;->a:Lz4/j$a;

    invoke-virtual {v2, v0}, Lz4/j$a;->b(Ln3/s0;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    new-instance v3, Lz4/k;

    .line 3
    invoke-virtual {v2, v0}, Lz4/j$a;->a(Ln3/s0;)Lz4/h;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lz4/k;-><init>(Lz4/h;Ln3/s0;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Lp4/n$b;

    invoke-direct {v3, v0}, Lp4/n$b;-><init>(Ln3/s0;)V

    :goto_0
    const/4 v0, 0x0

    aput-object v3, v1, v0

    return-object v1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ln3/y;->b:Ljava/lang/Object;

    check-cast v0, Ln3/k0;

    check-cast p1, Ln3/o1$c;

    iget-object v0, v0, Ln3/k0;->N:Ln3/o1$a;

    invoke-interface {p1, v0}, Ln3/o1$c;->j0(Ln3/o1$a;)V

    return-void
.end method
