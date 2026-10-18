.class public final Le2/i;
.super Ljava/lang/Object;
.source "AnimatableSplitDimensionPathValue.java"

# interfaces
.implements Le2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le2/l<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le2/b;

.field public final b:Le2/b;


# direct methods
.method public constructor <init>(Le2/b;Le2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le2/i;->a:Le2/b;

    .line 3
    iput-object p2, p0, Le2/i;->b:Le2/b;

    return-void
.end method


# virtual methods
.method public final a()Lb2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb2/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb2/n;

    iget-object v1, p0, Le2/i;->a:Le2/b;

    .line 2
    invoke-virtual {v1}, Le2/b;->a()Lb2/a;

    move-result-object v1

    iget-object v2, p0, Le2/i;->b:Le2/b;

    invoke-virtual {v2}, Le2/b;->a()Lb2/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb2/n;-><init>(Lb2/a;Lb2/a;)V

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll2/a<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isStatic()Z
    .locals 1

    iget-object v0, p0, Le2/i;->a:Le2/b;

    invoke-virtual {v0}, Le2/m;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le2/i;->b:Le2/b;

    invoke-virtual {v0}, Le2/m;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
