.class public final Lb9/h;
.super Lb9/c;
.source "MessagingCenter.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb9/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lfd/h;

.field public final i:Lfd/h;

.field public final j:Lfd/h;

.field public final k:Lb9/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb9/h$a;

    invoke-direct {v0}, Lb9/h$a;-><init>()V

    sput-object v0, Lb9/h;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb9/c;-><init>()V

    .line 2
    sget-object v0, Lb9/h$d;->h:Lb9/h$d;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Lb9/h;->h:Lfd/h;

    .line 3
    sget-object v0, Lb9/h$b;->h:Lb9/h$b;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Lb9/h;->i:Lfd/h;

    .line 4
    sget-object v0, Lb9/h$c;->h:Lb9/h$c;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Lb9/h;->j:Lfd/h;

    .line 5
    sget-object v0, Lb9/i;->h:Lb9/i;

    iput-object v0, p0, Lb9/h;->k:Lb9/i;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb9/h;->i:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb9/h;->j:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lb9/e;
    .locals 1

    iget-object v0, p0, Lb9/h;->k:Lb9/i;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb9/h;->h:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
