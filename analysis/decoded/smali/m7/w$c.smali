.class public abstract Lm7/w$c;
.super Lm7/w;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lm7/w$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/w<",
        "TMessageType;TBuilderType;>;",
        "Lm7/q0;"
    }
.end annotation


# instance fields
.field public extensions:Lm7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/s<",
            "Lm7/w$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm7/w;-><init>()V

    .line 2
    sget-object v0, Lm7/s;->d:Lm7/s;

    .line 3
    iput-object v0, p0, Lm7/w$c;->extensions:Lm7/s;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Lm7/p0;
    .locals 1

    invoke-virtual {p0}, Lm7/w;->q()Lm7/w;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lm7/p0$a;
    .locals 1

    .line 1
    sget-object v0, Lm7/w$f;->l:Lm7/w$f;

    .line 2
    invoke-virtual {p0, v0}, Lm7/w;->o(Lm7/w$f;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lm7/w$a;

    .line 4
    invoke-virtual {v0, p0}, Lm7/w$a;->l(Lm7/w;)Lm7/w$a;

    return-object v0
.end method

.method public final bridge synthetic d()Lm7/p0$a;
    .locals 1

    invoke-virtual {p0}, Lm7/w;->u()Lm7/w$a;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lm7/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm7/s<",
            "Lm7/w$d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/w$c;->extensions:Lm7/s;

    .line 2
    iget-boolean v1, v0, Lm7/s;->b:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lm7/s;->a()Lm7/s;

    move-result-object v0

    iput-object v0, p0, Lm7/w$c;->extensions:Lm7/s;

    .line 4
    :cond_0
    iget-object v0, p0, Lm7/w$c;->extensions:Lm7/s;

    return-object v0
.end method
