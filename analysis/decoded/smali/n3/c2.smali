.class public final Ln3/c2;
.super Ljava/lang/Object;
.source "Tracks.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/c2$a;
    }
.end annotation


# static fields
.field public static final i:Ln3/c2;


# instance fields
.field public final h:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ln3/c2$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/c2;

    sget-object v1, Lu6/v;->i:Lu6/v$b;

    .line 2
    sget-object v1, Lu6/p0;->l:Lu6/p0;

    .line 3
    invoke-direct {v0, v1}, Ln3/c2;-><init>(Ljava/util/List;)V

    sput-object v0, Ln3/c2;->i:Ln3/c2;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/c2$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lu6/v;->s(Ljava/util/Collection;)Lu6/v;

    move-result-object p1

    iput-object p1, p0, Ln3/c2;->h:Lu6/v;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x24

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Ln3/c2;->h:Lu6/v;

    invoke-static {v2}, Lm5/b;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final b(I)Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Ln3/c2;->h:Lu6/v;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v2, p0, Ln3/c2;->h:Lu6/v;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/c2$a;

    .line 3
    iget-object v3, v2, Ln3/c2$a;->l:[Z

    .line 4
    array-length v4, v3

    move v5, v0

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v4, :cond_1

    aget-boolean v7, v3, v5

    if-ne v7, v6, :cond_0

    move v3, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_2
    if-eqz v3, :cond_2

    .line 5
    iget-object v2, v2, Ln3/c2$a;->i:Lp4/t0;

    iget v2, v2, Lp4/t0;->j:I

    if-ne v2, p1, :cond_2

    return v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Ln3/c2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Ln3/c2;

    .line 3
    iget-object v0, p0, Ln3/c2;->h:Lu6/v;

    iget-object p1, p1, Ln3/c2;->h:Lu6/v;

    invoke-virtual {v0, p1}, Lu6/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ln3/c2;->h:Lu6/v;

    invoke-virtual {v0}, Lu6/v;->hashCode()I

    move-result v0

    return v0
.end method
