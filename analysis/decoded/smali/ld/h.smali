.class public abstract Lld/h;
.super Lld/g;
.source "ContinuationImpl.kt"

# interfaces
.implements Lrd/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/g;",
        "Lrd/k<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(ILjd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljd/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lld/g;-><init>(Ljd/d;)V

    .line 2
    iput p1, p0, Lld/h;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 1

    iget v0, p0, Lld/h;->arity:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lld/a;->getCompletion()Ljd/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lrd/x;->a:Lrd/y;

    invoke-virtual {v0, p0}, Lrd/y;->a(Lrd/k;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(this)"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0}, Lld/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
