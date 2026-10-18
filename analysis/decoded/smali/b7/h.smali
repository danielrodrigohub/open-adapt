.class public final Lb7/h;
.super Lb7/i$a;
.source "ByteString.java"


# instance fields
.field public h:I

.field public final i:I

.field public final synthetic j:Lb7/i;


# direct methods
.method public constructor <init>(Lb7/i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lb7/h;->j:Lb7/i;

    invoke-direct {p0}, Lb7/i$a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb7/h;->h:I

    .line 3
    invoke-virtual {p1}, Lb7/i;->size()I

    move-result p1

    iput p1, p0, Lb7/h;->i:I

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 2

    .line 1
    iget v0, p0, Lb7/h;->h:I

    .line 2
    iget v1, p0, Lb7/h;->i:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 3
    iput v1, p0, Lb7/h;->h:I

    .line 4
    iget-object v1, p0, Lb7/h;->j:Lb7/i;

    invoke-virtual {v1, v0}, Lb7/i;->n(I)B

    move-result v0

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lb7/h;->h:I

    iget v1, p0, Lb7/h;->i:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
