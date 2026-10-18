.class public abstract Lfa/n;
.super Ljava/lang/Object;
.source "StateBasedFirmwareVersion.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa/n$b;,
        Lfa/n$a;,
        Lfa/n$c;,
        Lfa/n$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lfa/n;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lfa/n;

    const-string v0, "other"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p0, Lfa/n$d;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    instance-of v3, p1, Lfa/n$d;

    if-eqz v3, :cond_0

    .line 4
    move-object v0, p0

    check-cast v0, Lfa/n$d;

    .line 5
    iget-object v0, v0, Lfa/n$d;->h:Lfb/c;

    .line 6
    check-cast p1, Lfa/n$d;

    .line 7
    iget-object p1, p1, Lfa/n$d;->h:Lfb/c;

    .line 8
    invoke-virtual {v0, p1}, Lfb/c;->b(Lfb/c;)I

    move-result v1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    instance-of v0, p1, Lfa/n$d;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    instance-of v0, p0, Lfa/n$b;

    if-eqz v0, :cond_3

    :goto_0
    move v1, v2

    goto :goto_1

    .line 11
    :cond_3
    instance-of p1, p1, Lfa/n$b;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
