.class public Lb7/a0;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb7/a0$a;
    }
.end annotation


# static fields
.field public static final synthetic h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lb7/a0;
    .locals 2

    new-instance v0, Lb7/a0;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lb7/a0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lb7/a0;
    .locals 2

    new-instance v0, Lb7/a0;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lb7/a0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Lb7/a0;
    .locals 2

    new-instance v0, Lb7/a0;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lb7/a0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Lb7/a0$a;
    .locals 1

    new-instance v0, Lb7/a0$a;

    invoke-direct {v0}, Lb7/a0$a;-><init>()V

    return-object v0
.end method

.method public static e()Lb7/a0;
    .locals 2

    new-instance v0, Lb7/a0;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lb7/a0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static f()Lb7/a0;
    .locals 2

    new-instance v0, Lb7/a0;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lb7/a0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static g()Lb7/a0;
    .locals 2

    new-instance v0, Lb7/a0;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lb7/a0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static h()Lb7/a0;
    .locals 2

    new-instance v0, Lb7/a0;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lb7/a0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
