.class public final Ly3/e;
.super Ljava/lang/Object;
.source "Sniffer.java"


# instance fields
.field public final a:Lm5/w;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm5/w;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lm5/w;-><init>(I)V

    iput-object v0, p0, Ly3/e;->a:Lm5/w;

    return-void
.end method


# virtual methods
.method public final a(Ls3/i;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly3/e;->a:Lm5/w;

    .line 2
    iget-object v0, v0, Lm5/w;->a:[B

    .line 3
    check-cast p1, Ls3/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v0, v1, v2, v1}, Ls3/e;->p([BIIZ)Z

    .line 5
    iget-object v0, p0, Ly3/e;->a:Lm5/w;

    .line 6
    iget-object v0, v0, Lm5/w;->a:[B

    .line 7
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    const/16 v3, 0x80

    move v4, v1

    :goto_0
    and-int v5, v0, v3

    if-nez v5, :cond_1

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    not-int v3, v3

    and-int/2addr v0, v3

    .line 8
    iget-object v3, p0, Ly3/e;->a:Lm5/w;

    .line 9
    iget-object v3, v3, Lm5/w;->a:[B

    .line 10
    invoke-virtual {p1, v3, v2, v4, v1}, Ls3/e;->p([BIIZ)Z

    :goto_1
    if-ge v1, v4, :cond_2

    shl-int/lit8 p1, v0, 0x8

    .line 11
    iget-object v0, p0, Ly3/e;->a:Lm5/w;

    .line 12
    iget-object v0, v0, Lm5/w;->a:[B

    add-int/lit8 v1, v1, 0x1

    .line 13
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    goto :goto_1

    .line 14
    :cond_2
    iget p1, p0, Ly3/e;->b:I

    add-int/2addr v4, v2

    add-int/2addr v4, p1

    iput v4, p0, Ly3/e;->b:I

    int-to-long v0, v0

    return-wide v0
.end method
