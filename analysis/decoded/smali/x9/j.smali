.class public final Lx9/j;
.super Lx9/b;
.source "ModeNameIsValidConditionalCheck.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx9/b<",
        "Lv9/r;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lw9/a;

.field public final b:Ljava/lang/String;

.field public final c:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/r;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw9/a;Ljava/lang/String;Lqd/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Ljava/lang/String;",
            "Lqd/l<",
            "-",
            "Lv9/r;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modeName"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publishConditionError"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lx9/b;-><init>()V

    .line 2
    iput-object p1, p0, Lx9/j;->a:Lw9/a;

    .line 3
    iput-object p2, p0, Lx9/j;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lx9/j;->c:Lqd/l;

    return-void
.end method


# virtual methods
.method public final a()Lw9/a;
    .locals 1

    iget-object v0, p0, Lx9/j;->a:Lw9/a;

    return-object v0
.end method

.method public final b()Lv9/m;
    .locals 3

    .line 1
    new-instance v0, Lv9/r;

    .line 2
    iget-object v1, p0, Lx9/j;->a:Lw9/a;

    .line 3
    iget-object v1, v1, Lw9/a;->h:Lv9/a;

    const-string v2, "Mode name must not be empty."

    .line 4
    invoke-direct {v0, v1, v2}, Lv9/r;-><init>(Lv9/a;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "ModeNameIsValidConditionalCheck"

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lx9/j;->b:Ljava/lang/String;

    invoke-static {v0}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final e()Lqd/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/l<",
            "Lv9/r;",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx9/j;->c:Lqd/l;

    return-object v0
.end method
