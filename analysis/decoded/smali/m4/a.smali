.class public final Lm4/a;
.super Lm4/b;
.source "PrivateCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lm4/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:J

.field public final i:J

.field public final j:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm4/a$a;

    invoke-direct {v0}, Lm4/a$a;-><init>()V

    sput-object v0, Lm4/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[BJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm4/b;-><init>()V

    .line 2
    iput-wide p4, p0, Lm4/a;->h:J

    .line 3
    iput-wide p1, p0, Lm4/a;->i:J

    .line 4
    iput-object p3, p0, Lm4/a;->j:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lm4/b;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lm4/a;->h:J

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lm4/a;->i:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    sget v0, Lm5/g0;->a:I

    iput-object p1, p0, Lm4/a;->j:[B

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lm4/a;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lm4/a;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object p2, p0, Lm4/a;->j:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
