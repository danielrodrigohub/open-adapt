.class public Ln3/y0$g;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Ln3/y0$e;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo4/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ln3/y0$k;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ln3/y0$e;Ljava/util/List;Ljava/lang/String;Lu6/v;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y0$g;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Ln3/y0$g;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Ln3/y0$g;->c:Ln3/y0$e;

    .line 5
    iput-object p4, p0, Ln3/y0$g;->d:Ljava/util/List;

    .line 6
    iput-object p5, p0, Ln3/y0$g;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Ln3/y0$g;->f:Lu6/v;

    .line 8
    sget-object p1, Lu6/v;->i:Lu6/v$b;

    const/4 p1, 0x4

    const-string p2, "initialCapacity"

    .line 9
    invoke-static {p1, p2}, Lu6/h;->b(ILjava/lang/String;)I

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    move p3, p2

    .line 10
    :goto_0
    invoke-virtual {p6}, Ljava/util/AbstractCollection;->size()I

    move-result p4

    if-ge p2, p4, :cond_1

    .line 11
    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ln3/y0$k;

    .line 12
    new-instance p5, Ln3/y0$k$a;

    invoke-direct {p5, p4}, Ln3/y0$k$a;-><init>(Ln3/y0$k;)V

    .line 13
    new-instance p4, Ln3/y0$j;

    invoke-direct {p4, p5}, Ln3/y0$j;-><init>(Ln3/y0$k$a;)V

    add-int/lit8 p5, p3, 0x1

    .line 14
    array-length v0, p1

    if-ge v0, p5, :cond_0

    .line 15
    array-length v0, p1

    .line 16
    invoke-static {v0, p5}, Lu6/t$b;->a(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 17
    :cond_0
    aput-object p4, p1, p3

    add-int/lit8 p2, p2, 0x1

    move p3, p5

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {p1, p3}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    .line 19
    iput-object p7, p0, Ln3/y0$g;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ln3/y0$g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ln3/y0$g;

    .line 3
    iget-object v1, p0, Ln3/y0$g;->a:Landroid/net/Uri;

    iget-object v3, p1, Ln3/y0$g;->a:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln3/y0$g;->b:Ljava/lang/String;

    iget-object v3, p1, Ln3/y0$g;->b:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln3/y0$g;->c:Ln3/y0$e;

    iget-object v3, p1, Ln3/y0$g;->c:Ln3/y0$e;

    .line 5
    invoke-static {v1, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v1}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln3/y0$g;->d:Ljava/util/List;

    iget-object v3, p1, Ln3/y0$g;->d:Ljava/util/List;

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln3/y0$g;->e:Ljava/lang/String;

    iget-object v3, p1, Ln3/y0$g;->e:Ljava/lang/String;

    .line 8
    invoke-static {v1, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln3/y0$g;->f:Lu6/v;

    iget-object v3, p1, Ln3/y0$g;->f:Lu6/v;

    .line 9
    invoke-virtual {v1, v3}, Lu6/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln3/y0$g;->g:Ljava/lang/Object;

    iget-object p1, p1, Ln3/y0$g;->g:Ljava/lang/Object;

    .line 10
    invoke-static {v1, p1}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y0$g;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Ln3/y0$g;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Ln3/y0$g;->c:Ln3/y0$e;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ln3/y0$e;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Ln3/y0$g;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Ln3/y0$g;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-object v0, p0, Ln3/y0$g;->f:Lu6/v;

    invoke-virtual {v0}, Lu6/v;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Ln3/y0$g;->g:Ljava/lang/Object;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method
