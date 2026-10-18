.class public final synthetic Ln3/e0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ln3/o1$d;

.field public final synthetic d:Ln3/o1$d;


# direct methods
.method public synthetic constructor <init>(ILn3/o1$d;Ln3/o1$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln3/e0;->b:I

    iput-object p2, p0, Ln3/e0;->c:Ln3/o1$d;

    iput-object p3, p0, Ln3/e0;->d:Ln3/o1$d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Ln3/e0;->b:I

    iget-object v1, p0, Ln3/e0;->c:Ln3/o1$d;

    iget-object v2, p0, Ln3/e0;->d:Ln3/o1$d;

    check-cast p1, Ln3/o1$c;

    .line 1
    invoke-interface {p1}, Ln3/o1$c;->r()V

    .line 2
    invoke-interface {p1, v1, v2, v0}, Ln3/o1$c;->g0(Ln3/o1$d;Ln3/o1$d;I)V

    return-void
.end method
