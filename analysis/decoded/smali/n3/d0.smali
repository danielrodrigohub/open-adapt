.class public final synthetic Ln3/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln3/d0;->b:I

    iput p2, p0, Ln3/d0;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Ln3/d0;->b:I

    iget v1, p0, Ln3/d0;->c:I

    check-cast p1, Ln3/o1$c;

    invoke-interface {p1, v0, v1}, Ln3/o1$c;->f0(II)V

    return-void
.end method
