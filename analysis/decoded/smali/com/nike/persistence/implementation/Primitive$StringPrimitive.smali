.class public final Lcom/nike/persistence/implementation/Primitive$StringPrimitive;
.super Lcom/nike/persistence/implementation/Primitive;
.source "Primitive.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/persistence/implementation/Primitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringPrimitive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/persistence/implementation/Primitive$StringPrimitive$Companion;,
        Lcom/nike/persistence/implementation/Primitive$StringPrimitive$$serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nike/persistence/implementation/Primitive;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/nike/persistence/implementation/Primitive$StringPrimitive$Companion;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/persistence/implementation/Primitive$StringPrimitive$Companion;

    invoke-direct {v0}, Lcom/nike/persistence/implementation/Primitive$StringPrimitive$Companion;-><init>()V

    sput-object v0, Lcom/nike/persistence/implementation/Primitive$StringPrimitive;->Companion:Lcom/nike/persistence/implementation/Primitive$StringPrimitive$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/nike/persistence/implementation/Primitive$StringPrimitive$$serializer;->INSTANCE:Lcom/nike/persistence/implementation/Primitive$StringPrimitive$$serializer;

    invoke-virtual {v0}, Lcom/nike/persistence/implementation/Primitive$StringPrimitive$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nike/persistence/implementation/Primitive;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-object p2, p0, Lcom/nike/persistence/implementation/Primitive$StringPrimitive;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/persistence/implementation/Primitive$StringPrimitive;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/persistence/implementation/Primitive$StringPrimitive;

    .line 1
    iget-object v1, p0, Lcom/nike/persistence/implementation/Primitive$StringPrimitive;->b:Ljava/lang/String;

    .line 2
    iget-object p1, p1, Lcom/nike/persistence/implementation/Primitive$StringPrimitive;->b:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/nike/persistence/implementation/Primitive$StringPrimitive;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "StringPrimitive(value="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nike/persistence/implementation/Primitive$StringPrimitive;->b:Ljava/lang/String;

    const/16 v2, 0x29

    .line 3
    invoke-static {v0, v1, v2}, La0/d;->d(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
