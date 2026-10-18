.class public final Ldd/e$c;
.super Ldd/e;
.source "InstanceFormat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldd/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final j:Lkotlinx/serialization/StringFormat;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/StringFormat;)V
    .locals 1

    const-string v0, "format"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ldd/e;-><init>(Lkotlinx/serialization/SerialFormat;)V

    iput-object p1, p0, Ldd/e$c;->j:Lkotlinx/serialization/StringFormat;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldd/e$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ldd/e$c;

    .line 1
    iget-object v1, p0, Ldd/e$c;->j:Lkotlinx/serialization/StringFormat;

    .line 2
    iget-object p1, p1, Ldd/e$c;->j:Lkotlinx/serialization/StringFormat;

    .line 3
    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ldd/e$c;->j:Lkotlinx/serialization/StringFormat;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "String(format="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ldd/e$c;->j:Lkotlinx/serialization/StringFormat;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
