.class public final Lfd/m;
.super Ljava/lang/Object;
.source "UShort.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfd/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lfd/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final i:Lfd/m$a;


# instance fields
.field public final h:S


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfd/m$a;

    invoke-direct {v0}, Lfd/m$a;-><init>()V

    sput-object v0, Lfd/m;->i:Lfd/m$a;

    return-void
.end method

.method public synthetic constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lfd/m;->h:S

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lfd/m;

    .line 2
    iget-short p1, p1, Lfd/m;->h:S

    .line 3
    iget-short v0, p0, Lfd/m;->h:S

    const v1, 0xffff

    and-int/2addr v0, v1

    and-int/2addr p1, v1

    .line 4
    invoke-static {v0, p1}, Lp4/h;->l(II)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    iget-short v0, p0, Lfd/m;->h:S

    .line 1
    instance-of v1, p1, Lfd/m;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lfd/m;

    .line 2
    iget-short p1, p1, Lfd/m;->h:S

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget-short v0, p0, Lfd/m;->h:S

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-short v0, p0, Lfd/m;->h:S

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
