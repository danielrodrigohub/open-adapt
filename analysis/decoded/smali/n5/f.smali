.class public final Ln5/f;
.super Le4/m;
.source "MediaCodecVideoDecoderException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Le4/n;Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le4/m;-><init>(Ljava/lang/Throwable;Le4/n;)V

    .line 2
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    :cond_0
    return-void
.end method
