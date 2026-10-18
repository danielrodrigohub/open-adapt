.class public final Lja/e;
.super Landroid/support/v4/media/a;
.source "AdaptKitRequirements.kt"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/a;-><init>()V

    const/16 v0, 0x1f

    .line 2
    iput v0, p0, Lja/e;->a:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lja/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lja/e;

    iget v1, p0, Lja/e;->a:I

    iget p1, p1, Lja/e;->a:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lja/e;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lja/e;->a:I

    const-string v2, "RequirementIsNotAvailable currentAndroidApi: "

    const-string v3, " minAndroidApi: "

    .line 2
    invoke-static {v2, v0, v3, v1}, Ld1/c;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
