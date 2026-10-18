.class public final Lz4/d$b;
.super Ljava/lang/Object;
.source "ExoplayerCuesDecoder.java"

# interfaces
.implements Lz4/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final h:J

.field public final i:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Lz4/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLu6/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lu6/v<",
            "Lz4/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lz4/d$b;->h:J

    .line 3
    iput-object p3, p0, Lz4/d$b;->i:Lu6/v;

    return-void
.end method


# virtual methods
.method public final b(J)I
    .locals 2

    iget-wide v0, p0, Lz4/d$b;->h:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final g(I)J
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Lm5/a;->a(Z)V

    .line 2
    iget-wide v0, p0, Lz4/d$b;->h:J

    return-wide v0
.end method

.method public final i(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lz4/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lz4/d$b;->h:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Lz4/d$b;->i:Lu6/v;

    goto :goto_0

    :cond_0
    sget-object p1, Lu6/v;->i:Lu6/v$b;

    .line 2
    sget-object p1, Lu6/p0;->l:Lu6/p0;

    :goto_0
    return-object p1
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
