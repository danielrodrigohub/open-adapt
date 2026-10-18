.class public final Lk8/g;
.super Ljava/lang/Object;
.source "FetchProfileActionResult.kt"

# interfaces
.implements Li8/b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lk8/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Li8/d;

.field public final i:Lcom/nike/adapt/presenter/profile/AdaptUser;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk8/g$a;

    invoke-direct {v0}, Lk8/g$a;-><init>()V

    sput-object v0, Lk8/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Li8/d;Lcom/nike/adapt/presenter/profile/AdaptUser;)V
    .locals 1

    const-string v0, "eventUUID"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk8/g;->h:Li8/d;

    iput-object p2, p0, Lk8/g;->i:Lcom/nike/adapt/presenter/profile/AdaptUser;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lk8/g;->h:Li8/d;

    invoke-virtual {v0, p1, p2}, Li8/d;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lk8/g;->i:Lcom/nike/adapt/presenter/profile/AdaptUser;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/presenter/profile/AdaptUser;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return-void
.end method
