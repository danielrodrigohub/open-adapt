.class public final Lq/e;
.super Ljava/lang/Object;
.source "Pools.java"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lq/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILw4/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lq/e;->a:I

    .line 3
    iput-object p2, p0, Lq/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lq/e;->a:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 2
    iget-object v3, p0, Lq/e;->b:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    aget-object v4, v4, v2

    .line 3
    check-cast v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p0, Lq/e;->a:I

    return-object v4

    :cond_0
    return-object v1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lq/e;->a:I

    iget-object v1, p0, Lq/e;->b:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aput-object p1, v1, v0

    const/4 p1, 0x1

    add-int/2addr v0, p1

    .line 3
    iput v0, p0, Lq/e;->a:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
