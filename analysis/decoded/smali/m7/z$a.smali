.class public final Lm7/z$a;
.super Lm7/z;
.source "InvalidProtocolBufferException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p0, v0}, Lm7/z;-><init>(Ljava/lang/String;)V

    return-void
.end method
