.class public abstract Lb7/x$a;
.super Lb7/a$a;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb7/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lb7/x<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lb7/x$a<",
        "TMessageType;TBuilderType;>;>",
        "Lb7/a$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final h:Lb7/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public i:Lb7/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public j:Z


# direct methods
.method public constructor <init>(Lb7/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb7/a$a;-><init>()V

    .line 2
    iput-object p1, p0, Lb7/x$a;->h:Lb7/x;

    .line 3
    invoke-virtual {p1}, Lb7/x;->p()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb7/x;

    iput-object p1, p0, Lb7/x$a;->i:Lb7/x;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lb7/x$a;->j:Z

    return-void
.end method


# virtual methods
.method public final b()Lb7/q0;
    .locals 1

    iget-object v0, p0, Lb7/x$a;->h:Lb7/x;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb7/x$a;->h:Lb7/x;

    .line 2
    sget-object v1, Lb7/x$f;->l:Lb7/x$f;

    .line 3
    invoke-virtual {v0, v1}, Lb7/x;->o(Lb7/x$f;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lb7/x$a;

    .line 5
    invoke-virtual {p0}, Lb7/x$a;->i()Lb7/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb7/x$a;->k(Lb7/x;)Lb7/x$a;

    return-object v0
.end method

.method public final h()Lb7/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb7/x$a;->i()Lb7/x;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lb7/x;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lb7/k1;

    invoke-direct {v0}, Lb7/k1;-><init>()V

    .line 4
    throw v0
.end method

.method public final i()Lb7/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lb7/x$a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb7/x$a;->i:Lb7/x;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lb7/x$a;->i:Lb7/x;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lb7/a1;->c:Lb7/a1;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb7/a1;->a(Ljava/lang/Class;)Lb7/e1;

    move-result-object v1

    .line 7
    invoke-interface {v1, v0}, Lb7/e1;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lb7/x$a;->j:Z

    .line 9
    iget-object v0, p0, Lb7/x$a;->i:Lb7/x;

    return-object v0
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lb7/x$a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb7/x$a;->i:Lb7/x;

    sget-object v1, Lb7/x$f;->k:Lb7/x$f;

    .line 3
    invoke-virtual {v0, v1}, Lb7/x;->o(Lb7/x$f;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lb7/x;

    .line 5
    iget-object v1, p0, Lb7/x$a;->i:Lb7/x;

    .line 6
    sget-object v2, Lb7/a1;->c:Lb7/a1;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb7/a1;->a(Ljava/lang/Class;)Lb7/e1;

    move-result-object v2

    .line 9
    invoke-interface {v2, v0, v1}, Lb7/e1;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    iput-object v0, p0, Lb7/x$a;->i:Lb7/x;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lb7/x$a;->j:Z

    :cond_0
    return-void
.end method

.method public final k(Lb7/x;)Lb7/x$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb7/x$a;->j()V

    .line 2
    iget-object v0, p0, Lb7/x$a;->i:Lb7/x;

    .line 3
    sget-object v1, Lb7/a1;->c:Lb7/a1;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb7/a1;->a(Ljava/lang/Class;)Lb7/e1;

    move-result-object v1

    .line 6
    invoke-interface {v1, v0, p1}, Lb7/e1;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
