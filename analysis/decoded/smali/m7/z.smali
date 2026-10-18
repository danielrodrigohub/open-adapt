.class public Lm7/z;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/z$a;
    }
.end annotation


# static fields
.field public static final synthetic h:I


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lm7/z;
    .locals 2

    new-instance v0, Lm7/z;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lm7/z;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lm7/z;
    .locals 2

    new-instance v0, Lm7/z;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lm7/z;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Lm7/z;
    .locals 2

    new-instance v0, Lm7/z;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lm7/z;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Lm7/z;
    .locals 2

    new-instance v0, Lm7/z;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lm7/z;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static e()Lm7/z;
    .locals 2

    new-instance v0, Lm7/z;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lm7/z;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
