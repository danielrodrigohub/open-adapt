.class public final synthetic Lo3/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:Lo3/b$a;

.field public final synthetic c:I

.field public final synthetic d:Ln3/o1$d;

.field public final synthetic e:Ln3/o1$d;


# direct methods
.method public synthetic constructor <init>(Lo3/b$a;ILn3/o1$d;Ln3/o1$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/j;->b:Lo3/b$a;

    iput p2, p0, Lo3/j;->c:I

    iput-object p3, p0, Lo3/j;->d:Ln3/o1$d;

    iput-object p4, p0, Lo3/j;->e:Ln3/o1$d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lo3/j;->c:I

    check-cast p1, Lo3/b;

    .line 1
    invoke-interface {p1}, Lo3/b;->r()V

    .line 2
    invoke-interface {p1, v0}, Lo3/b;->J(I)V

    return-void
.end method
