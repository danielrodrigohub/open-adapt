.class public final Lkotlinx/serialization/modules/ContextualProvider$Argless;
.super Lkotlinx/serialization/modules/ContextualProvider;
.source "SerializersModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/modules/ContextualProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Argless"
.end annotation


# instance fields
.field private final serializer:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lkotlinx/serialization/modules/ContextualProvider$Argless;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/modules/ContextualProvider$Argless;

    iget-object p1, p1, Lkotlinx/serialization/modules/ContextualProvider$Argless;->serializer:Lkotlinx/serialization/KSerializer;

    iget-object v0, p0, Lkotlinx/serialization/modules/ContextualProvider$Argless;->serializer:Lkotlinx/serialization/KSerializer;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getSerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/serialization/modules/ContextualProvider$Argless;->serializer:Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/modules/ContextualProvider$Argless;->serializer:Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const-string v0, "typeArgumentsSerializers"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/serialization/modules/ContextualProvider$Argless;->serializer:Lkotlinx/serialization/KSerializer;

    return-object p1
.end method
