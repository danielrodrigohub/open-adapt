.class public final Le7/o;
.super Le7/l;
.source "JsonObject.java"


# instance fields
.field public final a:Lg7/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg7/p<",
            "Ljava/lang/String;",
            "Le7/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le7/l;-><init>()V

    .line 2
    new-instance v0, Lg7/p;

    invoke-direct {v0}, Lg7/p;-><init>()V

    iput-object v0, p0, Le7/o;->a:Lg7/p;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Le7/o;

    if-eqz v0, :cond_0

    check-cast p1, Le7/o;

    iget-object p1, p1, Le7/o;->a:Lg7/p;

    iget-object v0, p0, Le7/o;->a:Lg7/p;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Le7/o;->a:Lg7/p;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
