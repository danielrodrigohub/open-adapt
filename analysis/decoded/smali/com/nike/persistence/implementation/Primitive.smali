.class public abstract Lcom/nike/persistence/implementation/Primitive;
.super Ljava/lang/Object;
.source "Primitive.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/persistence/implementation/Primitive$StringPrimitive;,
        Lcom/nike/persistence/implementation/Primitive$IntPrimitive;,
        Lcom/nike/persistence/implementation/Primitive$FloatPrimitive;,
        Lcom/nike/persistence/implementation/Primitive$DoublePrimitive;,
        Lcom/nike/persistence/implementation/Primitive$BooleanPrimitive;,
        Lcom/nike/persistence/implementation/Primitive$LongPrimitive;,
        Lcom/nike/persistence/implementation/Primitive$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/nike/persistence/implementation/Primitive$Companion;

.field public static final a:Lfd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/d<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nike/persistence/implementation/Primitive$Companion;

    invoke-direct {v0}, Lcom/nike/persistence/implementation/Primitive$Companion;-><init>()V

    sput-object v0, Lcom/nike/persistence/implementation/Primitive;->Companion:Lcom/nike/persistence/implementation/Primitive$Companion;

    sget-object v0, Lcom/nike/persistence/implementation/Primitive$a;->h:Lcom/nike/persistence/implementation/Primitive$a;

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lcom/nike/persistence/implementation/Primitive;->a:Lfd/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/nike/persistence/implementation/Primitive;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0

    const-string p1, "self"

    invoke-static {p0, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
