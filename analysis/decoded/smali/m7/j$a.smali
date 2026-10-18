.class public final Lm7/j$a;
.super Lm7/j;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:[B

.field public final c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>([BIIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm7/j;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lm7/j$a;->h:I

    .line 3
    iput-object p1, p0, Lm7/j$a;->b:[B

    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Lm7/j$a;->d:I

    .line 5
    iput p2, p0, Lm7/j$a;->f:I

    .line 6
    iput p2, p0, Lm7/j$a;->g:I

    .line 7
    iput-boolean p4, p0, Lm7/j$a;->c:Z

    return-void
.end method


# virtual methods
.method public final d(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm7/z;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 1
    iget v0, p0, Lm7/j$a;->f:I

    iget v1, p0, Lm7/j$a;->g:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    if-ltz v0, :cond_1

    .line 2
    iget p1, p0, Lm7/j$a;->h:I

    if-gt v0, p1, :cond_0

    .line 3
    iput v0, p0, Lm7/j$a;->h:I

    .line 4
    invoke-virtual {p0}, Lm7/j$a;->e()V

    return p1

    .line 5
    :cond_0
    invoke-static {}, Lm7/z;->e()Lm7/z;

    move-result-object p1

    throw p1

    .line 6
    :cond_1
    invoke-static {}, Lm7/z;->d()Lm7/z;

    move-result-object p1

    throw p1

    .line 7
    :cond_2
    invoke-static {}, Lm7/z;->c()Lm7/z;

    move-result-object p1

    throw p1
.end method

.method public final e()V
    .locals 3

    .line 1
    iget v0, p0, Lm7/j$a;->d:I

    iget v1, p0, Lm7/j$a;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lm7/j$a;->d:I

    .line 2
    iget v1, p0, Lm7/j$a;->g:I

    sub-int v1, v0, v1

    .line 3
    iget v2, p0, Lm7/j$a;->h:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 4
    iput v1, p0, Lm7/j$a;->e:I

    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lm7/j$a;->d:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lm7/j$a;->e:I

    :goto_0
    return-void
.end method
