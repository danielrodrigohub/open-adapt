.class public final Lcom/nike/persistence/implementation/Primitive$BooleanPrimitive$Companion;
.super Ljava/lang/Object;
.source "Primitive.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/persistence/implementation/Primitive$BooleanPrimitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/nike/persistence/implementation/Primitive$BooleanPrimitive;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nike/persistence/implementation/Primitive$BooleanPrimitive$$serializer;->INSTANCE:Lcom/nike/persistence/implementation/Primitive$BooleanPrimitive$$serializer;

    return-object v0
.end method
