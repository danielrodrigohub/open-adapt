.class public abstract Lm7/i;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/i$c;,
        Lm7/i$f;,
        Lm7/i$e;,
        Lm7/i$a;,
        Lm7/i$b;,
        Lm7/i$g;,
        Lm7/i$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final i:Lm7/i$f;

.field public static final j:Lm7/i$d;


# instance fields
.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm7/i$f;

    sget-object v1, Lm7/y;->c:[B

    invoke-direct {v0, v1}, Lm7/i$f;-><init>([B)V

    sput-object v0, Lm7/i;->i:Lm7/i$f;

    .line 2
    invoke-static {}, Lm7/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lm7/i$g;

    invoke-direct {v0}, Lm7/i$g;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lm7/i$b;

    invoke-direct {v0}, Lm7/i$b;-><init>()V

    :goto_0
    sput-object v0, Lm7/i;->j:Lm7/i$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lm7/i;->h:I

    return-void
.end method

.method public static k(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    .line 1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Beginning index larger than ending index: "

    const-string v1, ", "

    .line 2
    invoke-static {v0, p0, v1, p1}, Ld1/c;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "End index: "

    const-string v1, " >= "

    .line 5
    invoke-static {v0, p1, v1, p2}, Ld1/c;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Beginning index: "

    const-string v0, " < 0"

    .line 8
    invoke-static {p2, p0, v0}, La0/d;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static l([BII)Lm7/i;
    .locals 2

    add-int v0, p1, p2

    .line 1
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lm7/i;->k(III)I

    .line 2
    new-instance v0, Lm7/i$f;

    sget-object v1, Lm7/i;->j:Lm7/i$d;

    invoke-interface {v1, p0, p1, p2}, Lm7/i$d;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lm7/i$f;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract h(I)B
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lm7/i;->h:I

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lm7/i;->size()I

    move-result v0

    .line 3
    invoke-virtual {p0, v0, v0}, Lm7/i;->p(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    :cond_0
    iput v0, p0, Lm7/i;->h:I

    :cond_1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lm7/h;

    invoke-direct {v0, p0}, Lm7/h;-><init>(Lm7/i;)V

    return-object v0
.end method

.method public abstract m([BI)V
.end method

.method public abstract n(I)B
.end method

.method public abstract o()Z
.end method

.method public abstract p(II)I
.end method

.method public abstract q(I)Lm7/i;
.end method

.method public final r()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lm7/i;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lm7/y;->c:[B

    return-object v0

    .line 3
    :cond_0
    new-array v1, v0, [B

    .line 4
    invoke-virtual {p0, v1, v0}, Lm7/i;->m([BI)V

    return-object v1
.end method

.method public abstract s(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract size()I
.end method

.method public abstract t(Lm7/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {p0}, Lm7/i;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 4
    invoke-virtual {p0}, Lm7/i;->size()I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/m0;->a(Lm7/i;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Lm7/i;->q(I)Lm7/i;

    move-result-object v3

    invoke-static {v3}, Landroidx/lifecycle/m0;->a(Lm7/i;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    .line 5
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
