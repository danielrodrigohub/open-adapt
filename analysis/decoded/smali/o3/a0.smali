.class public final synthetic Lo3/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:Lo3/b$a;

.field public final synthetic c:Lq3/e;


# direct methods
.method public synthetic constructor <init>(Lo3/b$a;Lq3/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/a0;->b:Lo3/b$a;

    iput-object p2, p0, Lo3/a0;->c:Lq3/e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo3/a0;->c:Lq3/e;

    check-cast p1, Lo3/b;

    .line 1
    invoke-interface {p1, v0}, Lo3/b;->c(Lq3/e;)V

    .line 2
    invoke-interface {p1}, Lo3/b;->P()V

    return-void
.end method
