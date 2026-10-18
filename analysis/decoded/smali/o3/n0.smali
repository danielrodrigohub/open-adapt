.class public final synthetic Lo3/n0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:Lo3/b$a;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lo3/b$a;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/n0;->b:Lo3/b$a;

    iput p2, p0, Lo3/n0;->c:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lo3/b;

    invoke-interface {p1}, Lo3/b;->v0()V

    return-void
.end method
