.class public final Lr3/z;
.super Ljava/io/IOException;
.source "MediaDrmCallbackException.java"


# instance fields
.field public final h:Ll5/m;

.field public final i:Landroid/net/Uri;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:J


# direct methods
.method public constructor <init>(Ll5/m;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll5/m;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;J",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p1, p0, Lr3/z;->h:Ll5/m;

    .line 3
    iput-object p2, p0, Lr3/z;->i:Landroid/net/Uri;

    .line 4
    iput-object p3, p0, Lr3/z;->j:Ljava/util/Map;

    .line 5
    iput-wide p4, p0, Lr3/z;->k:J

    return-void
.end method
