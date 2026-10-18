.class public final Lr3/o;
.super Ljava/lang/Object;
.source "DrmUtil.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)Z
    .locals 0

    instance-of p0, p0, Landroid/media/MediaDrm$MediaDrmStateException;

    return p0
.end method

.method public static b(Ljava/lang/Throwable;)I
    .locals 0

    .line 1
    check-cast p0, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {p0}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lm5/g0;->v(Ljava/lang/String;)I

    move-result p0

    .line 3
    invoke-static {p0}, Lm5/g0;->u(I)I

    move-result p0

    return p0
.end method
