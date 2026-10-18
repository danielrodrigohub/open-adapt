.class public final Lg3/b;
.super Ljava/lang/Object;
.source "ImageHeaderParserRegistry.java"

# interfaces
.implements Ls4/d;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg3/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lt4/i;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lg3/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final d(JJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final e(JJ)J
    .locals 0

    return-wide p3
.end method

.method public final f(JJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final g(JJ)J
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public final h(J)Lt4/i;
    .locals 0

    iget-object p1, p0, Lg3/b;->a:Ljava/lang/Object;

    check-cast p1, Lt4/i;

    return-object p1
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final k(J)J
    .locals 0

    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method public final l(JJ)J
    .locals 0

    const-wide/16 p1, 0x1

    return-wide p1
.end method
