.class public abstract Lba/v;
.super Ljava/lang/Object;
.source "FitCalibrateState.kt"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final h:I

.field public final i:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lba/v;->h:I

    .line 2
    instance-of p1, p0, Lba/l0;

    if-nez p1, :cond_1

    .line 3
    instance-of p1, p0, Lba/y;

    if-nez p1, :cond_1

    .line 4
    instance-of p1, p0, Lba/p;

    if-nez p1, :cond_1

    .line 5
    instance-of p1, p0, Lba/q;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 6
    :goto_1
    iput-boolean p1, p0, Lba/v;->i:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lba/v;->h:I

    return v0
.end method

.method public abstract b()Ljava/lang/String;
.end method
