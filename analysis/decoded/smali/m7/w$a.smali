.class public abstract Lm7/w$a;
.super Lm7/a$a;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lm7/w<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lm7/w$a<",
        "TMessageType;TBuilderType;>;>",
        "Lm7/a$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final h:Lm7/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public i:Lm7/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public j:Z


# direct methods
.method public constructor <init>(Lm7/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm7/a$a;-><init>()V

    .line 2
    iput-object p1, p0, Lm7/w$a;->h:Lm7/w;

    .line 3
    sget-object v0, Lm7/w$f;->k:Lm7/w$f;

    .line 4
    invoke-virtual {p1, v0}, Lm7/w;->o(Lm7/w$f;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lm7/w;

    iput-object p1, p0, Lm7/w$a;->i:Lm7/w;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lm7/w$a;->j:Z

    return-void
.end method


# virtual methods
.method public final b()Lm7/p0;
    .locals 1

    iget-object v0, p0, Lm7/w$a;->h:Lm7/w;

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
    iget-object v0, p0, Lm7/w$a;->h:Lm7/w;

    .line 2
    invoke-virtual {v0}, Lm7/w;->u()Lm7/w$a;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lm7/w$a;->i()Lm7/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm7/w$a;->l(Lm7/w;)Lm7/w$a;

    return-object v0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lm7/w$a;->i:Lm7/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm7/w;->s(Lm7/w;Z)Z

    move-result v0

    return v0
.end method

.method public final h()Lm7/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lm7/w$a;->i()Lm7/w;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lm7/w;->s(Lm7/w;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lm7/h1;

    invoke-direct {v0}, Lm7/h1;-><init>()V

    .line 4
    throw v0
.end method

.method public final i()Lm7/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lm7/w$a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lm7/w$a;->i:Lm7/w;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lm7/w$a;->i:Lm7/w;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lm7/z0;->c:Lm7/z0;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm7/z0;->a(Ljava/lang/Class;)Lm7/c1;

    move-result-object v1

    .line 7
    invoke-interface {v1, v0}, Lm7/c1;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lm7/w$a;->j:Z

    .line 9
    iget-object v0, p0, Lm7/w$a;->i:Lm7/w;

    return-object v0
.end method

.method public final j()Lm7/w$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/w$a;->i:Lm7/w;

    sget-object v1, Lm7/w$f;->k:Lm7/w$f;

    .line 2
    invoke-virtual {v0, v1}, Lm7/w;->o(Lm7/w$f;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lm7/w;

    iput-object v0, p0, Lm7/w$a;->i:Lm7/w;

    return-object p0
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lm7/w$a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lm7/w$a;->i:Lm7/w;

    sget-object v1, Lm7/w$f;->k:Lm7/w$f;

    .line 3
    invoke-virtual {v0, v1}, Lm7/w;->o(Lm7/w$f;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lm7/w;

    .line 5
    iget-object v1, p0, Lm7/w$a;->i:Lm7/w;

    .line 6
    sget-object v2, Lm7/z0;->c:Lm7/z0;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lm7/z0;->a(Ljava/lang/Class;)Lm7/c1;

    move-result-object v2

    .line 9
    invoke-interface {v2, v0, v1}, Lm7/c1;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    iput-object v0, p0, Lm7/w$a;->i:Lm7/w;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lm7/w$a;->j:Z

    :cond_0
    return-void
.end method

.method public final l(Lm7/w;)Lm7/w$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lm7/w$a;->k()V

    .line 2
    iget-object v0, p0, Lm7/w$a;->i:Lm7/w;

    .line 3
    sget-object v1, Lm7/z0;->c:Lm7/z0;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm7/z0;->a(Ljava/lang/Class;)Lm7/c1;

    move-result-object v1

    .line 6
    invoke-interface {v1, v0, p1}, Lm7/c1;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
