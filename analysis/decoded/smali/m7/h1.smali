.class public final Lm7/h1;
.super Ljava/lang/RuntimeException;
.source "UninitializedMessageException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lm7/z;
    .locals 2

    new-instance v0, Lm7/z;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lm7/z;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
