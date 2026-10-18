.class public final Lfe/o;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lfe/m;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lfe/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfe/o;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lfe/o;->b:Lfe/m;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lfe/o;->c:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lfe/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lfe/o;

    .line 3
    iget-object v0, p0, Lfe/o;->a:Ljava/lang/Object;

    iget-object v2, p1, Lfe/o;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lfe/o;->b:Lfe/m;

    iget-object p1, p1, Lfe/o;->b:Lfe/m;

    .line 4
    invoke-virtual {v0, p1}, Lfe/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lfe/o;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lfe/o;->b:Lfe/m;

    iget-object v1, v1, Lfe/m;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
