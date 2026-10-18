.class public final Lga/a$b;
.super Lga/a;
.source "AdaptKitGestureConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lga/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final k:Lga/a$e;

.field public final l:Lga/a$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lga/a$b$a;

    invoke-direct {v0}, Lga/a$b$a;-><init>()V

    sput-object v0, Lga/a$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lga/a$e;Lga/a$f;)V
    .locals 1

    const-string v0, "customAction"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customClassification"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lga/a;-><init>(Lga/a$e;Lga/a$f;)V

    .line 2
    iput-object p1, p0, Lga/a$b;->k:Lga/a$e;

    .line 3
    iput-object p2, p0, Lga/a$b;->l:Lga/a$f;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lga/a$b;->k:Lga/a$e;

    .line 2
    iget-object v0, v0, Lga/a$e;->i:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lga/a$b;->l:Lga/a$f;

    .line 4
    iget-object v1, v1, Lga/a$f;->i:Ljava/lang/String;

    const-string v2, "CustomGesture [Action: "

    const-string v3, ", Classification = "

    const-string v4, "]"

    .line 5
    invoke-static {v2, v0, v3, v1, v4}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lga/a$b;->k:Lga/a$e;

    invoke-virtual {v0, p1, p2}, Lga/a$e;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lga/a$b;->l:Lga/a$f;

    invoke-virtual {v0, p1, p2}, Lga/a$f;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
