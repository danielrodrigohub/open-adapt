.class public final Lb7/i$c;
.super Lb7/i$f;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final l:I

.field public final m:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lb7/i$f;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lb7/i;->k(III)I

    .line 3
    iput p2, p0, Lb7/i$c;->l:I

    .line 4
    iput p3, p0, Lb7/i$c;->m:I

    return-void
.end method


# virtual methods
.method public final h(I)B
    .locals 4

    .line 1
    iget v0, p0, Lb7/i$c;->m:I

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_1

    if-gez p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Index < 0: "

    .line 3
    invoke-static {v1, p1}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Index > length: "

    const-string v3, ", "

    .line 6
    invoke-static {v2, p1, v3, v0}, Ld1/c;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    iget-object v0, p0, Lb7/i$f;->k:[B

    iget v1, p0, Lb7/i$c;->l:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final m([BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb7/i$f;->k:[B

    .line 2
    iget v1, p0, Lb7/i$c;->l:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 3
    invoke-static {v0, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final n(I)B
    .locals 2

    iget-object v0, p0, Lb7/i$f;->k:[B

    iget v1, p0, Lb7/i$c;->l:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lb7/i$c;->m:I

    return v0
.end method

.method public final v()I
    .locals 1

    iget v0, p0, Lb7/i$c;->l:I

    return v0
.end method
