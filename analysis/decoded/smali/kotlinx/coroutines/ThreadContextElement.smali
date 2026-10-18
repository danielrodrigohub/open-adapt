.class public interface abstract Lkotlinx/coroutines/ThreadContextElement;
.super Ljava/lang/Object;
.source "ThreadContextElement.kt"

# interfaces
.implements Ljd/f$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljd/f$a;"
    }
.end annotation


# virtual methods
.method public abstract restoreThreadContext(Ljd/f;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/f;",
            "TS;)V"
        }
    .end annotation
.end method

.method public abstract updateThreadContext(Ljd/f;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/f;",
            ")TS;"
        }
    .end annotation
.end method
