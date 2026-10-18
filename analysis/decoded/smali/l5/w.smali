.class public final Ll5/w;
.super Ll5/x;
.source "HttpDataSource.java"


# direct methods
.method public constructor <init>(Ljava/io/IOException;Ll5/m;)V
    .locals 1

    const-string p2, "Cleartext HTTP traffic not permitted. See https://exoplayer.dev/issues/cleartext-not-permitted"

    const/16 v0, 0x7d7

    invoke-direct {p0, p2, p1, v0}, Ll5/x;-><init>(Ljava/lang/String;Ljava/io/IOException;I)V

    return-void
.end method
