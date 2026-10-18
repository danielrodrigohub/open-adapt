.class public final Lc4/z;
.super Ljava/lang/Object;
.source "SeiReader.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/s0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Ls3/w;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/s0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc4/z;->a:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ls3/w;

    iput-object p1, p0, Lc4/z;->b:[Ls3/w;

    return-void
.end method


# virtual methods
.method public final a(JLm5/w;)V
    .locals 1

    iget-object v0, p0, Lc4/z;->b:[Ls3/w;

    invoke-static {p1, p2, p3, v0}, Ls3/b;->a(JLm5/w;[Ls3/w;)V

    return-void
.end method

.method public final b(Ls3/j;Lc4/d0$d;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lc4/z;->b:[Ls3/w;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 2
    invoke-virtual {p2}, Lc4/d0$d;->a()V

    .line 3
    invoke-virtual {p2}, Lc4/d0$d;->c()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Ls3/j;->p(II)Ls3/w;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lc4/z;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/s0;

    .line 5
    iget-object v4, v3, Ln3/s0;->s:Ljava/lang/String;

    const-string v5, "application/cea-608"

    .line 6
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "application/cea-708"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid closed caption mime type provided: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-static {v5, v6}, Lm5/a;->b(ZLjava/lang/Object;)V

    .line 9
    iget-object v5, v3, Ln3/s0;->h:Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Lc4/d0$d;->b()Ljava/lang/String;

    move-result-object v5

    .line 10
    :goto_3
    new-instance v6, Ln3/s0$a;

    invoke-direct {v6}, Ln3/s0$a;-><init>()V

    .line 11
    iput-object v5, v6, Ln3/s0$a;->a:Ljava/lang/String;

    .line 12
    iput-object v4, v6, Ln3/s0$a;->k:Ljava/lang/String;

    .line 13
    iget v4, v3, Ln3/s0;->k:I

    .line 14
    iput v4, v6, Ln3/s0$a;->d:I

    .line 15
    iget-object v4, v3, Ln3/s0;->j:Ljava/lang/String;

    .line 16
    iput-object v4, v6, Ln3/s0$a;->c:Ljava/lang/String;

    .line 17
    iget v4, v3, Ln3/s0;->K:I

    .line 18
    iput v4, v6, Ln3/s0$a;->C:I

    .line 19
    iget-object v3, v3, Ln3/s0;->u:Ljava/util/List;

    .line 20
    iput-object v3, v6, Ln3/s0$a;->m:Ljava/util/List;

    .line 21
    new-instance v3, Ln3/s0;

    invoke-direct {v3, v6}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 22
    invoke-interface {v2, v3}, Ls3/w;->b(Ln3/s0;)V

    .line 23
    iget-object v3, p0, Lc4/z;->b:[Ls3/w;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
