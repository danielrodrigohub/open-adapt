.class public interface abstract Lcom/nike/adapt/analytics/NikeReporter;
.super Ljava/lang/Object;
.source "NikeReporter.kt"

# interfaces
.implements Lo7/o;


# virtual methods
.method public abstract initialize()V
.end method

.method public abstract synthetic log(Lo7/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/u;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract report(Lcom/nike/adapt/analytics/Track;)V
.end method
