.class public final La5/d$b;
.super Lz4/l;
.source "CeaDecoder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz4/l;",
        "Ljava/lang/Comparable<",
        "La5/d$b;",
        ">;"
    }
.end annotation


# instance fields
.field public q:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz4/l;-><init>()V

    return-void
.end method

.method public constructor <init>(La5/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lz4/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 9

    .line 1
    check-cast p1, La5/d$b;

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lq3/a;->l(I)Z

    move-result v1

    invoke-virtual {p1, v0}, Lq3/a;->l(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v2, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lq3/a;->l(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_0

    .line 4
    :cond_1
    iget-wide v0, p0, Lq3/g;->l:J

    iget-wide v5, p1, Lq3/g;->l:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-nez v2, :cond_2

    .line 5
    iget-wide v0, p0, La5/d$b;->q:J

    iget-wide v7, p1, La5/d$b;->q:J

    sub-long/2addr v0, v7

    cmp-long p1, v0, v5

    if-nez p1, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    cmp-long p1, v0, v5

    if-lez p1, :cond_0

    :goto_0
    return v3
.end method
