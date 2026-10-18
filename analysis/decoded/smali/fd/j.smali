.class public final Lfd/j;
.super Ljava/lang/Object;
.source "UByte.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfd/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lfd/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final i:Lfd/j$a;


# instance fields
.field public final h:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfd/j$a;

    invoke-direct {v0}, Lfd/j$a;-><init>()V

    sput-object v0, Lfd/j;->i:Lfd/j$a;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lfd/j;->h:B

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lfd/j;

    .line 2
    iget-byte p1, p1, Lfd/j;->h:B

    .line 3
    iget-byte v0, p0, Lfd/j;->h:B

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p1, p1, 0xff

    .line 4
    invoke-static {v0, p1}, Lp4/h;->l(II)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    iget-byte v0, p0, Lfd/j;->h:B

    .line 1
    instance-of v1, p1, Lfd/j;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lfd/j;

    .line 2
    iget-byte p1, p1, Lfd/j;->h:B

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget-byte v0, p0, Lfd/j;->h:B

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-byte v0, p0, Lfd/j;->h:B

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
