.class public abstract Lb7/a;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lb7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb7/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lb7/a<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lb7/a$a<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lb7/q0;"
    }
.end annotation


# instance fields
.field public memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb7/a;->memoizedHashCode:I

    return-void
.end method


# virtual methods
.method public final e()Lb7/i;
    .locals 4

    .line 1
    :try_start_0
    move-object v0, p0

    check-cast v0, Lb7/x;

    invoke-virtual {v0}, Lb7/x;->a()I

    move-result v1

    sget-object v2, Lb7/i;->i:Lb7/i$f;

    .line 2
    new-array v2, v1, [B

    .line 3
    sget-object v3, Lb7/l;->b:Ljava/util/logging/Logger;

    .line 4
    new-instance v3, Lb7/l$b;

    invoke-direct {v3, v2, v1}, Lb7/l$b;-><init>([BI)V

    .line 5
    invoke-virtual {v0, v3}, Lb7/x;->g(Lb7/l;)V

    .line 6
    iget v0, v3, Lb7/l$b;->e:I

    iget v1, v3, Lb7/l$b;->f:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lb7/i$f;

    invoke-direct {v0, v2}, Lb7/i$f;-><init>([B)V

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-virtual {p0, v2}, Lb7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method h()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final i(Lb7/e1;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb7/a;->h()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lb7/e1;->e(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lb7/a;->k(I)V

    :cond_0
    return v0
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Serializing "

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method k(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final l()[B
    .locals 4

    .line 1
    :try_start_0
    move-object v0, p0

    check-cast v0, Lb7/x;

    invoke-virtual {v0}, Lb7/x;->a()I

    move-result v1

    new-array v2, v1, [B

    .line 2
    sget-object v3, Lb7/l;->b:Ljava/util/logging/Logger;

    .line 3
    new-instance v3, Lb7/l$b;

    invoke-direct {v3, v2, v1}, Lb7/l$b;-><init>([BI)V

    .line 4
    invoke-virtual {v0, v3}, Lb7/x;->g(Lb7/l;)V

    .line 5
    iget v0, v3, Lb7/l$b;->e:I

    iget v1, v3, Lb7/l$b;->f:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    return-object v2

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-virtual {p0, v2}, Lb7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
