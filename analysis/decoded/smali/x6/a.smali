.class public interface abstract Lx6/a;
.super Ljava/lang/Object;
.source "ListenableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "Use the methods in Futures (like immediateFuture) or SettableFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
.end method
