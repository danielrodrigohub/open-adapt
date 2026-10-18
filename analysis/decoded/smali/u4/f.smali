.class public final Lu4/f;
.super Ljava/lang/Object;
.source "FullSegmentEncryptionKeyCache.java"


# instance fields
.field public final a:Lu4/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lu4/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lu4/e;-><init>(I)V

    iput-object v0, p0, Lu4/f;->a:Lu4/e;

    return-void
.end method
