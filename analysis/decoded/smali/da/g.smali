.class public abstract Lda/g;
.super Ljava/lang/Object;
.source "AdaptKitDeviceType.kt"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Z

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lv9/a;)V
    .locals 1

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptIdentifier"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lda/g;->h:Ljava/lang/String;

    const/16 p2, 0x4c

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, p2, v0}, Lyd/s;->j0(Ljava/lang/CharSequence;CZ)Z

    move-result p1

    iput-boolean p1, p0, Lda/g;->i:Z

    xor-int/2addr p1, v0

    .line 4
    iput-boolean p1, p0, Lda/g;->j:Z

    return-void
.end method
