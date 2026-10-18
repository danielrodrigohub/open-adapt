.class public final Lv9/c2;
.super Lv9/k;
.source "AdaptKitDeviceRequest.kt"


# instance fields
.field public final b:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/h;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Lv9/k;-><init>()V

    .line 2
    iput-object v0, p0, Lv9/c2;->b:Lqd/l;

    return-void
.end method

.method public constructor <init>(Lqd/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/l<",
            "-",
            "Lv9/h;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lv9/k;-><init>()V

    .line 4
    iput-object p1, p0, Lv9/c2;->b:Lqd/l;

    return-void
.end method

.method public constructor <init>(Lqd/l;ILrd/h;)V
    .locals 0

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0}, Lv9/k;-><init>()V

    .line 6
    iput-object p1, p0, Lv9/c2;->b:Lqd/l;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "ConnectRequest"

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv9/c2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv9/c2;

    iget-object v1, p0, Lv9/c2;->b:Lqd/l;

    iget-object p1, p1, Lv9/c2;->b:Lqd/l;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lv9/c2;->b:Lqd/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lv9/c2;->b:Lqd/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectRequest(alreadyConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
