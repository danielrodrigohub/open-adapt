.class public final Lcom/nike/persistence/implementation/Primitive$IntPrimitive;
.super Lcom/nike/persistence/implementation/Primitive;
.source "Primitive.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/persistence/implementation/Primitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntPrimitive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/persistence/implementation/Primitive$IntPrimitive$Companion;,
        Lcom/nike/persistence/implementation/Primitive$IntPrimitive$$serializer;
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
.field public static final Companion:Lcom/nike/persistence/implementation/Primitive$IntPrimitive$Companion;


# instance fields
.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/persistence/implementation/Primitive$IntPrimitive$Companion;

    invoke-direct {v0}, Lcom/nike/persistence/implementation/Primitive$IntPrimitive$Companion;-><init>()V

    sput-object v0, Lcom/nike/persistence/implementation/Primitive$IntPrimitive;->Companion:Lcom/nike/persistence/implementation/Primitive$IntPrimitive$Companion;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/nike/persistence/implementation/Primitive$IntPrimitive$$serializer;->INSTANCE:Lcom/nike/persistence/implementation/Primitive$IntPrimitive$$serializer;

    invoke-virtual {v0}, Lcom/nike/persistence/implementation/Primitive$IntPrimitive$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nike/persistence/implementation/Primitive;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput p2, p0, Lcom/nike/persistence/implementation/Primitive$IntPrimitive;->b:I

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/nike/persistence/implementation/Primitive$IntPrimitive;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/persistence/implementation/Primitive$IntPrimitive;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/persistence/implementation/Primitive$IntPrimitive;

    invoke-virtual {p0}, Lcom/nike/persistence/implementation/Primitive$IntPrimitive;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/nike/persistence/implementation/Primitive$IntPrimitive;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/nike/persistence/implementation/Primitive$IntPrimitive;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "IntPrimitive(value="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/nike/persistence/implementation/Primitive$IntPrimitive;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
