.class public final Lcom/nike/persistence/implementation/Primitive$a;
.super Lrd/o;
.source "Primitive.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/persistence/implementation/Primitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lkotlinx/serialization/KSerializer<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final h:Lcom/nike/persistence/implementation/Primitive$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/persistence/implementation/Primitive$a;

    invoke-direct {v0}, Lcom/nike/persistence/implementation/Primitive$a;-><init>()V

    sput-object v0, Lcom/nike/persistence/implementation/Primitive$a;->h:Lcom/nike/persistence/implementation/Primitive$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lcom/nike/persistence/implementation/Primitive;

    invoke-static {v1}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v1

    const/4 v2, 0x6

    new-array v3, v2, [Lwd/b;

    const-class v4, Lcom/nike/persistence/implementation/Primitive$StringPrimitive;

    invoke-static {v4}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/nike/persistence/implementation/Primitive$IntPrimitive;

    invoke-static {v4}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/nike/persistence/implementation/Primitive$FloatPrimitive;

    invoke-static {v4}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Lcom/nike/persistence/implementation/Primitive$DoublePrimitive;

    invoke-static {v4}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v4, Lcom/nike/persistence/implementation/Primitive$BooleanPrimitive;

    invoke-static {v4}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const-class v4, Lcom/nike/persistence/implementation/Primitive$LongPrimitive;

    invoke-static {v4}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v4

    const/4 v10, 0x5

    aput-object v4, v3, v10

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lcom/nike/persistence/implementation/Primitive$StringPrimitive$$serializer;->INSTANCE:Lcom/nike/persistence/implementation/Primitive$StringPrimitive$$serializer;

    aput-object v4, v2, v5

    sget-object v4, Lcom/nike/persistence/implementation/Primitive$IntPrimitive$$serializer;->INSTANCE:Lcom/nike/persistence/implementation/Primitive$IntPrimitive$$serializer;

    aput-object v4, v2, v6

    sget-object v4, Lcom/nike/persistence/implementation/Primitive$FloatPrimitive$$serializer;->INSTANCE:Lcom/nike/persistence/implementation/Primitive$FloatPrimitive$$serializer;

    aput-object v4, v2, v7

    sget-object v4, Lcom/nike/persistence/implementation/Primitive$DoublePrimitive$$serializer;->INSTANCE:Lcom/nike/persistence/implementation/Primitive$DoublePrimitive$$serializer;

    aput-object v4, v2, v8

    sget-object v4, Lcom/nike/persistence/implementation/Primitive$BooleanPrimitive$$serializer;->INSTANCE:Lcom/nike/persistence/implementation/Primitive$BooleanPrimitive$$serializer;

    aput-object v4, v2, v9

    sget-object v4, Lcom/nike/persistence/implementation/Primitive$LongPrimitive$$serializer;->INSTANCE:Lcom/nike/persistence/implementation/Primitive$LongPrimitive$$serializer;

    aput-object v4, v2, v10

    const-string v4, "com.nike.persistence.implementation.Primitive"

    invoke-direct {v0, v4, v1, v3, v2}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lwd/b;[Lwd/b;[Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method
