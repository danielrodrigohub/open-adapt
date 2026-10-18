.class public final Lv9/h1;
.super Lv9/g;
.source "AdaptKitControllerResult.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv9/h1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final l:Lea/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv9/h1$a;

    invoke-direct {v0}, Lv9/h1$a;-><init>()V

    sput-object v0, Lv9/h1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lea/b;)V
    .locals 2

    const-string v0, "adaptKitDevice"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lea/b;->j:Ljava/lang/String;

    .line 2
    sget-object v1, Lv9/a;->i:Lv9/a$a;

    .line 3
    sget-object v1, Lv9/a;->j:Lv9/a;

    .line 4
    invoke-direct {p0, v0, v1}, Lv9/g;-><init>(Ljava/lang/String;Lv9/a;)V

    .line 5
    iput-object p1, p0, Lv9/h1;->l:Lea/b;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "AuthKeyUpdatedResult"

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv9/h1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv9/h1;

    iget-object v1, p0, Lv9/h1;->l:Lea/b;

    iget-object p1, p1, Lv9/h1;->l:Lea/b;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lv9/h1;->l:Lea/b;

    invoke-virtual {v0}, Lea/b;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lv9/h1;->l:Lea/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthKeyUpdatedResult(adaptKitDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv9/h1;->l:Lea/b;

    invoke-virtual {v0, p1, p2}, Lea/b;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
