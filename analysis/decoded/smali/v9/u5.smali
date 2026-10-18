.class public final Lv9/u5;
.super Lv9/g;
.source "AdaptKitControllerResult.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv9/u5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Lv9/a;

.field public final n:Lla/b;

.field public final o:Lla/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv9/u5$a;

    invoke-direct {v0}, Lv9/u5$a;-><init>()V

    sput-object v0, Lv9/u5;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lv9/a;Lla/b;Lla/c;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptIdentifier"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitSessionId"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionInformation"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lv9/g;-><init>(Ljava/lang/String;Lv9/a;)V

    .line 2
    iput-object p1, p0, Lv9/u5;->l:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lv9/u5;->m:Lv9/a;

    .line 4
    iput-object p3, p0, Lv9/u5;->n:Lla/b;

    .line 5
    iput-object p4, p0, Lv9/u5;->o:Lla/c;

    return-void
.end method


# virtual methods
.method public final a()Lv9/a;
    .locals 1

    iget-object v0, p0, Lv9/u5;->m:Lv9/a;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lv9/u5;->l:Ljava/lang/String;

    iget-object v1, p0, Lv9/u5;->n:Lla/b;

    .line 2
    iget v1, v1, Lla/b;->h:I

    .line 3
    iget-object v2, p0, Lv9/u5;->o:Lla/c;

    .line 4
    iget-object v3, v2, Lla/c;->m:Lla/c$c;

    .line 5
    iget-object v3, v3, Lla/c$c;->h:Ljava/lang/String;

    .line 6
    iget v4, v2, Lla/c;->l:I

    int-to-float v4, v4

    iget v2, v2, Lla/c;->j:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    const/16 v2, 0x64

    int-to-float v5, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sessionId: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " state: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " percentDownloaded "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "SessionDownloadProgressResult"

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv9/u5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv9/u5;

    iget-object v1, p0, Lv9/u5;->l:Ljava/lang/String;

    iget-object v3, p1, Lv9/u5;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1
    :cond_2
    iget-object v1, p0, Lv9/u5;->m:Lv9/a;

    iget-object v3, p1, Lv9/u5;->m:Lv9/a;

    .line 2
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lv9/u5;->n:Lla/b;

    iget-object v3, p1, Lv9/u5;->n:Lla/b;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lv9/u5;->o:Lla/c;

    iget-object p1, p1, Lv9/u5;->o:Lla/c;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lv9/u5;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1
    iget-object v1, p0, Lv9/u5;->m:Lv9/a;

    const/16 v2, 0x1f

    .line 2
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/e0;->c(Lv9/a;II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lv9/u5;->n:Lla/b;

    invoke-virtual {v1}, Lla/b;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lv9/u5;->o:Lla/c;

    invoke-virtual {v0}, Lla/c;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lv9/u5;->l:Ljava/lang/String;

    .line 1
    iget-object v1, p0, Lv9/u5;->m:Lv9/a;

    .line 2
    iget-object v2, p0, Lv9/u5;->n:Lla/b;

    iget-object v3, p0, Lv9/u5;->o:Lla/c;

    const-string v4, "SessionDownloadProgressResult(id="

    const-string v5, ", adaptIdentifier="

    const-string v6, ", adaptKitSessionId="

    .line 3
    invoke-static {v4, v0, v5, v1, v6}, Led/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lv9/a;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv9/u5;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lv9/u5;->m:Lv9/a;

    invoke-virtual {v0, p1, p2}, Lv9/a;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lv9/u5;->n:Lla/b;

    invoke-virtual {v0, p1, p2}, Lla/b;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lv9/u5;->o:Lla/c;

    invoke-virtual {v0, p1, p2}, Lla/c;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
