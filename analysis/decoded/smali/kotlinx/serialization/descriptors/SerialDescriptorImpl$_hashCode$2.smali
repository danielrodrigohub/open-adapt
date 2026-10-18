.class final Lkotlinx/serialization/descriptors/SerialDescriptorImpl$_hashCode$2;
.super Lrd/o;
.source "SerialDescriptors.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/descriptors/SerialDescriptorImpl;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;ILjava/util/List;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptorImpl;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$_hashCode$2;->this$0:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$_hashCode$2;->this$0:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-static {v0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->access$getTypeParametersDescriptors$p(Lkotlinx/serialization/descriptors/SerialDescriptorImpl;)[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt;->hashCodeImpl(Lkotlinx/serialization/descriptors/SerialDescriptor;[Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$_hashCode$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
