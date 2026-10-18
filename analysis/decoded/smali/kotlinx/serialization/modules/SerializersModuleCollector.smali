.class public interface abstract Lkotlinx/serialization/modules/SerializersModuleCollector;
.super Ljava/lang/Object;
.source "SerializersModuleCollector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract contextual(Lwd/b;Lkotlinx/serialization/KSerializer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwd/b<",
            "TT;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract contextual(Lwd/b;Lqd/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwd/b<",
            "TT;>;",
            "Lqd/l<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;+",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;)V"
        }
    .end annotation
.end method

.method public abstract polymorphic(Lwd/b;Lwd/b;Lkotlinx/serialization/KSerializer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            "Sub::TBase;>(",
            "Lwd/b<",
            "TBase;>;",
            "Lwd/b<",
            "TSub;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TSub;>;)V"
        }
    .end annotation
.end method

.method public abstract polymorphicDefault(Lwd/b;Lqd/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            ">(",
            "Lwd/b<",
            "TBase;>;",
            "Lqd/l<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "+TBase;>;>;)V"
        }
    .end annotation
.end method
