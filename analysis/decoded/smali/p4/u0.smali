.class public final Lp4/u0;
.super Ljava/lang/Object;
.source "TrackGroupArray.java"

# interfaces
.implements Ln3/h;


# static fields
.field public static final k:Lp4/u0;

.field public static final l:Ln3/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h$a<",
            "Lp4/u0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:I

.field public final i:Lu6/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Lp4/t0;",
            ">;"
        }
    .end annotation
.end field

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp4/u0;

    const/4 v1, 0x0

    new-array v1, v1, [Lp4/t0;

    invoke-direct {v0, v1}, Lp4/u0;-><init>([Lp4/t0;)V

    sput-object v0, Lp4/u0;->k:Lp4/u0;

    .line 2
    sget-object v0, Ln3/z0;->i:Ln3/z0;

    sput-object v0, Lp4/u0;->l:Ln3/z0;

    return-void
.end method

.method public varargs constructor <init>([Lp4/t0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lu6/v;->t([Ljava/lang/Object;)Lu6/v;

    move-result-object v0

    check-cast v0, Lu6/p0;

    iput-object v0, p0, Lp4/u0;->i:Lu6/p0;

    .line 3
    array-length p1, p1

    iput p1, p0, Lp4/u0;->h:I

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lp4/u0;->i:Lu6/p0;

    .line 5
    iget v0, v0, Lu6/p0;->k:I

    if-ge p1, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    move v1, v0

    .line 6
    :goto_1
    iget-object v2, p0, Lp4/u0;->i:Lu6/p0;

    .line 7
    iget v3, v2, Lu6/p0;->k:I

    if-ge v1, v3, :cond_1

    .line 8
    invoke-virtual {v2, p1}, Lu6/p0;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp4/t0;

    iget-object v3, p0, Lp4/u0;->i:Lu6/p0;

    invoke-virtual {v3, v1}, Lu6/p0;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lp4/t0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Multiple identical TrackGroups added to one TrackGroupArray."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v3, "TrackGroupArray"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
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
    iget-object v2, p0, Lp4/u0;->i:Lu6/p0;

    invoke-static {v2}, Lm5/b;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final b(I)Lp4/t0;
    .locals 1

    iget-object v0, p0, Lp4/u0;->i:Lu6/p0;

    invoke-virtual {v0, p1}, Lu6/p0;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp4/t0;

    return-object p1
.end method

.method public final c(Lp4/t0;)I
    .locals 1

    iget-object v0, p0, Lp4/u0;->i:Lu6/p0;

    invoke-virtual {v0, p1}, Lu6/v;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lp4/u0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lp4/u0;

    .line 3
    iget v2, p0, Lp4/u0;->h:I

    iget v3, p1, Lp4/u0;->h:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lp4/u0;->i:Lu6/p0;

    iget-object p1, p1, Lp4/u0;->i:Lu6/p0;

    invoke-virtual {v2, p1}, Lu6/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lp4/u0;->j:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lp4/u0;->i:Lu6/p0;

    invoke-virtual {v0}, Lu6/v;->hashCode()I

    move-result v0

    iput v0, p0, Lp4/u0;->j:I

    .line 3
    :cond_0
    iget v0, p0, Lp4/u0;->j:I

    return v0
.end method
