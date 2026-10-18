.class public final Le2/h;
.super Le2/m;
.source "AnimatableShapeValue.java"


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
            "Lf2/l;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Le2/m;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lb2/a;
    .locals 1

    invoke-virtual {p0}, Le2/h;->c()Lb2/m;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lb2/m;
    .locals 2

    new-instance v0, Lb2/m;

    iget-object v1, p0, Le2/m;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lb2/m;-><init>(Ljava/util/List;)V

    return-object v0
.end method
