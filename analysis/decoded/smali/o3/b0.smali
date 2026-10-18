.class public final synthetic Lo3/b0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:Lo3/b$a;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lo3/b$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/b0;->b:Lo3/b$a;

    iput-boolean p2, p0, Lo3/b0;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lo3/b;

    .line 1
    invoke-interface {p1}, Lo3/b;->e()V

    .line 2
    invoke-interface {p1}, Lo3/b;->g0()V

    return-void
.end method
