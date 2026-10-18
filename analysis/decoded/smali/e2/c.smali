.class public final Le2/c;
.super Le2/m;
.source "AnimatableGradientColorValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/m;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll2/a<",
            "Lf2/c;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Le2/m;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Lb2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb2/a<",
            "Lf2/c;",
            "Lf2/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lb2/e;

    iget-object v1, p0, Le2/m;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lb2/e;-><init>(Ljava/util/List;)V

    return-object v0
.end method
