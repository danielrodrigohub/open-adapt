.class public final Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;
.super Lkotlinx/serialization/internal/ListLikeDescriptor;
.source "CollectionDescriptors.kt"


# instance fields
.field private final serialName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const-string v0, "primitive"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/internal/ListLikeDescriptor;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lrd/h;)V

    .line 2
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Array"

    invoke-static {p1, v0}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;->serialName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSerialName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;->serialName:Ljava/lang/String;

    return-object v0
.end method
