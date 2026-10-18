.class public final Lz4/c;
.super Ljava/lang/Object;
.source "CueGroup.java"

# interfaces
.implements Ln3/h;


# static fields
.field public static final i:Lz4/c;


# instance fields
.field public final h:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Lz4/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lz4/c;

    sget-object v1, Lu6/v;->i:Lu6/v$b;

    .line 2
    sget-object v1, Lu6/p0;->l:Lu6/p0;

    .line 3
    invoke-direct {v0, v1}, Lz4/c;-><init>(Ljava/util/List;)V

    sput-object v0, Lz4/c;->i:Lz4/c;

    .line 4
    sget-object v0, Ly0/m;->g:Ly0/m;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz4/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lu6/v;->s(Ljava/util/Collection;)Lu6/v;

    move-result-object p1

    iput-object p1, p0, Lz4/c;->h:Lu6/v;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 9

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x24

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lz4/c;->h:Lu6/v;

    .line 4
    sget-object v4, Lu6/v;->i:Lu6/v$b;

    const/4 v4, 0x4

    const-string v5, "initialCapacity"

    .line 5
    invoke-static {v4, v5}, Lu6/h;->b(ILjava/lang/String;)I

    new-array v4, v4, [Ljava/lang/Object;

    move-object v5, v4

    move v4, v1

    .line 6
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 7
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz4/a;

    iget-object v6, v6, Lz4/a;->k:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz4/a;

    .line 9
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v4, 0x1

    .line 10
    array-length v8, v5

    if-ge v8, v7, :cond_1

    .line 11
    array-length v8, v5

    .line 12
    invoke-static {v8, v7}, Lu6/t$b;->a(II)I

    move-result v8

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 13
    :cond_1
    aput-object v6, v5, v4

    move v4, v7

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v5, v4}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    move-result-object v1

    .line 15
    invoke-static {v1}, Lm5/b;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
