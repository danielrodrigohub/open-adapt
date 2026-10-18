.class public final Lcom/nike/persistence/implementation/Primitive$LongPrimitive;
.super Lcom/nike/persistence/implementation/Primitive;
.source "Primitive.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/persistence/implementation/Primitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongPrimitive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/persistence/implementation/Primitive$LongPrimitive$Companion;,
        Lcom/nike/persistence/implementation/Primitive$LongPrimitive$$serializer;
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
.field public static final Companion:Lcom/nike/persistence/implementation/Primitive$LongPrimitive$Companion;


# instance fields
.field public final b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/persistence/implementation/Primitive$LongPrimitive$Companion;

    invoke-direct {v0}, Lcom/nike/persistence/implementation/Primitive$LongPrimitive$Companion;-><init>()V

    sput-object v0, Lcom/nike/persistence/implementation/Primitive$LongPrimitive;->Companion:Lcom/nike/persistence/implementation/Primitive$LongPrimitive$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IJ)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/nike/persistence/implementation/Primitive$LongPrimitive$$serializer;->INSTANCE:Lcom/nike/persistence/implementation/Primitive$LongPrimitive$$serializer;

    invoke-virtual {v0}, Lcom/nike/persistence/implementation/Primitive$LongPrimitive$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nike/persistence/implementation/Primitive;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-wide p2, p0, Lcom/nike/persistence/implementation/Primitive$LongPrimitive;->b:J

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/nike/persistence/implementation/Primitive$LongPrimitive;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/persistence/implementation/Primitive$LongPrimitive;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/persistence/implementation/Primitive$LongPrimitive;

    invoke-virtual {p0}, Lcom/nike/persistence/implementation/Primitive$LongPrimitive;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/nike/persistence/implementation/Primitive$LongPrimitive;->b()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/nike/persistence/implementation/Primitive$LongPrimitive;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "LongPrimitive(value="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/nike/persistence/implementation/Primitive$LongPrimitive;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
