.class public final Lu3/b$a;
.super Ljava/lang/Object;
.source "AviExtractor.java"

# interfaces
.implements Ls3/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final synthetic b:Lu3/b;


# direct methods
.method public constructor <init>(Lu3/b;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu3/b$a;->b:Lu3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lu3/b$a;->a:J

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h(J)Ls3/u$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lu3/b$a;->b:Lu3/b;

    .line 2
    iget-object v0, v0, Lu3/b;->g:[Lu3/e;

    const/4 v1, 0x0

    .line 3
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lu3/e;->b(J)Ls3/u$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    :goto_0
    iget-object v2, p0, Lu3/b$a;->b:Lu3/b;

    .line 5
    iget-object v2, v2, Lu3/b;->g:[Lu3/e;

    .line 6
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 7
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lu3/e;->b(J)Ls3/u$a;

    move-result-object v2

    .line 8
    iget-object v3, v2, Ls3/u$a;->a:Ls3/v;

    iget-wide v3, v3, Ls3/v;->b:J

    iget-object v5, v0, Ls3/u$a;->a:Ls3/v;

    iget-wide v5, v5, Ls3/v;->b:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Lu3/b$a;->a:J

    return-wide v0
.end method
