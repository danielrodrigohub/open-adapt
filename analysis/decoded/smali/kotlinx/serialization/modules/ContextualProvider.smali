.class public abstract Lkotlinx/serialization/modules/ContextualProvider;
.super Ljava/lang/Object;
.source "SerializersModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/modules/ContextualProvider$Argless;,
        Lkotlinx/serialization/modules/ContextualProvider$WithTypeArguments;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract invoke(Ljava/util/List;)Lkotlinx/serialization/KSerializer;
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
.end method
